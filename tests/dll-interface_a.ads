pragma Extensions_Allowed(On);

with Mssyst.Object;
with Mssyst.String;
use Mssyst.String;
with type MSSyst.Object.Ref is access;

package dll.Interface_A is
   type Typ;
   type Ref is access all Typ'Class;
   type Typ (Self : access Mssyst.Object.Typ'Class)
      is abstract new Mssyst.Object.Typ with null record;
   function get_Version(
      This : access Typ) return Mssyst.String.Ref is abstract;
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,get_Version,"get_Version");

end Dll.Interface_A;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,dll.interface_a,
   ".ver 0:0:0:0 .publickeytoken=(  )", -- Not used :-)
   "[dll]dll.interface_a");

