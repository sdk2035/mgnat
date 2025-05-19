------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                              G N A T V S N                               --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--          Copyright (C) 1992-2004 Free Software Foundation, Inc.          --
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

package body Gnatvsn is

   function Ident (C : Character) return Character;
   --  Identity function, used to disable compiler optimizations, since we
   --  want to functions below to perform their check at run time, in order
   --  to edit the binaries to produce academic versions.

   -------------------------
   -- Get_Gnat_Build_Type --
   -------------------------

   function Get_Gnat_Build_Type return Gnat_Build_Type is
   begin
      case Ident (Gnat_Static_Version_String (5)) is
         when 'w' | 'a' | 'h' | 'c' =>
            return Gnatpro;
         when 'p' =>
            return Public;
         when others =>
            return Public;
      end case;
   end Get_Gnat_Build_Type;

   -------------------------
   -- Gnat_Version_String --
   -------------------------

   function Gnat_Version_String return String is
   begin
      case Ident (Gnat_Static_Version_String (5)) is
         when 'w' | 'a' | 'h' | 'c' =>
            return "Pro " & Gnat_Static_Version_String;
         when 'p' =>
            return "Academic " & Gnat_Static_Version_String;
         when others =>
            return Gnat_Static_Version_String;
      end case;
   end Gnat_Version_String;

   -----------
   -- Ident --
   -----------

   function Ident (C : Character) return Character is
   begin
      return C;
   end Ident;

end Gnatvsn;
