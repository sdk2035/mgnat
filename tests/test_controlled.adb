with test_controlled_pkg;
with ada.text_io;
use ada.text_io;
with ada.unchecked_deallocation;

procedure test_controlled is
   x : integer;
   procedure free is new ada.unchecked_deallocation(test_controlled_pkg.fred'class,
      test_controlled_pkg.fred_ptr);
begin
   x := 3;
   put_line("hi");
   declare
      y : array(1..10) of test_controlled_pkg.fred_ptr;
   begin
      for i in 1..10 loop
         y(i) := new test_controlled_pkg.fred;
         put_line("there");
      end loop;
      for i in 1..10 loop
         Free(Y(i));
      end loop;
   end;
end test_controlled;