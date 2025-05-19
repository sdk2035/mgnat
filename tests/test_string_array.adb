with Mssyst.String;
use Mssyst.String;
with Mssyst.Io.Directory;
procedure Test_String_Array is
   Results : access Mssyst.String.Ref_Arr;
begin
   Results := Mssyst.Io.Directory.GetFiles(
      "c:\d\temp",
      "*.ads");
   for I in Results'range loop
      null;
   end loop;
   
end Test_String_Array;

