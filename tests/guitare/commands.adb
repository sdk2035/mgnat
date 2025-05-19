
--
--  GUITARE Project
--
--  $Id: commands.adb,v 1.8 2000/09/09 15:40:45 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--

with Text_IO;

with Scales;
with Chords;
with Fingerboards;
with Fingerboard_Data;
with Instrument;
with Transposition;
with Analyse_Chords;
with Help_System;
with Fingerings;
with Page_Definition;
with Positions;
with Key;
with IO;

package body Commands is

   use Notes;

   type Mode_Type is (AUTO, MANUAL);

   type Display_Item  is (Set1, Set2, Note);
   type Display_Value is (Scale, Chord, No, Yes);
   type Display_Type  is array (Display_Item) of Display_Value;

   Current_Display : Display_Type := (others => No);

   My_Scale  : Scales.Scale_Type;
   My_Chord1 : Chords.Chord_Type;
   My_Chord2 : Chords.Chord_Type;
   My_Output : Text_IO.File_Type;
   Fingerboard_Mode : Fingerboards.Fingerboard_Size := Fingerboards.STANDARD;

   --  for thirteenth chords
   Without_Note : Chords.Without_Note_Type := Chords.ELEVENTH;

   Last : Natural;

   ----------------
   -- Command_IO --
   ----------------

   package Command_IO is new Text_IO.Enumeration_IO (Command);

   ---------
   -- Get --
   ---------

   procedure Get (Into : out Command) is
   begin
      Command_IO.Get (Into);
   end Get;

   ---------
   -- Get --
   ---------

   procedure Get (From : in     String;
                  Into :    out Command) is
      Last : Natural;
   begin
      Command_IO.Get (From, Into, Last);
   end Get;

   -----------------
   -- Display_All --
   -----------------

   procedure Display_All is
   begin
      for Com in Command loop
         if Command'Pos (Com) mod 5 = 0 then
            Text_IO.New_Line;
         end if;
         Command_IO.Put (Com);
         Text_IO.Put (' ');
      end loop;
      Text_IO.New_Line (2);
   end Display_All;

   -------------------
   -- Instrument_IO --
   -------------------

   package Instrument_IO is new
     Text_IO.Enumeration_IO (Instrument.Instrument_Type);

   -------------------
   -- Fret_Range_IO --
   -------------------

   package Fret_Range_IO is
     new Text_IO.Integer_IO (Fingerboard_Data.Fret_Range);

   ---------
   -- Get --
   ---------

   procedure Get (Into      : out Commands.Command;
                  Arguments : out String;
                  Last      : out Natural) is

      Li_Last, Li_First : Natural;
      Line_Input        : Input_Line;

   begin

      --  get command
      Get (Into);

      --  get arguments
      Text_IO.Get_Line (Line_Input, Li_Last);

      --  skip leading blank
      Li_First := Line_Input'First;
      while Li_First <= Li_Last and then Line_Input (Li_First) = ' ' loop
         Li_First := Li_First + 1;
      end loop;

      --  skip trailing blank
      while Li_Last > Li_First and then Line_Input (Li_Last) = ' ' loop
         Li_Last := Li_Last - 1;
      end loop;

      if Li_First > Li_Last then
         Last := 0;
      else
         Arguments (Arguments'First .. Arguments'First + Li_Last - Li_First)
           :=  Line_Input (Li_First .. Li_Last);
         Last := Arguments'First + Li_Last - Li_First;
      end if;

      Commands.Last := Last;

   end Get;

   --------------------------
   -- Get_Fingerboard_Mode --
   --------------------------

   procedure Get_Fingerboard_Mode (From : in  String;
                                   Into : out Fingerboards.Fingerboard_Size) is

      package Fingerboard_Io is new
        Text_IO.Enumeration_IO (Fingerboards.Fingerboard_Size);

      Last : Natural;

   begin

      Fingerboard_Io.Get (From, Into, Last);

   exception

      when others =>
         Into := Fingerboards.STANDARD;

   end Get_Fingerboard_Mode;

   --------------------
   -- Get_Scale_Mode --
   --------------------

   procedure Get_Scale_Mode (From : in String;
                             Into : out Scales.Scale_Mode) is

      Last : Natural;
      Empty : Boolean := True;

   begin

      for I in From'Range loop
         if From (I) /= ' ' then
            Empty := False;
         end if;
      end loop;

      if Empty then
         Into := Scales.MAJOR;
      else
         Scales.Get (From, Into, Last);
      end if;
   end Get_Scale_Mode;

   --------------
   -- Get_Tune --
   --------------

   procedure Get_Tune (From : in String)  is

      Tunning : Fingerboards.String_Tune;
      First : Natural := From'First;
      Number : Natural := 0;

   begin

      for I in 1 .. Instrument.Info.Number_String loop
         Notes.Get (From => From (First .. From'Last),
                    Note => Tunning (I),
                    Last => First);
         Number := Number + 1;
      end loop;

      Fingerboards.Set_Tune (Tunning);

   exception

      when Constraint_Error =>
         if Number = 0 then
            Fingerboards.Set_Standard_Tune;
         else
            Help_System.Print ("tune");
         end if;

   end Get_Tune;

   -------------------
   -- Get_Transpose --
   -------------------

   procedure Get_Transpose (From : in String)  is

      -------------------
      -- Scale_Mode_Io --
      -------------------

      package Scale_Mode_Io is new Text_IO.Enumeration_IO (Scales.Scale_Mode);

      First : Natural := From'First;
      Key1, Key2 : Notes.Note_Type;
      Mode : Scales.Scale_Mode;

      -----------------------
      -- Display_Transpose --
      -----------------------

      procedure Display_Transpose is
      begin
         Transposition.Put;
         if Text_IO.Is_Open (My_Output) then
            Text_IO.Set_Output (My_Output);
            Transposition.Put;
            Text_IO.Set_Output (Text_IO.File_Type'(Text_IO.Standard_Output));
         end if;
      end Display_Transpose;

   begin

      Notes.Get (From => From (First .. From'Last),
                 Note => Key1,
                 Last => First);
      begin
         Notes.Get (From => From (First .. From'Last),
                    Note => Key2,
                    Last => First);
      exception

         when others =>
            Transposition.Transpose (To => Key1);
            Display_Transpose;
            return;

      end;

      Scale_Mode_Io.Get (From (First .. From'Last), Mode, First);

      --  skip space
      loop
         First := First + 1;
         exit when From (First) /= ' ';
      end loop;

      Transposition.Store (In_Key => Key1,
                           Mode => Mode,
                           Chords => From (First .. From'Last));
      Transposition.Transpose (To => Key2);
      Display_Transpose;

   exception

      when others =>
         Help_System.Print ("transpose");

   end Get_Transpose;

   -------------------------
   -- Display_Fingerboard --
   -------------------------

   procedure Display_Fingerboard (Mode : in Mode_Type := AUTO);

   --------------
   -- Get_Mode --
   --------------

   procedure Get_Mode (From : in String) is

      Instrument_Name : Instrument.Instrument_Type;
      Last : Natural;

   begin

      Instrument_IO.Get (From, Instrument_Name, Last);
      Instrument.Set (Instrument_Name);
      Display_Fingerboard;

   exception

      when others =>
         Help_System.Print ("mode");

   end Get_Mode;

   -----------------
   -- Set_Without --
   -----------------

   procedure Set_Without (Arguments : in String) is

      ---------------
      -- Option_IO --
      ---------------

      package Option_IO is
        new Text_IO.Enumeration_IO (Chords.Without_Note_Type);

   begin

      Option_IO.Get (Arguments, Without_Note, Last);

   exception

      when others =>
         Help_System.Print ("without");
         Without_Note := Chords.ELEVENTH;

   end Set_Without;

   -------------------
   -- Change_Output --
   -------------------

   procedure Change_Output (To : in String) is

      K : Natural := To'First;

   begin

      while K <= To'Last and then To (K) = ' ' loop
         K := K + 1;
      end loop;
      if K > To'Last or else To (K .. To'Last) = "standard" then
         Text_IO.Put_Line ("          output set to standard output");
         if Text_IO.Is_Open (My_Output) then
            Text_IO.Close (My_Output);
         end if;
      else
         Text_IO.Put_Line ("          output set to " & To (K .. To'Last));
         Text_IO.Create (File => My_Output,
                         Name => To (K .. To'Last),
                         Mode => Text_IO.Out_File);
         Page_Definition.Print_Header (My_Output);
      end if;
      Text_IO.New_Line;

   end Change_Output;

   ----------------
   -- Make_Space --
   ----------------

   procedure Make_Space (Space_Nedded : in Positive) is
   begin

      if Integer (Text_IO.Line (My_Output)) + Space_Nedded >
        Page_Definition.Page_Length
      then
         Text_IO.New_Page (My_Output);
         Page_Definition.Print_Header (My_Output);
      end if;

   end Make_Space;

   -----------------
   -- Parse_Chord --
   -----------------

   procedure Parse_Chord (Chord_Name : in String) is

      Cut  : Natural := 0;

   begin
      --  looking for polychord

      for I in Chord_Name'First .. Chord_Name'Last - 1 loop
         if Chord_Name (I .. I + 1) = "//" then
            Cut := I - 1;
            exit;
         end if;
      end loop;

      if Cut /= 0 then

         My_Chord1 := Chords.Parse (From => Chord_Name (1 .. Cut));
         Note_Set1 := Chords.Get_Notes (From    => My_Chord1,
                                        Without => Chords.NO);

         My_Chord2 := Chords.Parse
           (From => Chord_Name (Cut + 3 .. Chord_Name'Last));
         Note_Set2 := Chords.Get_Notes (From    => My_Chord2,
                                        Without => Chords.NO);

         Current_Display (Set1) := Chord;
         Current_Display (Set2) := Chord;

      else

         My_Chord1 := Chords.Parse (From => Chord_Name);
         Note_Set1 := Chords.Get_Notes (From    => My_Chord1,
                                        Without => Chords.NO);
         Current_Display (Set1) := Chord;
      end if;
   end Parse_Chord;

   ---------------------
   -- Find_Chord_Name --
   ---------------------

   procedure Find_Chord_Name (From : in String) is

      Set  : Notes.Set_Of_Notes;
      Note : Notes.Note_Type;
      Last : Natural := From'First;

      Fingering_Mode : Boolean := False;

      Line_Number_Before, Line_Number_After : Integer;

      ---------------
      -- Get_Notes --
      ---------------

      procedure Get_Notes is
      begin
         while Last < From'Last loop
            Notes.Get (From (Last .. From'Last), Note, Last);
            Notes.Set (Note => Note, Into => Set);
         end loop;
      end Get_Notes;

      --------------------
      -- Get_Fingerings --
      --------------------

      procedure Get_Fingerings is

         Fret : Fingerboard_Data.Fret_Range;

      begin

         Last := From'First;

         --  @@ pbs here with GNAT 3.10b
         for String_Number in
           Instrument.Info.First_String .. Instrument.Info.Last_String loop
            begin
               Fret_Range_IO.Get (From (Last .. From'Last), Fret, Last);
               Notes.Set (Note => Fingerboards.Get_Note (String_Number, Fret),
                          Into => Set);
               Last := Last + 1;
            exception -- replaced with two clauses to get round MGNAT bug 21/1/03
               when Text_IO.Data_Error =>
                  loop
                     Last := Last + 1;
                     exit when Last > From'Last or else From (Last) = ' ';
                  end loop;
               when Constraint_Error =>
                  loop
                     Last := Last + 1;
                     exit when Last > From'Last or else From (Last) = ' ';
                  end loop;
            end;
         end loop;

         for K in Last .. From'Last loop
            if From (K) /= ' ' then
               raise Text_IO.End_Error;
            end if;
         end loop;

      exception

         when Constraint_Error =>
            raise Notes.Bad_Note_Format;

      end Get_Fingerings;


   begin
      Notes.Clear (Set);

      declare
         Last : Natural := From'First;
      begin
         Notes.Get (From (Last .. From'Last), Note, Last);
         Get_Notes;
      exception
         when Notes.Bad_Note_Format =>
            Get_Fingerings;
            Fingering_Mode := True;
      end;

      Line_Number_Before := Integer (Text_IO.Line);
      Line_Number_Before := Integer (10);

      if Fingering_Mode then
         Analyse_Chords.Find_Name (Set, From);
      else
         Analyse_Chords.Find_Name (Set);
      end if;

      Line_Number_After := Integer (Text_IO.Line);
      Line_Number_After := Integer (15);

      if Text_IO.Is_Open (My_Output) then
         Text_IO.Set_Output (My_Output);
         Make_Space (Space_Nedded => Line_Number_After - Line_Number_Before);

         if Fingering_Mode then
            Analyse_Chords.Find_Name (Set, From);
         else
            Analyse_Chords.Find_Name (Set);
         end if;

         Text_IO.Set_Output (Text_IO.File_Type'(Text_IO.Standard_Output));
      end if;

   exception

      when Text_IO.End_Error | Constraint_Error =>
         IO.Clear_Lower;
         IO.Put ("*** ERROR : A "
                 & Instrument.Instrument_Type'Image (Instrument.Get)
                 & " has "
                 & Instrument.String_Numbers'Image
                 (Instrument.Info.Number_String)
                 & " strings.");
         IO.New_Line (2);
         Help_System.Print ("analyse_chord");

   end Find_Chord_Name;

   ---------------------
   -- Find_Scale_Name --
   ---------------------

   procedure Find_Scale_Name (From : in String) is

      Scale_Notes : Scales.Scale_Notes_Type;
      Cscale      : Scales.Scale_Type;
      Found       : Boolean;

      ---------------
      -- Get_Notes --
      ---------------

      procedure Get_Notes is
         Last : Natural  := From'First;
         I    : Positive := Scale_Notes'First;
      begin
         while Last <= From'Last loop
            Notes.Get (From (Last .. From'Last), Scale_Notes (I), Last);
            I := I + 1;
         end loop;
         --  the scale must terminate by the same note it has begun
         if Scale_Notes (Scale_Notes'First) /= Scale_Notes (I - 1) then
            Scale_Notes (I) := Scale_Notes (Scale_Notes'First);
         end if;
      end Get_Notes;

   begin

      Get_Notes;

      Scales.Analyse (Scale_Notes, Cscale, Found);

      if Found then
         My_Scale := Cscale;
         Note_Set1 := Scales.Get_Notes (From => My_Scale);
         Current_Display (Set1) := Display_Value'(Scale);
         Display_Fingerboard;
      else
         IO.Clear_Lower;
         IO.Put_Line ("*** I don't know this scale.");
         IO.New_Line;
      end if;

   exception

      when Constraint_Error =>
         Help_System.Print ("analyse_scale");

   end Find_Scale_Name;

   -------------
   -- Synonym --
   -------------

   procedure Synonym (Chord_Name : in String) is
   begin

      Analyse_Chords.Synonym (Chord_Name);

      if Text_IO.Is_Open (My_Output) then
         Text_IO.Set_Output (My_Output);
         Make_Space (Space_Nedded => 10);
         Analyse_Chords.Synonym (Chord_Name);
         Text_IO.Set_Output (Text_IO.File_Type'(Text_IO.Standard_Output));
      end if;

   end Synonym;

   -------------
   -- Pattern --
   -------------

   procedure Pattern (Numero : in String) is

      Pattern_Number : Fingerboard_Data.Fret_Range;
      Last           : Natural;

   begin

      Fret_Range_IO.Get (Numero, Pattern_Number, Last);
      Scales.Pattern (Numero => Pattern_Number, From => My_Scale);
      Display_Fingerboard (Mode => MANUAL);

   exception

      when others =>
         Help_System.Print ("pattern");

   end Pattern;

   -------------------------
   -- Display_Fingerboard --
   -------------------------

   procedure Display_Fingerboard (Mode : in Mode_Type := AUTO) is

      Fingerboard_Notes : Notes.Set_Of_Notes;

      ----------------------
      -- Check_Space_Left --
      ----------------------

      procedure Check_Space_Left is

         --  for the fingerboard
         Required_Space : Integer := Instrument.Info.Number_String * 2;

      begin
         if Text_IO.Is_Open (My_Output) then

            case Current_Display (Set1) is
               when Scale | Chord =>
                  Required_Space := Required_Space + 2;
               when others =>
                  null;
            end case;

            case Current_Display (Set2) is
               when Chord =>
                  Required_Space := Required_Space + 2;
               when others =>
                  null;
            end case;

            if Current_Display (Note) = Yes then
               Required_Space := Required_Space + 2;
            end if;

            Make_Space (Space_Nedded => Required_Space);

         end if;
      end Check_Space_Left;

      -------------------
      -- Display_Scale --
      -------------------

      procedure Display_Scale is
      begin
         IO.Put_Info ("scale " & Scales.Image (My_Scale));

         if Text_IO.Is_Open (My_Output) then
            Text_IO.Set_Output (My_Output);
            Text_IO.Set_Col (11);
            Text_IO.Put ("scale ");
            Scales.Put (My_Scale);
            Text_IO.New_Line (2);
            Text_IO.Set_Output (Text_IO.File_Type'(Text_IO.Standard_Output));
         end if;
      end Display_Scale;

      -------------------
      -- Display_Chord --
      -------------------

      procedure Display_Chord (Chord : Chords.Chord_Type) is
      begin
         IO.Put_Info ("chord " & Chords.Image (Chord));

         if Text_IO.Is_Open (My_Output) then
            Text_IO.Set_Output (My_Output);
            Text_IO.Set_Col (11);
            Text_IO.Put ("chord ");
            Chords.Put (Chord);
            Text_IO.New_Line (2);
            Text_IO.Set_Output (Text_IO.File_Type'(Text_IO.Standard_Output));
         end if;
      end Display_Chord;

      ------------------
      -- Display_Note --
      ------------------

      procedure Display_Note is
      begin
         Text_IO.Set_Col (11);
         Text_IO.Put ("notes : ");
         Notes.Put (Note_Set3);
         Text_IO.New_Line (2);
         if Text_IO.Is_Open (My_Output) then
            Text_IO.Set_Output (My_Output);
            Text_IO.Set_Col (11);
            Text_IO.Put ("notes : ");
            Notes.Put (Note_Set3);
            Text_IO.New_Line (2);
            Text_IO.Set_Output (Text_IO.File_Type'(Text_IO.Standard_Output));
         end if;
      end Display_Note;

   begin

      Check_Space_Left;

      Notes.Clear (Fingerboard_Notes);

      if Mode = AUTO then

         if Fingerboards.Is_Manual_Size then
            Fingerboards.Set_Display (Size => Fingerboards.STANDARD);
         end if;

         case Current_Display (Set1) is
            when Scale =>
               Display_Scale;
               Fingerboard_Notes := Note_Set1;
            when Chord =>
               Display_Chord (My_Chord1);
               Fingerboard_Notes := Note_Set1; -- + note_set2;
            when others =>
               null;
         end case;

         case Current_Display (Set2) is
            when Chord =>
               Display_Chord (My_Chord2);
               Fingerboard_Notes := Fingerboard_Notes + Note_Set2;
            when others =>
               null;
         end case;

         if Current_Display (Note) = Yes then
            Display_Note;
            Fingerboard_Notes := Fingerboard_Notes + Note_Set3;
         end if;

         Fingerboards.Set_Notes (Fingerboard_Notes);
      end if;

      if not Notes.Is_Empty (Fingerboard_Notes) or Mode = MANUAL then

         Fingerboards.Display;
         IO.New_Line (2);

         if Text_IO.Is_Open (My_Output) then
            Text_IO.Set_Output (My_Output);
            Fingerboards.Display;
            Text_IO.New_Line (2);
            Text_IO.Set_Output (Text_IO.File_Type'(Text_IO.Standard_Output));
         end if;

      end if;

   end Display_Fingerboard;

   -----------------------
   -- Display_Positions --
   -----------------------

   procedure Display_Positions (Option : in String) is

      ----------------------
      -- Position_Mode_Io --
      ----------------------

      package Position_Mode_Io is
         new Text_IO.Enumeration_IO (Fingerings.Options_Type);

      Mode : Fingerings.Options_Type;

   begin

      --  if no options mode easy (default)
      declare
         Last : Natural;
      begin
         Position_Mode_Io.Get (Option, Mode, Last);
      exception
         when others =>
            Mode := Fingerings.Easy;
            Last := Option'First;
      end;

      if Mode in Fingerings.Kind_Type then

         Fingerings.Set (Mode);

      else

         if Current_Display (Set1) = Chord then

            --  we display only the chord on the set1
            if Current_Display (Set2) /= No
              or else Current_Display (Note) /= No
            then
               Current_Display (Set2) := No;
               Current_Display (Note) := No;
               Display_Fingerboard;
            end if;

            declare
               Fingerboard : Fingerboard_Data.Fingerboard_Type;
            begin
               Fingerboards.Get (Into => Fingerboard);
               Positions.Initialise (My_Chord1,
                                     Fingerboard, Mode, Without_Note);
               Positions.Display;

               if Text_IO.Is_Open (My_Output) then
                  Text_IO.Set_Output (My_Output);
                  Positions.Display;
                  Text_IO.Set_Output
                    (Text_IO.File_Type'(Text_IO.Standard_Output));
               end if;
            end;

         end if;

      end if;

   end Display_Positions;

   ---------------------------
   -- Display_Common_Chords --
   ---------------------------

   procedure Display_Common_Chords is
   begin
      Key.Put_Common_Chords (For_Scale => My_Scale);

      if Text_IO.Is_Open (My_Output) then
         Text_IO.Set_Output (My_Output);

         if Integer (Text_IO.Line) + 7 > Page_Definition.Page_Length then
            Text_IO.New_Page;
         end if;

         Key.Put_Common_Chords (For_Scale => My_Scale);
         Text_IO.Set_Output (Text_IO.File_Type'(Text_IO.Standard_Output));
      end if;

   end Display_Common_Chords;

   -------------------------
   -- Display_Progression --
   -------------------------

   procedure Display_Progression (Chords_Numbers : in String) is
   begin
      Key.Put_Progression (For_Scale      => My_Scale,
                           Chords_Numbers => Chords_Numbers);

      if Text_IO.Is_Open (My_Output) then
         Text_IO.Set_Output (My_Output);
         if Integer (Text_IO.Line) + 7 > Page_Definition.Page_Length then
            Text_IO.New_Page;
         end if;

         Key.Put_Progression (For_Scale      => My_Scale,
                              Chords_Numbers => Chords_Numbers);
         Text_IO.Set_Output (Text_IO.File_Type'(Text_IO.Standard_Output));
      end if;
   end Display_Progression;

   ----------------
   -- Print_Info --
   ----------------

   procedure Print_Info is
   begin

      --  the current instrument.
      Text_IO.Put ("The current instrument mode is set to ");
      Instrument_IO.Put (Instrument.Get);
      Text_IO.Put ('.');
      Text_IO.New_Line (2);

      --  current output
      Text_IO.Put ("Current output  : ");
      if Text_IO.Is_Open (My_Output) then
         Text_IO.Put (Text_IO.Name (My_Output));
         Text_IO.Put (" (Page ");
         Text_IO.Put (Text_IO.Count'Image (Text_IO.Page (My_Output)));
         Text_IO.Put_Line (").");
      else
         Text_IO.Put_Line ("standard output.");
      end if;
      Text_IO.New_Line;

      --  thirtheen chords without
      Text_IO.Put_Line ("The thirteenth chords will be without the " &
                        Chords.Without_Note_Type'Image (Without_Note) &
                        " note.");
      Text_IO.New_Line;

      --  fingerings mode
      Text_IO.Put ("Current fingerings type : ");
      Text_IO.Put (Fingerings.Kind_Type'Image (Fingerings.Get_Kind));
      Text_IO.Put_Line (".");
      Text_IO.New_Line;

   end Print_Info;

   -------------
   -- Execute --
   -------------

   function Execute (Command   : in Commands.Command;
                     Arguments : in String)
     return Boolean is
   begin

      case Command is

         when Scale =>

            if Arguments'Length /= 0 then
               declare
                  K    : Natural;
                  Key  : Notes.Note_Type;
                  Mode : Scales.Scale_Mode;
               begin
                  Notes.Get (From => Arguments, Note => Key, Last => K);
                  Get_Scale_Mode (From => Arguments (K .. Arguments'Last),
                                  Into => Mode);
                  Scales.Create (Base => Key, Into => My_Scale, Mode => Mode);
                  Note_Set1 := Scales.Get_Notes (From => My_Scale);
                  Current_Display (Set1) := Scale;
               exception
                  when others =>
                     Current_Display (Set1) := No;
                     raise;
               end;
            else
               Current_Display (Set1) := No;
            end if;

            Display_Fingerboard;

         when Common_Chords =>
            if Current_Display (Set1) = Scale then
               Display_Common_Chords;
            else
               IO.Clear_Lower;
               IO.Put_Line ("Sorry, there is no scale defined.");
               IO.New_Line;
            end if;

         when Progression =>
            if Current_Display (Set1) = Scale then
               Display_Progression (Chords_Numbers => Arguments);
            else
               IO.Clear_Lower;
               IO.Put_Line ("Sorry, there is no scale defined.");
               IO.New_Line;
            end if;

         when Key_For =>
            Key.Find (From_Chords => Arguments);

         when Chord =>
            if Arguments'Length /= 0 then
               Parse_Chord (Arguments);
            else
               Current_Display (Set1) := No;
            end if;

            Display_Fingerboard;

         when Overlay =>
            if Arguments'Length /= 0 then
               My_Chord2 := Chords.Parse (From => Arguments);
               Note_Set2 := Chords.Get_Notes (From => My_Chord2);
               Current_Display (Set2) := Chord;
            else
               Notes.Clear (Note_Set2);
               Current_Display (Set2) := No;
            end if;
            Display_Fingerboard;

         when Tune =>
            Get_Tune (Arguments);
            Display_Fingerboard;

         when Transpose =>
            Get_Transpose (Arguments);

         when Note =>
            if Arguments'Length /= 0 then

               declare
                  K : Natural := 1;
                  Note : Notes.Note_Type;
               begin
                  loop
                     Notes.Get (From => Arguments (K .. Arguments'Last),
                                Note => Note,
                                Last => K);
                     Notes.Set (Note => Note, Into => Note_Set3);
                  end loop;
               exception
                  when Notes.Bad_Note_Format =>
                     Notes.Clear (Note_Set3);
                     Current_Display (Commands.Note) := No;
                     raise;
                  when others =>
                     null;
               end;

               Current_Display (Note) := Yes;
            else
               Notes.Clear (Note_Set3);
               Current_Display (Note) := No;
            end if;

            Display_Fingerboard;

         when Fingerboard =>
            Get_Fingerboard_Mode (From => Arguments,
                                  Into => Fingerboard_Mode);
            Fingerboards.Set_Display (Size => Fingerboard_Mode);
            Display_Fingerboard;

         when Position =>
            Display_Positions (Arguments);

         when Without =>
            Set_Without (Arguments);

         when Display =>
            Display_Fingerboard;

         when Output =>
            Change_Output (To => Arguments);

         when Analyse_Chord =>
            IO.Clear_Lower;
            Find_Chord_Name (From => Arguments);

         when Analyse_Scale =>
            IO.Clear_Lower;
            Find_Scale_Name (From => Arguments);

         when Synonym =>
            if Arguments'Length /= 0 then
               Synonym (Chord_Name => Arguments);
            end if;

         when Mode =>
            Get_Mode (From => Arguments);

         when Pattern =>
            if Current_Display (Set1) = Scale then
               if Arguments'Length /= 0 then
                  Pattern (Numero => Arguments);
               end if;
            else
               IO.Clear_Lower;
               IO.Put_Line ("Sorry, there is no scale defined.");
               IO.New_Line;
            end if;

         when Info =>
            Print_Info;

         when Help =>
            Help_System.Set_Output_Help;
            Help_System.Print (About => Arguments);
            Help_System.Set_Output_Lower;

         when Quit =>
            if Text_IO.Is_Open (My_Output) then
               Text_IO.Close (My_Output);
            end if;
            return True;

      end case;

      return False;

   exception

      when Chords.Bad_Chord_Format =>
         IO.Clear_Lower;
         IO.Put_Line  ("*** ERROR : bad chord format.");
         IO.New_Line;
         return False;

      when Notes.Bad_Note_Format =>
         IO.Clear_Lower;
         IO.Put_Line  ("*** ERROR : bad note format.");
         Help_System.Print ("note_format");
         return False;

      when Scales.Bad_Scale_Mode =>
         IO.Clear_Lower;
         IO.Put_Line  ("*** ERROR : bad scale mode.");
         Help_System.Print ("scale_mode");
         return False;

   end Execute;

   --------------------
   -- Read_Init_File --
   --------------------

   function Read_Init_File
     return Boolean is

      Guiinit       : Text_IO.File_Type;
      End_Batch     : Boolean;
      Command_Input : Commands.Command;
      Arguments     : Commands.Input_Line;

   begin

      Text_IO.Open (File => Guiinit, Name => "guitare.ini",
                    Mode => Text_IO.In_File);

      while not Text_IO.End_Of_File (Guiinit) loop

         --  get a command from guiinit
         Text_IO.Set_Input (Guiinit);
         Get (Command_Input, Arguments, Last);
         Text_IO.Set_Input (Text_IO.File_Type'(Text_IO.Standard_Input));

         --  execute it
         End_Batch :=  Execute (Command_Input, Arguments (1 .. Last));
         exit when End_Batch;
      end loop;
      Text_IO.Close (Guiinit);

      return End_Batch;

   exception

      when Text_IO.Data_Error =>
         IO.Clear_Lower;
         IO.New_Line;
         IO.Put_Line ("*** ERROR : unknown command into guitare.ini");
         IO.New_Line;
         return True;

      when Text_IO.Name_Error =>
         --  the file guitare.ini doesn't exist
         return False;

   end Read_Init_File;

end Commands;
