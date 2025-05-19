
with Ada.Text_IO;

--with Tcl;

with Defines;
with Instrument;
with Roman_Number;
with Page_Definition;

package body IO is

   use Ada;

   use type Defines.Switch;

   ----------------
   -- Set_Interp --
   ----------------

--   procedure Set_Interp (Tcl_Interp : in Tcl.Tcl_Interp) is
--   begin
--      null;
--   end Set_Interp;

   --------------
   -- Put_Line --
   --------------

   procedure Put (S : in String; Mode : in Output_Mode := Lower) is
   begin
      Text_IO.Put (S);
   end Put;

   --------------
   -- Put_Line --
   --------------

   procedure Put_Line (S : in String; Mode : in Output_Mode := Lower) is
   begin
      Put (S);
      New_Line;
   end Put_Line;

   --------------
   -- New_Line --
   --------------

   procedure New_Line (N : in Positive := 1; Mode : in Output_Mode := Lower) is
   begin
      Text_IO.New_Line (Text_IO.Count (N));
   end New_Line;

   -------------
   -- Set_Col --
   -------------

   procedure Set_Col  (Col  : in Text_IO.Positive_Count;
                       Mode : in Output_Mode := Lower) is
   begin
      Text_IO.Set_Col (Col);
   end Set_Col;

   --------------
   -- Put_Info --
   --------------

   procedure Put_Info (S : in String) is
   begin
      Put_Line (S);
   end Put_Info;


   -----------------
   -- Fingerboard --
   -----------------

   procedure Fingerboard
     (First_Fret, Last_Fret : in Fingerboard_Data.Fret_Range;
      Fingerboard_Notes     : in Notes.Set_Of_Notes;
      Fingerboard           : in Fingerboard_Data.Fingerboard_Type)
   is

      use type Instrument.Instrument_Type;

      subtype String_Range is Instrument.String_Numbers range
        Instrument.Info.First_String .. Instrument.Info.Last_String;

      type Mode_Type is (Without_Fret_Pos, With_Fret_Pos, Fret_Pos_At_12);

      Note : Notes.Note_Type;

      --------------------------
      -- Display_Inter_String --
      --------------------------

      procedure Display_Inter_String (Mode : in Mode_Type) is

         Elipse : constant String := "          ";
         Sep1   : constant String := "    |";
         Sep2   : constant String := " <> |";

      begin
         if First_Fret /= 1 then
            Text_IO.Put (Elipse);
         end if;
         for Fret in First_Fret .. Last_Fret loop
            if Mode = Fret_Pos_At_12 then
               if Fret = 12 then
                  Text_IO.Put (Sep2);
               else
                  Text_IO.Put (Sep1);
               end if;
            elsif Mode = With_Fret_Pos then
               if Fret = 3 or else Fret = 5 or else Fret = 7 or else
                 Fret = 9 or else Fret = 15 or else Fret = 17 or else
                 Fret = 19 or else Fret = 21 then
                  Text_IO.Put (Sep2);
               else
                  Text_IO.Put (Sep1);
               end if;
            else
               Text_IO.Put (Sep1);
            end if;
         end loop;
         Text_IO.New_Line;
      end Display_Inter_String;

      --------------------
      -- Display_String --
      --------------------

      procedure Display_String (N : in Instrument.String_Numbers) is
         Elipse : constant String := "  - - -   ";
      begin
         if First_Fret /= 1 then
            Text_IO.Put (Elipse);
         end if;
         for Fret in First_Fret .. Last_Fret loop
            if Fingerboard (N)(Fret).Set then
               Text_IO.Put ("-");
               Notes.Put (Fingerboard (N)(Fret).Note);
               Text_IO.Put ("-|");
            else
               Text_IO.Put ("---- ");
            end if;
         end loop;
         Text_IO.New_Line;
      end Display_String;

   begin

      for Guitar_String_Number in reverse String_Range loop

         Note := Fingerboard (Guitar_String_Number)(0).Note;
         Notes.Put (Note);

         if Fingerboard (Guitar_String_Number)(0).Set then
            Text_IO.Put (" >|");
         else
            Text_IO.Put ("  |");
         end if;

         Display_String (Guitar_String_Number);

         if Instrument.Get = Instrument.GUITAR then

            case Guitar_String_Number is
               when 2 | 6 =>
                  Text_IO.Put ("    |");
                  Display_Inter_String (Mode => Without_Fret_Pos);
               when 5 | 3 =>
                  Text_IO.Put ("    |");
                  Display_Inter_String (Mode => Fret_Pos_At_12);
               when 4 =>
                  Text_IO.Put ("    |");
                  Display_Inter_String (Mode => With_Fret_Pos);
               when others =>
                  null;
            end case;

         else

            case Guitar_String_Number is
               when 2 | 4 =>
                  Text_IO.Put ("    |");
                  Display_Inter_String (Mode => Fret_Pos_At_12);
               when 3 =>
                  Text_IO.Put ("    |");
                  Display_Inter_String (Mode => With_Fret_Pos);
               when others =>
                  null;
            end case;

         end if;

      end loop;

   end Fingerboard;

   -----------------
   -- Clear_Lower --
   -----------------

   procedure Clear_Lower is
   begin
      null;
   end Clear_Lower;

   --------------
   -- Position --
   --------------

   procedure Positions
     (Fingering_Line : in     Positions_IO.Fingering_Line_Type;
      Current_Indic  : in     Positions_IO.Fingering_Range;
      Last_Fret      : in out Positions_IO.Fret_Range)
   is

      Tab : constant Positive := 14;
      Len : constant Positive := Instrument.Info.Number_String * 2 - 1;
      Col : Positive;

      ----------------------
      -- Check_Space_Left --
      ----------------------

      procedure Check_Space_Left is
      begin
         if Integer (Text_IO.Line) + 6 + Last_Fret*2  >
           Page_Definition.Page_Length then
            Text_IO.New_Page;
            Page_Definition.Print_Header (Text_IO.Current_Output);
         end if;
      end Check_Space_Left;

      ---------
      -- Put --
      ---------

      procedure Put (Str    : in String;
                     Offset : in Natural := 0) is
         --  Offset must be set to 1 for the notes line and for the short
         --  chord notation. This is to output the sharp, flat from the
         --  notes line, or the second digit in the short chord notation.
      begin
         Text_IO.Put (Str (1 .. Len + Offset));
      end Put;

   begin

      if Text_IO.Name (Text_IO.Current_Output) /=
        Text_IO.Name (Text_IO.Standard_Output) then
         Check_Space_Left;
      end if;

      Text_IO.New_Line;

      --  roman number
      for Fp in 1 .. Current_Indic - 1 loop
         Col := (Fp - 1) * Tab + 1;
         Text_IO.Set_Col (Text_IO.Positive_Count (Col));
         Roman_Number.Put (Fingering_Line (Fp).Rank);
      end loop;
      Text_IO.New_Line;

      --  first sep
      for Fp in 1 .. Current_Indic - 1 loop
         Col := (Fp - 1) * Tab + 1;
         Text_IO.Set_Col (Text_IO.Positive_Count (Col));
         Put (Str => Fingering_Line (Fp).Head_Line);
      end loop;
      Text_IO.New_Line;

      for Fret in Positions_IO.Fret_Range'First .. Last_Fret loop
         --  fret
         for Fp in 1 .. Current_Indic - 1 loop
            Col := (Fp - 1) * Tab + 1;
            Text_IO.Set_Col (Text_IO.Positive_Count (Col));
            Put (Str => Fingering_Line (Fp).String_Position (Fret));
         end loop;
         Text_IO.New_Line;

         --  inter fret
         for Fp in 1 .. Current_Indic - 1 loop
            Col := (Fp - 1) * Tab + 1;
            Text_IO.Set_Col (Text_IO.Positive_Count (Col));
            Put (Str => "-----------");
         end loop;
         Text_IO.New_Line;
      end loop;

      --  note of the chord
      for Fp in 1 .. Current_Indic - 1 loop
         Col := (Fp - 1) * Tab + 1;
         Text_IO.Set_Col (Text_IO.Positive_Count (Col));
         Put (Fingering_Line (Fp).Notes, Offset => 1);
      end loop;

      --  chord short notation
      for Fp in 1 .. Current_Indic - 1 loop
         Col := (Fp - 1) * Tab + 1;
         Text_IO.Set_Col (Text_IO.Positive_Count (Col));
         Put (Fingering_Line (Fp).Short_Notation, Offset => 1);
      end loop;

      Text_IO.New_Line (2);
      Last_Fret := 3;

      --  wait for the next positions
      if Text_IO.Name (Text_IO.Current_Output) =
        Text_IO.Name (Text_IO.Standard_Output) then
         Text_IO.Put ("Press RETURN to continue ...");
         Text_IO.Flush;
         Text_IO.Skip_Line;
         Text_IO.New_Line;
      end if;

      Text_IO.Flush;
   end Positions;

end IO;
