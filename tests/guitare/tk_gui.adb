
--
--  GUITARE Project
--
--  $Id: tk_gui.adb,v 1.2 2000/09/09 15:43:47 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Tcl.Ada;
with Cargv;

with Callbacks;
with IO;

package body Tk_GUI is

   package Create_Commands is new Tcl.Ada.Generic_Command (Integer);

   ----------
   -- Init --
   ----------

   procedure Init (Interp : in Tcl.Tcl_Interp) is
      Command : Tcl.Tcl_Command;
   begin

      IO.Set_Interp (Interp);

      Tcl.Ada.Tcl_Eval (Interp, Menu_Tcl);
      Tcl.Ada.Tcl_Eval (Interp, Fingerboard_Tcl);
      Tcl.Ada.Tcl_Eval (Interp, Position_Tcl);
      Tcl.Ada.Tcl_Eval (Interp, Callbacks_Tcl);
      Tcl.Ada.Tcl_Eval (Interp, Guitare_Tcl);

      Command := Create_Commands.Tcl_CreateCommand
        (Interp, "ada_command",  Callbacks.Ada_Command'Access,  0, null);
   end Init;

end Tk_GUI;
