------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--         A D A . N U M E R I C S . D I S C R E T E _ R A N D O M          --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--          Copyright (C) 1992-2003 Free Software Foundation, Inc.          --
--                                                                          --
-- This specification is derived from the Ada Reference Manual for use with --
-- GNAT. The copyright notice above, and the license provisions that follow --
-- apply solely to the  contents of the part following the private keyword. --
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
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

--  Note: the implementation used in this package was contributed by
--  Robert Eachus. It is based on the work of L. Blum, M. Blum, and
--  M. Shub, SIAM Journal of Computing, Vol 15. No 2, May 1986. The
--  particular choices for P and Q chosen here guarantee a period of
--  562,085,314,430,582 (about 2**49), and the generated sequence has
--  excellent randomness properties. For further details, see the
--  paper "Fast Generation of Trustworthy Random Numbers", by Robert
--  Eachus, which describes both the algorithm and the efficient
--  implementation approach used here.

with Interfaces;

generic
   type Result_Subtype is (<>);

package Discrete_Random is

   --  The algorithm used here is reliable from a required statistical point
   --  of view only up to 48 bits. We try to behave reasonably in the case
   --  of larger types, but we can't guarantee the required properties.
   --  So generate a warning for these (slightly) dubious cases.

   pragma Compile_Time_Warning
     (Result_Subtype'Size > 48,
      "statistical properties not guaranteed for size '> 48");

   --  Basic facilities.

   type Generator is limited private;

   function Random (Gen : Generator) return Result_Subtype;

   procedure Reset (Gen : Generator);
   procedure Reset (Gen : Generator; Initiator : Integer);

   --  Advanced facilities.

   type State is private;

   procedure Save  (Gen : Generator; To_State   : out State);
   procedure Reset (Gen : Generator; From_State : State);

   Max_Image_Width : constant := 80;

   function Image (Of_State    : State)  return String;
   function Value (Coded_State : String) return State;

private
   subtype Int is Interfaces.Integer_32;
   subtype Rst is Result_Subtype;

   --  We prefer to use 14 digits for Flt, but some targets are more limited

   type Flt is digits Positive'Min (14, Long_Long_Float'Digits);

   RstF : constant Flt := Flt (Rst'Pos (Rst'First));
   RstL : constant Flt := Flt (Rst'Pos (Rst'Last));

   Offs : constant Flt := RstF - 0.5;

   K1   : constant := 94_833_359;
   K1F  : constant := 94_833_359.0;
   K2   : constant := 47_416_679;
   K2F  : constant := 47_416_679.0;
   Scal : constant Flt := (RstL - RstF + 1.0) / (K1F * K2F);

   type State is record
      X1  : Int := Int (2999 ** 2);
      X2  : Int := Int (1439 ** 2);
      P   : Int := K1;
      Q   : Int := K2;
      FP  : Flt := K1F;
      Scl : Flt := Scal;
   end record;

   type Generator is limited record
      Gen_State : State;
   end record;

end Discrete_Random;
