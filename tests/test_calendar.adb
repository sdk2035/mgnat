with ada.calendar;
use ada.calendar;
with ada.text_io;
use ada.text_io;
procedure test_calendar is
  now : time := clock;
  span : duration := 88400.0;
  and_then : time := now + span;
begin
  put_line (integer'image(year(now)) & integer'image(month(now)) & integer'image(day(now)) & integer'image(integer(seconds(now))));
  put_line (integer'image(year(and_then)) & integer'image(month(and_then)) & integer'image(day(and_then)) &
     integer'image(integer(seconds(and_then))));
end test_calendar;