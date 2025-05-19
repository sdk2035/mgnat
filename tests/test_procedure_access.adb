with ada.text_io;
use ada.text_io;
with package_procedure_access;
procedure test_procedure_access is
   q : integer;
   procedure bob(x : in integer; z : in string) is
   begin
      put_line(z & integer'image(x));
      put_line(integer'image(q));
   end bob;
   z : package_procedure_access.proc_ptr := bob'unrestricted_access;
   y : package_procedure_access.proc_ptr := package_procedure_access.tim'access;
begin
   q := 4;
   bob(3,"bob");
   y.all(3,"bob");
   z.all(3,"bob");
end test_procedure_access;