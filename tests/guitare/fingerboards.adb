
--
--  GUITARE Project
--
--  $Id: fingerboards.adb,v 1.8 2000/09/09 15:43:46 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--

with IO;

package body Fingerboards is

   First_Fret, Last_Fret : Fret_Range range 1 .. 24;
   Fingerboard_Notes     : Notes.Set_Of_Notes;
   Fingerboard           : Fingerboard_Type;

   -----------------
   -- Set_Display --
   -----------------

   procedure Set_Display (Size : in Fingerboard_Size) is
   begin
      if Size = STANDARD then
         Fingerboards.First_Fret := 1;
         Fingerboards.Last_Fret  := 14;
      else
         Fingerboards.First_Fret := 1;
         Fingerboards.Last_Fret  := 24;
      end if;
   end Set_Display;

   -----------------
   -- Set_Display --
   -----------------

   procedure Set_Display (From, To : in Fret_Range) is
   begin
      Fingerboards.First_Fret := From;
      Fingerboards.Last_Fret  := To;
   end Set_Display;

   --------------------
   -- Is_Manual_Size --
   --------------------

   function Is_Manual_Size return Boolean is
   begin
      if Fingerboards.First_Fret = 1 and then
        (Fingerboards.Last_Fret = 14 or else Fingerboards.Last_Fret = 24) then
         return False;
      else
         return True;
      end if;
   end Is_Manual_Size;

   -----------
   -- Clear --
   -----------

   procedure Clear is
   begin
      for String_Number in String_Numbers loop
         for Fret in Fret_Range loop
            Fingerboard (String_Number)(Fret).Set := False;
         end loop;
      end loop;
   end Clear;

   ---------------------
   -- Set_Fingerboard --
   ---------------------

   procedure Set_Fingerboard is

      subtype String_Range is String_Numbers range
        Instrument.Info.First_String .. Instrument.Info.Last_String;

      Note : Notes.Note_Type;

   begin

      for Guitar_String_Number in String_Range loop

         Note := Instrument.Get_Note_For_String
           (Number => Guitar_String_Number);

         for Fret in 0 .. 24 loop
            Notes.Adjust (Note, Fingerboard_Notes);
            if Notes.Exist (Note, Into => Fingerboard_Notes) then
               Fingerboard (Guitar_String_Number)(Fret).Set  := True;
               Fingerboard (Guitar_String_Number)(Fret).Note := Note;
            else
               Fingerboard (Guitar_String_Number)(Fret).Set  := False;
               Fingerboard (Guitar_String_Number)(Fret).Note := Note;
            end if;
            Notes.Modify (Note, Ton => Notes.PLUS_ONE_HALF);
         end loop;

      end loop;
   end Set_Fingerboard;

   ---------------
   -- Set_Notes --
   ---------------

   procedure Set_Notes (Notes_In_The_Fingerboard : in Notes.Set_Of_Notes) is
   begin
      Fingerboard_Notes := Notes_In_The_Fingerboard;
      Set_Fingerboard;
   end Set_Notes;

   --------------
   -- Set_Note --
   --------------

   procedure Set_Note (String_Number : in String_Numbers;
                       Fret          : in Fret_Range) is
   begin
      Fingerboard (String_Number)(Fret).Set := True;
   end Set_Note;

   --------------
   -- Get_Note --
   --------------

   function Get_Note (String_Number : in String_Numbers;
                      Fret          : in Fret_Range) return Notes.Note_Type is
   begin
      return Fingerboard (String_Number)(Fret).Note;
   end Get_Note;

   ---------
   -- Get --
   ---------

   procedure Get (Into : in out Fingerboard_Type) is
   begin
      Into := Fingerboard;
   end Get;

   -------------
   -- Display --
   -------------

   procedure Display is
   begin
      IO.Fingerboard (First_Fret, Last_Fret, Fingerboard_Notes, Fingerboard);
   end Display;

   -----------------------
   -- Set_Standard_Tune --
   -----------------------

   procedure Set_Standard_Tune is
   begin
      Instrument.Set_Standard_Tune;
      Set_Fingerboard;
   end Set_Standard_Tune;

   --------------
   -- Set_Tune --
   --------------

   procedure Set_Tune (My_Tune : in String_Tune) is
   begin
      Instrument.Set_Tune (My_Tune);
      Set_Fingerboard;
   end Set_Tune;

begin
   Set_Display (Size => STANDARD);
   Set_Standard_Tune;
end Fingerboards;
