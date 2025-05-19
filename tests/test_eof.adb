with ada.text_io;
use ada.text_io;

procedure test_eof is
   file : file_type;
   x : character;
begin
   open(file => file, mode => in_file, name => "color.txt");
   while not end_of_file(file) loop
      get(file,x);
      put(x);
   end loop;
end test_eof;