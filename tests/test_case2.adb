with ada.text_io;
use ada.text_io;
procedure test_case2 is

begin
   for x in 0..50 loop
   case x is
      when 1 => if x /= 1 then put_line("bad 1"); end if;
      when 3 => if x /= 3 then put_line("bad 3" & integer'image(x)); end if;
      when 5 => if x /= 5 then put_line("bad 5" & integer'image(x)); end if;
      when 6 => if x /= 6 then put_line("bad 6"); end if;
      when others => if x=1 or x=3 or x=5 or x=6 then put_line("bad others" & integer'image(x)); end if;
   end case;
   end loop;
end test_case2;