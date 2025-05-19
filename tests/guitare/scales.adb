
--
--  GUITARE Project
--
--  $Id: scales.adb,v 1.8 2000/09/09 15:43:47 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Text_IO;
with Ada.Strings.Unbounded;

with Search_Utilities;
with Fingerboards;
with Fingerboard_Data;
with Instrument;

package body Scales is

   ONE : constant Notes.Ton_Modifier := Notes.PLUS_ONE;
   O_H : constant Notes.Ton_Modifier := Notes.PLUS_ONE_HALF;
   T_H : constant Notes.Ton_Modifier := Notes.PLUS_THREE_HALF;
   TWO : constant Notes.Ton_Modifier := Notes.PLUS_TWO;
   NIL : constant Notes.Ton_Modifier := Notes.ZERO;

   type Progression is array (1 .. 12) of Notes.Ton_Modifier;
   type Scales_Progression_Type is array (Scale_Mode range <>) of Progression;

   type Scales_Size_Type is array (Scale_Mode) of Natural;

   Scales_Progression : constant Scales_Progression_Type := (
    PENTATONIC_MAJOR =>
      (ONE, ONE, T_H, ONE, T_H,                     others => NIL),
    PENTATONIC_MINOR =>
      (T_H, ONE, ONE, T_H, ONE,                     others => NIL),
    KUMOI =>
      (ONE, O_H, TWO, ONE, T_H,                     others => NIL),
    HIROJOSHI =>
      (ONE, O_H, TWO, O_H, TWO,                     others => NIL),
    WHOLE =>
      (ONE, ONE, ONE, ONE, ONE, ONE,                others => NIL),
    BLUES =>
      (T_H, ONE, O_H, O_H, T_H, ONE,                others => NIL),
    PELOG =>
      (O_H, ONE, O_H, T_H, O_H, TWO,                others => NIL),
    AUGMENTED =>
      (O_H, T_H, O_H, T_H, O_H, T_H,                others => NIL),
    DOMINANT_SUS =>
      (ONE, T_H, ONE, ONE, O_H, ONE,                others => NIL),
    MAJOR =>
      (ONE, ONE, O_H, ONE, ONE, ONE, O_H,           others => NIL),
    MINOR =>
      (ONE, O_H, ONE, ONE, O_H, ONE, ONE,           others => NIL),
    IONIAN =>
      (ONE, ONE, O_H, ONE, ONE, ONE, O_H,           others => NIL),
    IONIAN_B5 =>
      (ONE, ONE, O_H, O_H, T_H, ONE, O_H,           others => NIL),
    AEOLIAN =>
      (ONE, O_H, ONE, ONE, O_H, ONE, ONE,           others => NIL),
    DORIAN =>
      (ONE, O_H, ONE, ONE, ONE, O_H, ONE,           others => NIL),
    PHRYGIAN =>
      (O_H, ONE, ONE, ONE, O_H, ONE, ONE,           others => NIL),
    LYDIAN =>
      (ONE, ONE, ONE, O_H, ONE, ONE, O_H,           others => NIL),
    MIXOLYDIAN =>
      (ONE, ONE, O_H, ONE, ONE, O_H, ONE,           others => NIL),
    LOCRIAN =>
      (O_H, ONE, ONE, O_H, ONE, ONE, ONE,           others => NIL),
    LOCRIAN_7 =>
      (O_H, ONE, ONE, O_H, ONE, T_H, O_H,           others => NIL),
    HARMONIC_MINOR =>
      (ONE, O_H, ONE, ONE, O_H, T_H, O_H,           others => NIL),
    HARMONIC_MAJOR =>
      (ONE, ONE, O_H, ONE, O_H, T_H, O_H,           others => NIL),
    NEAPOLITAN_MAJOR =>
      (O_H, ONE, ONE, ONE, ONE, ONE, O_H,           others => NIL),
    NEAPOLITAN_MINOR =>
      (O_H, ONE, ONE, ONE, O_H, T_H, O_H,           others => NIL),
    ENIGMATIC =>
      (O_H, T_H, ONE, ONE, ONE, O_H, O_H,           others => NIL),
    ENIGMATIC_MINOR =>
      (O_H, ONE, T_H, O_H, T_H, O_H, O_H,           others => NIL),
    HUNGARIAN_MINOR =>
      (ONE, O_H, T_H, O_H, O_H, T_H, O_H,           others => NIL),
    HUNGARIAN_MAJOR =>
      (T_H, O_H, ONE, O_H, ONE, O_H, ONE,           others => NIL),
    MELODIC =>
      (ONE, O_H, ONE, ONE, ONE, ONE, O_H,           others => NIL),
    COMPOSITEII =>
      (O_H, T_H, ONE, O_H, O_H, T_H, O_H,           others => NIL),
    PERSIAN =>
      (O_H, T_H, O_H, O_H, ONE, T_H, O_H,           others => NIL),
    DIMINISHED =>
      (ONE, O_H, ONE, O_H, ONE, O_H, ONE, O_H,      others => NIL),
    SPANISH =>
      (O_H, ONE, O_H, O_H, O_H, ONE, ONE, ONE,      others => NIL),
    BEBOP_LOCRIAN =>
      (O_H, ONE, O_H, ONE, O_H, ONE, ONE, O_H,      others => NIL),
    BEBOP_DOMINANT =>
      (O_H, ONE, ONE, O_H, ONE, ONE, O_H, O_H,      others => NIL),
    BEBOP_DORIAN =>
      (O_H, ONE, O_H, ONE, ONE, ONE, O_H, O_H,      others => NIL),
    BEBOP_MAJOR =>
      (O_H, ONE, O_H, O_H, ONE, O_H, ONE, ONE,      others => NIL),
    CHROMATIC =>
      (O_H, O_H, O_H, O_H, O_H, O_H, O_H, O_H, O_H, O_H, O_H, O_H)
   );

   Scales_Size : Scales_Size_Type;

   ------------
   -- Create --
   ------------

   procedure Create (Base : in     Notes.Note_Type;
                     Into :    out Scale_Type;
                     Mode : in     Scale_Mode := MAJOR) is

      Note  : Notes.Note_Type := Base;
      Scale : Scale_Type;

   begin

      Scale.Key  := Base;
      Scale.Mode := Mode;

      for I in 1 .. Scales_Size (Mode) loop
         Scale.Scale_Notes (I) := Note;
         Scale.Scale_Notes (I + Scales_Size (Mode)) := Note;
         Notes.Modify (Note, Scales_Progression (Mode) (I));
      end loop;

      Into := Scale;

   end Create;

   -----------
   -- Image --
   -----------

   function  Image (Item : in Scale_Type) return String is
      use Ada.Strings.Unbounded;
      Scale_Image : Unbounded_String;
   begin
      Scale_Image := To_Unbounded_String
        (Notes.Image (Item.Key) & ' ' &
         Scale_Mode'Image (Item.Mode) & " (" &
         Natural'Image (Scales_Size (Item.Mode)) & " notes) : ");
      for I in 1 .. Scales_Size (Item.Mode) loop
         Scale_Image := Scale_Image &
           Notes.Image (Item.Scale_Notes (I)) & ' ';
      end loop;
      return To_String (Scale_Image);
   end Image;

   ---------
   -- Put --
   ---------

   procedure Put (Item : in Scale_Type) is
   begin
      Text_IO.Put (Image (Item));
   end Put;

   --------------
   -- Put_Name --
   --------------

   procedure Put_Name (Item : in Scale_Type) is
   begin
      Notes.Put (Item.Key);
      Text_IO.Put (' ');
      Text_IO.Put (Scale_Mode'Image (Item.Mode));
   end Put_Name;

   ---------
   -- Get --
   ---------

   procedure Get (From : in String;
                  Into :    out Scale_Mode;
                  Last :    out Natural)
   is

      package Scale_Mode_IO is new Text_IO.Enumeration_IO (Scales.Scale_Mode);

   begin
      Scale_Mode_IO.Get (From, Into, Last);
   exception
      when others =>
         raise Bad_Scale_Mode;
   end Get;

   ---------------------
   -- Get_Scale_Notes --
   ---------------------

   function Get_Scale_Notes (From : in Scale_Type) return Scale_Notes_Type is
   begin
      return From.Scale_Notes;
   end Get_Scale_Notes;

   --------------
   -- Get_Mode --
   --------------

   function Get_Mode (From : in Scale_Type) return Scale_Mode is
   begin
      return From.Mode;
   end Get_Mode;

   ---------------
   -- Get_Notes --
   ---------------

   function Get_Notes (From : in Scale_Type) return Notes.Set_Of_Notes is
      Scale_Notes : Notes.Set_Of_Notes;
   begin
      Notes.Clear (Scale_Notes);
      for I in 1 .. Scales_Size (From.Mode) loop
         Notes.Set (From.Scale_Notes (I), Scale_Notes);
      end loop;
      return Scale_Notes;
   end Get_Notes;

   ------------------------
   -- Get_Number_Of_Note --
   ------------------------

   function Get_Number_Of_Note (From : in Scale_Type) return Positive is
   begin
      return Scales_Size (From.Mode);
   end Get_Number_Of_Note;

   function Get_Number_Of_Note (Mode : in Scale_Mode) return Positive is
   begin
      return Scales_Size (Mode);
   end Get_Number_Of_Note;

   -------------
   -- Analyse --
   -------------

   procedure Analyse (From  : in     Scale_Notes_Type;
                      Into  : in out Scale_Type;
                      Found :    out Boolean) is

      use Notes;

      Progres  : Progression := (others => NIL);
      I        : Positive := 1;
      Is_Found : Boolean;
      Mode     : Scale_Mode;

      package Progression_Search is new Search_Utilities
        (Component_Type => Progression,
         Index_Type     => Scale_Mode,
         Array_Type     => Scales_Progression_Type);

   begin

      loop
         Progres (I) := Notes.Semitones_Between (From (I), From (1+I));
         I := I + 1;
         exit when From (1) = From (I);
      end loop;

      Progression_Search.Search (Component       => Progres,
                                 Search_Array    => Scales_Progression,
                                 Location_Found  => Mode,
                                 Component_Found => Is_Found);

      if Is_Found then
         Create (From (1), Into, Mode);
      end if;

      Found := Is_Found;

   exception

      --  constraint error is raise by notes.semitones_between if the
      --  interval is not of the type notes.ton_modifier
      when Constraint_Error =>
         Found := False;

   end Analyse;

   -------------
   -- Pattern --
   -------------

   procedure Pattern (Numero : in Notes_Range;
                      From   : in Scale_Type) is

      use Notes;

      No_Note              : Notes_Range := Numero;
      First_Note           : Notes.Note_Type;
      String_Number        : Instrument.String_Numbers
                           := Instrument.Info.First_String;
      Space_String         : Natural;
      First_Fret, Fret     : Fingerboard_Data.Fret_Range;
      New_Fret1, New_Fret2 : Fingerboard_Data.Fret_Range;
      Note_Current_String  : Natural := 0;

   begin
      if Numero > Scales_Size (From.Mode) then
         Text_IO.New_Line;
         Text_IO.Put_Line ("The pattern number can't be larger than " &
                           "the number");
         Text_IO.Put_Line ("of notes into the scale.");
         Text_IO.New_Line;
      else
         First_Note := From.Scale_Notes (No_Note);
         Fret := Notes.Semitones_Between
           (Instrument.Get_Note_For_String (String_Number), First_Note);
         --  we don't want a pattern with open string
         if Fret = 0 then
            Fret := 12;
         end if;
         First_Fret := Fret;
         Space_String := Notes.Semitones_Between
           (Instrument.Get_Note_For_String (String_Number),
            Instrument.Get_Note_For_String (String_Number + 1));
         Fingerboards.Clear;
         if First_Fret > 8 then
            Fingerboards.Set_Display (From => 7, To => 18);
         else
            Fingerboards.Set_Display (Size => Fingerboards.STANDARD);
         end if;

         loop
            Fingerboards.Set_Note (String_Number, Fret);
            if From.Scale_Notes (No_Note) = First_Note then
               No_Note := Numero;
            end if;
            Note_Current_String := Note_Current_String + 1;
            No_Note := No_Note + 1;
            exit when String_Number = Instrument.Info.Last_String  and then
              Note_Current_String = 3;
            New_Fret1 := Notes.Semitones_Between
              (From.Scale_Notes (No_Note - 1),
               From.Scale_Notes (No_Note)) + Fret;
            if New_Fret1 > Space_String then
               New_Fret2 := New_Fret1 - Space_String;
            else
               New_Fret2 := 0;
            end if;
            if Note_Current_String = 3 or else
              (String_Number < Instrument.Info.Last_String  and
               New_Fret2 > First_Fret) then
               String_Number := String_Number + 1;
               Fret := New_Fret2;
               First_Fret := Fret;
               Note_Current_String := 0;
               if String_Number < Instrument.Info.Last_String then
                  Space_String := Notes.Semitones_Between
                    (Instrument.Get_Note_For_String (String_Number),
                     Instrument.Get_Note_For_String (String_Number + 1));
               else
                  Space_String := 0;
               end if;
            else
               Fret := New_Fret1;
            end if;
         end loop;
      end if;
   end Pattern;

                  ---------------------------------------

begin

   --  check validity of the scale progression

   declare
      St : Natural := 0;
   begin

      for Scale in Scale_Mode loop

         St := 0;
         Scales_Size (Scale) := 0;

         for K in Scales_Progression (Scale)'Range loop
            case Scales_Progression (Scale)(K) is
               when O_H =>
                  St := St + 1;
               when ONE =>
                  St := St + 2;
               when T_H =>
                  St := St + 3;
               when TWO =>
                  St := St + 4;
               when NIL =>
                  Scales_Size (Scale) := K - 1;
                  exit;
               when others =>
                  null;
            end case;
         end loop;

         if Scales_Size (Scale) = 0 then
            Scales_Size (Scale) := Scales_Progression (Scale)'Length;
         end if;

         if St /= 12 then
            Text_IO.New_Line;
            Text_IO.Put_Line ("Error in scale " & Scale_Mode'Image (Scale));
            Text_IO.Put_Line ("the scale progression is not one octave long.");
            Text_IO.New_Line;
            raise Program_Error;
         end if;

      end loop;

   end;

end Scales;
