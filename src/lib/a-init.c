/****************************************************************************/
/*                                                                          */
/*                         GNAT COMPILER COMPONENTS                         */
/*                                                                          */
/*                               A - I N I T                                */
/*                                                                          */
/*                            $Revision: 1.160 $
/*                                                                          */
/*                          C Implementation File                           */
/*                                                                          */
/*          Copyright (C) 1992-2000 Free Software Foundation, Inc.          */
/*                                                                          */
/* GNAT is free software;  you can  redistribute it  and/or modify it under */
/* terms of the  GNU General Public License as published  by the Free Soft- */
/* ware  Foundation;  either version 2,  or (at your option) any later ver- */
/* sion.  GNAT is distributed in the hope that it will be useful, but WITH- */
/* OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY */
/* or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License */
/* for  more details.  You should have  received  a copy of the GNU General */
/* Public License  distributed with GNAT;  see file COPYING.  If not, write */
/* to  the Free Software Foundation,  59 Temple Place - Suite 330,  Boston, */
/* MA 02111-1307, USA.                                                      */
/*                                                                          */
/* As a  special  exception,  if you  link  this file  with other  files to */
/* produce an executable,  this file does not by itself cause the resulting */
/* executable to be covered by the GNU General Public License. This except- */
/* ion does not  however invalidate  any other reasons  why the  executable */
/* file might be covered by the  GNU Public License.                        */
/*                                                                          */
/* GNAT was originally developed  by the GNAT team at  New York University. */
/* It is now maintained by Ada Core Technologies Inc (http://www.gnat.com). */
/*                                                                          */
/****************************************************************************/

/*  This unit contains initialization circuits that are system dependent. A
    major part of the functionality involved involves stack overflow checking.
    The GCC backend generates probe instructions to test for stack overflow.
    For details on the exact approach used to generate these probes, see the
    "Using and Porting GCC" manual, in particular the "Stack Checking" section
    and the subsection "Specifying How Stack Checking is Done". The handlers
    installed by this file are used to handle resulting signals that come
    from these probes failing (i.e. touching protected pages) */

/* The following include is here to meet the published VxWorks requirement
   that the __vxworks header appear before any other include. */
#ifdef __vxworks
#include "vxWorks.h"
#endif

#include "config.h"
#include "a-ada.h"
#include "a-raise.h"
#include <errno.h>

/* Addresses of exception data blocks for predefined exceptions. */
extern struct Exception_Data constraint_error;
extern struct Exception_Data numeric_error;
extern struct Exception_Data program_error;
extern struct Exception_Data storage_error;
extern struct Exception_Data tasking_error;
extern struct Exception_Data _abort_signal;

#define Lock_Task system__soft_links__lock_task
extern void (*Lock_Task) (void);

#define Unlock_Task system__soft_links__unlock_task
extern void (*Unlock_Task) (void);

#define Get_Machine_State_Addr \
                      system__soft_links__get_machine_state_addr
extern struct Machine_State *(*Get_Machine_State_Addr) (void);

#define Check_Abort_Status     \
                      system__soft_links__check_abort_status
extern int    (*Check_Abort_Status) (void);

#define Raise_From_Signal_Handler \
                      ada__exceptions__raise_from_signal_handler
extern void   Raise_From_Signal_Handler (struct Exception_Data *, char *);

#define Propagate_Signal_Exception \
                      __gnat_propagate_sig_exc
extern void   Propagate_Signal_Exception
		(struct Machine_State *, struct Exception_Data *, char *);


/* Copies of global values computed by the binder */
int  __gl_main_priority            = -1;
int  __gl_time_slice_val           = -1;
char __gl_wc_encoding              = 'n';
char __gl_locking_policy           = ' ';
char __gl_queuing_policy           = ' ';
char __gl_task_dispatching_policy  = ' ';
void (*__gl_adafinal_ptr) ()       = 0;
int  __gl_unreserve_all_interrupts = 0;
int  __gl_exception_tracebacks     = 0;

/* HAVE_GNAT_INIT_FLOAT must be set on every targets where a __gnat_init_float
   is defined. If this is not set them a void implementation will be defined
   at the end of this unit. */
#undef HAVE_GNAT_INIT_FLOAT

/**********************/
/* __gnat_set_globals */
/**********************/

/* This routine is called from the binder generated main program.  It copies
   the values for global quantities computed by the binder into the following
   global locations. The reason that we go through this copy, rather than just
   define the global locations in the binder generated file, is that they are
   referenced from the runtime, which may be in a shared library, and the
   binder file is not in the shared library. Global references across library
   boundaries like this are not handled correctly in all systems.  */

void
__gnat_set_globals (main_priority,
                    time_slice_val,
                    wc_encoding,
                    locking_policy,
		    queuing_policy,
		    task_dispatching_policy,
		    adafinal_ptr,
		    unreserve_all_interrupts,
                    exception_tracebacks)
     int main_priority;
     int time_slice_val;
     char wc_encoding;
     char locking_policy, queuing_policy, task_dispatching_policy;
     void (*adafinal_ptr) ();
     int unreserve_all_interrupts, exception_tracebacks;
{
  __gl_main_priority            = main_priority;
  __gl_time_slice_val           = time_slice_val;
  __gl_wc_encoding              = wc_encoding;
  __gl_locking_policy           = locking_policy;
  __gl_queuing_policy           = queuing_policy;
  __gl_task_dispatching_policy  = task_dispatching_policy;
  __gl_adafinal_ptr             = adafinal_ptr;
  __gl_unreserve_all_interrupts = unreserve_all_interrupts;
  __gl_exception_tracebacks     = exception_tracebacks;
}

/*********************/
/* __gnat_initialize */
/*********************/

/* __gnat_initialize is called at the start of execution of an Ada program
   (the call is generated by the binder). The standard routine does nothing
   at all; the intention is that this be replaced by system specific
   code where initialization is required. */

/***********************************/
/* __gnat_initialize (AIX version) */
/***********************************/

#if defined (_AIX)

/* AiX doesn't have SA_NODEFER */

#define SA_NODEFER 0

#include <sys/time.h>

/* AiX doesn't have nanosleep, but provides nsleep instead */

int
nanosleep (Rqtp, Rmtp)
     struct timestruc_t *Rqtp, *Rmtp;
{
  return nsleep (Rqtp, Rmtp);
}

