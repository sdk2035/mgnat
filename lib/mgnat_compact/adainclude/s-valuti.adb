------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                      S Y S T E M . V A L _ U T I L                       --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                            $Revision: 1.12 $                             --
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

with GNAT.Case_Util; use GNAT.Case_Util;

package body System.Val_Util is

   ----------------------
   -- Normalize_String --
   ----------------------

   procedure Normalize_String
     (S    : in out String;
      F, L : out Integer)
   is
   begin
      F := S'First;
      L := S'Last;

      --  Scan for leading spaces

      while F <= L and then S (F) = ' ' loop
         F := F + 1;
      end loop;

      --  Check for case when the string contained no characters

      if F > L then
         raise Constraint_Error;
      end if;

      --  Scan for trailing spaces

      while S (L) = ' ' loop
         L := L - 1;
      end loop;

      --  Except in the case of a character literal, convert to upper case

      if S (F) /= ''' then
         for J in F .. L loop
            S (J) := To_Upper (S (J));
         end loop;
      end if;

   end Normalize_String;

   ---------------
   -- Scan_Sign --
   ---------------

   procedure Scan_Sign
     (Str   : String;
      Ptr   : access Integer;
      Max   : Integer;
      Minus : out Boolean;
      Start : out Positive)
   is
      P : Natural := Ptr.all;

   begin
      --  Deal with case of null string (all blanks!). As per spec, we
      --  raise constraint error, with Ptr unchanged, and thus > Max.

      if P > Max then
         raise Constraint_Error;
      end if;

      --  Scan past initial blanks

      while Str (P) = ' ' loop
         P := P + 1;

         if P > Max then
            Ptr.all := P;
            raise Constraint_Error;
         end if;
      end loop;

      Start := P;

      --  Remember an initial minus sign

      if Str (P) = '-' then
         Minus := True;
         P := P + 1;

         if P > Max then
            Ptr.all := Start;
            raise Constraint_Error;
         end if;

      --  Skip past an initial plus sign

      elsif Str (P) = '+' then
         Minus := False;
         P := P + 1;

         if P > Max then
            Ptr.all := Start;
            raise Constraint_Error;
         end if;

      else
         Minus := False;
      end if;

      Ptr.all := P;
   end Scan_Sign;

   -------------------
   -- Scan_Exponent --
   -------------------

   function Scan_Exponent
     (Str  : String;
      Ptr  : access Integer;
      Max  : Integer;
      Real : Boolean := False)
      return Integer
   is
      P : Natural := Ptr.all;
      M : Boolean;
      X : Integer;

   begin
      if P >= Max
        or else (Str (P) /= 'E' and then Str (P) /= 'e')
      then
         return 0;
      end if;

      --  We have an E/e, see if sign follows

      P := P + 1;

      if Str (P) = '+' then
         P := P + 1;

         if P > Max then
            return 0;
         else
            M := False;
         end if;

      elsif Str (P) = '-' then
         P := P + 1;

         if P > Max or else not Real then
            return 0;
         else
            M := True;
         end if;

      else
         M := False;
      end if;

      if Str (P) not in '0' .. '9' then
         return 0;
      end if;

      --  Scan out the exponent value as an unsigned integer. Values larger
      --  than (Integer'Last / 10) are simply considered large enough here.
      --  This assumption is correct for all machines we know of (e.g. in
      --  the case of 16 bit integers it allows exponents up to 3276, which
      --  is large enough for the largest floating types in base 2.)

      X := 0;

      loop
         if X < (Integer'Last / 10) then
            X := X * 10 + (Character'Pos (Str (P)) - Character'Pos ('0'));
         end if;

         P := P + 1;

         exit when P > Max;

         if Str (P) = '_' then
            Scan_Underscore (Str, P, Ptr, Max, False);
         else
            exit when Str (P) not in '0' .. '9';
         end if;
      end loop;

      if M then
         X := -X;
      end if;

      Ptr.all := P;
      return X;

   end Scan_Exponent;

   --------------------------
   -- Scan_Trailing_Blanks --
   --------------------------

   procedure Scan_Trailing_Blanks (Str : String; P : Positive) is
   begin
      for J in P .. Str'Last loop
         if Str (J) /= ' ' then
            raise Constraint_Error;
         end if;
      end loop;
   end Scan_Trailing_Blanks;

   ---------------------
   -- Scan_Underscore --
   ---------------------

   procedure Scan_Underscore
     (Str : String;
      P   : in out Natural;
      Ptr : access Integer;
      Max : Integer;
      Ext : Boolean)
   is
      C : Character;

   begin
      P := P + 1;

      --  If underscore is at the end of string, then this is an error and
      --  we raise Constraint_Error, leaving the pointer past the undescore.
      --  This seems a bit strange. It means e,g, that if the field is:

      --    345_

      --  that Constraint_Error is raised. You might think that the RM in
      --  this case would scan out the 345 as a valid integer, leaving the
      --  pointer at the underscore, but the ACVC suite clearly requires
      --  an error in this situation (see for example CE3704M).

      if P > Max then
         Ptr.all := P;
         raise Constraint_Error;
      end if;

      --  Similarly, if no digit follows the underscore raise an error. This
      --  also catches the case of double underscore which is also an error.

      C := Str (P);

      if C in '0' .. '9'
        or else
          (Ext and then (C in 'A' .. 'F' or else C in 'a' .. 'f'))
      then
         return;
      else
         Ptr.all := P;
         raise Constraint_Error;
      end if;
   end Scan_Underscore;

end System.Val_Util;
