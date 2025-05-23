------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                         G N A T . R E G I S T R Y                        --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--                            $Revision: 1.5 $
--                                                                          --
--              Copyright (C) 2001 Free Software Foundation, Inc.           --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 2,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with GNAT;  see file COPYING.  If not, write --
-- to  the Free Software Foundation,  59 Temple Place - Suite 330,  Boston, --
-- MA 02111-1307, USA.                                                      --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
-- GNAT is maintained by Ada Core Technologies Inc (http://www.gnat.com).   --
--                                                                          --
------------------------------------------------------------------------------

--  The registry is a Windows database to store key/value pair. It is used
--  to keep Windows operation system and applications configuration options.
--  The database is a hierarchal set of key and for each key a value can
--  be associated. This package provides high level routines to deal with
--  the Windows registry. For full registry API, but at a lower level of
--  abstraction, refer to the Win32.Winreg package provided with the
--  Win32Ada binding. For example this binding handle only key values of
--  type Standard.String.

--  This package is specific to the NT version of GNAT, and is not available
--  on any other platforms.
with System;
package GNAT.Registry is

   type HKEY is new System.Address;
   --  HKEY is a handle to a registry key, including standard registry keys:
   --  HKEY_CLASSES_ROOT, HKEY_CURRENT_CONFIG, HKEY_CURRENT_USER,
   --  HKEY_LOCAL_MACHINE, HKEY_USERS, HKEY_PERFORMANCE_DATA.

   function HKEY_CLASSES_ROOT     return HKEY;
   function HKEY_CURRENT_USER     return HKEY;
   function HKEY_CURRENT_CONFIG   return HKEY;
   function HKEY_LOCAL_MACHINE    return HKEY;
   function HKEY_USERS            return HKEY;
   function HKEY_PERFORMANCE_DATA return HKEY;

   type Key_Mode is (Read_Only, Read_Write);
   --  Access mode for the registry key.

   function Create_Key
     (From_Key : HKEY;
      Sub_Key  : String;
      Mode     : Key_Mode := Read_Write)
      return     HKEY;
   --  Open or create a key (named Sub_Key) in the Windows registry database.
   --  The key will be created under key From_Key. It returns the key handle.
   --  From_Key must be a valid handle to an already opened key or one of
   --  the standard keys identified by HKEY declarations above.

   function Open_Key
     (From_Key : HKEY;
      Sub_Key  : String;
      Mode     : Key_Mode := Read_Only)
      return     HKEY;
   --  Return a registry key handle for key named Sub_Key opened under key
   --  From_Key. It is possible to open a key at any level in the registry
   --  tree in a single call to Open_Key.

   procedure Close_Key (Key : HKEY);
   --  Close registry key handle. All resources used by Key are released.

   function Key_Exists (From_Key : HKEY; Sub_Key : String) return Boolean;
   --  Returns True if Sub_Key is defined under From_Key in the registry.

   function Query_Value (From_Key : HKEY; Sub_Key : String) return String;
   --  Returns the registry key's value associated with Sub_Key in From_Key
   --  registry key.

   procedure Set_Value (From_Key : HKEY; Sub_Key : String; Value : String);
   --  Add the pair (Sub_Key, Value) into From_Key registry key.

   procedure Delete_Key (From_Key : HKEY; Sub_Key : String);
   --  Remove Sub_Key from the registry key From_Key.

   procedure Delete_Value (From_Key : HKEY; Sub_Key : String);
   --  Remove the named value Sub_Key from the registry key From_Key.

   generic
      with procedure Action
        (Index   : Positive;
         Sub_Key : String;
         Value   : String;
         Quit    : in out Boolean);
   procedure For_Every_Key_Value (From_Key : HKEY);
   --  Iterates over all the pairs (Sub_Key, Value) registered under
   --  From_Key. Index will be set to 1 for the first key and will be
   --  incremented by one in each iteration. Quit can be set to True to
   --  stop iteration; its initial value is False.
   --
   --  Key value that are not of type string are skipped. In this case, the
   --  iterator behaves exactly as if the key was not present. Note that you
   --  must use the Win32.Winreg API to deal with this case.

end GNAT.Registry;