#include <signal.h>

static void
__gnat_error_handler (sig)
     int sig;
{
  struct Exception_Data *exception;
  char *msg;

  switch (sig)
    {
    case SIGSEGV:
      /* FIXME: we need to detect the case of a *real* SIGSEGV */
      exception = &storage_error;
      msg = "stack overflow or erroneous memory access";
      break;

    case SIGBUS:
      exception = &constraint_error;
      msg = "SIGBUS";
      break;

    case SIGFPE:
      exception = &constraint_error;
      msg = "SIGFPE";
      break;

    default:
      exception = &program_error;
      msg = "unhandled signal";
    }

  Raise_From_Signal_Handler (exception, msg);
}

static void
__gnat_install_handler ()
{
  struct sigaction act;

  /* Set up signal handler to map synchronous signals to appropriate
     exceptions.  Make sure that the handler isn't interrupted by another
     signal that might cause a scheduling event! */

  act.sa_handler = __gnat_error_handler;
  act.sa_flags = SA_NODEFER | SA_RESTART;
  (void) sigemptyset (&act.sa_mask);

  (void) sigaction (SIGILL,  &act, NULL);
  (void) sigaction (SIGABRT, &act, NULL);
  (void) sigaction (SIGFPE,  &act, NULL);
  (void) sigaction (SIGSEGV, &act, NULL);
  (void) sigaction (SIGBUS,  &act, NULL);
}

void
__gnat_initialize ()
{
   __gnat_install_handler ();
}

/****************************************/
/* __gnat_initialize (Dec Unix version) */
/****************************************/

#elif defined(__alpha__) && defined(__osf__) && ! defined(__alpha_vxworks)
/* note: it seems that __alpha__ and __osf__ are both defined for the
   Alpha VXWorks case. Not clear that this is reasonable, but in any case
   we have to be sure to exclude this case in the above test */

#include <signal.h>
#include <sys/siginfo.h>
#include <sys/types.h>

static void
__gnat_error_handler (sig, sip, context)
     int sig;
     siginfo_t *sip;
     struct sigcontext *context;
{
  struct Exception_Data *exception;
  static int recurse = 0;
  struct sigcontext *mstate;
  char *msg;

  /* If this was an explicit signal from a "kill", just resignal it.  */
  if (SI_FROMUSER (sip))
    {
      signal (sig, SIG_DFL);
      kill (getpid(), sig);
    }

  /* Otherwise, treat it as something we handle.  */
  switch (sig)
    {
    case SIGSEGV:
      /* If the problem was permissions, this is a constraint error.
	 Likewise if the failing address isn't maximally aligned or if
	 we've recursed.

	 ??? Using a static variable here isn't task-safe, but it's
	 much too hard to do anything else and we're just determining
	 which exception to raise.  */
      if (sip->si_code == SEGV_ACCERR
	  || (((long) sip->si_addr) & 3) != 0
	  || recurse)
	{
	  exception = &constraint_error;
	  msg = "SIGSEGV";
	}
      else
	{
	  /* See if the page before the faulting page is accessable.  Do that
	     by trying to access it.  We'd like to simply try to access
	     4096 + the faulting address, but it's not guaranteed to be
	     the actual address, just to be on the same page.  */
	  recurse++;
	  ((volatile char *)
	   ((long) sip->si_addr & - getpagesize ()))[getpagesize ()];
	  msg = "stack overflow (or erroneous memory access)";
	  exception = &storage_error;
	}
      break;

    case SIGBUS:
      exception = &program_error;
      msg = "SIGBUS";
      break;

    case SIGFPE:
      exception = &constraint_error;
      msg = "SIGFPE";
      break;

    default:
      exception = &program_error;
      msg = "unhandled signal";
    }

  recurse = 0;
  mstate = (struct sigcontext *) (*Get_Machine_State_Addr) ();
  if (mstate != 0)
    *mstate = *context;

  Raise_From_Signal_Handler (exception, msg);
}

static
__gnat_install_handler ()
{
  struct sigaction act;

  /* Setup signal handler to map synchronous signals to appropriate
     exceptions. Make sure that the handler isn't interrupted by another
     signal that might cause a scheduling event! */

  act.sa_handler = __gnat_error_handler;
  act.sa_flags = SA_ONSTACK | SA_RESTART | SA_NODEFER | SA_SIGINFO;
  (void) sigemptyset (&act.sa_mask);

  (void) sigaction (SIGILL,  &act, NULL);
  (void) sigaction (SIGABRT, &act, NULL);
  (void) sigaction (SIGFPE,  &act, NULL);
  (void) sigaction (SIGSEGV, &act, NULL);
  (void) sigaction (SIGBUS,  &act, NULL);
}

void
__gnat_initialize ()
{
  __gnat_install_handler ();
}

/* Routines called by 5amastop.adb.  */

#include <machine/reg.h>

char *
__gnat_get_code_loc (context)
     struct sigcontext *context;
{
  return (char *) context->sc_pc;
}

void
__gnat_enter_handler (context, pc)
     struct sigcontext *context;
     char *pc;
{
  context->sc_pc = (long) pc;
  context->sc_regs[EF_GP] = exc_lookup_gp (pc);
  exc_resume (context);
}

size_t
__gnat_machine_state_length ()
{
  return sizeof (struct sigcontext);
}

/***********************************/
/* __gnat_initialize (HPUX version) */
/***********************************/

#elif defined (hpux)

#include <signal.h>

static void
__gnat_error_handler (sig)
     int sig;
{
  struct Exception_Data *exception;
  char *msg;

  switch (sig)
    {
    case SIGSEGV:
      /* FIXME: we need to detect the case of a *real* SIGSEGV */
      exception = &storage_error;
      msg = "stack overflow or erroneous memory access";
      break;

    case SIGBUS:
      exception = &constraint_error;
      msg = "SIGBUS";
      break;

    case SIGFPE:
      exception = &constraint_error;
      msg = "SIGFPE";
      break;

    default:
      exception = &program_error;
      msg = "unhandled signal";
    }

  Raise_From_Signal_Handler (exception, msg);
}

