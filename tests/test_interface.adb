with test_interface_pkg;
with ada.text_Io;
use ada.text_io;

procedure test_interface is
   procedure bob (x : test_interface_pkg.int1'class) is
   begin
      x.op1;
      put_line("success!");
   end bob;
   ptr : test_interface_pkg.t1_ptr := new test_interface_pkg.t1;
   tim : test_interface_pkg.int1_ptr;
   ptr2 : test_interface_pkg.t_ptr := test_interface_pkg.t_ptr(ptr);
begin
   test_interface_pkg.x := 3;
   tim := test_interface_pkg.int1_ptr(ptr);
   bob(test_interface_pkg.int1(ptr.all));
   tim := test_interface_pkg.int1_ptr(test_interface_pkg.t1_ptr(ptr2));
   bob(tim.all);
end test_interface;
