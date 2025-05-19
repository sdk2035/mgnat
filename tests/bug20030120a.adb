with ada.text_io;
procedure bug20030120a is
   Last : Natural;
begin
   --for string_number in 1..15 loop
      begin
         Last := Last + 1;
      exception 
         when ada.text_io.data_error | constraint_error =>
            loop
               Last := last + 1;
               exit when Last > 15;
            end loop;
      end;
    --end loop;
end bug20030120a;