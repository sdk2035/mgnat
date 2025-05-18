------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                         G N A T . R E G I S T R Y                        --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                            $Revision: 1.4 $
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

with System;

package body GNAT.Registry is

   use System;

   function HKEY_CLASSES_ROOT     return HKEY is
      function ClassesRoot return HKEY;
      pragma Import (C, ClassesRoot, "getClassesRoot");
   begin
      return ClassesRoot;
   end HKEY_CLASSES_ROOT;
   function HKEY_CURRENT_USER     return HKEY is
      function CurrentUser return HKEY;
      pragma Import (C, CurrentUser, "getCurrentUser");
   begin
      return CurrentUser;
   end HKEY_CURRENT_USER;
   function HKEY_CURRENT_CONFIG   return HKEY is
      function CurrentConfig return HKEY;
      pragma Import (C, CurrentConfig, "getCurrentConfig");
   begin
      return CurrentConfig;
   end HKEY_CURRENT_CONFIG;
   function HKEY_LOCAL_MACHINE    return HKEY is
      function LocalMachine return HKEY;
      pragma Import (C, LocalMachine, "getLocalMachine");
   begin
      return LocalMachine;
   end HKEY_LOCAL_MACHINE;
   function HKEY_USERS            return HKEY is
      function Users return HKEY;
      pragma Import (C, Users, "getUsers");
   begin
      return Users;
   end HKEY_USERS;
   function HKEY_PERFORMANCE_DATA return HKEY is
      function PerformanceData return HKEY;
      pragma Import (C, PerformanceData, "getPerformanceData");
   begin
      return PerformanceData;
   end HKEY_PERFORMANCE_DATA;

   ---------------
   -- Close_Key --
   ---------------

   procedure Close_Key (Key : HKEY) is
      procedure RegCloseKey (Key : HKEY);
      pragma Import (C, RegCloseKey, "RegCloseKey");
   begin
      RegCloseKey (Key);
   end Close_Key;

   ----------------
   -- Create_Key --
   ----------------

   function Create_Key
     (From_Key : HKEY;
      Sub_Key  : String;
      Mode     : Key_Mode := Read_Write)
      return     HKEY
   is
      function CreateSubKey (Key : HKEY;
         Sub_Key : String;
         Mode    : Boolean) return HKEY;
      pragma Import (C, CreateSubKey, "CreateSubKey");
   begin
      if Mode = Read_Write then
         return CreateSubKey (From_Key, Sub_Key, True);
      else
         return CreateSubKey (From_Key, Sub_Key, False);
      end if;
   end Create_Key;

   ----------------
   -- Delete_Key --
   ----------------

   procedure Delete_Key (From_Key : HKEY; Sub_Key : String) is
      procedure DeleteSubKeyTree (From_Key : HKEY;
         Sub_Key : String);
      pragma Import (C, DeleteSubKeyTree, "DeleteSubKeyTree");
   begin
      DeleteSubKeyTree (From_Key, Sub_Key);
   end Delete_Key;

   ------------------
   -- Delete_Value --
   ------------------

   procedure Delete_Value (From_Key : HKEY; Sub_Key : String) is
      procedure DeleteValue (From_Key : HKEY;
         Sub_Key : String);
      pragma Import (C, DeleteValue, "DeleteValue");
   begin
      DeleteValue (From_Key, Sub_Key);
   end Delete_Value;

   -------------------------
   -- For_Every_Key_Value --
   -------------------------

   procedure For_Every_Key_Value (From_Key : HKEY) is
      Sub_Key : String (1 .. 100);
      pragma Warnings (Off, Sub_Key);

      Value : String (1 .. 100);
      pragma Warnings (Off, Value);

      Sub_Key_Len : Natural;
      Value_Len   : Natural;
      Num_Values  : Natural;
      function InitEnumeration (Key : HKEY) return Integer;
      pragma Import (C, InitEnumeration, "InitEnumeration");

      function RegEnumName (I : Integer; Name : String) return Integer;
      pragma Import (C, RegEnumName, "RegEnumName");

      function Enumerate (Key : HKEY; I : Integer; Name : String)
         return Integer;
      pragma Import (C, Enumerate, "Enumerate");

      Quit : Boolean := False;
   begin
      Num_Values := InitEnumeration (From_Key);
      for I in 1 .. Num_Values loop
         Sub_Key_Len := RegEnumName (I, Sub_Key);
         Value_Len := Enumerate (From_Key, I, Value);
         Action (I,
                 Sub_Key (1 .. Sub_Key_Len),
                 Value (1 .. Value_Len),
                 Quit);

         exit when Quit;
      end loop;
   end For_Every_Key_Value;

   ----------------
   -- Key_Exists --
   ----------------

   function Key_Exists
     (From_Key : HKEY;
      Sub_Key  : String)
      return     Boolean
   is
      New_Key : HKEY;

   begin
      New_Key := Open_Key (From_Key, Sub_Key);
      Close_Key (New_Key);

      --  We have been able to open the key so it exists

      return True;

   exception
      when others =>

         --  An error occured, the key was not found

         return False;
   end Key_Exists;

   --------------
   -- Open_Key --
   --------------

   function Open_Key
     (From_Key : HKEY;
      Sub_Key  : String;
      Mode     : Key_Mode := Read_Only)
      return     HKEY
   is
      function OpenSubKey (Key : HKEY;
         Sub_Key : String;
         Mode    : Boolean) return HKEY;
      pragma Import (C, OpenSubKey, "OpenSubKey");
   begin
      if Mode = Read_Write then
         return OpenSubKey (From_Key, Sub_Key, True);
      else
         return OpenSubKey (From_Key, Sub_Key, False);
      end if;
   end Open_Key;

   -----------------
   -- Query_Value --
   -----------------

   function Query_Value
     (From_Key : HKEY;
      Sub_Key  : String)
      return     String
   is
      Value : String (1 .. 100);
      pragma Warnings (Off, Value);

      function GetValue (From_Key : HKEY;
         Sub_Key  : String;
         Result   : String) return Integer;
      pragma Import (C, GetValue, "RegGetValue");

      Size_Value : Integer;
   begin
      Size_Value := GetValue (From_Key, Sub_Key, Value);
      return Value (1 .. Size_Value);
   end Query_Value;

   ---------------
   -- Set_Value --
   ---------------

   procedure Set_Value
     (From_Key : HKEY;
      Sub_Key  : String;
      Value    : String)
   is
      procedure SetValue (From_Key : HKEY;
         Sub_Key  : String;
         Result   : String);
      pragma Import (C, SetValue, "RegSetValue");
   begin
      SetValue (From_Key, Sub_Key, Value);
   end Set_Value;

end GNAT.Registry;
