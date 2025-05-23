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
package MSSyst.Runtime.InteropServices.ArrayWithOffset is
   type ValueType is new MSSyst.ValueType.Typ with null record;
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function new_ArrayWithOffset(
      array_k : access MSSyst.Object.Typ'Class;
      offset : Integer) return Valuetype;
   function Equals(
      This : Valuetype;
      obj : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function Equals(
      This : Valuetype;
      obj : MSSyst.Runtime.InteropServices.ArrayWithOffset.Valuetype) return Standard.Boolean;
   function GetArray(
      This : Valuetype) return access MSSyst.Object.Typ'Class;
   function GetHashCode(
      This : Valuetype) return Integer;
   function GetOffset(
      This : Valuetype) return Integer;
   function op_Equality(
      a : MSSyst.Runtime.InteropServices.ArrayWithOffset.Valuetype;
      b : MSSyst.Runtime.InteropServices.ArrayWithOffset.Valuetype) return Standard.Boolean;
   function op_Inequality(
      a : MSSyst.Runtime.InteropServices.ArrayWithOffset.Valuetype;
      b : MSSyst.Runtime.InteropServices.ArrayWithOffset.Valuetype) return Standard.Boolean;
private
   pragma MSIL_Constructor(new_ArrayWithOffset);
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,GetArray,"GetArray");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetOffset,"GetOffset");
   pragma Import(MSIL,op_Equality,"op_Equality");
   pragma Import(MSIL,op_Inequality,"op_Inequality");
end MSSyst.Runtime.InteropServices.ArrayWithOffset;
pragma Import(MSIL,MSSyst.Runtime.InteropServices.ArrayWithOffset,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Runtime.InteropServices.ArrayWithOffset");
