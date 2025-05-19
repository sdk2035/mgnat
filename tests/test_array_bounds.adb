
procedure test_array_bounds is
   procedure fred (x : in string) is
   begin
      null;
   end fred;
   type larry is access procedure(x : in string);
   y : larry := fred'unrestricted_access;
begin
   fred("hello");
   y.all("hello");
end test_array_bounds;