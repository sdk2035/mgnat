------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUNTIME COMPONENTS                          --
--                                                                          --
--           A D A . W I D E _ T E X T _ I O . I N T E G E R _ I O          --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                            $Revision: 1.7 $
--                                                                          --
--          Copyright (C) 1992-2000 Free Software Foundation, Inc.          --
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

with Ada.Wide_Text_IO.Integer_Aux;
with System.WCh_Con; use System.WCh_Con;
with System.WCh_WtS; use System.WCh_WtS;

package body Ada.Wide_Text_IO.Integer_IO is

   Need_LLI : constant Boolean := Num'Base'Size > Integer'Size;
   --  Throughout this generic body, we distinguish between the case
   --  where type Integer is acceptable, and where a Long_Long_Integer
   --  is needed. This constant Boolean is used to test for these cases
   --  and since it is a constant, only the code for the relevant case
   --  will be included in the instance.

   subtype TFT is Ada.Wide_Text_IO.File_Type;
   --  File type required for calls to routines in Aux

   package Aux renames Ada.Wide_Text_IO.Integer_Aux;

   ---------
   -- Get --
   ---------

   procedure Get
     (File  : in File_Type;
      Item  : out Num;
      Width : in Field := 0)
   is
   begin
      if Need_LLI then
         Aux.Get_LLI (TFT (File), Long_Long_Integer (Item), Width);
      else
         Aux.Get_Int (TFT (File), Integer (Item), Width);
      end if;

   exception
      when Constraint_Error => raise Data_Error;
   end Get;

   procedure Get
     (Item  : out Num;
      Width : in Field := 0)
   is
   begin
      Get (Current_Input, Item, Width);
   end Get;

   procedure Get
     (From : in Wide_String;
      Item : out Num;
      Last : out Positive)
   is
      S : constant String := Wide_String_To_String (From, WCEM_Upper);
      --  String on which we do the actual conversion. Note that the method
      --  used for wide character encoding is irrelevant, since if there is
      --  a character outside the Standard.Character range then the call to
      --  Aux.Gets will raise Data_Error in any case.

   begin
      if Need_LLI then
         Aux.Gets_LLI (S, Long_Long_Integer (Item), Last);
      else
         Aux.Gets_Int (S, Integer (Item), Last);
      end if;

   exception
      when Constraint_Error => raise Data_Error;
   end Get;

   ---------
   -- Put --
   ---------

   procedure Put
     (File  : in File_Type;
      Item  : in Num;
      Width : in Field := Default_Width;
      Base  : in Number_Base := Default_Base)
   is
   begin
      if Need_LLI then
         Aux.Put_LLI (TFT (File), Long_Long_Integer (Item), Width, Base);
      else
         Aux.Put_Int (TFT (File), Integer (Item), Width, Base);
      end if;
   end Put;

   procedure Put
     (Item  : in Num;
      Width : in Field := Default_Width;
      Base  : in Number_Base := Default_Base)
   is
   begin
      Put (Current_Output, Item, Width, Base);
   end Put;

   procedure Put
     (To   : out Wide_String;
      Item : in Num;
      Base : in Number_Base := Default_Base)
   is
      S : String (To'First .. To'Last);

   begin
      if Need_LLI then
         Aux.Puts_LLI (S, Long_Long_Integer (Item), Base);
      else
         Aux.Puts_Int (S, Integer (Item), Base);
      end if;

      for J in S'Range loop
         To (J) := Wide_Character'Val (Character'Pos (S (J)));
      end loop;
   end Put;

end Ada.Wide_Text_IO.Integer_IO;
