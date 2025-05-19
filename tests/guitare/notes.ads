
--
--  GUITARE Project
--
--  $Id: notes.ads,v 1.7 2000/09/09 15:43:46 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


package Notes is

   subtype Note_Name_Type is String (1 .. 2);

   type Note_Type is (C, Cs, Db, D, Ds, Eb, E, F, Fs,
                      Gb, G, Gs, Ab, A, As, Bb, B);

   type Ton_Modifier is (PLUS_ONE_HALF, PLUS_ONE, MINUS_ONE_HALF,
                         MINUS_ONE, PLUS_THREE_HALF, PLUS_TWO, ZERO);

   type Check_Type is (STRICT, NO_STRICT);

   type Set_Of_Notes is private;

   Bad_Note_Format : exception;

   --
   --  procedure and functions for note_type
   --

   function Equal (Note1, Note2 : in Note_Type;
                   Check : in Check_Type := NO_STRICT) return Boolean;
   --  compare two notes.
   --  if check is STRICT then assume that C# /= Db
   --  by default (NO_STRICT) it make no difference between C# and Db

   function Is_Sharp (Note : in Note_Type) return Boolean;
   function Is_Flat (Note : in Note_Type) return Boolean;
   function Is_Whole (Note : in Note_Type) return Boolean;

   function Semitones_Between (Note1, Note2 : in Note_Type)
                               return Natural;
   function Semitones_Between (Note1, Note2 : in Note_Type)
                               return Ton_Modifier;

   --  notes input/output
   function Image (Note : in Note_Type) return String;
   procedure Get (From : in String; Note : out Note_Type; Last : out Natural);
   procedure Put (Note : in Note_Type; Width : in Positive := 2);
   procedure Put (Note : in Note_Type; Into : out Note_Name_Type);

   --  notes transformations
   procedure Modify (Note : in out Note_Type; Ton : in Ton_Modifier);
   procedure Flat_To_Sharp (Note : in out Note_Type);
   procedure Sharp_To_Flat (Note : in out Note_Type);


   --
   --  procedure and function for set_of_notes
   --

   procedure Set (Note : in Note_Type; Into : in out Set_Of_Notes);
   procedure Unset (Note : in Note_Type; Into : in out Set_Of_Notes);

   function Exist (Note : in Note_Type;
                   Into : in Set_Of_Notes;
                   Check : in Check_Type := NO_STRICT)
                   return Boolean;
   --  return true if note is in set_of_notes.
   --  if check is set to STRICT then assume that C# is different that Db

   procedure Adjust (Note : in out Note_Type; Into : in Set_Of_Notes);
   --  ex : if note=C# and into include Db then return Db into note.


   function Count (Set : in Set_Of_Notes) return Natural;
   function "+" (Set1, Set2 : in Set_Of_Notes) return Set_Of_Notes;

   procedure Clear (Set : out Set_Of_Notes; To : in Boolean := False);
   function Is_Empty (Set : in Set_Of_Notes) return Boolean;
   function Included (Set, Into : in Set_Of_Notes;
                      Check : in Check_Type := NO_STRICT)
                      return Boolean;

   procedure Put (Set : in Set_Of_Notes);
   --  display all the notes in the set.

private

   type Set_Of_Notes is array (Note_Type) of Boolean;

end Notes;
