pragma Extensions_Allowed(On);

with Mssyst.Object;
with Mssyst.String;
use Mssyst.String;

with type dll.Interface_A.Ref is access; with type MSSyst.Object.Ref is access;

package dll.Interface_B is
   type Typ;
   type Ref is access all Typ'Class;
   type Typ is new MSSyst.Object.Typ with record
      null;
   end record;
   function new_b(
      This : Ref := null) return Ref;
   function asInterface(
      This : access Typ) return Interface_a.Ref;
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_b);
   pragma Import(MSIL,new_b,"new_b");
   pragma Import(MSIL,asInterface,"asInterface");
 
end Dll.Interface_B;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,dll.interface_b,
   ".ver 0:0:0:0 .publickeytoken=(  )",  -- Not used :-)
   "[dll]dll.interface_b");
