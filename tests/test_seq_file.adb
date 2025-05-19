with ada.text_io;
with ada.sequential_io;

procedure test_seq_file is

   package fileio is new ada.sequential_io (character);

   file     : fileio.File_Type;
   ch       : character;
   filename : String := "test_seq_file.out";

begin
   fileio.create (file => file,
                  mode => fileio.out_file,
                  name => filename);

   for I in 0 .. 255 loop
      fileio.write (file, character'val (I));
   end loop;
   fileio.close (file);

   ada.text_io.put_line ("-- reading --");

   fileio.open (file => file,
                mode => fileio.in_file,
                name => filename);

   while not fileio.end_of_file (file) loop
      fileio.read (file, ch);
      ada.text_io.put_line ("character :" & Natural'Image (Character'Pos
(ch)) );
   end loop;
   fileio.Close (file);

end test_seq_file;
