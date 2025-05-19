with msil_types;
procedure test_bool_addrof is
   procedure test (x : in msil_types.bool_addrof) is
   begin
      null;
   end test;
   y : msil_types.bool_addrof;
begin
   test (y);
end test_bool_addrof;