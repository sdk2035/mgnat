with ada.text_io;
use ada.text_io;
procedure test_enum_get is
   type colors is (red, green, blue);
   package color_io is new ada.text_io.enumeration_io(colors);
   x : colors;
   file : file_type;
   line : string(1..80);
   last : natural;
begin
   ada.text_io.put_line("enter red, green or blue");
   color_io.get(x);
   color_io.put(x);
   ada.text_io.new_line;
   open(file => file, name => "color.txt", mode => in_file);
   get_line(file,line,last);
   put_line(line(1..last));
   close(file);
   open(file => file, name => "color.txt", mode => in_file);
   color_io.get(file,x);
   color_io.put(x);
   color_io.get(file,x);
   color_io.put(x);
   color_io.get(file,x);
   color_io.put(x);
   close(file);
end test_enum_get;