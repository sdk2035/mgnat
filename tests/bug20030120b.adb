with ada.text_io;
procedure bug20030120a is
   Last : Natural;
begin
   --for string_number in 1..15 loop
      begin
         Last := Last + 1;
      exception 
         when ada.text_io.data_error | constraint_error =>
            if last > 4 then
               Last := last + 1;
            else
               Last := 2;
               loop
                  last := last - 1;
                  exit when last = 0;
               end loop;
            end if;
      end;
    --end loop;
end bug20030120a;