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
package MSSyst.ComponentModel.DataObjectAttribute is
   type Typ is new MSSyst.Attribute.Typ
         and MSSyst.Runtime.InteropServices.uAttribute.Typ
   with record
      null;
   end record;
   DataObject : access MSSyst.ComponentModel.DataObjectAttribute.Typ'Class;
   pragma Import(MSIL,DataObject,"DataObject");
   NonDataObject : access MSSyst.ComponentModel.DataObjectAttribute.Typ'Class;
   pragma Import(MSIL,NonDataObject,"NonDataObject");
   Default : access MSSyst.ComponentModel.DataObjectAttribute.Typ'Class;
   pragma Import(MSIL,Default,"Default");
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_DataObjectAttribute(
      This : Ref := null) return Ref;
   function new_DataObjectAttribute(
      This : Ref := null;
      isDataObject : Standard.Boolean) return Ref;
   function Equals(
      This : access Typ;
      obj : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function get_IsDataObject(
      This : access Typ) return Standard.Boolean;
   function GetHashCode(
      This : access Typ) return Integer;
   function IsDefaultAttribute(
      This : access Typ) return Standard.Boolean;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_DataObjectAttribute);
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,get_IsDataObject,"get_IsDataObject");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,IsDefaultAttribute,"IsDefaultAttribute");
end MSSyst.ComponentModel.DataObjectAttribute;
pragma Import(MSIL,MSSyst.ComponentModel.DataObjectAttribute,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.DataObjectAttribute");
