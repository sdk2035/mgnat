------------------------------------------------------------------------------
--                                                                          --
--                        JGNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--         I N T E R F A C E S . J A V A . L A N G . T H R E A D            --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--                             $Revision: 1.5 $
--                                                                          --
--              Copyright (C) 1999 Ada Core Technologies, Inc.              --
--                                                                          --
--                                                                          --
------------------------------------------------------------------------------

--  This child package corresponds to the Java class java.lang.Thread.
--  Please consult package Interfaces.Java for an explanation of the
--  mapping between a Java Class and an Ada package.

with Interfaces;
with Interfaces.Java.Lang.Object;
with Interfaces.Java.Lang.Priority;

package Interfaces.Java.Lang.Thread is
   pragma Preelaborate;

   type Typ is new Object.Typ with null record;

   type Ref       is access all Typ;
   type Ref_Class is access all Typ'Class;

   procedure Set_Priority (
      This   : access Typ;
      New_Priority : Interfaces.Java.Lang.Priority.ValueType);
   function  Get_Priority (This   : access Typ)
      return Interfaces.Java.Lang.Priority.ValueType;
   procedure Set_Daemon   (This   : access Typ; Status : boolean);
   procedure Start        (This   : access Typ);
   procedure Sleep        (Millis : int);
   procedure Yield        (Millis : int := 0);
   function  Current_Thread return Ref_Class;

private
   pragma Convention (MSIL, Typ);

   pragma Import (MSIL, Set_Priority,   "set_Priority");
   pragma Import (MSIL, Get_Priority,   "get_Priority");
   pragma Import (MSIL, Sleep,          "Sleep");
   pragma Import (MSIL, Yield,          "Sleep");
   pragma Import (MSIL, Current_Thread, "get_CurrentThread");
   pragma Import (MSIL, Set_Daemon,     "set_IsBackground");
   pragma Import (MSIL, Start,          "Start");

end Interfaces.Java.Lang.Thread;

pragma Import (MSIL, Interfaces.Java.Lang.Thread,
   "[mscorlib]System.Threading.Thread");
