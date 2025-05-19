with mssyst.drawing.fontstyle;
with mssyst.string;
use mssyst.string;
procedure test_ms_enum_attrib is
   function f(x : in integer; y : mssyst.string.ref) 
      return integer is
   begin
      return 3;
   end f;
   x : mssyst.drawing.fontstyle.valuetype;
   y : integer;
begin
   y := 4;
   x := mssyst.drawing.fontstyle.valuetype'val(y);
   y := f(mssyst.drawing.fontstyle.valuetype'pos(x),+"");
end test_ms_enum_attrib;