procedure test_composite is
    imp_z : integer;
    pragma Import (C, imp_z, "c_constant_l_tmpnam");
    z : constant integer := imp_z;
    type rec;
    type rec_ptr is access all rec;
    type rec is record
       s : string(1..z);
       n : rec_ptr;
    end record;
    q,x : rec_ptr;
    y : string(1..z);
begin
    q := new rec;
    x := new rec'(y,x);
end test_composite;