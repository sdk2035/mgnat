-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Object;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Runtime.InteropServices.VariantWrapper is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   function new_VariantWrapper(
      This : Ref := null;
      obj : MSSyst.Object.Ref) return Ref;
   function get_WrappedObject(
      This : access Typ) return MSSyst.Object.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_VariantWrapper);
   pragma Import(MSIL,get_WrappedObject,"get_WrappedObject");
end MSSyst.Runtime.InteropServices.VariantWrapper;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Runtime.InteropServices.VariantWrapper,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Runtime.InteropServices.VariantWrapper");
