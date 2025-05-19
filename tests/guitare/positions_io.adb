
--
--  GUITARE Project
--
--  $Id: positions_io.adb,v 1.15 2000/09/09 15:43:47 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Notes;
with Instrument;
with Defines;
with IO;

package body Positions_IO is

   use type Defines.Switch;

   Current_Indic : Fingering_Range := Fingering_Range'First;
   Max_By_Line   : Fingering_Range := 5;

   Fingering_Line : Fingering_Line_Type;
   Last_Fret      : Fret_Range := 3;

   ------------------------
   -- Set_Number_By_Line --
   ------------------------

   procedure Set_Number_By_Line (N : in Positive := 5) is
   begin
      Max_By_Line := N;
   end Set_Number_By_Line;

   -----------
   -- Flush --
   -----------

   procedure Flush is

   begin
      --  test if there is something to display
      if Current_Indic = Fingering_Range'First then
         return;
      end if;

      IO.Positions (Fingering_Line, Current_Indic, Last_Fret);

      Current_Indic := Fingering_Range'First;

   end Flush;

   ---------
   -- Put --
   ---------

   procedure Put (Fingering : in Fingerings.Fingering_Type;
                  Rank      : in Natural) is

      subtype String_Range is Instrument.String_Numbers range
        Instrument.Info.First_String .. Instrument.Info.Last_String;

      Fretted_String : Fingerings.Fretted_Position;
      Local_Rank     : Natural := Rank;
      Note_String    : Notes.Note_Name_Type;

      Ks : Positive;
      Kf : Positive;

   begin

      if Local_Rank = 0 then
         Local_Rank := 1;
      end if;

      if Local_Rank = 1 then
         Fingering_Line (Current_Indic).Head_Line := (others => '=');
      else
         Fingering_Line (Current_Indic).Head_Line := (others => '-');
      end if;

      Fingering_Line (Current_Indic).Rank      := Local_Rank;

      for Fret in
        Local_Rank .. Local_Rank + Instrument.Info.Fret_Range - 1 loop

         Kf := Fret - Local_Rank + 1;

         for String_Number in String_Range loop

            Ks := String_Number * 2 - 1;

            Fretted_String := Fingerings.Get_Fret (Fingering, String_Number);

            if Fretted_String = Fret then
               --  keep the last fretted position for one display line.
               --  we will only display this lenght of fingering
               if Kf > Last_Fret then
                  Last_Fret := Kf;
               end if;
               Fingering_Line (Current_Indic).String_Position (Kf) (Ks) := '*';
            elsif  Fretted_String = -1 then
               Fingering_Line (Current_Indic).Head_Line (Ks) := 'X';
               Fingering_Line (Current_Indic).String_Position (Kf) (Ks) := ':';
            elsif  Fretted_String = 0 then
               Fingering_Line (Current_Indic).Head_Line (Ks) := 'O';
               Fingering_Line (Current_Indic).String_Position (Kf) (Ks) := '|';
            else
               Fingering_Line (Current_Indic).String_Position (Kf) (Ks) := '|';
            end if;

         end loop;

      end loop;

      --  print note name
      for String_Number in String_Range loop
         Ks := String_Number * 2 - 1;
         Fretted_String := Fingerings.Get_Fret (Fingering, String_Number);
         if Fretted_String = -1 then
            Fingering_Line (Current_Indic).Notes (Ks .. 1+Ks) := "  ";
            Fingering_Line (Current_Indic).Short_Notation (Ks .. 1+Ks) := "x ";
         else
            Notes.Put (Note => Fingerings.Get_Note (Fingering, String_Number),
                       Into => Note_String);
            Fingering_Line (Current_Indic).Notes (Ks .. 1+Ks) := Note_String;
            declare
               Fretted_String_Image : constant String
                 := String_Range'Image (Fretted_String) & ' ';
            begin
               Fingering_Line (Current_Indic).Short_Notation (Ks .. 1+Ks)
                 := Fretted_String_Image (2 .. 3);
            end;
         end if;
      end loop;

      Current_Indic := Current_Indic + 1;

      if Current_Indic > Max_By_Line then
         Flush;
      end if;

   end Put;

end Positions_IO;
