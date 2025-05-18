------------------------------------------------------------------------------
--                                                                          --
--                  JGNAT RUN-TIME LIBRARY (GNARL) COMPONENTS               --
--                                                                          --
--     S Y S T E M . T A S K _ P R I M I T I V E S . O P E R A T I O N S    --
--                                                                          --
--                                  B o d y                                 --
--                                                                          --
--                             $Revision: 1.3 $
--                                                                          --
--           Copyright (C) 1998-1999 Ada Core Technologies, Inc.            --
--                                                                          --
--                                                                          --
-- JGNAT -  The GNAT Ada 95 tool chain for the Java (TM) Virtual Machine is --
--          maintained by Ada Core Technologies, Inc. - http://www.gnat.com --
--                                                                          --
------------------------------------------------------------------------------

--  This is a Java version of this package.

--  with Interfaces.Java.Lang.System;
--  with Interfaces.Java.Lang.Thread;
with Interfaces.Java;

package body System.OS_Primitives is

   --  use Interfaces.Java;

   function Current_Time_100ns return Interfaces.Java.long;
   pragma Import (C, Current_Time_100ns,
      "get_Ticks");

   procedure Sleep (Time : in Integer);
   pragma Import (MSIL, Sleep,
      "[mscorlib]System.Threading.Thread.Sleep");

   -----------
   -- Clock --
   -----------

   function Clock return Duration is
      --  Millisecs : Interfaces.Java.long :=
      --     Lang.System.Current_Time_Millis;
      Millisecs : constant Interfaces.Java.long :=
         Current_Time_100ns / 10_000;
   begin
      return Duration (Millisecs / 1000)
        + Duration (Millisecs rem 1000) / 1000;
   end Clock;

   -----------------
   -- Timed_Delay --
   -----------------

   procedure Timed_Delay (Time : Duration; Mode : Integer) is
      Rel_Time : Duration;
      Abs_Time : Duration;
      Check_Time : Duration := Clock;

   begin
      if Mode = Relative then
         Rel_Time := Time;
         Abs_Time := Time + Check_Time;
      else
         Rel_Time := Time - Check_Time;
         Abs_Time := Time;
      end if;

      if Rel_Time > 0.0 then
         loop
            --  Interfaces.Java.Lang.Thread.Sleep (
            --     long (Rel_Time * 1000.0));
            Sleep (Integer (Rel_Time * 1000.0));
            Check_Time := Clock;

            exit when Abs_Time <= Check_Time;

            Rel_Time := Abs_Time - Check_Time;
         end loop;
      end if;
   end Timed_Delay;

end System.OS_Primitives;
