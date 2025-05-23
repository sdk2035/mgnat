-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.ValueType;
with type MSSyst.Object.Ref is access;
with type MSSyst.Reflection.MemberInfo.Ref is access;
with type MSSyst.Reflection.CustomAttributeTypedArgument.Valuetype is tagged;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Reflection.CustomAttributeNamedArgument is
   type ValueType is new MSSyst.ValueType.Typ with null record;
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function Equals(
      This : Valuetype;
      obj : MSSyst.Object.Ref) return Standard.Boolean;
   function get_MemberInfo(
      This : Valuetype) return MSSyst.Reflection.MemberInfo.Ref;
   function get_TypedValue(
      This : Valuetype) return MSSyst.Reflection.CustomAttributeTypedArgument.Valuetype;
   function GetHashCode(
      This : Valuetype) return Integer;
   function op_Equality(
      left : MSSyst.Reflection.CustomAttributeNamedArgument.Valuetype;
      right : MSSyst.Reflection.CustomAttributeNamedArgument.Valuetype) return Standard.Boolean;
   function op_Inequality(
      left : MSSyst.Reflection.CustomAttributeNamedArgument.Valuetype;
      right : MSSyst.Reflection.CustomAttributeNamedArgument.Valuetype) return Standard.Boolean;
   function ToString(
      This : Valuetype) return MSSyst.String.Ref;
private
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,get_MemberInfo,"get_MemberInfo");
   pragma Import(MSIL,get_TypedValue,"get_TypedValue");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,op_Equality,"op_Equality");
   pragma Import(MSIL,op_Inequality,"op_Inequality");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Reflection.CustomAttributeNamedArgument;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Reflection.CustomAttributeNamedArgument,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Reflection.CustomAttributeNamedArgument");
