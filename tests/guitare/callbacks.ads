
--
--  GUITARE Project
--
--  $Id: callbacks.ads,v 1.2 2000/09/09 15:43:45 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Interfaces.C;

with Tcl;
with Cargv;

package Callbacks is

   package C renames Interfaces.C;

   function Ada_Command (ClientData : in Integer;
                         Interp     : in Tcl.Tcl_Interp;
                         Argc       : in C.int;
                         Argv       : in CArgv.Chars_Ptr_Ptr) return C.int;
   pragma Convention (C, Ada_Command);

end Callbacks;
