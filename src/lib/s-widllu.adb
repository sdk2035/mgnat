------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUNTIME COMPONENTS                          --
--                                                                          --
--                       S Y S T E M . W I D _ L L U                        --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                            $Revision: 1.5 $                              --
--                                                                          --
--        Copyright (C) 1992,1993,1994 Free Software Foundation, Inc.       --
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

with System.Unsigned_Types; use System.Unsigned_Types;

package body System.Wid_LLU is

   ------------------------------
   -- Width_Long_Long_Unsigned --
   ------------------------------

   function Width_Long_Long_Unsigned
     (Lo, Hi : Long_Long_Unsigned)
      return   Natural
   is
      W : Natural;
      T : Long_Long_Unsigned;

   begin
      if Lo > Hi then
         return 0;

      else
         --  Minimum value is 2, one for sign, one for digit

         W := 2;

         --  Get max of absolute values, but avoid bomb if we have the maximum
         --  negative number (note that First + 1 has same digits as First)

         T := Long_Long_Unsigned'Max (Lo, Hi);

         --  Increase value if more digits required

         while T >= 10 loop
            T := T / 10;
            W := W + 1;
         end loop;

         return W;
      end if;

   end Width_Long_Long_Unsigned;

end System.Wid_LLU;
