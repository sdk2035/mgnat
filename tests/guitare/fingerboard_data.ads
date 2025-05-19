
--
--  GUITARE Project
--
--  $Id: fingerboard_data.ads,v 1.2 2000/09/09 15:43:46 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Notes;
with Instrument;

package Fingerboard_Data is

   --  fingerboard representation (used by position module)
   type Note_Type is
      record
         Note : Notes.Note_Type;
         Set  : Boolean := False;
      end record;

   subtype Fret_Range is Natural range 0 .. 24;
   type String_Type is array (Fret_Range) of Note_Type;
   type Fingerboard_Type is array (Instrument.String_Numbers) of String_Type;

end Fingerboard_Data;
