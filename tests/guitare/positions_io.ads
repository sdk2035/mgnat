
--
--  GUITARE Project
--
--  $Id: positions_io.ads,v 1.6 2000/09/09 15:43:47 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Fingerings;

package Positions_IO is

   subtype Fingering_Range is Positive range 1 .. 8;
   subtype Fret_Range is Positive range 1 .. 6;

   subtype Position_String is String (1 .. 11);
   Null_Position : constant Position_String := "           ";
   type String_Position_Type is array (Fret_Range) of Position_String;

   type String_Fingering_Type is
      record
         Rank            : Positive;
         Head_Line       : String (1 .. 11)     := (others => '-');
         String_Position : String_Position_Type := (others => Null_Position);
         Notes           : String (1 .. 12)     := (others => ' ');
         Short_Notation  : String (1 .. 12)     := (others => ' ');
      end record;

   type Fingering_Line_Type is
      array (Fingering_Range) of String_Fingering_Type;

   procedure Set_Number_By_Line (N : in Positive := 5);

   procedure Put (Fingering : in Fingerings.Fingering_Type;
                  Rank      : in Natural);

   procedure Flush;

end Positions_IO;
