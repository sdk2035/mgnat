------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUNTIME COMPONENTS                          --
--                                                                          --
--           A D A . W I D E _ T E X T _ IO . C O M P L E X _ I O           --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                            $Revision: 1.4 $                              --
--                                                                          --
--   Copyright (C) 1992,1993,1994,1995,1996 Free Software Foundation, Inc.  --
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
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- It is now maintained by Ada Core Technologies Inc (http://www.gnat.com). --
--                                                                          --
------------------------------------------------------------------------------

with Ada.Wide_Text_IO.Complex_Aux;
with System.WCh_Con; use System.WCh_Con;
with System.WCh_WtS; use System.WCh_WtS;

with Ada.Unchecked_Conversion;

package body Ada.Wide_Text_IO.Complex_IO is

   package Aux renames Ada.Wide_Text_IO.Complex_Aux;

   subtype LLF is Long_Long_Float;
   --  Type used for calls to routines in Aux

--   subtype TFT is Ada.Wide_Text_IO.File_Type;
   --  File type required for calls to routines in Aux

   function TFT is new
     Ada.Unchecked_Conversion (File_Type, Ada.Wide_Text_IO.File_Type);
   --  This unchecked conversion is to get around a visibility bug in
   --  GNAT version 2.04w. It should be possible to simply use the
   --  subtype declared above and do normal checked conversions.

   ---------
   -- Get --
   ---------

   procedure Get
     (File  : in  File_Type;
      Item  : out Complex;
      Width : in  Field := 0)
   is
      Real_Item  : Real'Base;
      Imag_Item  : Real'Base;

   begin
      Aux.Get (TFT (File), LLF (Real_Item), LLF (Imag_Item), Width);
      Item := (Real_Item, Imag_Item);

   exception
      when Constraint_Error => raise Data_Error;
   end Get;

   ---------
   -- Get --
   ---------

   procedure Get
     (Item  : out Complex;
      Width : in  Field := 0)
   is
   begin
      Get (Current_Input, Item, Width);
   end Get;

   ---------
   -- Get --
   ---------

   procedure Get
     (From : in  Wide_String;
      Item : out Complex;
      Last : out Positive)
   is
      Real_Item : Real'Base;
      Imag_Item : Real'Base;

      S : constant String := Wide_String_To_String (From, WCEM_Upper);
      --  String on which we do the actual conversion. Note that the method
      --  used for wide character encoding is irrelevant, since if there is
      --  a character outside the Standard.Character range then the call to
      --  Aux.Gets will raise Data_Error in any case.

   begin
      Aux.Gets (S, LLF (Real_Item), LLF (Imag_Item), Last);
      Item := (Real_Item, Imag_Item);

   exception
      when Data_Error => raise Constraint_Error;
   end Get;

   ---------
   -- Put --
   ---------

   procedure Put
     (File : in File_Type;
      Item : in Complex;
      Fore : in Field := Default_Fore;
      Aft  : in Field := Default_Aft;
      Exp  : in Field := Default_Exp)
   is
   begin
      Aux.Put (TFT (File), LLF (Re (Item)), LLF (Im (Item)), Fore, Aft, Exp);
   end Put;

   ---------
   -- Put --
   ---------

   procedure Put
     (Item : in Complex;
      Fore : in Field := Default_Fore;
      Aft  : in Field := Default_Aft;
      Exp  : in Field := Default_Exp)
   is
   begin
      Put (Current_Output, Item, Fore, Aft, Exp);
   end Put;

   ---------
   -- Put --
   ---------

   procedure Put
     (To   : out Wide_String;
      Item : in  Complex;
      Aft  : in  Field := Default_Aft;
      Exp  : in  Field := Default_Exp)
   is
      S : String (To'First .. To'Last);

   begin
      Aux.Puts (S, LLF (Re (Item)), LLF (Im (Item)), Aft, Exp);

      for J in S'Range loop
         To (J) := Wide_Character'Val (Character'Pos (S (J)));
      end loop;
   end Put;

end Ada.Wide_Text_IO.Complex_IO;
