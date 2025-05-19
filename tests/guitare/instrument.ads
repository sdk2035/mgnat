
--
--  GUITARE Project
--
--  $Id: instrument.ads,v 1.6 2000/09/09 15:43:46 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Notes;

package Instrument is

   subtype String_Numbers is Positive range 1 .. 6;

   --  Info about the instruments

   type Instrument_Type is (GUITAR, BASS, MANDOLINE);

   type Info_Type is
      record
         First_String  : String_Numbers;
         Last_String   : String_Numbers;
         Number_String : String_Numbers;
         Fret_Range    : Positive range 3 .. 6;
      end record;

   Info : Info_Type;

   procedure Set (Instrument : in Instrument_Type := GUITAR);
   function Get return Instrument_Type;



   --  Tunning of the guitare

   type String_Tune is array (String_Numbers) of Notes.Note_Type;

   procedure Set_Standard_Tune;
   procedure Set_Tune (My_Tune : in String_Tune);

   function Get_Note_For_String (Number : in String_Numbers)
                                 return Notes.Note_Type;

end Instrument;
