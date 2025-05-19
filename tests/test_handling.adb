with ada.text_io;
use ada.text_io;
with ada.characters.handling;
use ada.characters.handling;
procedure test_handling is
   function copy(x : string) return string is
      y : string := x;
   begin
      return y;
   end copy;
   c : character := 'C';
begin 
   put(to_lower(c));
   put_line(":Ctrl+N");
   put_line(copy("Ctrl+N"));
   put_line(to_lower("Ctrl+N"));
end test_handling;
