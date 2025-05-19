
pragma Extensions_Allowed(On); with Ada.Text_IO; use Ada.Text_IO;

with Mssyst.String;
use Mssyst.String;
use Mssyst;

with dll.Interface_a; use dll.Interface_a; with dll.Interface_b; use dll.Interface_b;

procedure test_interfaces is
   b : dll.Interface_b.Ref;
begin
   b := new_b;
   Put_Line (+Get_Version (asinterface (b))); 
end test_interfaces;