static void
__gnat_install_handler ()
{
  struct sigaction act;

  /* Set up signal handler to map synchronous signals to appropriate
     exceptions.  Make sure that the handler isn't interrupted by another
     signal that might cause a scheduling event! */

  act.sa_handler = __gnat_error_handler;
  act.sa_flags = SA_NODEFER | SA_RESTART;
  (void) sigemptyset (&act.sa_mask);

  (void) sigaction (SIGILL,  &act, NULL);
  (void) sigaction (SIGABRT, &act, NULL);
  (void) sigaction (SIGFPE,  &act, NULL);
  (void) sigaction (SIGSEGV, &act, NULL);
  (void) sigaction (SIGBUS,  &act, NULL);
}

void
__gnat_initialize ()
{
   __gnat_install_handler ();
}


/*************************************/
/* __gnat_initialize (Linux version) */
/*************************************/

#elif defined (linux) && defined (i386) && !defined (__RT__)

#include <signal.h>
#include <asm/sigcontext.h>

/* Linux with GNU libc does not define NULL in included header files */

#if !defined (NULL)
#define NULL ((void *) 0)
#endif

struct Machine_State {
  unsigned long eip;
  unsigned long ebx;
  unsigned long esp;
  unsigned long ebp;
  unsigned long esi;
  unsigned long edi;
};

static void
__gnat_error_handler (int sig)
{
  struct Exception_Data *exception;
  char *msg;
  static int recurse = 0;

  struct sigcontext *info
    = (struct sigcontext *) (((char *) &sig) + sizeof (int));
  /* Linux does not document how to get the machine state in a signal handler,
     but in fact the necessary data is in a sigcontext_struct value that is
     on the stack immediately above the signal number parameter, and the
     above messing accesses this value on the stack. */

  struct Machine_State *mstate;

  switch (sig)
    {
    case SIGSEGV:
      /* If the problem was permissions, this is a constraint error.
       Likewise if the failing address isn't maximally aligned or if
       we've recursed.

       ??? Using a static variable here isn't task-safe, but it's
       much too hard to do anything else and we're just determining
       which exception to raise.  */
      if (recurse)
      {
        exception = &constraint_error;
        msg = "SIGSEGV";
      }
      else
      {
        /* Here we would like a discrimination test to see whether the
           page before the faulting address is accessible. Unfortunately
           Linux seems to have no way of giving us the faulting address.

           In versions of a-init.c before 1.95, we had a test of the page
           before the stack pointer using:

            recurse++;
             ((volatile char *)
              ((long) info->esp_at_signal & - getpagesize ()))[getpagesize ()];

           but that's wrong, since it tests the stack pointer location, and
           the current stack probe code does not move the stack pointer
           until all probes succeed.

           For now we simply do not attempt any discrimination at all. Note
           that this is quite acceptable, since a "real" SIGSEGV can only
           occur as the result of an erroneous program */

        msg = "stack overflow (or erroneous memory access)";
        exception = &storage_error;
      }
      break;

    case SIGBUS:
      exception = &constraint_error;
      msg = "SIGBUS";
      break;

    case SIGFPE:
      exception = &constraint_error;
      msg = "SIGFPE";
      break;

    default:
      exception = &program_error;
      msg = "unhandled signal";
    }

  mstate = (*Get_Machine_State_Addr)();
  if (mstate)
    {
      mstate->eip = info->eip;
      mstate->ebx = info->ebx;
      mstate->esp = info->esp_at_signal;
      mstate->ebp = info->ebp;
      mstate->esi = info->esi;
      mstate->edi = info->edi;
    }

  recurse = 0;
  Raise_From_Signal_Handler (exception, msg);
}

static void
__gnat_install_handler ()
{
  struct sigaction act;

  /* Set up signal handler to map synchronous signals to appropriate
     exceptions.  Make sure that the handler isn't interrupted by another
     signal that might cause a scheduling event! */

  act.sa_handler = __gnat_error_handler;
  act.sa_flags = SA_NODEFER | SA_RESTART;
  (void) sigemptyset (&act.sa_mask);

  (void) sigaction (SIGILL,  &act, NULL);
  (void) sigaction (SIGABRT, &act, NULL);
  (void) sigaction (SIGFPE,  &act, NULL);
  (void) sigaction (SIGSEGV, &act, NULL);
  (void) sigaction (SIGBUS,  &act, NULL);
}

void
__gnat_initialize ()
{
   __gnat_install_handler ();
}

/******************************************/
/* __gnat_initialize (NT-mingw32 version) */
/******************************************/

#elif defined (__MINGW32__)
#include <windows.h>

/* __gnat_initialize (mingw32).  */

