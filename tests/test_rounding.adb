with Ada.Text_IO;
use Ada.Text_IO;

procedure Test_Rounding is
   I : Integer;
   F : Float := 3.5;
begin
   I := Integer (F);
   put_line("cast of 3.5 is " & integer'image(I));
   I := Integer (Float'Rounding (F));
   put_line("rounding of 3.5 is " & integer'image(I));
end Test_Rounding;

