
--
--  GUITARE Project
--
--  $Id: tkguitare.adb,v 1.2 2000/09/09 15:43:48 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Interfaces.C;

with Tcl;
with Tcl.Tk.Ada;

with Commands;
with Notes;
with Defines;

with Tk_GUI;
with logo100;
with logo200;

procedure TkGuitare is

   use type Defines.Switch;
   use type Interfaces.C.int;

   Interp : Tcl.Tcl_Interp := Tcl.Tcl_CreateInterp;

   End_Batch     : Boolean := False;

begin

   --  Tk/Tcl mode
   Defines.Set_GUI (Defines.ON);

   --  some initialisations
   Notes.Clear (Commands.Note_Set1);
   Notes.Clear (Commands.Note_Set2);
   Notes.Clear (Commands.Note_Set3);

   --  read guitare.ini and execute the commands
   End_Batch := Commands.Read_Init_File;

   if Tcl.Tcl_Init (Interp) /= 0 or else Tcl.Tk.Tk_Init (Interp) /= 0 then
      return;
   end if;

   Tcl.Tk.Ada.Set_Context (Interp);

   --  b64 gif images generated passed through b64_to_tash to
   --  create embedded images.

   logo100.Generate_Image (Interp);
   logo200.Generate_Image (Interp);

   Tk_GUI.Init (Interp);

   Tcl.Tk.Tk_MainLoop;

end TkGuitare;
