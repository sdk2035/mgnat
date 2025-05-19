
--
--  GUITARE Project
--
--  $Id: tk_gui_template.ads,v 1.2 2000/09/09 15:43:47 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Tcl;

package Tk_GUI is

   procedure Init (Interp : in Tcl.Tcl_Interp);

   Callbacks_Tcl : constant String :=
     --tcl2ada ../gui/callbacks.tcl
     ;

   Fingerboard_Tcl : constant String :=
     --tcl2ada ../gui/fingerboard.tcl
     ;

   Guitare_Tcl : constant String :=
     --tcl2ada ../gui/guitare.tcl
     ;

   Menu_Tcl : constant String :=
     --tcl2ada ../gui/menu.tcl
     ;

   Position_Tcl : constant String :=
     --tcl2ada ../gui/position.tcl
     ;

end Tk_GUI;
