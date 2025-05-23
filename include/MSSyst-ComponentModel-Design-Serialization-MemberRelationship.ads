-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.ComponentModel.MemberDescriptor;
limited with MSSyst.String;
limited with MSSyst.Type_k;
with MSSyst.ValueType;
package MSSyst.ComponentModel.Design.Serialization.MemberRelationship is
   type ValueType is new MSSyst.ValueType.Typ with null record;
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function new_MemberRelationship(
      owner : access MSSyst.Object.Typ'Class;
      member : access MSSyst.ComponentModel.MemberDescriptor.Typ'Class) return Valuetype;
   function Equals(
      This : Valuetype;
      obj : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function get_IsEmpty(
      This : Valuetype) return Standard.Boolean;
   function get_Member(
      This : Valuetype) return access MSSyst.ComponentModel.MemberDescriptor.Typ'Class;
   function get_Owner(
      This : Valuetype) return access MSSyst.Object.Typ'Class;
   function GetHashCode(
      This : Valuetype) return Integer;
   function op_Equality(
      left : MSSyst.ComponentModel.Design.Serialization.MemberRelationship.Valuetype;
      right : MSSyst.ComponentModel.Design.Serialization.MemberRelationship.Valuetype) return Standard.Boolean;
   function op_Inequality(
      left : MSSyst.ComponentModel.Design.Serialization.MemberRelationship.Valuetype;
      right : MSSyst.ComponentModel.Design.Serialization.MemberRelationship.Valuetype) return Standard.Boolean;
private
   pragma MSIL_Constructor(new_MemberRelationship);
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,get_IsEmpty,"get_IsEmpty");
   pragma Import(MSIL,get_Member,"get_Member");
   pragma Import(MSIL,get_Owner,"get_Owner");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,op_Equality,"op_Equality");
   pragma Import(MSIL,op_Inequality,"op_Inequality");
end MSSyst.ComponentModel.Design.Serialization.MemberRelationship;
pragma Import(MSIL,MSSyst.ComponentModel.Design.Serialization.MemberRelationship,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.Design.Serialization.MemberRelationship");
