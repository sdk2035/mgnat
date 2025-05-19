
--
--  GUITARE Project
--
--  $Id: io.ads,v 1.2 2000/09/09 15:43:46 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Ada.Text_IO;

--with Tcl;
with Notes;
with Fingerboard_Data;
with Positions_IO;

package IO is

   use Ada;

--   procedure Set_Interp (Tcl_Interp : in Tcl.Tcl_Interp);

   type Output_Mode is (Help, Lower);

   procedure Put      (S : in String; Mode : in Output_Mode := Lower);
   procedure Put_Line (S : in String; Mode : in Output_Mode := Lower);

   procedure New_Line (N : in Positive := 1; Mode : in Output_Mode := Lower);

   procedure Set_Col  (Col  : in Text_IO.Positive_Count;
                       Mode : in Output_Mode := Lower);

   procedure Put_Info (S : in String);

   procedure Fingerboard
     (First_Fret, Last_Fret : in Fingerboard_Data.Fret_Range;
      Fingerboard_Notes     : in Notes.Set_Of_Notes;
      Fingerboard           : in Fingerboard_Data.Fingerboard_Type);

   procedure Clear_Lower;

   procedure Positions
     (Fingering_Line : in     Positions_IO.Fingering_Line_Type;
      Current_Indic  : in     Positions_IO.Fingering_Range;
      Last_Fret      : in out Positions_IO.Fret_Range);

end IO;