static LONG
__gnat_error_handler (info)
     PEXCEPTION_POINTERS info;
{
  static int recurse;
  struct Exception_Data *exception;
  char *msg;

  switch (info->ExceptionRecord->ExceptionCode)
    {
    case EXCEPTION_ACCESS_VIOLATION:
      /* If the failing address isn't maximally-aligned or if we've
	 recursed, this is a program error.  */
      if ((info->ExceptionRecord->ExceptionInformation[1] & 3) != 0
	  || recurse)
	{
	  exception = &program_error;
	  msg = "EXCEPTION_ACCESS_VIOLATION";
	}
      else
	{
	  /* See if the page before the faulting page is accessable.  Do that
	     by trying to access it. */
	  recurse++;
	  * ((volatile char *) (info->ExceptionRecord->ExceptionInformation[1]
				+ 4096));
	  exception = &storage_error;
	  msg = "stack overflow (or erroneous memory access)";
	}
      break;

    case EXCEPTION_ARRAY_BOUNDS_EXCEEDED:
      exception = &constraint_error;
      msg = "EXCEPTION_ARRAY_BOUNDS_EXCEEDED";
      break;

    case EXCEPTION_DATATYPE_MISALIGNMENT:
      exception = &constraint_error;
      msg = "EXCEPTION_DATATYPE_MISALIGNMENT";
      break;

    case EXCEPTION_FLT_DENORMAL_OPERAND:
      exception = &constraint_error;
      msg = "EXCEPTION_FLT_DENORMAL_OPERAND";
      break;

    case EXCEPTION_FLT_DIVIDE_BY_ZERO:
      exception = &constraint_error;
      msg = "EXCEPTION_FLT_DENORMAL_OPERAND";
      break;

    case EXCEPTION_FLT_INVALID_OPERATION:
      exception = &constraint_error;
      msg = "EXCEPTION_FLT_INVALID_OPERATION";
      break;

    case EXCEPTION_FLT_OVERFLOW:
      exception = &constraint_error;
      msg = "EXCEPTION_FLT_OVERFLOW";
      break;

    case EXCEPTION_FLT_STACK_CHECK:
      exception = &program_error;
      msg = "EXCEPTION_FLT_STACK_CHECK";
      break;

    case EXCEPTION_FLT_UNDERFLOW:
      exception = &constraint_error;
      msg = "EXCEPTION_FLT_UNDERFLOW";
      break;

    case EXCEPTION_INT_DIVIDE_BY_ZERO:
      exception = &constraint_error;
      msg = "EXCEPTION_INT_DIVIDE_BY_ZERO";
      break;

    case EXCEPTION_INT_OVERFLOW:
      exception = &constraint_error;
      msg = "EXCEPTION_INT_OVERFLOW";
      break;

    case EXCEPTION_INVALID_DISPOSITION:
      exception = &program_error;
      msg = "EXCEPTION_INVALID_DISPOSITION";
      break;

    case EXCEPTION_NONCONTINUABLE_EXCEPTION:
      exception = &program_error;
      msg = "EXCEPTION_NONCONTINUABLE_EXCEPTION";
      break;

    case EXCEPTION_PRIV_INSTRUCTION:
      exception = &program_error;
      msg = "EXCEPTION_PRIV_INSTRUCTION";
      break;

    case EXCEPTION_SINGLE_STEP:
      exception = &program_error;
      msg = "EXCEPTION_SINGLE_STEP";
      break;

    case EXCEPTION_STACK_OVERFLOW:
      exception = &storage_error;
      msg = "EXCEPTION_STACK_OVERFLOW";
      break;

   default:
      exception = &program_error;
      msg = "unhandled signal";
    }

  recurse = 0;
  Raise_From_Signal_Handler (exception, msg);
}

static void
__gnat_install_handler ()
{

  SetUnhandledExceptionFilter (__gnat_error_handler);
}

void __gnat_init_float ();

void
__gnat_initialize ()
{
   __gnat_install_handler ();

   /* Initialize floating-point coprocessor. This call is needed because
      the MS libraries default to 64-bit precision instead of 80-bit
      precision, and we require the full precision for proper operation,
      given that we have set Max_Digits etc with this in mind */

   __gnat_init_float ();

   /* initialize a lock for a process handle list - see a-adaint.c for the
      implementation of portable_no_block_spawn, portable_wait */
   __plist_init();
}

/**************************************/
/* __gnat_initialize (OpenNT version) */
/**************************************/

#elif defined (__INTERIX)

void __gnat_init_float ();

void
__gnat_initialize ()
{
   __gnat_init_float ();
}

/**************************************/
/* __gnat_initialize (LynxOS version) */
/**************************************/

#elif defined (__Lynx__)

void __gnat_init_float ();

void
__gnat_initialize ()
{
   __gnat_init_float ();
}

/****************************/
/* __gnat_initialize (OS/2) */
/****************************/

#elif defined (__EMX__) /* OS/2 dependent initialization */

void __gnat_init_float ();

void
__gnat_initialize ()
{
}

/***********************************/
/* __gnat_initialize (SGI version) */
/***********************************/

#elif defined (sgi)

#include <signal.h>
#include <siginfo.h>

#ifndef NULL
#define NULL 0
#endif

#define SIGADAABORT 48
#define SIGNAL_STACK_SIZE 4096
#define SIGNAL_STACK_ALIGNMENT 64

struct Machine_State {
   sigcontext_t context;
};

static void
__gnat_error_handler (sig, code, sc)
     int sig;
     int code;
     sigcontext_t *sc;
{
  struct Machine_State  *mstate;
  struct Exception_Data *exception;
  char *msg;

  int i;

  switch (sig)
    {
    case SIGSEGV:
      if (code == EFAULT)
	{
	  exception = &program_error;
	  msg = "SIGSEGV: (Invalid virtual address)";
	}
      else if (code == ENXIO)
	{
	  exception = &program_error;
	  msg = "SIGSEGV: (Read beyond mapped object)";
	}
      else if (code == ENOSPC)
	{
	  exception = &program_error; /* ??? storage_error ??? */
	  msg = "SIGSEGV: (Autogrow for file failed)";
	}
      else if (code == EACCES)
	{
	  /* ??? Re-add smarts to further verify that we launched
	         the stack into a guard page, not an attempt to
		 write to .text or something */
	  exception = &storage_error;
	  msg = "SIGSEGV: (stack overflow or erroneous memory access)";
	}
      else
	{
	  /* Just in case the OS guys did it to us again.  Sometimes
	     they fail to document all of the valid codes that are
	     passed to signal handlers, just in case someone depends
	     on knowing all the codes */
	  exception = &program_error;
	  msg = "SIGSEGV: (Undocumented reason)";
	}
      break;

    case SIGBUS:
      /* Map all bus errors to Program_Error.  */
      exception = &program_error;
      msg = "SIGBUS";
      break;

    case SIGFPE:
      /* Map all fpe errors to Constraint_Error.  */
      exception = &constraint_error;
      msg = "SIGFPE";
      break;

    case SIGADAABORT:
      if ((*Check_Abort_Status) ())
	{
	  exception = &_abort_signal;
	  msg = "";
	}
      else
	return;

      break;

    default:
      /* Everything else is a Program_Error. */
      exception = &program_error;
      msg = "unhandled signal";
    }

  mstate = (*Get_Machine_State_Addr)();
  if (mstate != 0)
    bcopy ((const void *) sc, (void *) mstate, sizeof (sigcontext_t));

  Raise_From_Signal_Handler (exception, msg);

}

static void
__gnat_install_handler ()
{
  stack_t ss;
  struct sigaction act;

  /* Setup signal handler to map synchronous signals to appropriate
     exceptions.  Make sure that the handler isn't interrupted by another
     signal that might cause a scheduling event! */

  act.sa_handler = __gnat_error_handler;
  act.sa_flags = SA_NODEFER + SA_RESTART;
  (void) sigfillset (&act.sa_mask);
  (void) sigemptyset (&act.sa_mask);

  (void) sigaction (SIGILL,  &act, NULL);
  (void) sigaction (SIGABRT, &act, NULL);
  (void) sigaction (SIGFPE,  &act, NULL);
  (void) sigaction (SIGSEGV, &act, NULL);
  (void) sigaction (SIGBUS,  &act, NULL);

  (void) sigaction (SIGADAABORT,  &act, NULL);
}

