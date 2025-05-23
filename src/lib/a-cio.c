/****************************************************************************/
/*                                                                          */
/*                         GNAT COMPILER COMPONENTS                         */
/*                                                                          */
/*                                A - C I O                                 */
/*                                                                          */
/*                          C Implementation File                           */
/*                                                                          */
/*                            $Revision: 1.15 $
/*                                                                          */
/*          Copyright (C) 1992-1999 Free Software Foundation, Inc.          */
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

/* Routines for interface to scanf and printf functions for integer values */

#ifdef __RT__
/* Linux kernel modules don't have inputs, so don't define get_int.
   Simple output can be done via printk. */

put_int (int x)
{
  printk ("%d", x);
}

void put_char (int c)
{
  printk ("%c", c);
}

void put_char_stderr (int c)
{
  put_char (c);
}

#else
#include <stdio.h>

/* Don't use macros on linux since they cause incompatible changes between
   glibc 2.0 and 2.1 */
#ifdef linux
#undef putchar
#undef getchar
#undef fputc
#undef stderr
#endif

int get_int ()
{
  int x;
  scanf (" %d", &x);
  return x;
}

put_int (int x)
{
  printf ("%d", x);
}

int get_char (void)
{
#ifdef VMS
  return decc$getchar();
#else
  return getchar();
#endif
}

void put_char (int c) { putchar (c); }

void put_char_stderr (int c) { fputc (c, stderr); }
#endif

#ifdef __vxworks
char *mktemp (char *template)
{
  return tmpnam (NULL);
}
#endif
