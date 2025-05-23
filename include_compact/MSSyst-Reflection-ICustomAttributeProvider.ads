-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.Object.Ref_array is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.Reflection.ICustomAttributeProvider is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is interface;
   function GetCustomAttributes(
      This : access Typ;
      inherit : Standard.Boolean) return MSSyst.Object.Ref_array is abstract;
   function GetCustomAttributes(
      This : access Typ;
      attributeType : MSSyst.Type_k.Ref;
      inherit : Standard.Boolean) return MSSyst.Object.Ref_array is abstract;
   function IsDefined(
      This : access Typ;
      attributeType : MSSyst.Type_k.Ref;
      inherit : Standard.Boolean) return Standard.Boolean is abstract;
private
   pragma Import(MSIL,GetCustomAttributes,"GetCustomAttributes");
   pragma Import(MSIL,IsDefined,"IsDefined");
end MSSyst.Reflection.ICustomAttributeProvider;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Reflection.ICustomAttributeProvider,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Reflection.ICustomAttributeProvider");
