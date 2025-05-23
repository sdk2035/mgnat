------------------------------------------------------------------------------
--                                                                          --
--                         GNAT LIBRARY COMPONENTS                          --
--                                                                          --
--            A D A . C O N T A I N E R S . H A S H _ T A B L E S           --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--          Copyright (C) 2004-2005 Free Software Foundation, Inc.          --
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
--
--
--
--
--
--
--
-- This unit was originally developed by Matthew J Heaney.                  --
------------------------------------------------------------------------------

package Ada.Containers.Hash_Tables is
pragma Preelaborate;

   generic
      type Node_Type (<>) is limited private;

      type Node_Access is access Node_Type;

   package Generic_Hash_Table_Types is
      type Buckets_Type is array (Hash_Type range <>) of Node_Access;

      type Buckets_Access is access Buckets_Type;

      type Hash_Table_Type is tagged record
         Buckets : Buckets_Access;
         Length  : Count_Type := 0;
         Busy    : Natural := 0;
         Lock    : Natural := 0;
      end record;
   end Generic_Hash_Table_Types;

end Ada.Containers.Hash_Tables;
