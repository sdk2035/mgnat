-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Attribute;
with type MSSyst.Object.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Reflection.ObfuscateAssemblyAttribute is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Attribute.Typ   with record
      null;
   end record;
   function new_ObfuscateAssemblyAttribute(
      This : Ref := null;
      assemblyIsPrivate : Standard.Boolean) return Ref;
   function get_AssemblyIsPrivate(
      This : access Typ) return Standard.Boolean;
   function get_StripAfterObfuscation(
      This : access Typ) return Standard.Boolean;
   procedure set_StripAfterObfuscation(
      This : access Typ;
      value : Standard.Boolean);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ObfuscateAssemblyAttribute);
   pragma Import(MSIL,get_AssemblyIsPrivate,"get_AssemblyIsPrivate");
   pragma Import(MSIL,get_StripAfterObfuscation,"get_StripAfterObfuscation");
   pragma Import(MSIL,set_StripAfterObfuscation,"set_StripAfterObfuscation");
end MSSyst.Reflection.ObfuscateAssemblyAttribute;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Reflection.ObfuscateAssemblyAttribute,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Reflection.ObfuscateAssemblyAttribute");
