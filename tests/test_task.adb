with Test_Task_Pkg;
with Ada.Text_Io;
use Ada.Text_Io;

procedure Test_Task is
begin
   put_line("started");
declare   
   y : test_task_pkg.bob;
begin
   for I in 1..5 loop
      Y.Fred(I);
      put_line("sent " & integer'image(i));
   end loop;
end;
end Test_Task;
