with mssyst.drawing;
use mssyst.drawing;
with MSSyst.Drawing.Pointf;

procedure test_valuetype_array is
   Z : Pointf.Valuetype_Arr(0..5);
   x : float;
begin
   for I in Z'range loop
      Z(I) := Pointf.New_Pointf(5.0,5.0);
   end loop;
   x := z(3).get_x;
end test_valuetype_array;
