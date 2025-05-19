with ada.characters.handling;
use ada.characters.handling;
with ada.text_io;
use ada.text_io;

procedure test_lower is
   x : string := "Hi there, Bill!";
   c : character := 'T';
begin
   put_line("original:" & x);
   put_line("UPPER:" & to_upper(x));
   put_line("LOWER:" & to_lower(c) & ":" & to_lower(x));
end test_lower;