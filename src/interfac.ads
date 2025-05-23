------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                           I N T E R F A C E S                            --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--          Copyright (C) 2002-2004 Free Software Foundation, Inc.          --
--                                                                          --
-- This specification is derived from the Ada Reference Manual for use with --
-- GNAT. The copyright notice above, and the license provisions that follow --
-- apply solely to the implementation dependent additions to thie file.     --
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
--
--
--
--
--
--
--
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

--  Assumes integer sizes of 8, 16, 32 and 64 are available, and that the
--  floating-point formats are IEEE compatible.

--  Note: There is a specialized version of this package for OpenVMS.

package Interfaces is
pragma Pure (Interfaces);

   type Integer_8  is range -2 **  7 .. 2 **  7 - 1;
   for Integer_8'Size use  8;

   type Integer_16 is range -2 ** 15 .. 2 ** 15 - 1;
   for Integer_16'Size use 16;

   type Integer_32 is range -2 ** 31 .. 2 ** 31 - 1;
   for Integer_32'Size use 32;

   type Integer_64 is range -2 ** 63 .. 2 ** 63 - 1;
   for Integer_64'Size use 64;

   type Unsigned_8  is mod 2 **  8;
   for Unsigned_8'Size use  8;

   type Unsigned_16 is mod 2 ** 16;
   for Unsigned_16'Size use 16;

   type Unsigned_32 is mod 2 ** 32;
   for Unsigned_32'Size use 32;

   type Unsigned_64 is mod 2 ** 64;
   for Unsigned_64'Size use 64;

   function Shift_Left
     (Value  : Unsigned_8;
      Amount : Natural) return Unsigned_8;

   function Shift_Right
     (Value  : Unsigned_8;
      Amount : Natural) return Unsigned_8;

   function Shift_Right_Arithmetic
     (Value  : Unsigned_8;
      Amount : Natural) return Unsigned_8;

   function Rotate_Left
     (Value  : Unsigned_8;
      Amount : Natural) return Unsigned_8;

   function Rotate_Right
     (Value  : Unsigned_8;
      Amount : Natural) return Unsigned_8;

   function Shift_Left
     (Value  : Unsigned_16;
      Amount : Natural) return    Unsigned_16;

   function Shift_Right
     (Value  : Unsigned_16;
      Amount : Natural) return Unsigned_16;

   function Shift_Right_Arithmetic
     (Value  : Unsigned_16;
      Amount : Natural) return Unsigned_16;

   function Rotate_Left
     (Value  : Unsigned_16;
      Amount : Natural) return Unsigned_16;

   function Rotate_Right
     (Value  : Unsigned_16;
      Amount : Natural) return Unsigned_16;

   function Shift_Left
     (Value  : Unsigned_32;
      Amount : Natural) return Unsigned_32;

   function Shift_Right
     (Value  : Unsigned_32;
      Amount : Natural) return Unsigned_32;

   function Shift_Right_Arithmetic
     (Value  : Unsigned_32;
      Amount : Natural) return Unsigned_32;

   function Rotate_Left
     (Value  : Unsigned_32;
      Amount : Natural) return Unsigned_32;

   function Rotate_Right
     (Value  : Unsigned_32;
      Amount : Natural) return Unsigned_32;

   function Shift_Left
     (Value  : Unsigned_64;
      Amount : Natural) return Unsigned_64;

   function Shift_Right
     (Value  : Unsigned_64;
      Amount : Natural) return Unsigned_64;

   function Shift_Right_Arithmetic
     (Value  : Unsigned_64;
      Amount : Natural) return Unsigned_64;

   function Rotate_Left
     (Value  : Unsigned_64;
      Amount : Natural) return Unsigned_64;

   function Rotate_Right
     (Value  : Unsigned_64;
      Amount : Natural) return Unsigned_64;

   pragma Import (Intrinsic, Shift_Left);
   pragma Import (Intrinsic, Shift_Right);
   pragma Import (Intrinsic, Shift_Right_Arithmetic);
   pragma Import (Intrinsic, Rotate_Left);
   pragma Import (Intrinsic, Rotate_Right);

   --  Floating point types. We assume that we are on an IEEE machine, and
   --  that the types Short_Float and Long_Float in Standard refer to the
   --  32-bit short and 64-bit long IEEE forms. Furthermore, if there is
   --  an extended float, we assume that it is available as Long_Long_Float.
   --  Note: it is harmless, and explicitly permitted, to include additional
   --  types in interfaces, so it is not wrong to have IEEE_Extended_Float
   --  defined even if the extended format is not available.

   type IEEE_Float_32       is new Short_Float;
   type IEEE_Float_64       is new Long_Float;
   type IEEE_Extended_Float is new Long_Long_Float;

end Interfaces;
