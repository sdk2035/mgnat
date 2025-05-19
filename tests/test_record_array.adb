with Ada.Text_Io;
use ada.Text_IO;
procedure test_record_array is
   type bob is record
      x : integer;
      y : integer;
   end record;
   type Bob_Ptr is access all Bob;
   subtype String_8 is String(1..8);
   type str_array is array(1..3,1..2,1..4) of string_8;
   B,New_B : Str_Array;
   type Bob_Array is array(1..3,1..2,1..4) of Bob;
   C : Bob_Array;
begin
   for I in 1..3 loop
      for J in 1..2 loop
         for k in 1..4 loop
            B(I,J,K) := "!!" & integer'image(i) & integer'image(j) & integer'image(k);
         end loop;
      end loop;
   end loop;
   New_B := b;
   for I in 1..3 loop
      for J in 1..2 loop
         for K in 1..4 loop
            put_line(integer'image(i) & ":" & integer'image(j) & ":" & integer'image(k) & ":" & New_B(i,j,k));
         end loop;
      end loop;
   end loop;
   c(3,2,4).x := 5;
   null;
end test_record_array;
