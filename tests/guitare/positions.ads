
--
--  GUITARE Project
--
--  $Id: positions.ads,v 1.6 2000/09/09 15:43:47 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--

with Chords;
with Fingerboard_Data;
with Fingerings;


package Positions is

   procedure Initialise (Chord       : in Chords.Chord_Type;
                         Fingerboard : in Fingerboard_Data.Fingerboard_Type;
                         Level       : in Fingerings.Level_Type;
                         Without     : in Chords.Without_Note_Type);

   function Get_Level return Fingerings.Level_Type;

   procedure Display;

end Positions;
