with ada.text_io;
procedure test_loop is
begin
   for j in 1 .. 5 loop
      ada.text_io.put_line (integer'image (j));
   end loop;
end test_loop;
