package bug200301271pkg is
   type int_array is array(1..5) of integer;
   type fred is record
      y : boolean;
      x : int_array;
   end record;
end bug200301271pkg;