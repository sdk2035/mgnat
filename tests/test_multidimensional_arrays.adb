procedure test_multidimensional_arrays is
   type seven_array is array(1..2,1..2,1..2,1..2,1..2,1..2,1..2) of boolean;
   x : seven_array;
begin
   x(1,2,1,2,1,2,1) := false;
end test_multidimensional_arrays;