void
__gnat_initialize ()
{
  __gnat_install_handler ();
}

/*************************************************/
/* __gnat_initialize (Solaris and SunOS version) */
/*************************************************/

#elif defined (sun) && defined (__SVR4)

#include <signal.h>
#include <siginfo.h>

static void
__gnat_error_handler (sig, sip)
     int sig;
     siginfo_t *sip;
{
  struct Exception_Data *exception;
  static int recurse = 0;
  char *msg;

  /* If this was an explicit signal from a "kill", just resignal it.  */
  if (SI_FROMUSER (sip))
    {
      signal (sig, SIG_DFL);
      kill (getpid(), sig);
    }

  /* Otherwise, treat it as something we handle.  */
  switch (sig)
    {
    case SIGSEGV:
      /* If the problem was permissions, this is a constraint error.
	 Likewise if the failing address isn't maximally aligned or if
	 we've recursed.

	 ??? Using a static variable here isn't task-safe, but it's
	 much too hard to do anything else and we're just determining
	 which exception to raise.  */
      if (sip->si_code == SEGV_ACCERR
	  || (((long) sip->si_addr) & 3) != 0
	  || recurse)
	{
	  exception = &constraint_error;
	  msg = "SIGSEGV";
	}
      else
	{
	  /* See if the page before the faulting page is accessable.  Do that
	     by trying to access it.  We'd like to simply try to access
	     4096 + the faulting address, but it's not guaranteed to be
	     the actual address, just to be on the same page.  */
	  recurse++;
	  ((volatile char *)
	   ((long) sip->si_addr & - getpagesize ()))[getpagesize ()];
	  exception = &storage_error;
	  msg = "stack overflow (or erroneous memory access)";
	}
      break;

    case SIGBUS:
      exception = &program_error;
      msg = "SIGBUS";
      break;

    case SIGFPE:
      exception = &constraint_error;
      msg = "SIGFPE";
      break;

    default:
      exception = &program_error;
      msg = "unhandled signal";
    }

  recurse = 0;

  Raise_From_Signal_Handler (exception, msg);
}

static void
__gnat_install_handler ()
{
  struct sigaction act;

  /* Set up signal handler to map synchronous signals to appropriate
     exceptions.  Make sure that the handler isn't interrupted by another
     signal that might cause a scheduling event! */

  act.sa_handler = __gnat_error_handler;
  act.sa_flags = SA_NODEFER | SA_RESTART | SA_SIGINFO;
  (void) sigemptyset (&act.sa_mask);

  (void) sigaction (SIGILL,  &act, NULL);
  (void) sigaction (SIGABRT, &act, NULL);
  (void) sigaction (SIGFPE,  &act, NULL);
  (void) sigaction (SIGSEGV, &act, NULL);
  (void) sigaction (SIGBUS,  &act, NULL);
}

void
__gnat_initialize ()
{
   __gnat_install_handler ();
}

/***********************************/
/* __gnat_initialize (SNI version) */
/***********************************/

#elif defined (__sni__)

/* SNI needs special defines and includes */

#define _XOPEN_SOURCE
#define _POSIX_SOURCE
#include <stdio.h>
#include <signal.h>
#include <unistd.h>

/* The run time needs this function which is a #define in SNI */

size_t __gnat_getpagesize(void)
{
  return getpagesize();
}

static void
__gnat_error_handler (sig)
     int sig;
{
  struct Exception_Data *exception;
  char *msg;

  switch (sig)
    {
    case SIGSEGV:
      /* FIXME: we need to detect the case of a *real* SIGSEGV */
      exception = &storage_error;
      msg = "stack overflow or erroneous memory access";
      break;

    case SIGBUS:
      exception = &constraint_error;
      msg = "SIGBUS";
      break;

    case SIGFPE:
      exception = &constraint_error;
      msg = "SIGFPE";
      break;

    default:
      exception = &program_error;
      msg = "unhandled signal";
    }

  Raise_From_Signal_Handler (exception, msg);
}

static void
__gnat_install_handler ()
{
  struct sigaction act;

  /* Set up signal handler to map synchronous signals to appropriate
     exceptions.  Make sure that the handler isn't interrupted by another
     signal that might cause a scheduling event! */

  act.sa_handler = __gnat_error_handler;
  act.sa_flags = SA_NODEFER | SA_RESTART;
  (void) sigemptyset (&act.sa_mask);

  (void) sigaction (SIGILL,  &act, NULL);
  (void) sigaction (SIGABRT, &act, NULL);
  (void) sigaction (SIGFPE,  &act, NULL);
  (void) sigaction (SIGSEGV, &act, NULL);
  (void) sigaction (SIGBUS,  &act, NULL);
}

void
__gnat_initialize ()
{
   __gnat_install_handler ();
}

/***********************************/
/* __gnat_initialize (VMS version) */
/***********************************/

#elif defined (VMS)

/* The prehandler actually gets control first on a condition. It swaps the
   stack pointer and calls the handler (__gnat_error_handler). */
extern long __gnat_error_prehandler ();

extern char *__gnat_error_prehandler_stack;   /* Alternate signal stack */

/* Conditions that don't have an Ada exception counterpart must raise
   Non_Ada_Error.  Since this is defined in s-auxdec, it should only be
   referenced by user programs, not the compiler or tools. Hence the
   #ifdef IN_GCC. */

#ifndef IN_GCC
#define Non_Ada_Error system__aux_dec__non_ada_error
extern struct Exception_Data Non_Ada_Error;

#define Coded_Exception system__vms_exception_table__coded_exception
extern struct Exception_Data *Coded_Exception (int);
#endif

#include <stdio.h>

/* Define macro symbols for the VMS conditions that become Ada exceptions.
   Most of these are also defined in the header file ssdef.h which has not
   yet been converted to be recoginized by Gnu C. Some, which couldn't be
   located, are assigned names based on the DEC test suite tests which
   raise them. */

