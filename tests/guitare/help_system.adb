
--
--  GUITARE Project
--
--  $Id: help_system.adb,v 1.8 2000/09/09 15:43:05 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Commands;
with IO;

package body Help_System is

   type More_Info is (Note, Mode, Chord_Name, Pos, Roman);
   type More_Info_Set is array (More_Info) of Boolean;

   Out_Mode : IO.Output_Mode := IO.Lower;

   procedure Output (S : in String);
   pragma Inline (Output);
   --  Output S into the Help or Lower window depending on Out_Mode variable.

   procedure New_Line;
   pragma Inline (New_Line);

   ---------------------
   -- Set_Output_Help --
   ---------------------

   procedure Set_Output_Help is
   begin
      Out_Mode := IO.Help;
   end Set_Output_Help;

   ----------------------
   -- Set_Output_Lower --
   ----------------------

   procedure Set_Output_Lower is
   begin
      Out_Mode := IO.Lower;
   end Set_Output_Lower;

   ------------
   -- Output --
   ------------

   procedure Output (S : in String) is
      use type IO.Output_Mode;
   begin
      if Out_Mode = IO.Help then
         IO.Put_Line (S, IO.Help);
      else
         IO.Put_Line (S, IO.Lower);
      end if;
   end Output;

   procedure New_Line is
      use type IO.Output_Mode;
   begin
      if Out_Mode = IO.Help then
         IO.New_Line (Mode => IO.Help);
      else
         IO.New_Line (Mode => IO.Lower);
      end if;
   end New_Line;

   -----------
   -- Print --
   -----------

   procedure Print (Command : in Commands.Command) is

      Give_Info : More_Info_Set := (others => False);

   begin
      case Command is

         when Commands.Scale =>
            Output ("SCALE <note> [<mode>]");
            Output ("  (without mode, MAJOR is taken)");
            New_Line;
            Give_Info (Note) := True;
            Give_Info (Mode) := True;

         when Commands.Chord =>
            Output ("CHORD [<chord name>]");
            Output ("  put the chord into the object 1");
            Output ("  (without parameter, clear the object 1)");
            New_Line;
            Give_Info (Chord_Name) := True;

         when Commands.Tune =>
            Output ("TUNE [<note1> ... <note4> [<note5> <note6>]]");
            Output ("  (without note, use the standard tuning for the" &
                         " current instrument)");
            New_Line;
            Give_Info (Note) := True;

         when Commands.Output =>
            Output ("OUTPUT [STANDARD/<file>]");
            Output ("  - file, the output will be record into it");
            Output ("  - STANDARD, output to the screen");
            Output ("  (without parameter, STANDARD is taken)");
            New_Line;

         when Commands.Quit =>
            Output ("QUIT");
            Output ("  exit from GUITARE");
            New_Line;

         when Commands.Overlay =>
            Output ("OVERLAY [<chord name>]");
            Output ("  put the chord into the object 2");
            Output ("  (without parameter, clear the object 2)");
            New_Line;
            Give_Info (Chord_Name) := True;

         when Commands.Note =>
            Output ("NOTE [<note 1> <note 2> ...]");
            Output ("  put the notes into the object 3");
            Output ("  (without parameter, clear the object 3)");
            New_Line;
            Give_Info (Note) := True;

         when Commands.Synonym =>
            Output ("SYNONYM <chord name>");
            Output ("  display the synonym of the chord");
            New_Line;
            Give_Info (Chord_Name) := True;

         when Commands.Fingerboard =>
            Output ("FINGERBOARD [STANDARD/EXTENDED]");
            Output ("  set the size of the fingerboard");
            Output ("    STANDARD from fret 1 to fret 14");
            Output ("    EXTENDED from fret 1 to fret 24");
            Output ("  (without parameter, STANDARD is taken)");
            New_Line;

         when Commands.Transpose =>
            Output ("TRANSPOSE <from_key> <to_key> MINOR/MAJOR <chord>" &
                         " [<chord> ...]");
            Output ("  transpose the chords from <from key> to <to key>");
            Output ("  in the given mode");
            Output (" or ");
            Output ("TRANSPOSE <to_key>");
            Output ("  available only after a TRANSPOSE first form");
            Output ("  transpose the previous given chords to <to key>");
            New_Line;
            Give_Info (Note) := True;

         when Commands.Position =>
            Output ("POSITION <EASY / MEDIUM / DIFFICULT / COMMON / ANY>");
            Output ("  available only if a chord is defined into object 1");
            Output ("  give the fingering for the chord defined"
                    & " into object 1");
            Output ("  - EASY, MEDIUM, DIFFICULT : witch level you want");
            Output ("  - COMMON, ANY : set a switch");
            Output ("     COMMON : to display only the common fingerings");
            Output ("     ANY    : all fingerings that GUITARE know.");
            New_Line;

         when Commands.Without =>
            Output ("WITHOUT <THIRD / SEVENTH / NINTH / ELEVENTH>");
            Output ("  set the note that will be omitted for a 13th chord.");
            New_Line;

         when Commands.Display =>
            Output ("DISPLAY");
            Output ("  redisplay the fingerboard.");
            New_Line;

         when Commands.Mode =>
            Output ("MODE [GUITAR/BASS/MANDOLINE]");
            Output ("  switch to the given mode.");
            Output ("  (without parameter, switch to GUITAR)");
            New_Line;

         when Commands.Common_Chords =>
            Output ("COMMON_CHORDS");
            Output ("  available only if a scale is defined");
            Output ("  give you the common chords for the current scale.");
            New_Line;

         when Commands.Key_For =>
            Output ("KEY_FOR <chord name> [<chord name>]");
            Output ("  give you the possible keys for these chords.");
            New_Line;
            Give_Info (Chord_Name) := True;

         when Commands.Analyse_Chord =>
            Output ("ANALYSE_CHORD <note> <note> [<note> ...]");
            Output ("  give you the name of the chord.");
            Output ("ANALYSE_CHORD <pos1> .. <pos4> [<pos5> <pos6>]");
            Output ("  give you the name of the chord " &
                    "from a guitar fingering.");
            Output ("  (ex : ANALYSE_CHORD x 3 2 0 1 0)");
            New_Line;
            Give_Info (Note) := True;
            Give_Info (Pos)  := True;

         when Commands.Info =>
            Output ("INFO");
            Output ("  give some informations about the system.");
            New_Line;

         when Commands.Pattern =>
            Output ("PATTERN <number>");
            Output ("  available only if a scale is defined");
            Output ("  give the pattern begining at the <number>th note of" &
                      " the scale.");
            New_Line;

         when Commands.Progression =>
            Output ("PROGRESSION <roman num> [<roman num>...]");
            Output ("  available only if a scale is defined");
            Output ("  give you a progression from the current scale.");
            Give_Info (Roman) := True;
            New_Line;

         when Commands.Analyse_Scale =>
            Output ("ANALYSE_SCALE <note> [<note> ...]");
            Output ("  give you the name of the scale.");
            New_Line;
            Give_Info (Note) := True;

         when Commands.Help =>
            Output ("HELP [<command name>] / chord_format / note_format" &
                    " / scale_mode");
            New_Line;
            Output ("commands are : ");
            Commands.Display_All;
            New_Line;

      end case;

      declare
         First : Boolean := True;
      begin
         for Info in Give_Info'Range loop

            if Give_Info (Info) then

               if First then
                  Output ((1 .. 79 => '-'));
                  First := False;
               end if;

               case Info is
                  when Note =>
                     Output ("<note>/<key> : C C#/Db D D#/Eb E F F#/Gb " &
                             "G G#/Ab A A#/Bb B");
                     Output ("               (must be in capital letter)");
                  when Pos =>
                     Output ("<pos>        : 1 2 3 .. 24 x -");
                     Output ("               (x or - for a dead string)");
                  when Mode =>
                     Output ("<mode>       : MAJOR, MINOR, DORIAN ...  " &
                             " [see also scale_mode]");
                  when Chord_Name =>
                     Output ("<chord name> : Cmin/maj7 Cadd9 C7sus4 E#dim6");
                     Output ("               Dmaj9/#11 Ao7 B C13(no 3th) " &
                             "D/F# ...");
                     Output ("   polychord : C//G         [see also " &
                             "chord_format]");
                  when Roman =>
                     Output ("<roman>      : I II III IV V VI VII VIII ...");
               end case;

            end if;

         end loop;

         if not First then
            New_Line;
         end if;

      end;

   end Print;

   ------------------------
   -- Print_Chord_Format --
   ------------------------

   procedure Print_Chord_Format is
      Separator : constant String := (1 .. 78 => '-');
   begin
      Output ("Standard        GUITARE         Meaning [examples]");
      Output (Separator);
      Output ("nothing or M    no. or M or maj major triad             " &
                   "[C  Emaj]");
      Output ("-               - or min or m   minor triad             " &
                   "[Cm Fmin Gb-]");
      Output ("+               + or aug        augmented triad         " &
                   "[Caug B+]");
      Output ("o               o or dim        diminished triad        " &
                   "[Co Fdim]");
      Output (Separator);
      Output ("<delta>         maj7 or M7      major 7th chord         " &
                   "[Cmaj7 GbM7]");
      Output ("7               7               dominant 7 chord        " &
                   "[C7]");
      Output ("0 with /        %               half-diminished 7 chord " &
                   "[C%]");
      Output ("o7              o7 or dim7      diminished 7 chord      " &
                   "[Co7]");
      Output (Separator);
      Output ("chd1");
      Output ("----            chd1 // chd2    polychord               " &
                   "[C//F]");
      Output ("chd2");
      Output (Separator);
      Output ("chd / note      chd / note      altered bass            " &
                   "[C/G]");
      Output (Separator);
      Output ("#               #               raise the pitch of the " &
                   "note to a sharp [C11#9]");
      Output ("b               b               lower the pitch of the " &
                   "note to a flat [C11b9]");
      Output (Separator);
      Output ("                no              substract a note from a " &
                   "chord [C9(no 3rd)]");
      Output (Separator);
   end Print_Chord_Format;

   -----------------------
   -- Print_Note_Format --
   -----------------------

   procedure Print_Note_Format is
   begin
      Output ("A note is : C C#/Db D D#/Eb E F F#/Gb G G#/Ab A A#/Bb B");
      Output ("            (must be in capital letter)");
   end Print_Note_Format;


   ----------------------
   -- Print_Scale_Mode --
   ----------------------

   procedure Print_Scale_Mode is
   begin
      Output ("5 notes scales :");
      Output ("  Pentatonic_Major, Pentatonic_Minor, Kumoi, Hirojoshi");
      New_Line;
      Output ("6 notes scales :");
      Output ("  Blues, Whole, Augmented, Dominant_Sus, Pelog");
      New_Line;
      Output ("7 notes scales :");
      Output
        ("  Major, Minor, Ionian, Aeolian, Dorian, Phrygian, Lydian");
      Output ("  Mixolydian, Locrian, Harmonic_Minor, Harmonic_Major");
      Output ("  Neapolitan_Major, Neapolitan_Minor, Enigmatic");
      Output ("  Enigmatic_Minor, Hungarian_Major, Hungarian_Minor");
      Output ("  Melodic, CompositeII, Persian, Ionian_b5, Locrian_7");
      New_Line;
      Output ("8 notes scales :");
      Output
        ("  Bebop_Locrian, Bebop_Dominant, Bebop_Dorian, Bebop_Major");
      Output ("  Diminished, Spanish");
      New_Line;
      Output ("others scales  :");
      Output ("  Chromatic (12 notes)");
   end Print_Scale_Mode;

   -----------
   -- Print --
   -----------

   procedure Print (About : in String) is

      Command : Commands.Command;

   begin
      Commands.Get (From => About, Into => Command);
      Print (Command);

   exception

      when others =>

         if About = "chord_format" then
            New_Line;
            Print_Chord_Format;
            New_Line;

         elsif About = "note_format" then
            New_Line;
            Print_Note_Format;
            New_Line;

         elsif About = "scale_mode" then
            New_Line;
            Print_Scale_Mode;
            New_Line;

         elsif About = "" then
            Print (Commands.Help);

         else
            New_Line;
            Output ("I can't give you help about this ...");
            New_Line;
            Print (Commands.Help);
         end if;

   end Print;

end Help_System;
