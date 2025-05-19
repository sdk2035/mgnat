with Ada.Text_Io; use Ada.Text_Io;
--with Ada.Calendar; use Ada.Calendar;

procedure Test_Duration is

   --Tim : Ada.Calendar.Time := Ada.Calendar.Clock;
   Dur : Duration := 2.0;
   Res : Duration := 0.0;
   Num : Natural  := 3;

begin
   Res := 3 * Num * Dur;     -- Ok
   Res := 3.0 * Num * Dur;   -- Constraint_Error
   --Res := Num * (3.0 * Dur); -- Ok
   --Res := (Num * 3.0) * Dur; -- Constraint_Error
   --Res := Num * (3 * Dur);   -- Ok
   --Res := (Num * 3) * Dur;   -- Ok

   Put_Line ("Result = " & Duration'Image(Res));

end Test_Duration;
