
with Ada.Strings.Unbounded;

with Tcl.Ada;

with Defines;
with Instrument;
with Roman_Number;
with Positions_Handler;
with Fingerings;

package body IO is

   use Ada;
   use Ada.Strings.Unbounded;

   Interp : Tcl.Tcl_Interp;

   --  X and Y position in lower canvas
   X, Y   : Positive := 10;

   ----------------
   -- Set_Interp --
   ----------------

   procedure Set_Interp (Tcl_Interp : in Tcl.Tcl_Interp) is
   begin
      Interp := Tcl_Interp;
   end Set_Interp;

   --------------
   -- Put_Line --
   --------------

   procedure Put (S : in String; Mode : in Output_Mode := Lower) is

      function To_Tcl (S : in String) return String is
         LS : Unbounded_String;
      begin
         for K in S'Range loop
            case S (K) is
               when '[' =>
                  LS := LS & "\[";
               when ']' =>
                  LS := LS & "\]";
               when others =>
                  LS := LS & S (K);
            end case;
         end loop;
         return """" & To_String (LS) & """";
      end To_Tcl;

   begin
      case Mode is
         when Help =>
            Tcl.Ada.Tcl_Eval (Interp,
                              ".tophelp.text insert end " & To_Tcl (S));
         when Lower =>
            Tcl.Ada.Tcl_Eval (Interp,
                              ".fstext.output_low create text " &
                              Natural'Image (X) & ' ' &
                              Natural'Image (Y) & " -text " &
                              To_Tcl (S) &
                              " -anchor w -tags widgets");
            X := X + 50;
      end case;
   end Put;

   --------------
   -- Put_Line --
   --------------

   procedure Put_Line (S : in String; Mode : in Output_Mode := Lower) is
   begin
      Put (S, Mode);
      New_Line (1, Mode);
   end Put_Line;

   --------------
   -- New_Line --
   --------------

   procedure New_Line (N : in Positive := 1; Mode : in Output_Mode := Lower) is
   begin
      for K in 1 .. N loop
         case Mode is
            when Help =>
               Tcl.Ada.Tcl_Eval (Interp, ".tophelp.text insert end \n");
            when Lower =>
               X := 10;
               Y := Y + 15;
         end case;
      end loop;
   end New_Line;

   -------------
   -- Set_Col --
   -------------

   procedure Set_Col  (Col  : in Text_IO.Positive_Count;
                       Mode : in Output_Mode := Lower) is
   begin
      null;
   end Set_Col;

   --------------
   -- Put_Info --
   --------------

   procedure Put_Info (S : in String) is
   begin
      Tcl.Ada.Tcl_Eval (Interp, ".ftext.output_head configure -text """ &
                        S & """");
   end Put_Info;

   --------------
   -- No_Space --
   --------------

   function No_Space (S : in String) return String is
   begin
      if S (1) = ' ' then
         return S (2 .. S'Last);
      else
         return S;
      end if;
   end No_Space;

   -----------------
   -- Fingerboard --
   -----------------

   procedure Fingerboard
     (First_Fret, Last_Fret : in Fingerboard_Data.Fret_Range;
      Fingerboard_Notes     : in Notes.Set_Of_Notes;
      Fingerboard           : in Fingerboard_Data.Fingerboard_Type)
   is

      use type Defines.Switch;

      subtype String_Range is Instrument.String_Numbers range
        Instrument.Info.First_String .. Instrument.Info.Last_String;

      --------------------------
      -- Change_String_Number --
      --------------------------

      function Change_String_Number (N : in String_Range)
        return String_Range is
      begin
         return Instrument.Info.Number_String + 1 - N;
      end Change_String_Number;

      ------------------
      -- Output_Datas --
      ------------------

      procedure Output_Datas (Fret_Number   : in Fingerboard_Data.Fret_Range;
                              String_Number : in String_Range;
                              Note          : in Notes.Note_Type)
      is
         Note_Name : Notes.Note_Name_Type;
      begin
         Notes.Put (Note, Note_Name);

         Tcl.Ada.Tcl_Eval
           (Interp,
            "set fingb(" &
            No_Space (String_Range'Image
                      (Change_String_Number (String_Number))) &
            ',' &
            No_Space (Fingerboard_Data.Fret_Range'Image (Fret_Number)) &
            ") " &
            No_Space (Note_Name));
      end Output_Datas;

      ------------------
      -- Output_Datas --
      ------------------

      procedure Output_Datas (Fret_Number   : in String;
                              String_Number : in String_Range;
                              Note          : in Notes.Note_Type) is
         Note_Name : Notes.Note_Name_Type;
      begin
         Notes.Put (Note, Note_Name);

         Tcl.Ada.Tcl_Eval
           (Interp,
            "set fingb(" &
            No_Space (String_Range'Image
                      (Change_String_Number (String_Number))) &
            ',' &
            No_Space (Fret_Number) &
            ") " &
            No_Space (Note_Name));
      end Output_Datas;

   begin
      Tcl.Ada.Tcl_Eval (Interp, "global fingb");

      for Guitar_String_Number in String_Range loop

         Output_Datas ("-0.5", Guitar_String_Number,
                       Fingerboard (Guitar_String_Number)(0).Note);

         if Fingerboard (Guitar_String_Number)(0).Set then
            Output_Datas ("0.3", Guitar_String_Number,
                          Fingerboard (Guitar_String_Number)(0).Note);
         end if;

         for Fret in First_Fret .. Last_Fret loop
            if Fingerboard (Guitar_String_Number)(Fret).Set then
               Output_Datas
                 (Fret, Guitar_String_Number,
                  Fingerboard (Guitar_String_Number)(Fret).Note);
            end if;
         end loop;
      end loop;

   end Fingerboard;

   ---------------------
   -- Clear_Positions --
   ---------------------

   procedure Clear_Lower is
   begin
      X := 10;
      Y := 10;
      Tcl.Ada.Tcl_Eval (Interp, "clear_output_lower");
   end Clear_Lower;

   ---------------
   -- Positions --
   ---------------

   procedure Positions
     (Fingering_Line : in     Positions_IO.Fingering_Line_Type;
      Current_Indic  : in     Positions_IO.Fingering_Range;
      Last_Fret      : in out Positions_IO.Fret_Range)
   is

      use type Instrument.Instrument_Type;
      use type Fingerings.Level_Type;

      subtype String_Range is Instrument.String_Numbers range
        Instrument.Info.First_String .. Instrument.Info.Last_String;

      Start  : Positive;
      Index  : Natural;

      N      : Positive;
      Ix, Iy : Positive;

   begin

      if Instrument.Get = Instrument.GUITAR then
         Ix := 140;
         N  := 5;

         if Positions_Handler.Get_Level = Fingerings.Difficult then
            Iy := 170;
         else
            Iy := 150;
         end if;

      else
         Ix := 100;
         Iy := 210;
         N  := 7;
      end if;

      Tcl.Ada.Tcl_Eval (Interp, "global pos");

      for Fp in 1 .. Current_Indic - 1 loop

         --  first fret (start at 0)
         Index := Fingering_Line (Fp).Rank - 1;

         --  roman number
         Tcl.Ada.Tcl_Eval (Interp,
                           "set pos(Fret) " &
                           Roman_Number.Image (Fingering_Line (Fp).Rank));

         --  number of string
         Tcl.Ada.Tcl_Eval (Interp,
                           "set pos(N) " &
                           Instrument.String_Numbers'Image
                           (Instrument.Info.Last_String));

         --  n strings position
         for I in String_Range loop
            Start := I * 2 - 1;
            Tcl.Ada.Tcl_Eval (Interp,
                              "set pos(" &
                              No_Space (String_Range'Image (I)) &
                              ") """ &
                              Fingering_Line (Fp).Short_Notation
                              (Start .. Start + 1) & """");
         end loop;

         --  n notes
         for I in String_Range loop
            Start := I * 2 - 1;
            Tcl.Ada.Tcl_Eval (Interp,
                              "set pos(n" &
                              No_Space (String_Range'Image (I)) &
                              ") """ &
                              Fingering_Line (Fp).Notes (Start .. Start + 1) &
                              """");
         end loop;

         Tcl.Ada.Tcl_Eval (Interp,
                           "display_position .fstext.output_low " &
                           Positive'Image (Index) & " pos " &
                           Positive'Image (X) & ' ' &
                           Positive'Image (Y));

         if Fp mod N = 0 then
            X := 10;
            Y := Y + Iy;
         else
            X := X + Ix;
         end if;

      end loop;

      Tcl.Ada.Tcl_Eval (Interp, "set pos(Fret)");
      Tcl.Ada.Tcl_Eval (Interp, "unset pos");
   end Positions;

end IO;
