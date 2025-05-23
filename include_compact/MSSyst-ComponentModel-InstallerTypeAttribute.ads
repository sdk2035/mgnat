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
package MSSyst.ComponentModel.InstallerTypeAttribute is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Attribute.Typ   with record
      null;
   end record;
   function new_InstallerTypeAttribute(
      This : Ref := null;
      installerType : MSSyst.Type_k.Ref) return Ref;
   function new_InstallerTypeAttribute(
      This : Ref := null;
      typeName : MSSyst.String.Ref) return Ref;
   function Equals(
      This : access Typ;
      obj : MSSyst.Object.Ref) return Standard.Boolean;
   function get_InstallerType(
      This : access Typ) return MSSyst.Type_k.Ref;
   function GetHashCode(
      This : access Typ) return Integer;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_InstallerTypeAttribute);
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,get_InstallerType,"get_InstallerType");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
end MSSyst.ComponentModel.InstallerTypeAttribute;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.ComponentModel.InstallerTypeAttribute,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.InstallerTypeAttribute");
