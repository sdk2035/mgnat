with msil_types;
with system;
with ada.unchecked_conversion;
with test_ref_cs.class1;
with ada.text_io;
procedure test_access_int is
   q : aliased integer;
   g : integer;
   z : msil_types.int32_addrof;
   b : aliased boolean := false;
   r : aliased msil_types.unsigned_integer;
begin
   z := (g'address);
   test_ref_cs.class1.test_int(q'address);
   ada.text_io.put_line(integer'image(q));
   test_ref_cs.class1.test_bool(b'address);
   ada.text_io.put_line(boolean'image(b));
   test_ref_cs.class1.test_uint(r'address);
   ada.text_io.put_line(msil_types.unsigned_integer'image(r));
end test_access_int;
