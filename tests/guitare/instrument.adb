
--
--  GUITARE Project
--
--  $Id: instrument.adb,v 1.7 2000/09/09 15:43:46 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--



package body Instrument is

   Guitar_String      : String_Tune;
   Current_Instrument : Instrument_Type;

   Instrument_Info : constant array (Instrument_Type) of Info_Type :=
     (GUITAR    => (First_String => 1, Last_String => 6,
                    Number_String => 6, Fret_Range => 5),

      BASS      => (First_String => 1, Last_String => 4,
                    Number_String => 4, Fret_Range => 5),

      MANDOLINE => (First_String => 1, Last_String => 4,
                    Number_String => 4, Fret_Range => 6));


   ---------
   -- Set --
   ---------

   procedure Set (Instrument : in Instrument_Type := GUITAR) is
   begin
      Current_Instrument := Instrument;
      Info := Instrument_Info (Instrument);
      Set_Standard_Tune;
   end Set;

   ---------
   -- Get --
   ---------

   function Get return Instrument_Type is
   begin
      return Current_Instrument;
   end Get;

   -----------------------
   -- Set_Standard_Tune --
   -----------------------

   procedure Set_Standard_Tune is
      use Notes;
   begin
      case Get is
         when GUITAR =>
            Guitar_String := (E, A, D, G, B, E);
         when BASS =>
            Guitar_String := (E, A, D, G, C, C); -- the C are dummy
         when MANDOLINE =>
            Guitar_String := (G, D, A, E, C, C); -- the C are dummy
      end case;
   end Set_Standard_Tune;

   --------------
   -- Set_Tune --
   --------------

   procedure Set_Tune (My_Tune : in String_Tune) is
   begin
      Guitar_String := My_Tune;
   end Set_Tune;

   -------------------------
   -- Get_Note_For_String --
   -------------------------

   function Get_Note_For_String (Number : in String_Numbers)
                                 return Notes.Note_Type is
   begin
      return Guitar_String (Number);
   end Get_Note_For_String;

begin
   Set;
end Instrument;
