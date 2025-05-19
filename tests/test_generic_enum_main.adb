with test_generic_enum;
procedure Test_Generic_Enum_Main is
   type Any is (Test);
   package New_Bla is new Test_Generic_Enum(Any);
begin
   new_bla.bob(test);
end Test_Generic_Enum_Main;
   
