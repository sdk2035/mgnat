with Ada.Text_Io;
use Ada.Text_Io;
with Test_Tag_Attribute_Pkg;
with Ada.Tags;
use Ada.Tags;

procedure Test_Tag_Attribute is
   A : Test_Tag_Attribute_Pkg.Bob_Ptr_Array;
   --Y : Test_Tag_Attribute_Pkg.Larry_ptr;
   q : ada.Tags.Tag;
begin
   --y := new test_tag_attribute_pkg.larry;
   for I in A'range loop
      if I mod 2 = 0 then
         A(I) := new Test_Tag_Attribute_Pkg.Bob_Child1;
      else
         A(I) := new Test_Tag_Attribute_Pkg.Bob_Child2;
      end if;
   end loop;
   put_line(ada.tags.External_Tag(a(1).all'tag));
   put_line(test_tag_attribute_pkg.bob_child1'external_tag);
   if A(1).all'Tag=A(3).all'Tag then
      put_line("hello");
   end if;
   --q := y.all'tag;
end Test_Tag_Attribute;
