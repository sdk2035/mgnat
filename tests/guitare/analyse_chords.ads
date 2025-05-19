
--
--  GUITARE Project
--
--  $Id: analyse_chords.ads,v 1.6 2000/09/09 15:43:45 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Notes;

package Analyse_Chords is

   procedure Find_Name (Set        : in Notes.Set_Of_Notes;
                        Fingerings : in String := "");
   --  retrieve the name of the chord for the given set of notes.

   procedure Synonym (Chord_Name : in String);
   --  display the name of the chord containing the same notes as chord_name.

end Analyse_Chords;
