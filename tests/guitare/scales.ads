
--
--  GUITARE Project
--
--  $Id: scales.ads,v 1.7 2000/09/09 15:43:47 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Notes;

package Scales is

   type Scale_Mode is (MAJOR, MINOR, IONIAN, AEOLIAN, DORIAN, PHRYGIAN,
                       LYDIAN, MIXOLYDIAN, LOCRIAN, WHOLE, HARMONIC_MINOR,
                       DIMINISHED, BLUES, PENTATONIC_MAJOR, PENTATONIC_MINOR,
                       NEAPOLITAN_MAJOR, NEAPOLITAN_MINOR, ENIGMATIC,
                       HUNGARIAN_MINOR, CHROMATIC, KUMOI, MELODIC,
                       HARMONIC_MAJOR, HUNGARIAN_MAJOR, ENIGMATIC_MINOR,
                       COMPOSITEII, PERSIAN, HIROJOSHI, AUGMENTED, PELOG,
                       DOMINANT_SUS, SPANISH, IONIAN_B5, LOCRIAN_7,
                       BEBOP_LOCRIAN, BEBOP_DOMINANT, BEBOP_DORIAN,
                       BEBOP_MAJOR);

   type Scale_Type is private;

   subtype Notes_Range is Positive range 1 .. 24;
   type Scale_Notes_Type is array (Notes_Range) of Notes.Note_Type;


   Bad_Scale_Mode : exception;


   procedure Create (Base : in     Notes.Note_Type;
                     Into :    out Scale_Type;
                     Mode : in     Scale_Mode      := MAJOR);

   --  scales input/output
   function  Image    (Item : in Scale_Type) return String;
   procedure Put      (Item : in Scale_Type);
   procedure Put_Name (Item : in Scale_Type);

   procedure Get      (From : in String;
                       Into :    out Scale_Mode;
                       Last :    out Natural);

   function Get_Scale_Notes (From : in Scale_Type) return Scale_Notes_Type;
   function Get_Mode        (From : in Scale_Type) return Scale_Mode;
   function Get_Notes       (From : in Scale_Type) return Notes.Set_Of_Notes;

   function Get_Number_Of_Note (From : in Scale_Type) return Positive;
   function Get_Number_Of_Note (Mode : in Scale_Mode) return Positive;

   --  analyse scale
   procedure Analyse (From  : in     Scale_Notes_Type;
                      Into  : in out Scale_Type;
                      Found :    out Boolean);

   --  Pattern functions (Pilot the fingeboard directly)
   procedure Pattern (Numero : in Notes_Range;
                      From   : in Scale_Type);

private

   type Scale_Type is
      record
         Key            : Notes.Note_Type;
         Mode           : Scale_Mode;
         Scale_Notes    : Scale_Notes_Type;
      end record;

end Scales;
