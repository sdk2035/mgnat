
--
--  GUITARE Project
--
--  $Id: analyse_chords.adb,v 1.10 2000/09/09 15:43:45 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--

with Ada.Strings.Unbounded;

with Search_Utilities;
with Chords;
with IO;

package body Analyse_Chords is

   use Chords;

   subtype Intervals_Value is Integer range -1 .. 11;
   type Intervals_Type is array (1 .. 6) of Intervals_Value;

   type String_Ptr is access String;

   type Chords_Info is
      record
         Profile     : Intervals_Type;
         Name1       : String_Ptr := null;
         Name2       : String_Ptr := null;
         Description : String_Ptr := null;
      end record;

   type Profiles_Type is array (Positive range <>) of Chords_Info;

   Number_Of_Notes : Natural;

   Profiles : constant Profiles_Type :=
     (((1, 3, 7, 10, -1, -1),
       new String'("m7/b9"), null,
       new String'("minor triad, minor 7th flat 9th")),

      ((1, 4, 5, 7, 9, 10),
       new String'("13/b9"), null,
       new String'("major triad, minor 7th, flat 9th, plus 11th, 13th")),

      ((1, 4, 5, 7, 10, -1),
       new String'("11/b9"), null,
       new String'("major triad, minor 7th, flat 9th, plus 11th")),

      ((1, 4, 6, 10, -1, -1),
       new String'("7/b9(b5)"), null,
       new String'("diminished 5th, minor 7th, flat 9th")),

      ((1, 4, 7, 10, -1, -1),
       new String'("7/b9"), null,
       new String'("major triad, minor 7th flat 9th")),

      ((1, 4, 8, 10, -1, -1),
       new String'("7/b9(#5)"), null,
       new String'("augmented 5th, minor 7th flat 9th")),

      ((2, 3, 5, 7, 9, 10),
       new String'("m13"), null,
       new String'("minor triad, minor 7th, plus 9th, 11th and 13th")),

      ((2, 3, 5, 7, 10, -1),
       new String'("m11"), null,
       new String'("minor triad, minor 7th, plus 9th and 11th")),

      ((2, 3, 5, 7, 10, -1),
       new String'("m11"), null,
       new String'("minor triad, minor 7th, plus 9th and 11th")),

      ((2, 3, 6, 10, -1, -1),
       new String'("m9(b5)"), new String'("o7/add9"),
       new String'("diminished triad, minor 7th plus 9th")),

      ((2, 3, 7, 9, 10, -1),
       new String'("m13"), null,
       new String'("minor triad, minor 7th, plus 9th and 13th")),

      ((2, 3, 7, 10, -1, -1),
       new String'("m9"), null,
       new String'("minor triad, minor 7th plus 9th")),

      ((2, 3, 7, 11, -1, -1),
       new String'("min/maj9"), null,
       new String'("minor triad, major 7th plus 9th")),

      ((2, 4, 5, 7, 9, 10),
       new String'("13"), null,
       new String'("major triad, minor 7th plus 9th, 11th and 13th")),

      ((2, 4, 5, 7, 9, 11),
       new String'("maj13"), null,
       new String'("major triad, major 7th plus 9th, 11th and 13th")),

      ((2, 4, 5, 7, 10, -1),
       new String'("11"), null,
       new String'("major triad, minor 7th plus 9th and 11th")),

      ((2, 4, 6, 7, 9, 10),
       new String'("13(#11)"), null,
       new String'("major triad, minor 7th plus 9th and 13th," &
                   " augmented 11th")),

      ((2, 4, 6, 7, 10, -1),
       new String'("7/#11"), null,
       new String'("major triad, minor 7th plus 9th, augmented 11th")),

      ((2, 4, 6, 7, 11, -1),
       new String'("maj9/#11"), null,
       new String'("major triad, major 7th, plus 9th, augmented 11th")),

      ((2, 4, 6, 10, -1, -1),
       new String'("9(b5)"), null,
       new String'("diminished 5th, minor 7th, plus 9th")),

      ((2, 4, 7, -1, -1, -1),
       new String'("add9"), new String'("2"),
       new String'("major triad plus 9th")),

      ((2, 4, 7, 9, -1, -1),
       new String'("6/add9"), new String'("6/9"),
       new String'("major triad plus 6th and 9th")),

      ((2, 4, 7, 9, 10, -1),
       new String'("13"), null,
       new String'("major triad, minor 7th, plus 9th and 13th")),

      ((2, 4, 7, 10, -1, -1),
       new String'("9"), new String'("dom 9"),
       new String'("major triad, minor 7th plus 9th")),

     ((2, 4, 7, 11, -1, -1),
      new String'("maj9"), new String'("9(#7)"),
      new String'("major triad, major 7th plus 9th")),

     ((2, 4, 8, 10, -1, -1),
      new String'("9(#5)"), null,
      new String'("augmented 5th, minor 7th plus 9th")),

     ((2, 4, 8, 11, -1, -1),
      new String'("maj9(#5)"), null,
      new String'("augmented 5th, major 7th plus 9th")),

     ((2, 5, 7, 9, 10, -1),
      new String'("13sus"), new String'("13sus4"),
      new String'("sus4 triad, minor 7th, plus 9th and 13th")),

     ((2, 7, -1, -1, -1, -1),
      new String'("sus2"), new String'("add9(no3)"),
      new String'("no 3rd but a 2nd from a major triad")),

     ((3, 4, 5, 7, 9, 10),
      new String'("13(#9)"), null,
      new String'("major triad, minor 7th, augmented 9th, plus 11th, 13th")),

     ((3, 4, 6, 10, -1, -1),
      new String'("7/#9(b5)"), null,
      new String'("minor 7th, augmented 9th, diminished 5th")),

     ((3, 4, 7, 10, -1, -1),
      new String'("7/#9"), null,
      new String'("major triad, minor 7th augmented 9th")),

     ((3, 4, 8, 10, -1, -1),
      new String'("7/#9(#5)"), null,
      new String'("augmented 5th, minor 7th augmented 9th")),

     ((3, 5, 7, 10, -1, -1),
      new String'("m7/add11"), new String'("m7/11"),
      new String'("minor triad, minor 7th, plus 11th")),

     ((3, 6, 9, -1, -1, -1),
      new String'("o7"), new String'("dim7"),
      new String'("diminished triad, diminished 7th")),

     ((3, 6, 10, -1, -1, -1),
      new String'("%"), new String'("m7b5"),
      new String'("diminished triad, minor 7th : half-diminished 7th")),

     ((3, 7, -1, -1, -1, -1),
      new String'("m"), null,
      new String'("minor triad")),

     ((3, 7, 2, -1, -1, -1),
      new String'("m/add9"), new String'("m/9"),
      new String'("minor triad plus 9th")),

     ((3, 7, 9, -1, -1, -1),
      new String'("m6"), null,
      new String'("minor triad plus 6th")),

     ((3, 7, 9, 2, -1, -1),
      new String'("m6/add9"), new String'("m6/9"),
      new String'("minor triad plus 6th and 9th")),

     ((3, 7, 9, 10, -1, -1),
      new String'("m6/7"), null,
      new String'("minor triad plus 6th, minor 7th")),

     ((3, 7, 9, 10, 11, -1),
      new String'("m6/7/11"), null,
      new String'("minor triad plus 6th and 11th, minor 7th")),

     ((3, 7, 10, -1, -1, -1),
      new String'("m7"), null,
      new String'("minor triad, minor 7th")),

     ((3, 7, 11, -1, -1, -1),
      new String'("min/maj7"), null,
      new String'("minor triad, major 7th")),

     ((4, 5, 7, 10, -1, -1),
      new String'("7/add11"), new String'("7/11"),
      new String'("major triad, minor 7th, plus 11th")),

     ((4, 6, -1, -1, -1, -1),
      new String'("(b5)"), null,
      new String'("flat 5th")),

     ((4, 6, 7, -1, -1, -1),
      new String'("add#11"), null,
      new String'("major triad, augmented 11th")),

     ((4, 6, 7, 11, -1, -1),
      new String'("maj7/#11"), null,
      new String'("major triad, major 7th, augmented 11th")),

     ((4, 6, 10, -1, -1, -1),
      new String'("7(b5)"), null,
      new String'("minor 7th, flat 5th")),

     ((4, 7, -1, -1, -1, -1),
      new String'(""), new String'("maj"),
      new String'("major triad")),

     ((4, 7, 9, -1, -1, -1),
      new String'("6"), null,
      new String'("major triad plus 6th")),

     ((4, 7, 9, 10, -1, -1),
      new String'("6/7"), null,
      new String'("major triad plus 6th, minor 7th")),

     ((4, 7, 10, -1, -1, -1),
      new String'("7"), new String'("dom 7"),
      new String'("major triad, minor 7th")),

     ((4, 7, 11, -1, -1, -1),
      new String'("maj7"), new String'("#7"),
      new String'("major triad, major 7th")),

     ((4, 8, -1, -1, -1, -1),
      new String'(" #5"), new String'("aug"),
      new String'("augmented triad")),

     ((4, 8, 10, -1, -1, -1),
      new String'("7(#5)"), null,
      new String'("minor 7th, sharp 5th")),

     ((5, 7, -1, -1, -1, -1),
      new String'("sus"), new String'("sus4"),
      new String'("no 3rd but a 4th from a major triad")),

     ((5, 7, 9, 10, -1, -1),
      new String'("6/7 sus"), new String'("6/7 sus4"),
      new String'("sus4 triad plus 6th, minor 7th")),

     ((5, 7, 10, -1, -1, -1),
      new String'("7sus4"), null,
      new String'("sus4 triad, minor 7th")),

     ((7, -1, -1, -1, -1, -1),
      new String'("5"), new String'("(no 3rd)"),
      new String'("root and 5th (power chord)"))
    );


   --  installation of the search procedure

   function Inferior (Left, Right : in Chords_Info) return Boolean is
   begin
      return Left.Profile < Right.Profile;
   end Inferior;

   function Equal (Left, Right : in Chords_Info) return Boolean is
   begin
      return Left.Profile = Right.Profile;
   end Equal;

   package Profile is new Search_Utilities
     (Component_Type => Chords_Info,
      Index_Type     => Positive,
      Array_Type     => Profiles_Type,
      "<"            => Inferior,
      "="            => Equal);

   -------------
   -- Analyse --
   -------------

   procedure Analyse (Root_Note : in Notes.Note_Type;
                      Intervals : in Intervals_Type) is

      Idx : Positive;
      Chord_Rec : Chords_Info := (Profile     => Intervals,
                                  Name1       => null,
                                  Name2       => null,
                                  Description => null);

      ----------------------
      -- Print_Chord_Name --
      ----------------------

      procedure Print_Chord_Name (Special_Attribute : in String := "") is
         use Ada.Strings.Unbounded;
         Chord_Name : Unbounded_String;
      begin
         IO.Set_Col (11);

         Chord_Name := To_Unbounded_String (Notes.Image (Root_Note) &
                                            Profiles (Idx).Name1.all);

         if Profiles (Idx) . Name2 /= null then
            Chord_Name := Chord_Name & " or " & Notes.Image (Root_Note) &
              Profiles (Idx) . Name2 . all;
         end if;

         Chord_Name := Chord_Name & "     " & Special_Attribute;

         IO.Put_Line (To_String (Chord_Name));

         IO.Set_Col (15);
         IO.Put_Line ("> " & Profiles (Idx).Description.all);
         IO.New_Line;
      end Print_Chord_Name;


      --------------------------------
      -- Without_Note_To_Be_Checked --
      --------------------------------

      procedure Without_Note_To_Be_Checked (Intervals : in out Intervals_Type;
                                            Note      : in     Intervals_Value;
                                            Result    :    out Boolean)
      is

         type Intervals_Lookup is array (Intervals_Value) of Boolean;
         Defined_Interval : Intervals_Lookup := (Intervals_Value => False);

         Seventh_Chord, Ninth_Chord       : Boolean;
         Eleventh_Chord, Thirteenth_Chord : Boolean;
         Indice : Positive range 1 .. 7;

      begin

         Result := False;

         --  if we have already 7 notes, we can't add one

         if Intervals (Intervals'Last) /= -1 then
            return;
         end if;

         --  initialize the lookup table of defined intervals
         --  defined_interval (x) = true ; if it exist k / intervals (k) = x

         for Interval_Indice in Intervals'Range loop
            Defined_Interval (Intervals (Interval_Indice)) := True;
         end loop;

         --  if note already defined

         if Defined_Interval (Note) then
            return;
         end if;


         Seventh_Chord := Defined_Interval (10) or else
           Defined_Interval (11);

         Ninth_Chord := Defined_Interval (2) or else
           Defined_Interval (1) or else
           Defined_Interval (3);

         Eleventh_Chord := Defined_Interval (5) or else
           Defined_Interval (6);


         Thirteenth_Chord := Defined_Interval (9) or else
           Defined_Interval (8);

         --  check the validity of note
         --  i.e. we can take of one note only if the chord should contain it
         --  a 13th chord should contain a 9th note but not the opposite

         case Note is

            when 10 => -- the 7th
               if Ninth_Chord then
                  Defined_Interval (10) := True;
               else
                  return;
               end if;

            when 7 =>  -- the 5th
               if Seventh_Chord then
                  Defined_Interval (7) := True;
               else
                  return;
               end if;

            when 5 =>  -- the 11th
               if Thirteenth_Chord then
                  Defined_Interval (5) := True;
               else
                  return;
               end if;

            when 4 =>  -- the 3rd
               if Seventh_Chord then
                  Defined_Interval (4) := True;
               else
                  return;
               end if;

            when 2 =>  -- the 9th
               if Eleventh_Chord then
                  Defined_Interval (2) := True;
               else
                  return;
               end if;

            when others =>
               return;

         end case;

         --  recreate the new interval to be checked
         Indice := 1;
         Intervals := (others => -1);
         for Interval_Number in 1 .. Defined_Interval'Last loop
            if Defined_Interval (Interval_Number) then
               Intervals (Indice) := Interval_Number;
               Indice := Indice + 1;
            end if;
         end loop;

         Result := True;

      end Without_Note_To_Be_Checked;

      -------------------
      -- Check_Profile --
      -------------------

      function Check_Profile (Special_Note      : in Natural;
                              Special_Attribute : in String := "")
        return Boolean
      is

         Found           : Boolean;
         To_Be_Checked   : Boolean        := True;
         Local_Intervals : Intervals_Type := Intervals;

      begin
         if Special_Note /= 0 then
            Without_Note_To_Be_Checked (Local_Intervals, Special_Note,
                                        To_Be_Checked);
         end if;
         if To_Be_Checked then
            Chord_Rec . Profile := Local_Intervals;
            Profile.Search (Chord_Rec, Profiles, Idx, Found, Profile.Ordered);
            if Found then
               Print_Chord_Name (Special_Attribute);
            end if;
            return Found;
         else
            return False;
         end if;
      end Check_Profile;


   begin

      if Check_Profile (0) then
         null;
      elsif Check_Profile (2,  "(no 9th)") then
         null;
      elsif Check_Profile (4,  "(no 3rd)") then
         null;
      elsif Check_Profile (5,  "(no 11th)") then
         null;
      elsif Check_Profile (7,  "(no 5th)") then
         null;
      elsif Check_Profile (10, "(no 7th)") then
         null;
      end if;

   end Analyse;

   -------------------------
   -- Alteredbass_Analyse --
   -------------------------

   procedure Alteredbass_Analyse (Set : in Notes.Set_Of_Notes) is

      use Ada.Strings.Unbounded;

      type Notes_Array_Type is array (1 .. 4) of Notes.Note_Type;

      Notes_Array : Notes_Array_Type;
      I : Positive range 1 .. 5;

      procedure Analyse (First, Second, Third, Sup : Notes.Note_Type) is
         Triad : Chords.Triad_Type;
         Chord : Unbounded_String;
      begin

         Triad := Chords.Is_Triad (First, Second, Third);

         if Triad /= Chords.Triad_Type'(Chords.NO) then

            IO.Set_Col (11);

            Chord := To_Unbounded_String (Notes.Image (First));

            --  triad type
            case Triad is

               when Chords.MINOR =>
                  Chord := Chord & "m";

               when Chords.DIMINISHED =>
                  Chord := Chord & "dim";

               when Chords.AUGMENTED =>
                  Chord := Chord & "aug";

               when Chords.SUS4 =>
                  Chord := Chord & "sus4";

               when Chords.SUS2 =>
                  Chord := Chord & "sus2";

               when others =>
                  null;

            end case;

            Chord := Chord & '/' & Notes.Image (Sup);

            IO.Put_Line (To_String (Chord));

            IO.New_Line;
            IO.Set_Col (15);

            Chord := To_Unbounded_String ("    > ");

            --  description
            case Triad is

               when Chords.MAJOR =>
                  Chord := Chord & "major triad";

               when Chords.MINOR =>
                  Chord := Chord & "minor triad";

               when Chords.DIMINISHED =>
                  Chord := Chord & "diminished triad";

               when Chords.AUGMENTED =>
                  Chord := Chord & "augmented triad";

               when Chords.SUS4 =>
                  Chord := Chord & "sus4 triad";

               when Chords.SUS2 =>
                  Chord := Chord & "sus2 triad";

               when others =>
                  null;

            end case;

            Chord := Chord & " (altered bass)";

            IO.Put_Line (To_String (Chord));
         end if;

      end Analyse;

   begin

      I := Notes_Array'First;

      for Note in Notes.Note_Type loop
         if Notes.Exist (Note => Note, Into => Set, Check => Notes.STRICT) then
            Notes_Array (I) := Note;
            I := I + 1;
         end if;
      end loop;

      --  analyse all permutations of notes
      for I_First in 1 .. 4 loop
         for I_Second in 1 .. 4 loop
            if I_Second /= I_First then
               for I_Third in 1 .. 4 loop
                  if I_Third /= I_First and then I_Third /= I_Second then
                     for I_Sup in 1 .. 4 loop
                        if I_Sup /= I_First and then I_Sup /= I_Second and then
                          I_Sup /= I_Third then
                           Analyse (First  => Notes_Array (I_First),
                                    Second => Notes_Array (I_Second),
                                    Third  => Notes_Array (I_Third),
                                    Sup    => Notes_Array (I_Sup));
                        end if;
                     end loop;
                  end if;
               end loop;
            end if;
         end loop;
      end loop;

   end Alteredbass_Analyse;

   -------------------
   -- Analyse_Notes --
   -------------------

   procedure Analyse_Notes (Set : in Notes.Set_Of_Notes) is

      use type Notes.Note_Type;

      Intervals : Intervals_Type;
      I         : Positive;

   begin

      for Root_Note in Notes.Note_Type loop

         if Notes.Exist (Note  => Root_Note,
                         Into  => Set,
                         Check => Notes.STRICT) then

            Intervals := (others => -1);

            --  compute interval with others notes
            I := 1;

            --  we handle the exception for SUCC
            if Root_Note < Notes.Note_Type'Last then
               for Other_Note in
                 Notes.Note_Type'Succ (Root_Note) .. Notes.Note_Type'Last loop

                  if Notes.Exist (Note  => Other_Note,
                                  Into  => Set,
                                  Check => Notes.STRICT) then
                     Intervals (I) :=
                       Notes.Semitones_Between (Root_Note, Other_Note);
                     I := I + 1;
                  end if;
               end loop;
            end if;

            --  we handle the exception for PRED
            if Root_Note > Notes.Note_Type'First then
               for Other_Note in
                 Notes.Note_Type'First .. Notes.Note_Type'Pred (Root_Note) loop

                  if Notes.Exist (Note  => Other_Note,
                                  Into  => Set,
                                  Check => Notes.STRICT) then
                     Intervals (I) :=
                       Notes.Semitones_Between (Root_Note, Other_Note);
                     I := I + 1;
                  end if;
               end loop;
            end if;

            Analyse (Root_Note, Intervals);

         end if;

      end loop;

   end Analyse_Notes;

   ---------------
   -- Find_Name --
   ---------------

   procedure Find_Name (Set        : in Notes.Set_Of_Notes;
                        Fingerings : in String := "")
   is
      use Ada.Strings.Unbounded;
      Chord_Name : Unbounded_String;
   begin

      Number_Of_Notes := Notes.Count (Set);

      if Number_Of_Notes not in 2 .. 7 then
         IO.Put_Line ("Wrong number of notes. " &
                      "A chord must have between 2 and 7 notes.");
         IO.New_Line;
         return;
      end if;

      Chord_Name := To_Unbounded_String ("for ");

      if Fingerings /= "" then
         Chord_Name := Chord_Name & " (" & Fingerings & ")";
      end if;

      Chord_Name := Chord_Name & " the chords names could be :";

      IO.Put_Line (To_String (Chord_Name));

      Analyse_Notes (Set);

      --  check out the altered-bass chord
      if Number_Of_Notes = 4 then
         Alteredbass_Analyse (Set);
      end if;

      IO.New_Line;

   end Find_Name;

   -------------
   -- Synonym --
   -------------

   procedure Synonym (Chord_Name : in String) is

      use type Notes.Set_Of_Notes;

      Chord1    : Chords.Chord_Type;
      Chord2    : Chords.Chord_Type;

      Note_Set1 : Notes.Set_Of_Notes;
      Note_Set2 : Notes.Set_Of_Notes;
      Set       : Notes.Set_Of_Notes;

      Cut   : Natural := 0;

   begin

      --  ??? part of the code here is duplicated in Commands.Parse_Chord

      --  looking for polychord
      for I in Chord_Name'First .. Chord_Name'Last - 1 loop
         if Chord_Name (I .. I + 1) = "//" then
            Cut := I - 1;
            exit;
         end if;
      end loop;

      if Cut /= 0 then

         Chord1 := Chords.Parse (From => Chord_Name (1 .. Cut));
         Note_Set1 := Chords.Get_Notes (From    => Chord1,
                                        Without => Chords.NO);

         Chord2 := Chords.Parse
           (From => Chord_Name (Cut + 3 .. Chord_Name'Last));
         Note_Set2 := Chords.Get_Notes (From    => Chord2,
                                        Without => Chords.NO);

         Set := Note_Set1 + Note_Set2;

      else
         Chord1 := Chords.Parse (Chord_Name);
         Set   := Chords.Get_Notes (Chord1);
      end if;

      IO.Put_Line ("for " & Chord_Name & " the synonyms are : ");
      IO.New_Line;

      Analyse_Notes (Set);

      IO.New_Line;

   end Synonym;

end Analyse_Chords;
