/****************************************************************************/
/*                                                                          */
/*                         GNAT COMPILER COMPONENTS                         */
/*                                                                          */
/*                             A - A D A I N T                              */
/*                                                                          */
/*                            $Revision: 1.136 $
/*                                                                          */
/*                          C Implementation File                           */
/*                                                                          */
/*          Copyright (C) 1992-2000, Free Software Foundation, Inc.         */
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

/*  This file contains those routines named by Import pragmas in packages   */
/*  in the GNAT hierarchy (especially GNAT.OS_Lib) and in package Osint.    */
/*  Many of the subprograms in OS_Lib import standard library calls         */
/*  directly. This file contains all other routines.                        */

/*  mcc: */
#ifndef _WIN32
#define _WIN32
#endif

#ifdef _WIN32

#include "stdarg.h"
#include <windows.h>

#endif

/* Get the list of installed standard libraries from the
   HKEY_LOCAL_MACHINE\SOFTWARE\Ada Core Technologies\GNAT\Standard Libraries
   key.  */

char *
MGNAT_Get_Libraries_From_Registry (int Compact)
{
  char *result = "";

#if defined (_WIN32) && ! defined (__vxworks)

  HKEY reg_key;
  DWORD name_size, value_size;
  char name[256];
  char value[256];
  DWORD type;
  DWORD index;
  LONG res;

  /* First open the key.  */
  res = RegOpenKeyExA (HKEY_LOCAL_MACHINE, "SOFTWARE", 0, KEY_READ, &reg_key);

  if (res == ERROR_SUCCESS)
    res = RegOpenKeyExA (reg_key, "Ada Core Technologies", 0,
                         KEY_READ, &reg_key);

  if (res == ERROR_SUCCESS)
    res = RegOpenKeyExA (reg_key, "MGNAT", 0, KEY_READ, &reg_key);

  if (Compact)
  {
     if (res == ERROR_SUCCESS)
       res = RegOpenKeyExA (reg_key, "Compact Libraries", 0, 
          KEY_READ, &reg_key);
  }
  else
  {
     if (res == ERROR_SUCCESS)
       res = RegOpenKeyExA (reg_key, "Standard Libraries", 0, 
          KEY_READ, &reg_key);
  }

  /* If the key exists, read out all the values in it and concatenate them
     into a path.  */
  for (index = 0; res == ERROR_SUCCESS; index++)
    {
      value_size = name_size = 256;
      res = RegEnumValue (reg_key, index, name, &name_size, 0,
                          &type, value, &value_size);

      if (res == ERROR_SUCCESS && type == REG_SZ)
        {
          char *old_result = result;

          result = (char *) malloc (strlen (old_result) + value_size + 2);
          strcpy (result, old_result);
          strcat (result, value);
          strcat (result, ";");
        }
    }

  /* Remove the trailing ";".  */
  if (result[0] != 0)
    result[strlen (result) - 1] = 0;

#endif
  return result;
}


/* Update PATH using KEY if PATH starts with PREFIX as a directory.  */

char *
update_path (path, key)
     char *path;
     char *key;
{
  return path;
}

#ifdef NEED_GETENV
void __gnat_getenv (char *name, int *len, char **value)
{
   *value = (char *) getenv (name);
   if (!*value)
      *len = 0;
   else
      *len = strlen (*value);
   return;
}
#endif
