-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Attribute;
with MSSyst.Runtime.InteropServices.uAttribute;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.ComponentModel.LicenseProviderAttribute is
   type Typ is new MSSyst.Attribute.Typ
         and MSSyst.Runtime.InteropServices.uAttribute.Typ
   with record
      null;
   end record;
   Default : access MSSyst.ComponentModel.LicenseProviderAttribute.Typ'Class;
   pragma Import(MSIL,Default,"Default");
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_LicenseProviderAttribute(
      This : Ref := null) return Ref;
   function new_LicenseProviderAttribute(
      This : Ref := null;
      typeName : access MSSyst.String.Typ'Class) return Ref;
   function new_LicenseProviderAttribute(
      This : Ref := null;
      type_k : access MSSyst.Type_k.Typ'Class) return Ref;
   function Equals(
      This : access Typ;
      value : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function get_LicenseProvider(
      This : access Typ) return access MSSyst.Type_k.Typ'Class;
   function get_TypeId(
      This : access Typ) return access MSSyst.Object.Typ'Class;
   function GetHashCode(
      This : access Typ) return Integer;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_LicenseProviderAttribute);
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,get_LicenseProvider,"get_LicenseProvider");
   pragma Import(MSIL,get_TypeId,"get_TypeId");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
end MSSyst.ComponentModel.LicenseProviderAttribute;
pragma Import(MSIL,MSSyst.ComponentModel.LicenseProviderAttribute,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.LicenseProviderAttribute");
