with Ada.Characters.Conversions;
with Ada.Text_Io;
use Ada.Text_Io;
with Ada.Wide_Text_Io;
use ada.Wide_Text_IO;
procedure Test_Wide is
   X : Wide_Character;
   q : wide_string(1..20);
begin
   X := 'z';
   for I in Q'range loop
      Q(I) := 'a';
   end loop;
   put_line(q);
   if Q="aaaaaaaaaaaaaaaaaaaa" then
      ada.Text_IO.Put_Line("hi");
   else
      ada.Text_IO.Put_Line("hter");
   end if;
   
   put_line(ada.characters.conversions.to_string(q));
end test_wide;