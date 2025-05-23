-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.String;
limited with MSSyst.Type_k;
with MSSyst.ValueType;
with MSSyst.Void;
package MSSyst.UIntPtr is
   type ValueType is new MSSyst.ValueType.Typ with null record;
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function new_UIntPtr(
      value : MSIL_Types.Unsigned_Integer) return Valuetype;
   function new_UIntPtr(
      value : MSIL_Types.Unsigned_Long_Long_Integer) return Valuetype;
   function new_UIntPtr(
      value : MSIL_Types.void_addrof) return Valuetype;
   function Equals(
      This : Valuetype;
      obj : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function get_Size return Integer;
   function GetHashCode(
      This : Valuetype) return Integer;
   function op_Equality(
      value1 : MSSyst.UIntPtr.Valuetype;
      value2 : MSSyst.UIntPtr.Valuetype) return Standard.Boolean;
   function op_Explicit(
      value : MSSyst.UIntPtr.Valuetype) return MSIL_Types.Unsigned_Long_Long_Integer;
   function op_Explicit(
      value : MSIL_Types.void_addrof) return MSSyst.UIntPtr.Valuetype;
   function op_Explicit(
      value : MSSyst.UIntPtr.Valuetype) return MSIL_Types.void_addrof;
   function op_Explicit(
      value : MSIL_Types.Unsigned_Integer) return MSSyst.UIntPtr.Valuetype;
   function op_Explicit(
      value : MSIL_Types.Unsigned_Long_Long_Integer) return MSSyst.UIntPtr.Valuetype;
   function op_Explicit(
      value : MSSyst.UIntPtr.Valuetype) return MSIL_Types.Unsigned_Integer;
   function op_Inequality(
      value1 : MSSyst.UIntPtr.Valuetype;
      value2 : MSSyst.UIntPtr.Valuetype) return Standard.Boolean;
   function ToPointer(
      This : Valuetype) return MSIL_Types.void_addrof;
   function ToString(
      This : Valuetype) return access MSSyst.String.Typ'Class;
   function ToUInt32(
      This : Valuetype) return MSIL_Types.Unsigned_Integer;
   function ToUInt64(
      This : Valuetype) return MSIL_Types.Unsigned_Long_Long_Integer;
private
   pragma MSIL_Constructor(new_UIntPtr);
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,get_Size,"get_Size");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,op_Equality,"op_Equality");
   pragma Import(MSIL,op_Explicit,"op_Explicit");
   pragma Import(MSIL,op_Inequality,"op_Inequality");
   pragma Import(MSIL,ToPointer,"ToPointer");
   pragma Import(MSIL,ToString,"ToString");
   pragma Import(MSIL,ToUInt32,"ToUInt32");
   pragma Import(MSIL,ToUInt64,"ToUInt64");
end MSSyst.UIntPtr;
pragma Import(MSIL,MSSyst.UIntPtr,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.UIntPtr");
