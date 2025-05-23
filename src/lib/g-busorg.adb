------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUNTIME COMPONENTS                          --
--                                                                          --
--                   G N A T . B U B B L E _ S O R T _ G                    --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                            $Revision: 1.4 $                              --
--                                                                          --
--           Copyright (C) 1995-1998 Ada Core Technologies, Inc.            --
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

package body GNAT.Bubble_Sort_G is

   ----------
   -- Sort --
   ----------

   procedure Sort (N : Natural) is
      Switched : Boolean;

   begin
      loop
         Switched := False;

         for J in 1 .. N - 1 loop
            if Lt (J + 1, J) then
               Move (J, 0);
               Move (J + 1, J);
               Move (0, J + 1);
               Switched := True;
            end if;
         end loop;

         exit when not Switched;
      end loop;
   end Sort;

end GNAT.Bubble_Sort_G;
