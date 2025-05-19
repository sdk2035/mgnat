
--
--  GUITARE Project
--
--  $Id: key.adb,v 1.11 2000/09/09 15:43:46 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--

with Text_IO;

with Notes;
with Chords;
with Roman_Number;
with IO;

package body Key is

   subtype Chord_Sig is String (1 .. 6);

   type Chord_Kind_Type is
      record
         Regular : Chord_Sig := (others => ' ');
         Seventh : Chord_Sig := (others => ' ');
      end record;

   type Progression_Type is array (Scales.Notes_Range) of Chord_Kind_Type;

   Progression : Progression_Type;

   Scale_Note     : Scales.Scale_Notes_Type;
   Number_Of_Note : Natural;

   -----------------------
   -- Get_Common_Chords --
   -----------------------

   procedure Get_Common_Chords (For_Scale : in Scales.Scale_Type) is

      use Scales;

      Root_Seven_Interval : Natural;

      First_Interval  : Positive := 2;
      Second_Interval : Positive := 4;

   begin

      Scale_Note     := Scales.Get_Scale_Notes (For_Scale);
      Number_Of_Note := Scales.Get_Number_Of_Note (For_Scale);

      if Scales.Get_Mode (For_Scale)
        in PENTATONIC_MAJOR .. PENTATONIC_MINOR
      then
         Second_Interval := 3;
      elsif Scales.Get_Mode (For_Scale) = CHROMATIC then
         return;
      end if;

      for I in Scale_Note'First .. Scale_Note'First + Number_Of_Note - 1 loop

         Root_Seven_Interval :=
           Notes.Semitones_Between (Scale_Note (I), Scale_Note (I + 6));

         case Chords.Is_Triad (Root  => Scale_Note (I),
                               Third => Scale_Note (I + First_Interval),
                               Fifth => Scale_Note (I + Second_Interval)) is
            when Chords.MAJOR =>
               Progression (I).Regular := (others => ' ');
               case Root_Seven_Interval is
                  when 10 =>
                     Progression (I).Seventh := ('7', others => ' ');
                  when 11 =>
                     Progression (I).Seventh :=
                       ('M', 'a', 'j', '7', others => ' ');
                  when others =>
                     null;
               end case;

            when Chords.MINOR =>
               Progression (I).Regular := ('M', 'i', 'n', others => ' ');
               case Root_Seven_Interval is
                  when 10 =>
                     Progression (I).Seventh :=
                       ('M', 'i', 'n', '7', others => ' ');
                  when 11 =>
                     Progression (I).Seventh := "m/maj7";
                  when others =>
                     null;
               end case;

            when Chords.DIMINISHED =>
               Progression (I).Regular := ('o', others => ' ');
               Progression (I).Seventh := ('X', others => ' ');

            when Chords.AUGMENTED =>
               Progression (I).Regular := ('+', others => ' ');
               Progression (I).Seventh := ('X', others => ' ');

            when others =>
               null;
         end case;

      end loop;

   end Get_Common_Chords;

   ---------
   -- Put --
   ---------

   procedure Put (Note      : in Notes.Note_Type;
                  Signature : in String) is
   begin
      if Signature (Signature'First) /= 'X' then
         IO.Put (Notes.Image (Note) & Signature & ' ');
      end if;
   end Put;

   -----------------------
   -- Put_Common_Chords --
   -----------------------

   procedure Put_Common_Chords (For_Scale : in Scales.Scale_Type) is

      use Scales;

   begin

      IO.Clear_Lower;

      Get_Common_Chords (For_Scale);

      if Scales.Get_Mode (For_Scale) = CHROMATIC then
         IO.Put_Line ("Common Chords mean nothing for a CHROMATIC scale.");
         IO.New_Line;
         return;
      end if;

      IO.Put_Line ("Common chords : ");
      IO.New_Line;

      --  regular chords (triad)
      for I in Scale_Note'First .. Scale_Note'First + Number_Of_Note - 1 loop

         Put (Scale_Note (I), Progression (I).Regular);
         IO.Set_Col (Text_IO.Positive_Count (10 * I));

      end loop;
      return;

      IO.New_Line;

      --  seventh chords
      for I in Scale_Note'First .. Scale_Note'First + Number_Of_Note - 1 loop

         Put (Scale_Note (I), Progression (I).Seventh);
         IO.Set_Col (Text_IO.Positive_Count (10 * I));

      end loop;

      IO.New_Line (2);

   end Put_Common_Chords;

   ---------------------
   -- Put_Progression --
   ---------------------

   procedure Put_Progression (For_Scale      : in Scales.Scale_Type;
                              Chords_Numbers : in String) is

      Token_Start, Token_Stop : Positive;
      Chord_Number : Positive;

   begin
      Get_Common_Chords (For_Scale);

      Text_IO.Put_Line ("The progression in this key is : ");
      Text_IO.New_Line;

      Token_Start := Chords_Numbers'First;
      Token_Stop  := 1;

      while Token_Stop /= Chords_Numbers'Last loop

         --  skip space
         while Token_Start /= Chords_Numbers'Last and then
           Chords_Numbers (Token_Start) = ' ' loop
            Token_Start := Token_Start + 1;
         end loop;
         Token_Stop  := Token_Start;

         --  find token
         while Token_Stop /= Chords_Numbers'Last and then
           Chords_Numbers (Token_Stop) /= ' ' loop
            Token_Stop := Token_Stop + 1;
         end loop;

         --  write the chord name
         if Token_Stop = Chords_Numbers'Last then
            Chord_Number :=
              Roman_Number.Get (Chords_Numbers (Token_Start .. Token_Stop));
         else
            Chord_Number :=
              Roman_Number.Get
              (Chords_Numbers (Token_Start .. Token_Stop - 1));
         end if;
         Put (Scale_Note (Chord_Number), Progression (Chord_Number).Regular);

         Token_Start := Token_Stop + 1;

      end loop;

      Text_IO.New_Line (2);

   end Put_Progression;

   ----------
   -- Find --
   ----------

   procedure Find (From_Chords : in String) is

      use Notes;

      First, Last    : Natural;
      All_Notes      : Notes.Set_Of_Notes;
      All_Root_Notes : Notes.Set_Of_Notes;
      Scale_Notes    : Notes.Set_Of_Notes;
      Scale          : Scales.Scale_Type;

   begin

      Text_IO.Put ("The key could be : ");
      First := From_Chords'First;

      Notes.Clear (All_Notes);
      Notes.Clear (All_Root_Notes);

      loop

         --  remove leading blank
         while First <= From_Chords'Last
           and then From_Chords (First) = ' ' loop
            First := First + 1;
         end loop;
         exit when First > From_Chords'Last;

         Last := First;

         --  find chord name
         while Last <= From_Chords'Last and then From_Chords (Last) /= ' ' loop
            Last := Last + 1;
         end loop;
         if Last > From_Chords'Last then
            Last := From_Chords'Last;
         end if;

         declare
            Chord : Chords.Chord_Type;
            Root  : Notes.Note_Type;
         begin
            Chord := Chords.Parse (From_Chords (First .. Last));
            All_Notes := All_Notes + Chords.Get_Notes (Chord, Chords.NO);
            Root := Chords.Get_Root (Chord);
            Notes.Set (Root, All_Root_Notes);
         end;

         exit when Last = From_Chords'Last;

         First := Last + 1;

      end loop;

      for Scale_Mode in Scales.MAJOR .. Scales.MINOR loop
         for Note in Notes.Note_Type loop
            Scales.Create (Base => Note, Into => Scale, Mode => Scale_Mode);
            Scale_Notes := Scales.Get_Notes (Scale);
            if Notes.Included (Set  => All_Notes,
                               Into => Scale_Notes) and then
              Notes.Included (Set  => All_Root_Notes,
                              Into => Scale_Notes,
                              Check => Notes.STRICT) then
               Notes.Put (Note, 1);
               if Scale_Mode = Scales.MAJOR then
                  Text_IO.Put (" Major,  ");
               else
                  Text_IO.Put (" Minor,  ");
               end if;
            end if;
         end loop;
      end loop;

      Text_IO.New_Line (2);

   end Find;

end Key;
