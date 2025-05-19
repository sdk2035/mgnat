-- This is free software;  you can  redistribute it  and/or modify it under --
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
-- Author: Juergen Pfeifer <juergen.pfeifer@t-online.de
--
separate(Numerics)
function Regula_Falsi (Start_Value1 : in Real;
                       Start_Value2 : in Real;
                       Precision   : in Real :=
                         Real (10.0) * Real'Base'Model_Epsilon)
                       return Real is

   X    : Real := Start_Value1;
   A    : Real := Start_Value2;
   N    : Real;
   VX, VA, VN : Real;
begin

   VX := F (X);
   VA := F (A);
   if VA * VX > 0.0 then
      raise Numeric_Exception;
   end if;

   loop
      exit when abs (VX) <= Precision;
      N  := (A * VX - X * VA) / (VX - VA);
      VN := F (N);
      X  := N;
      if VN /= 0.0 then
         if VN * VX < 0.0 then
            A := X; VA := VX;
         end if;
      end if;
      VX := VN;
   end loop;

   return X;

end Regula_Falsi;
