------------------------------------------------------------------------------
--                                                                          --
--                         GNAT LIBRARY COMPONENTS                          --
--                                                                          --
--           A D A . C O N T A I N E R S . H A S H E D _ S E T S            --
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

with Ada.Containers.Hash_Tables;
with Ada.Streams;
with Ada.Finalization;

generic
   type Element_Type is private;

   with function Hash (Element : Element_Type) return Hash_Type;

   with function Equivalent_Elements (Left, Right : Element_Type)
                                     return Boolean;

   with function "=" (Left, Right : Element_Type) return Boolean is <>;

package Ada.Containers.Hashed_Sets is
pragma Preelaborate (Hashed_Sets);

   type Set is tagged private;

   type Cursor is private;

   Empty_Set : constant Set;

   No_Element : constant Cursor;

   function "=" (Left, Right : Set) return Boolean;

   function Equivalent_Sets (Left, Right : Set) return Boolean;

   function Length (Container : Set) return Count_Type;

   function Is_Empty (Container : Set) return Boolean;

   procedure Clear (Container : in out Set);

   function Element (Position : Cursor) return Element_Type;

   procedure Query_Element
     (Position : Cursor;
      Process  : not null access procedure (Element : Element_Type));

   procedure Replace_Element
     (Container : Set;
      Position  : Cursor;
      By        : Element_Type);

   procedure Move (Target : in out Set; Source : in out Set);

   procedure Insert
     (Container : in out Set;
      New_Item  : Element_Type;
      Position  : out Cursor;
      Inserted  : out Boolean);

   procedure Insert  (Container : in out Set; New_Item : Element_Type);

   procedure Include (Container : in out Set; New_Item : Element_Type);

   procedure Replace (Container : in out Set; New_Item : Element_Type);

   procedure Delete  (Container : in out Set; Item     : Element_Type);

   procedure Delete (Container : in out Set; Position  : in out Cursor);

   procedure Exclude (Container : in out Set; Item     : Element_Type);

   function Contains (Container : Set; Item : Element_Type) return Boolean;

   function Find
     (Container : Set;
      Item      : Element_Type) return Cursor;

   function First (Container : Set) return Cursor;

   function Next (Position : Cursor) return Cursor;

   procedure Next (Position : in out Cursor);

   function Has_Element (Position : Cursor) return Boolean;

   function Equivalent_Elements (Left, Right : Cursor) return Boolean;

   function Equivalent_Elements
     (Left  : Cursor;
      Right : Element_Type) return Boolean;

   function Equivalent_Elements
     (Left  : Element_Type;
      Right : Cursor) return Boolean;

   procedure Iterate
     (Container : Set;
      Process   : not null access procedure (Position : Cursor));

   procedure Union (Target : in out Set; Source : Set);

   function Union (Left, Right : Set) return Set;

   function "or" (Left, Right : Set) return Set renames Union;

   procedure Intersection (Target : in out Set; Source : Set);

   function Intersection (Left, Right : Set) return Set;

   function "and" (Left, Right : Set) return Set renames Intersection;

   procedure Difference (Target : in out Set; Source : Set);

   function Difference (Left, Right : Set) return Set;

   function "-" (Left, Right : Set) return Set renames Difference;

   procedure Symmetric_Difference (Target : in out Set; Source : Set);

   function Symmetric_Difference (Left, Right : Set) return Set;

   function "xor" (Left, Right : Set) return Set
     renames Symmetric_Difference;

   function Overlap (Left, Right : Set) return Boolean;

   function Is_Subset (Subset : Set; Of_Set : Set) return Boolean;

   function Capacity (Container : Set) return Count_Type;

   procedure Reserve_Capacity
     (Container : in out Set;
      Capacity  : Count_Type);

   generic
      type Key_Type (<>) is limited private;

      with function Key (Element : Element_Type) return Key_Type;

      with function Hash (Key : Key_Type) return Hash_Type;

      with function Equivalent_Keys
        (Key     : Key_Type;
         Element : Element_Type) return Boolean;

   package Generic_Keys is

      function Contains (Container : Set; Key : Key_Type) return Boolean;

      function Find (Container : Set; Key : Key_Type) return Cursor;

      function Key (Position : Cursor) return Key_Type;

      function Element (Container : Set; Key : Key_Type) return Element_Type;

      procedure Replace
        (Container : in out Set;
         Key       : Key_Type;
         New_Item  : Element_Type);

      procedure Delete (Container : in out Set; Key : Key_Type);

      procedure Exclude (Container : in out Set; Key : Key_Type);

      procedure Update_Element_Preserving_Key
        (Container : in out Set;
         Position  : Cursor;
         Process   : not null access
                       procedure (Element : in out Element_Type));

      function Equivalent_Keys
        (Left  : Cursor;
         Right : Key_Type) return Boolean;

      function Equivalent_Keys
        (Left  : Key_Type;
         Right : Cursor) return Boolean;

   end Generic_Keys;

private

   type Node_Type;
   type Node_Access is access Node_Type;

   type Node_Type is
      limited record
         Element : Element_Type;
         Next    : Node_Access;
      end record;

   package HT_Types is new Hash_Tables.Generic_Hash_Table_Types
     (Node_Type,
      Node_Access);

   type Set is new Ada.Finalization.Controlled with record
      HT : HT_Types.Hash_Table_Type;
   end record;

   procedure Adjust (Container : in out Set);

   procedure Finalize (Container : in out Set);

   use HT_Types;
   use Ada.Finalization;

   type Set_Access is access all Set;
   for Set_Access'Storage_Size use 0;

   type Cursor is
      record
         Container : Set_Access;
         Node      : Node_Access;
      end record;

   No_Element : constant Cursor := (Container => null, Node => null);

   use Ada.Streams;

   procedure Write
     (Stream    : access Root_Stream_Type'Class;
      Container : Set);

   for Set'Write use Write;

   procedure Read
     (Stream    : access Root_Stream_Type'Class;
      Container : out Set);

   for Set'Read use Read;

   Empty_Set : constant Set := (Controlled with HT => (null, 0, 0, 0));

end Ada.Containers.Hashed_Sets;
