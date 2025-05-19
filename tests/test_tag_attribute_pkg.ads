package Test_Tag_Attribute_Pkg is
   type Bob_Parent is tagged null record;
   type Bob_Ptr is access all Bob_Parent'Class;
   type Bob_Ptr_Array is array(1..10) of Bob_Ptr;
   type Bob_Child1 is new Bob_Parent with null record;
   type Bob_Child2 is new Bob_Parent with null record;
end Test_Tag_Attribute_Pkg;