#define SS$_ACCVIO            12
#define SS$_DEBUG           1132
#define SS$_INTDIV          1156
#define SS$_HPARITH         1284
#define SS$_STKOVF          1364
#define SS$_RESIGNAL        2328
#define MTH$_FLOOVEMAT   1475268       /* Some ACVC_21 CXA tests */
#define SS$_CE24VRU      3253636       /* Write to unopened file */
#define SS$_C980VTE      3246436       /* AST requests time slice */
#define CMA$_EXIT_THREAD 4227492
#define CMA$_EXCCOPLOS   4228108
#define CMA$_ALERTED     4227460

struct descriptor_s {unsigned short len, mbz; char *adr; };

long
__gnat_error_handler (sigargs, mechargs)
     int *sigargs;
     void *mechargs;
{
  struct Exception_Data *exception = 0;
  char *msg = "";
  char message [256];
  long prvhnd;
  struct descriptor_s msgdesc;
  int msg_flag = 0x000f; /* 1 bit for each of the four message parts */
  unsigned short outlen;

  /* Resignaled condtions aren't effected by by pragma Import_Exception */

  switch (sigargs[1])
  {

    case CMA$_EXIT_THREAD:
      return SS$_RESIGNAL;

    case SS$_DEBUG: /* Gdb attach, resignal to merge activate gdbstub. */
      return SS$_RESIGNAL;

    case 1409786: /* Nickerson bug #33 ??? */
      return SS$_RESIGNAL;

    case 1381050: /* Nickerson bug #33 ??? */
      return SS$_RESIGNAL;

    case 11829410: /* Resignalled as Use_Error for CE10VRC */
      return SS$_RESIGNAL;

  }

#ifndef IN_GCC
  /* See if it's an imported exception. Mask off severity bits. */
  exception = Coded_Exception (sigargs [1] & 0xfffffff8);
  if (exception)
    {
      msgdesc.len = 256;
      msgdesc.mbz = 0;
      msgdesc.adr = message;
      SYS$GETMSG (sigargs[1], &outlen, &msgdesc, msg_flag, 0);
      message [outlen] = 0;
      msg = message;

      exception->Name_Length = 19;
      /* The full name really should be get sys$getmsg returns. ??? */
      exception->Full_Name = "IMPORTED_EXCEPTION";
      exception->Import_Code = sigargs [1] & 0xfffffff8;
    }
#endif

  if (exception == 0)
    switch (sigargs[1])
      {
      case SS$_ACCVIO:
        if (sigargs[3] == 0)
	  {
	    exception = &constraint_error;
	    msg = "access zero";
	  }
	else
	  {
	    exception = &storage_error;
	    msg = "stack overflow (or erroneous memory access)";
	  }
	break;

      case SS$_STKOVF:
	exception = &storage_error;
	msg = "stack overflow";
	break;

      case SS$_INTDIV:
	exception = &constraint_error;
	msg = "division by zero";
	break;

      case SS$_HPARITH:
#ifdef IN_GCC
	return SS$_RESIGNAL; /* toplev.c handles for compiler */
#else
	{
	  exception = &constraint_error;
	  msg = "arithmetic error";
	}
#endif
	break;

      case MTH$_FLOOVEMAT:
	exception = &constraint_error;
	msg = "floating overflow in math library";
	break;

      case SS$_CE24VRU:
	exception = &constraint_error;
	msg = "";
	break;

      case SS$_C980VTE:
	exception = &program_error;
	msg = "";
	break;

      default:
#ifdef IN_GCC
	exception = &program_error;
#else
	/* User programs expect Non_Ada_Error to be raised, reference
	   DEC Ada test CXCONDHAN. */
	exception = &Non_Ada_Error;
	msgdesc.len = 256;
	msgdesc.mbz = 0;
	msgdesc.adr = message;
	SYS$GETMSG (sigargs[1], &outlen, &msgdesc, msg_flag, 0);
	message [outlen] = 0;
	msg = message;
#endif
	break;
      }

  Raise_From_Signal_Handler (exception, msg);
}

static void
install_handler ()
{
  long prvhnd;
  char *c;

  c = (char *) malloc (1025);

  __gnat_error_prehandler_stack = &c[1024];

  /* __gnat_error_prehandler is an assembly function.  */
  SYS$SETEXV (1, __gnat_error_prehandler, 3, &prvhnd);
}

void
__gnat_initialize()
{
  install_handler();
}

/***************************************/
/* __gnat_initialize (VXWorks version) */
/***************************************/

#elif defined(__vxworks)

#include <stdio.h>
#include <signal.h>
#include <taskLib.h>
#include <intLib.h>
#include <iv.h>

static void
__gnat_int_handler (interr)
      int interr;
{
  /*
   * Note that we should use something like Raise_From_Int_Handler here,
   * but for now Raise_From_Signal_Handler will do the job. ???
   */

  Raise_From_Signal_Handler (&storage_error, "stack overflow");
}

/* Used for stack-checking on VxWorks. Must be task-local in
   tasking programs */

void *__gnat_stack_limit = NULL;

#ifndef __alpha_vxworks
/* getpid is used by s-parint.adb, but is not defined by VxWorks, except
   on Alpha VxWorks */

long getpid (void)
{
  return taskIdSelf ();
}
#endif

/* This is needed by the GNAT run time to handle Vxworks interrupts */
int __gnat_inum_to_ivec (int num)
{
  return INUM_TO_IVEC (num);
}

static void
__gnat_error_handler (sig, code, sc)
     int sig;
     int code;
     struct sigcontext *sc;
{
  struct Exception_Data *exception;
  sigset_t mask;
  int result;
  char *msg;

  /*
   * VxWorks will always mask out the signal during the signal
   * handler and will reenable it on a longjmp.  GNAT does
   * not generate a longjmp to return from a signal handler
   * so the signal will still be masked unless we unmask it.
   */
  (void) sigprocmask (SIG_SETMASK, NULL, &mask);
  sigdelset (&mask, sig);
  (void) sigprocmask (SIG_SETMASK, &mask, NULL);

  /*
   * VxWorks will suspend the task when it gets a hardware
   * exception.  We take the liberty of resuming the task
   * for the application.
   */
  if (taskIsSuspended (taskIdSelf ()) != 0)
    (void) taskResume (taskIdSelf ());

