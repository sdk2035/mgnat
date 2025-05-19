with ada.text_io;

with interfaces.c_streams;

with system;

procedure test_file is

   file : ada.text_io.File_Type;
   ch   : character;

begin

   ada.text_io.create (file => file,
                       mode => ada.text_io.out_file,
                       name => "blah");
   declare
      filename : String := ada.text_io.Name (file);
   begin
      ada.text_io.put_line ("Name = " & filename);

      for I in 0 .. 255 loop
         ada.text_io.put (file, character'val (I));
      end loop;
      ada.text_io.close (file);

      ada.text_io.open (file => file,
                        mode => ada.text_io.in_file,
                        name => filename);

      --for I in 0..255 loop
      while not ada.text_io.end_of_file (file) loop
         ada.text_io.get (file, ch);
         ada.text_io.put_line ("character :" & Natural'Image (Character'Pos
(ch)) );
      end loop;
      ada.text_io.Close (file);
   end;

end test_file;
