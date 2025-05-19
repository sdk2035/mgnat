
--
--  GUITARE Project
--
--  $Id: transposition.ads,v 1.6 2000/09/09 15:43:48 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Notes;
with Scales;

package Transposition is

   subtype Transpose_Mode is Scales.Scale_Mode
     range Scales.MAJOR .. Scales.MINOR;

   procedure Store (In_Key : in Notes.Note_Type;
                    Mode   : in Transpose_Mode;
                    Chords : in String);

   procedure Transpose (To : in Notes.Note_Type);

   procedure Put;

end Transposition;
