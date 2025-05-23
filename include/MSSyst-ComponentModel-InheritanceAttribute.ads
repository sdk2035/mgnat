-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Attribute;
limited with MSSyst.ComponentModel.InheritanceLevel;
with MSSyst.Runtime.InteropServices.uAttribute;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.ComponentModel.InheritanceAttribute is
   type Typ is new MSSyst.Attribute.Typ
         and MSSyst.Runtime.InteropServices.uAttribute.Typ
   with record
      null;
   end record;
   Inherited : access MSSyst.ComponentModel.InheritanceAttribute.Typ'Class;
   pragma Import(MSIL,Inherited,"Inherited");
   InheritedReadOnly : access MSSyst.ComponentModel.InheritanceAttribute.Typ'Class;
   pragma Import(MSIL,InheritedReadOnly,"InheritedReadOnly");
   NotInherited : access MSSyst.ComponentModel.InheritanceAttribute.Typ'Class;
   pragma Import(MSIL,NotInherited,"NotInherited");
   Default : access MSSyst.ComponentModel.InheritanceAttribute.Typ'Class;
   pragma Import(MSIL,Default,"Default");
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_InheritanceAttribute(
      This : Ref := null) return Ref;
   function new_InheritanceAttribute(
      This : Ref := null;
      inheritanceLevel : MSSyst.ComponentModel.InheritanceLevel.Valuetype) return Ref;
   function Equals(
      This : access Typ;
      value : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function get_InheritanceLevel(
      This : access Typ) return MSSyst.ComponentModel.InheritanceLevel.Valuetype;
   function GetHashCode(
      This : access Typ) return Integer;
   function IsDefaultAttribute(
      This : access Typ) return Standard.Boolean;
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_InheritanceAttribute);
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,get_InheritanceLevel,"get_InheritanceLevel");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,IsDefaultAttribute,"IsDefaultAttribute");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.ComponentModel.InheritanceAttribute;
pragma Import(MSIL,MSSyst.ComponentModel.InheritanceAttribute,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.InheritanceAttribute");
