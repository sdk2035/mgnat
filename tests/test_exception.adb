with ada.text_io;
use ada.text_io;
procedure test_exception is
   subtype fred is integer range 1..100;
   y : fred := 50;
begin
   y := y + 65;
   Put_Line("No");
exception
   when constraint_error =>
      Put_Line("Yes");
end test_exception;