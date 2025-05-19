/*****************************************************************************/
/*                                                                           */
/*                          GNAT COMPILER COMPONENTS                         */
/*                                                                           */
/*                                j p a t c h                                */
/*                                                                           */
/*                             $Revision: 1.2 $                              */
/*                                                                           */
/*           Copyright (C) 1998-1999 Ada Core Technologies, Inc.             */
/*                                                                           */
/*  GNAT is free software;  you can  redistribute it  and/or modify it under */
/*  terms of the  GNU General Public License as published  by the Free Soft- */
/*  ware  Foundation;  either version 2,  or (at your option) any later ver- */
/*  sion.  GNAT is distributed in the hope that it will be useful, but WITH- */
/*  OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY */
/*  or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License */
/*  for  more details.  You should have  received  a copy of the GNU General */
/*  Public License  distributed with GNAT;  see file COPYING.  If not, write */
/*  to  the Free Software Foundation,  59 Temple Place - Suite 330,  Boston, */
/*  MA 02111-1307, USA.                                                      */
/*                                                                           */
/*  JGNAT - The GNAT Ada 95 toolchain for the Java Virtual Machine is        */
/*          maintained by Ada Core Technologies, Inc. - http://www.gnat.com  */
/*                                                                           */
/*****************************************************************************/

/* The GNAT library comprise Ada and C sources. The C variables and
   functions defined in the C part of the GNAT library are typically
   used in the Ada Sources of GNAT, such as the compiler. Because
   JGNAT and GNAT share most of their sources, some of the C routines
   used by the Ada sources and provided in the GNAT library are
   inadequate for JGNAT (because JGNAT is a cross compiler for one
   thing).  To modify these C routines for JGNAT there are two
   solutions:

   o The first is to patch the C routines directly and add appropriate
     conditionals in the C part of the GNAT library. If we do this we
     must compile JGNAT with the latest GNAT library sources (with the
     C sources appropriately configured). This is unfortunate because
     it means that we have to build a GNAT compiler which goes with
     the latest library to avoid possible inconsistencies (and means
     for instanc that we cannot compile JGNAT with the currently
     supported version of GNAT).

   o The second solution is to patch the Ada sources that use the
     defective C routines to use some other C routine. This is the
     route we have chosen.

   The purpose of this file is to provide a replacement for those C
   routines available in the GNAT library whose definition is not
   correct for the purpose of JGNAT.

   The convention used to achieve this replacement is that a function
   "foo" defined in the C part of the GNAT library is replaced with
   "JGNAT_foo".  The JGNAT Makefile is responsible for patching the
   appropriate JGNAT Ada sources with the new name while this file
   contains the correct definition for the routine. */

/* Originally defined in a-adaint.c */
/* Get the list of installed standard libraries from the
   HKEY_LOCAL_MACHINE\SOFTWARE\Ada Core Technologies\GNAT\Standard Libraries
   key.  */

#include "config.h"

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <time.h>
#include <unistd.h>
#include <stdlib.h>

#if defined (__EMX__) || defined (MSDOS) || defined (_WIN32)
#include <string.h>
#endif

#if defined (_WIN32)
#include <dir.h>
#endif
#include <Windows32/defines.h>
#include <Windows32/errors.h>
#include <Windows32/base.h>
#include <Windows32/Structures.h>

LONG
STDCALL
RegOpenKeyExA (
    HKEY hKey,
        LPCSTR lpSubKey,
            DWORD ulOptions,
                REGSAM samDesired,
                    PHKEY phkResult
                        );
LONG
STDCALL
RegEnumValueA (
    HKEY hKey,
        DWORD dwIndex,
            LPSTR lpValueName,
                LPDWORD lpcbValueName,
                    LPDWORD lpReserved,
                        LPDWORD lpType,
                            LPBYTE lpData,
                                LPDWORD lpcbData
                                    );
#define RegOpenKeyEx RegOpenKeyExA
#define RegEnumValue RegEnumValueA

char *
JGNAT_Get_Libraries_From_Registry ()
{
  char *result = "";


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

  if (res == ERROR_SUCCESS)
    res = RegOpenKeyExA (reg_key, "Standard Libraries", 0, KEY_READ, &reg_key);

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

  return result;
}


