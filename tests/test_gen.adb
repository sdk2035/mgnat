--------------------------
with gen_pkg;
procedure test_gen is
   package gen is new gen_pkg (integer);
   test : integer := 0;
begin
   gen.do_something (test);
end test_gen;
