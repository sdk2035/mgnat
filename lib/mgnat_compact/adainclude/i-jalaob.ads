------------------------------------------------------------------------------
--                                                                          --
--                        JGNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--         I N T E R F A C E S . J A V A . L A N G . O B J E C T            --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--                             $Revision: 1.3 $                             --
--                                                                          --
--              Copyright (C) 1999 Ada Core Technologies, Inc.              --
--                                                                          --
--                                                                          --
-- JGNAT -  The GNAT Ada 95 tool chain for the Java (TM) Virtual Machine is --
--          maintained by Ada Core Technologies, Inc. - http://www.gnat.com --
--                                                                          --
------------------------------------------------------------------------------

--  This child package corresponds to the Java class java.lang.Object.
--  Please consult package Interfaces.Java for an explanation of the
--  mapping between a Java Class and an Ada package.

package Interfaces.Java.Lang.Object is
   pragma Preelaborate;

   type Typ (<>) is tagged limited private;

   type Ref       is access all Typ;
   type Ref_Class is access all Typ'Class;

   function Wait   (This : Ref) return boolean;
   function Wait   (This : Ref; Timeout : int) return boolean;
   procedure Notify (This : Ref);

   function new_Object return Ref;

   package J_Object renames Interfaces.Java.Lang.Object;

private
   type Typ is tagged limited null record;
   pragma Convention (MSIL, Typ);

   pragma Import (MSIL, Wait,
         "mgnat.adalib.MonitorEx.Wait");
   pragma Import (MSIL, Notify,
         "mgnat.adalib.MonitorEx.Pulse");

   pragma Msil_Constructor (new_Object);

end Interfaces.Java.Lang.Object;
pragma Import (MSIL, Object, "[mscorlib]System.Object");