  switch (sig)
    {
    case SIGFPE:
      exception = &constraint_error;
      msg = "SIGFPE";
      break;
    case SIGILL:
      exception = &constraint_error;
      msg = "SIGILL";
      break;
    case SIGSEGV:
      exception = &program_error;
      msg = "SIGSEGV";
      break;
    case SIGBUS:
      exception = &program_error;
      msg = "SIGBUS";
      break;
    default:
      exception = &program_error;
      msg = "unhandled signal";
    }
  Raise_From_Signal_Handler (exception, msg);
}

static void
__gnat_install_handler ()
{
  struct sigaction act;

  /* Setup signal handler to map synchronous signals to appropriate
     exceptions.  Make sure that the handler isn't interrupted by another
     signal that might cause a scheduling event! */

  act.sa_handler = __gnat_error_handler;
  act.sa_flags = SA_SIGINFO | SA_ONSTACK;
  (void) sigemptyset (&act.sa_mask);

  (void) sigaction (SIGILL,  &act, NULL);
  (void) sigaction (SIGFPE,  &act, NULL);
  (void) sigaction (SIGSEGV, &act, NULL);
  (void) sigaction (SIGBUS,  &act, NULL);
}

#define HAVE_GNAT_INIT_FLOAT

void
__gnat_init_float ()
{
#if defined (_ARCH_PPC) && !defined (_SOFT_FLOAT)
  /* Disable overflow/underflow exceptions on the PPC processor, this is needed
      to get correct Ada semantic */
  asm ("mtfsb0 25");
  asm ("mtfsb0 26");
#endif

}

void
__gnat_initialize ()
{
  TASK_DESC pTaskDesc;
  if (taskInfoGet(taskIdSelf(), &pTaskDesc) != OK) {
    printErr ("Cannot get task info");
  }
  __gnat_stack_limit = (void *) pTaskDesc.td_pStackLimit;

  __gnat_init_float ();

#ifdef __mips_vxworks
#if 0
  /* For now remove this handler, since it is causing interferences with gdb */

  /*
   * Connect the overflow trap directly to the __gnat_int_handler routine
   * as it is not converted to a signal by VxWorks.
   */

  intConnect (INUM_TO_IVEC (IV_TRAP_VEC), &__gnat_int_handler, IV_TRAP_VEC);
#endif
#endif

   __gnat_install_handler ();
}


/***************************************/
/* __gnat_initialize (default version) */
/***************************************/

#else

/* For all other versions of GNAT, the initialize routine does nothing.  */

void
__gnat_initialize ()
{
}

#endif


/*********************/
/* __gnat_init_float */
/*********************/

/* This routine is called as each process thread is created, for possible
   initialization of the FP processor. This version is used under INTERIX,
   WIN32 and could be used under OS/2 */

#if defined (_WIN32) || defined (__INTERIX) || defined (__EMX__) \
  || defined (__Lynx__)

#define HAVE_GNAT_INIT_FLOAT

void
__gnat_init_float ()
{
#if defined (__i386__) || defined (i386)

  /* This is used to properly initialize the FPU on an x86 for each
     process thread. */

  asm ("finit");

#endif  /* Defined __i386__ */
}
#endif

/* Get the stack unwinding mechanism when available and when compiling
   a-init.c for the run time. Except in the case of a restricted run-time,
   such as RT-Linux modules (__RT__ is defined). */

#if !defined (IN_GCC) && !defined (__RT__)
/* If we have a definition of INCOMING_RETURN_ADDR_RTX, assume that
   the rest of the DWARF 2 frame unwind support is also provided.  */
#if !defined (DWARF2_UNWIND_INFO) && defined (INCOMING_RETURN_ADDR_RTX)
#define DWARF2_UNWIND_INFO 1
#endif

#ifdef DWARF2_UNWIND_INFO
#ifndef _SIZE_T_DEFINED
#include <sys/types.h>
#endif
#include "frame.h"

struct machine_state {
  frame_state f1, f2, f3;
  frame_state *udata, *udata_start, *sub_udata;
  void *pc, *pc_start, *new_pc;
};

typedef int word_type __attribute__ ((mode (__word__)));

/* This type is used in get_reg and put_reg to deal with ABIs where a void*
   is smaller than a word, such as the Irix 6 n32 ABI.  We cast twice to
   avoid a warning about casting between int and pointer of different
   sizes.  */

typedef int ptr_type __attribute__ ((mode (pointer)));

/* Get the value of register REG as saved in UDATA, where SUB_UDATA is a
   frame called by UDATA or 0.  */

static void*
get_reg (unsigned reg, frame_state *udata, frame_state *sub_udata)
{
  if (udata->saved[reg] == REG_SAVED_OFFSET)
    return (void *)(ptr_type)
      *(word_type *)(udata->cfa + udata->reg_or_offset[reg]);
  else if (udata->saved[reg] == REG_SAVED_REG && sub_udata)
    return get_reg (udata->reg_or_offset[reg], sub_udata, 0);
  else
    abort ();
}

/* Overwrite the saved value for register REG in frame UDATA with VAL.  */

static void
put_reg (unsigned reg, void *val, frame_state *udata)
{
  if (udata->saved[reg] == REG_SAVED_OFFSET)
    *(word_type *)(udata->cfa + udata->reg_or_offset[reg])
      = (word_type)(ptr_type) val;
  else
    abort ();
}

/* Copy the saved value for register REG from frame UDATA to frame
   TARGET_UDATA.  Unlike the previous two functions, this can handle
   registers that are not one word large.  */

static void
copy_reg (unsigned reg, frame_state *udata, frame_state *target_udata)
{
  if (udata->saved[reg] == REG_SAVED_OFFSET
      && target_udata->saved[reg] == REG_SAVED_OFFSET)
    memcpy (target_udata->cfa + target_udata->reg_or_offset[reg],
            udata->cfa + udata->reg_or_offset[reg],
            __builtin_dwarf_reg_size (reg));
  else
    abort ();
}

/* Overwrite the return address for frame UDATA with VAL.  */

static inline void
put_return_addr (void *val, frame_state *udata)
{
  val = __builtin_frob_return_addr (val);
  put_reg (udata->retaddr_column, val, udata);
}

