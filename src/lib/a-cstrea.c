/****************************************************************************/
/*                                                                          */
/*                          GNAT RUN-TIME COMPONENTS                        */
/*                                                                          */
/*              Auxiliary C functions for Interfaces.C.Streams              */
/*                                                                          */
/*                                   Body                                   */
/*                                                                          */
/*                              $Revision: 1.45 $
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

/* Routines required for implementing routines in Interfaces.C.Streams */

#ifdef __vxworks
#include "vxWorks.h"
#endif

#include "config.h"
#include <sys/types.h>
#include <sys/stat.h>
#include <stdio.h>

#ifdef __EMX__
#include <stdlib.h>
int max_path_len = _MAX_PATH;

#elif defined (VMS)
#include "a-adaint.h"
#include <unixlib.h>
int max_path_len = 255; /* PATH_MAX */

#elif defined (__vxworks) || defined (__OPENNT)
#include <limits.h>
int max_path_len = PATH_MAX;

#elif defined (linux)
#include <sys/param.h>

/* If we cannot find MAXPATHLEN there, try in unistd.h.  That file might
   not exist, but we'll blow up anyway if we don't try something.  */
#ifndef MAXPATHLEN
#include <unistd.h>
#endif

/* Don't use macros on linux since they cause incompatible changes between
   glibc 2.0 and 2.1 */

#ifdef stderr
#  undef stderr
#endif
#ifdef stdin
#  undef stdin
#endif
#ifdef stdout
#  undef stdout
#endif

int max_path_len = MAXPATHLEN;

#else
#include <sys/param.h>

/* If we can't find MAXPATHLEN there, try in unistd.h.  That file might
   not exist, but we'll blow up anyway if we don't try something.  */
#ifndef MAXPATHLEN
#include <unistd.h>
#endif

int max_path_len = MAXPATHLEN;
#endif

/* the _IONBF value in CYGNUS or MINGW32 stdio.h is wrong */
#if defined (WINNT) || defined (_WINNT)
#undef _IONBF
#define _IONBF 0004
#endif

int
feof__ (stream)
     FILE *stream;
{
  return (feof (stream));
}

int
ferror__ (stream)
     FILE *stream;
{
   return (ferror (stream));
}

int
fileno__ (stream)
     FILE *stream;
{
   return (fileno (stream));
}

int
is_regular_file_fd (fd)
     int fd;
{
  int ret;
  struct stat statbuf;

#ifdef __EMX__
  /* Programs using screen I/O may need to reset the FPU after
     initialization of screen-handling related DLL's, so force
     DLL initialization by doing a null-write and then reset the FPU */

  DosWrite (0, &ret, 0, &ret);
  __gnat_init_float();
#endif

  ret = fstat (fd, &statbuf);
  return (!ret && S_ISREG (statbuf.st_mode));
}

/* on some systems, the constants for seek are not defined, if so, then
   provide the conventional definitions */

#ifndef SEEK_SET
#define SEEK_SET 0  /* Set file pointer to offset                           */
#define SEEK_CUR 1  /* Set file pointer to its current value plus offset    */
#define SEEK_END 2  /* Set file pointer to the size of the file plus offset */
#endif

/* if L_tmpnam is not set, use a large number that should be safe */
#ifndef L_tmpnam
#define L_tmpnam 256
#endif

int    c_constant_eof      = EOF;
int    c_constant_iofbf    = _IOFBF;
int    c_constant_iolbf    = _IOLBF;
int    c_constant_ionbf    = _IONBF;
int    c_constant_l_tmpnam = L_tmpnam;
int    c_constant_seek_cur = SEEK_CUR;
int    c_constant_seek_end = SEEK_END;
int    c_constant_seek_set = SEEK_SET;

FILE *
c_constant_stderr ()
{
  return stderr;
}

FILE *
c_constant_stdin ()
{
  return stdin;
}

FILE *
c_constant_stdout ()
{
  return stdout;
}

char *
full_name (nam, buffer)
     char *nam;
     char *buffer;
{
  char *p;

#if defined(__EMX__) || defined (__MINGW32__)
  /* if this is a device file return it as is */
  /* under Windows NT and OS/2 a device file end with : */
  if (nam [strlen (nam) - 1] == ':')
    {
      strcpy (buffer, nam);
    }
  else
    {
      _fullpath (buffer, nam, max_path_len);
      for (p = buffer; *p; p++)
	if (*p == '/')
	  *p = '\\';
    }

#elif defined (MSDOS)
  _fixpath (nam, buffer);

#elif defined (sgi) || defined (sun)

  /* Use realpath function which resolves links and references to .. and ..
     on those Unix systems that support it. Note that linux provides it but
     cannot handle more than 5 symbolic links in a full name, so we use the
     getcwd approach instead. */
  realpath (nam, buffer);

#elif defined (VMS)
  strcpy (buffer, to_canonical_file_spec (nam));

  if (buffer[0] == '/')
    {
      strcpy (buffer, to_host_file_spec (buffer));
    }
  else
    {
      char nambuffer [max_path_len];

      strcpy (nambuffer, buffer);
      strcpy (buffer, getcwd (buffer, max_path_len, 0));
      strcat (buffer, "/");
      strcat (buffer, nambuffer);
      strcpy (buffer, to_host_file_spec (buffer));
    }

  return buffer;

#else
  extern char *getcwd();

  if (nam[0] != '/')
    {
      p = getcwd (buffer, max_path_len);
      if (p == 0)
	{
	  buffer[0] = '\0';
	  return NULL;
	}

      /* If the name returned is an absolute path, it is safe to append /
	 to the path and concatenate the name of the file. */
      if (buffer[0] == '/')
	strcat (buffer, "/");

      strcat (buffer, nam);
    }
  else
    strcpy (buffer, nam);

#endif
}
