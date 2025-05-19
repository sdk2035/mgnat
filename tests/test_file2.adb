with ada.text_io;
use ada.text_io;

with interfaces.c_streams;

with system;

procedure test_file2 is

   file : ada.text_io.File_Type;
   ch   : character;

begin
      put_line("we expect end of file error as newline");
      put_line("is skipped on get");

      ada.text_io.open (file => file,
                        mode => ada.text_io.in_file,
                        name => "blah");
      for i in 0..255 loop
      --while not ada.text_io.end_of_file (file) loop
         ada.text_io.get (file, ch);
         ada.text_io.put_line ("character :" & Natural'Image (Character'Pos
(ch)) );
      end loop;
      ada.text_io.Close (file);

end test_file2;
