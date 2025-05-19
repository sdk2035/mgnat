
--
--  GUITARE Project
--
--  $Id: fingerboards.ads,v 1.6 2000/09/09 15:43:46 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Notes;
with Instrument;
with Fingerboard_Data;

package Fingerboards is

   use Fingerboard_Data;
   use Instrument;

   type Fingerboard_Size is (STANDARD, EXTENDED);

   --  for fingerboard
   procedure Display;
   procedure Set_Display (Size     : in Fingerboard_Size);
   procedure Set_Display (From, To : in Fret_Range);
   function Is_Manual_Size return Boolean;

   procedure Set_Notes (Notes_In_The_Fingerboard : in Notes.Set_Of_Notes);
   function Get_Note (String_Number : in String_Numbers;
                      Fret          : in Fret_Range) return Notes.Note_Type;
   procedure Get (Into : in out Fingerboard_Type);



   --  custom fingerboard display
   procedure Clear;
   procedure Set_Note (String_Number : in String_Numbers;
                       Fret          : in Fret_Range);


   --  for tune
   subtype String_Tune is Instrument.String_Tune;

   procedure Set_Standard_Tune;
   procedure Set_Tune (My_Tune : in String_Tune);

end Fingerboards;
