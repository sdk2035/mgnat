
--
--  GUITARE Project
--
--  $Id: fingerings.ads,v 1.6 2000/09/09 15:43:46 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Notes;
with Instrument;

package Fingerings is

   type Options_Type is (Easy, Medium, Difficult, Common, Any);
   subtype Level_Type is Options_Type range Easy .. Difficult;
   subtype Kind_Type is Options_Type range Common .. Any;

   subtype Fretted_Position is Integer range -1 .. 24;

   type Fingering_Type is private;

   procedure Analyse (Fingering : in     Fingering_Type;
                      Exist     :    out Boolean;
                      Level     :    out Level_Type);

   procedure Set (Fingering     : in out Fingering_Type;
                  String_Number : in     Instrument.String_Numbers;
                  Fret          : in     Fretted_Position := -1;
                  Note          : in     Notes.Note_Type := Notes.C);

   procedure Set (Kind : in Kind_Type);
   function  Get_Kind return Kind_Type;

   function Get_Fret (Fingering     : in Fingering_Type;
                      String_Number : in Instrument.String_Numbers)
                      return Fretted_Position;

   function Get_Note (Fingering     : in Fingering_Type;
                      String_Number : in Instrument.String_Numbers)
                      return Notes.Note_Type;



private

   type Position_Note is record
      Fret : Fretted_Position := -1;
      Note : Notes.Note_Type  := Notes.C;
   end record;

   type Fingering_Type is array (Instrument.String_Numbers) of Position_Note;

end Fingerings;
