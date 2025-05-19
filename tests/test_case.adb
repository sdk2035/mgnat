with ada.text_io;
use ada.text_io;
procedure test_case is
   subtype fred is integer range 1..1000;

begin
   for x in 0..1001 loop
   case x is
      when 1 => 
         if x /= 1 then put_line("bad 1");else put_line ("good"); end if;
      when 1000 => null;
         if x /= 1000 then put_line("bad 2");else put_line ("good"); end if;
      when others => null;
         if x = 1 or x = 1000 then put_line("bad 3");else put_line ("good"); end if;
   end case;
   end loop;
   for x in 0..1001 loop
   case x is
      when 1000 => null;
         if x /= 1000 then put_line("bad 4");else put_line ("good"); end if;
      when others => null;
         if x = 1000 then put_line("bad 5");else put_line ("good"); end if;
   end case;
   end loop;
   for x in 0..1001 loop
   case x is
      when 1 => null;
         if x /= 1 then put_line("bad 6"); else put_line ("good"); end if;
      when 2 => null;
         if x /= 2 then put_line("bad 7"); else put_line ("good"); end if;
      when 3..999 => null;
         if x < 3 or x >= 1000 then put_line("bad 8"); else put_line ("good"); end if;
      when 1000 => null;
         if x /= 1000 then put_line("bad 9"); else put_line ("good"); end if;
      when others => null;
         if x >= 1 and x <= 1000 then put_line("bad 10"); else put_line ("good"); end if;
   end case;
   end loop;
   put_line("no news is good news-- should have 3006 goods");
end test_case;