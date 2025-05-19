with Ada.Text_Io;
use ada.Text_IO;
procedure Test_Mod_64 is

   type Fred is mod 2**32;
   type Larry is mod 2**64;

   x : fred := 1;
   y : larry := 1;
begin
   for I in 1..31 loop
      X := X * 2;
      y := y * 2;
      put_line(integer'image(i));
      Put_Line(fred'image(X));
   end loop;
   for i in 32..63 loop
      y := y * 2;
      put_line(integer'image(i));
      Put_Line(larry'image(y));
   end loop;
   
end Test_Mod_64;

