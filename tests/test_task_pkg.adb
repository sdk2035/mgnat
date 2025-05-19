with Ada.Text_Io;
use Ada.Text_Io;

package body Test_Task_Pkg is

   ---------
   -- Bob --
   ---------

   task body Bob is
      y : integer;
   begin
      put_line("hi");
      loop
      select
         accept Fred(X : in Integer) do
            y := x;
         end Fred;
        put_line("accepted " & integer'image(y));
         exit when y = 5;  
      or
         delay 1.0;
      end select;   
      end loop;      
   end Bob;

end Test_Task_Pkg;

