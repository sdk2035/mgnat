
--
--  GUITARE Project
--
--  $Id: callbacks.adb,v 1.2 2000/09/09 15:43:45 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Ada.Strings.Unbounded;
with Interfaces.C.Strings;
with Commands;

package body Callbacks is

   use Ada.Strings.Unbounded;

   -----------------
   -- Ada_Command --
   -----------------

   function Ada_Command (ClientData : in Integer;
                         Interp     : in Tcl.Tcl_Interp;
                         Argc       : in C.int;
                         Argv       : in CArgv.Chars_Ptr_Ptr) return C.int
   is
      Argument_Count : Natural := Natural (Argc) - 1;

      Command        : constant String :=
        C.Strings.Value (CArgv.Argv_Pointer.Value (Argv)(1));

      Arguments      : Unbounded_String;
   begin
      for K in 2 .. Argument_Count loop
         Arguments := Arguments &
           C.Strings.Value (CArgv.Argv_Pointer.Value (Argv)(C.int (K)));
      end loop;

      declare
         Res : Boolean;
         Com : Commands.Command;
      begin
         Commands.Get (Command, Com);

         Res := Commands.Execute (Com,
                                  To_String (Arguments));
      end;

      return Tcl.TCL_OK;
   end Ada_Command;

end Callbacks;
