with ada.text_io;
use ada.text_io;

procedure test_enum_attrib is
   type enum is (red, green, blue);
   x : enum := red;
begin
   put_line(enum'image(x));
   x := enum'value("red");
end test_enum_attrib;
