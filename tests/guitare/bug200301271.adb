with bug200301271pkg;
use bug200301271pkg;
procedure bug200301271 is
   z : fred;
begin
   z.y := true;
   z.x(3) := 4;
end bug200301271;