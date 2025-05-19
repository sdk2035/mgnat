
--
--  GUITARE Project
--
--  $Id: chords.ads,v 1.6 2000/09/09 15:43:45 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Notes;
with Scales;

use Notes;


package Chords is

   type Chord_Type is private;

   type Without_Note_Type is (NO, THIRD, SEVENTH, NINTH, ELEVENTH);
   type Triad_Type is (MAJOR, MINOR, DIMINISHED, AUGMENTED, SUS4, SUS2, NO);
   type Kind_Type is (Regular, Inversion, Altered_Bass);

   subtype Note_Number_Type is Scales.Notes_Range range 1 .. 13;

   Bad_Chord_Format : exception;

   function Is_Defined (Chord : in Chord_Type) return Boolean;
   --  true if the chord is defined. A chord is defined after a parse command.

   function Parse (From : in String) return Chord_Type;
   --  this fucntion take a chord name in a string and give a chord
   --  record. It retrieve the root note, the bass note if defined and
   --  all others notes in the chord.

   function Get_Notes (From    : in Chord_Type;
                       Without : in Without_Note_Type := ELEVENTH)
                       return Notes.Set_Of_Notes;
   --  retrieve the notes of the chords.

   --  for root works
   function Is_Bass_Defined (From : in Chord_Type) return Boolean;
   --  the bass note is the lower one. ex : this is defined by C/E
   function Get_Bass (From : in Chord_Type) return Notes.Note_Type;
   --  retrieve the bass note for the chord. not necessarily defined

   function Get_Root (From : in Chord_Type) return Notes.Note_Type;
   --  retrieve the root note.

   function Image (Chord : in Chord_Type) return String;
   --  return the chord name and notes

   procedure Put (Chord : in Chord_Type);
   --  display the name and notes of the chord,


   --  the two following functions retrieve the name of the triad
   function Is_Triad (Root, Third, Fifth : in Notes.Note_Type)
                      return Triad_Type;
   function Is_Triad (First_Interval, Second_Interval : in Positive)
                      return Triad_Type;

private

   type State is (Double_Flat, Flat, Normal, Sharp, Unset);
   type Scale_State_Type is array (Note_Number_Type) of State;

   type String_Ptr is access String;

   type Chord_Type is
      record
         Name        : String_Ptr := null;
         Root        : Notes.Note_Type;
         Bass        : Notes.Note_Type;
         Kind        : Kind_Type := Regular;
         Inversion   : Natural;
         Scale       : Scales.Scale_Notes_Type;
         Scale_State : Scale_State_Type := (others => Unset);
      end record;

end Chords;