#ifdef INCOMING_REGNO
/* Is the saved value for register REG in frame UDATA stored in a register
   window in the previous frame?  */

static int
in_reg_window (int reg, frame_state *udata)
{
  if (udata->saved[reg] != REG_SAVED_OFFSET)
    return 0;

#ifdef STACK_GROWS_DOWNWARD
  return udata->reg_or_offset[reg] > 0;
#else
  return udata->reg_or_offset[reg] < 0;
#endif
}
#endif /* INCOMING_REGNO */

/* Retrieve the return address for frame UDATA, where SUB_UDATA is a
   frame called by UDATA or 0.  */

static inline void *
get_return_addr (frame_state *udata, frame_state *sub_udata)
{
  return __builtin_extract_return_addr
    (get_reg (udata->retaddr_column, udata, sub_udata));
}

/* Thread-safe version of __frame_state_for */

static struct frame_state *
__frame_state_for_r (void *pc_target, struct frame_state *state_in)
{
  struct frame_state *f;

  (*Lock_Task) ();
  f = __frame_state_for (pc_target, state_in);
  (*Unlock_Task) ();
  return f;
}

/* Given the current frame UDATA and its return address PC, return the
   information about the calling frame in CALLER_UDATA.  */

void
__gnat_pop_frame (m)
     struct machine_state *m;
{
  frame_state *p;

  int i;

  m->pc = m->new_pc;
  p = m->udata;
  if (! __frame_state_for_r (m->pc, m->sub_udata))
    {
      m->new_pc = 0;
      return;
    }

  /* Now go back to our caller's stack frame.  If our caller's CFA register
     was saved in our stack frame, restore it; otherwise, assume the CFA
     register is SP and restore it to our CFA value.  */
  if (m->udata->saved[m->sub_udata->cfa_reg])
    m->sub_udata->cfa = get_reg (m->sub_udata->cfa_reg, m->udata, 0);
  else
    m->sub_udata->cfa = m->udata->cfa;
  m->sub_udata->cfa += m->sub_udata->cfa_offset;

  m->udata = m->sub_udata;
  m->sub_udata = p;
  m->new_pc = get_return_addr (m->udata, m->sub_udata) - 1;

  return;

/* ??? disable this code for now since it doesn't work properly */
#if 0
  if (m->pc == m->pc_start)
    return;

  /* Copy the frame's saved register values into our register save slots.  */

  for (i = 0; i < FIRST_PSEUDO_REGISTER; ++i)
    if (i != m->udata->retaddr_column && m->udata->saved[i])
      {
#ifdef INCOMING_REGNO
        /* If you modify the saved value of the return address
           register on the SPARC, you modify the return address for
           your caller's frame.  Don't do that here, as it will
           confuse get_return_addr.  */
        if (in_reg_window (i, m->udata)
            && m->udata->saved[m->udata->retaddr_column] == REG_SAVED_REG
            && m->udata->reg_or_offset[m->udata->retaddr_column] == i)
          continue;
#endif
        copy_reg (i, m->udata, m->udata_start);
      }
#endif
}

void
__gnat_set_machine_state (machine_state)
     struct machine_state *machine_state;
{
  frame_state sub_udata;

  /* Start at our stack frame.  */
label:
  machine_state->udata = &machine_state->f1;
  machine_state->sub_udata = &machine_state->f2;
  machine_state->udata_start = &machine_state->f3;

  if (! __frame_state_for_r (&&label, machine_state->udata))
    return;

  /* We need to get the value from the CFA register.  At this point in
     compiling libgnat.a we don't know whether or not we will use the frame
     pointer register for the CFA, so we check our unwind info.  */
  if (machine_state->udata->cfa_reg == __builtin_dwarf_fp_regnum ())
    machine_state->udata->cfa = __builtin_fp ();
  else
    machine_state->udata->cfa = __builtin_sp ();
  machine_state->udata->cfa += machine_state->udata->cfa_offset;

  memcpy (machine_state->udata_start, machine_state->udata,
    sizeof (frame_state));
  machine_state->new_pc =
  machine_state->pc_start =
  machine_state->pc = &&label;

  /* Do any necessary initialization to access arbitrary stack frames.
     On the SPARC, this means flushing the register windows.  */
  __builtin_unwind_init ();

  /* go up one frame */
  __gnat_pop_frame (machine_state);
}

void
__gnat_enter_handler (m, handler)
     struct machine_state *m;
     void *handler;
{
  void *retaddr;

#ifdef INCOMING_REGNO
      /* we need to update the saved return address register from
         the last frame we unwind, or the handler frame will have the wrong
         return address.  */
      if (m->udata->saved[m->udata->retaddr_column] == REG_SAVED_REG)
        {
          int i = m->udata->reg_or_offset[m->udata->retaddr_column];
          if (in_reg_window (i, m->udata))
            copy_reg (i, m->udata, m->udata_start);
        }
#endif

  /* Emit the stub to adjust sp and jump to the handler.  */
  retaddr = __builtin_eh_stub ();

  /* And then set our return address to point to the stub.  */
  if (m->udata_start->saved[m->udata_start->retaddr_column] ==
      REG_SAVED_OFFSET)
    put_return_addr (retaddr, m->udata_start);
  else
    __builtin_set_return_addr_reg (retaddr);

  /* Set up the registers we use to communicate with the stub.
     We check STACK_GROWS_DOWNWARD so the stub can use adjust_stack.  */
  __builtin_set_eh_regs
    (handler,
#ifdef STACK_GROWS_DOWNWARD
     m->udata->cfa - m->udata_start->cfa
#else
     m->udata_start->cfa - m->udata->cfa
#endif
     + m->udata->args_size);

  /* Epilogue:  restore the handler frame's register values and return
     to the stub.  */
}

__SIZE_TYPE__
__gnat_machine_state_length ()
{
  return sizeof (struct machine_state);
}

void *
__gnat_get_code_loc (m)
     struct machine_state *m;
{
  return m->pc;
}
#endif /* DWARF2_UNWIND_INFO */
#endif /* !IN_GCC && !__RT__ */

#ifndef HAVE_GNAT_INIT_FLOAT
/* All targets without a specific __gnat_init_float will use an empty one */
void
__gnat_init_float ()
{
}
#endif
