------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--              A D A . E N V I R O N M E N T _ V A R I A B L E S           --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--            Copyright (C) 2005, Free Software Foundation, Inc.            --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 2,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with GNAT;  see file COPYING.  If not, write --
-- to  the  Free Software Foundation,  51  Franklin  Street,  Fifth  Floor, --
-- Boston, MA 02110-1301, USA.                                              --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

with System;
--  with Ada.Unchecked_Deallocation;

package body Ada.Environment_Variables is
   type Object is new System.Address;

   -----------
   -- Clear --
   -----------

   procedure Clear (Name : String) is
      procedure Clear_Env_Var (Name : Object);
      pragma Import (C, Clear_Env_Var, "__gnat_unsetenv");

      F_Name  : String (1 .. Name'Length + 1);

   begin
      F_Name (1 .. Name'Length) := Name;
      F_Name (F_Name'Last)      := ASCII.NUL;

      Clear_Env_Var (Object (F_Name'Address));
   end Clear;

   -----------
   -- Clear --
   -----------

   procedure Clear is
      procedure Clear_Env;
      pragma Import (C, Clear_Env, "__gnat_clearenv");
   begin
      Clear_Env;
   end Clear;

   ------------
   -- Exists --
   ------------

   function Exists (Name : String) return Boolean is
      function Get_Env_Value_Ptr (Name : String) return Boolean;
      pragma Import (C, Get_Env_Value_Ptr, "__gnat_isenv");

      F_Name           : aliased String (1 .. Name'Length + 1);

   begin
      F_Name (1 .. Name'Length) := Name;
      F_Name (F_Name'Last)      := ASCII.NUL;

      return Get_Env_Value_Ptr (F_Name);
   end Exists;

   -------------
   -- Iterate --
   -------------

--     procedure Iterate
--       (Process : not null access procedure (Name, Value : String))
--     is
--        use type System.Address;
--
--        function Get_Env return Object;
--        pragma Import (C, Get_Env, "__gnat_environ");
--
--        function Get_Env_Length (Env : Object) return Integer;
--        pragma Import (C, Get_Env_Length, "__gnat_environ_length");
--
--        pragma Warnings (Off);
--        function Value (Env : Object; Number : in Integer) return String;
--        pragma Import (C, Value, "__gnat_environ_value");
--        pragma Warnings (On);
--
--        type String_Access is access all String;
--        procedure Free is new Ada.Unchecked_Deallocation (String,
--           String_Access);
--
--        Env        : constant Object  := Get_Env;
--        Env_Length : constant Integer := Get_Env_Length (Env);
--     begin
--        --  If the environment is null return directly
--
--        if System.Address (Env) = System.Null_Address then
--           return;
--        end if;
--
--        --  First get the number of environment variables
--
--        declare
--           Env_Copy : array (1 .. Env_Length) of String_Access;
--
--        begin
--           --  Copy the environment
--
--           for Iterator in 1 ..  Env_Length loop
--              Env_Copy (Iterator) := new String'(Value (Env, Iterator - 1));
--           end loop;
--
--           --  Iterate on the environment copy
--
--           for Iterator in 1 .. Env_Length loop
--              declare
--                 Current_Var : constant String := Env_Copy (Iterator).all;
--                 Value_Index : Natural := Env_Copy (Iterator)'First;
--
--              begin
--                 loop
--                    exit when Current_Var (Value_Index) = '=';
--                    Value_Index := Value_Index + 1;
--                 end loop;
--
--                 Process
--                   (Current_Var (Current_Var'First .. Value_Index - 1),
--                    Current_Var (Value_Index + 1 .. Current_Var'Last));
--              end;
--           end loop;
--
--           --  Free the copy of the environment
--
--           for Iterator in 1 .. Env_Length loop
--              Free (Env_Copy (Iterator));
--           end loop;
--        end;
--     end Iterate;

   ---------
   -- Set --
   ---------

   procedure Set (Name : String; Value : String) is
      F_Name  : String (1 .. Name'Length + 1);
      F_Value : String (1 .. Value'Length + 1);

      procedure Set_Env_Value (Name, Value : String);
      pragma Import (C, Set_Env_Value, "__gnat_setenv");

   begin
      F_Name (1 .. Name'Length) := Name;
      F_Name (F_Name'Last)      := ASCII.NUL;

      F_Value (1 .. Value'Length) := Value;
      F_Value (F_Value'Last)      := ASCII.NUL;

      Set_Env_Value (F_Name, F_Value);
   end Set;

   -----------
   -- Value --
   -----------

   function Value (Name : String) return String is
      use type System.Address;

      procedure Get_Env_Value_Ptr (Name : in String;
         Length : out Integer;
         Value  : out Object);
      pragma Import (C, Get_Env_Value_Ptr, "__gnat_getenv");

      procedure Strncpy (Astring_Addr, Cstring : Object; N : Integer);
      pragma Import (C, Strncpy, "strncpy");

      Env_Value_Ptr    : Object;
      Env_Value_Length : Integer;
      F_Name           : String (1 .. Name'Length + 1);

   begin
      F_Name (1 .. Name'Length) := Name;
      F_Name (F_Name'Last)      := ASCII.NUL;

      Get_Env_Value_Ptr
        (F_Name, Env_Value_Length, Env_Value_Ptr);

      if System.Address (Env_Value_Ptr) = System.Null_Address then
         raise Constraint_Error;
      end if;

      if Env_Value_Length > 0 then
         declare
            Result : aliased String (1 .. Env_Value_Length);
         begin
            Strncpy (Object (Result'Address), Env_Value_Ptr,
               Env_Value_Length);
            return Result;
         end;
      else
         return "";
      end if;
   end Value;

end Ada.Environment_Variables;
