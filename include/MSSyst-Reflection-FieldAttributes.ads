-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.IFormatProvider;
limited with MSSyst.String;
limited with MSSyst.TypeCode;
limited with MSSyst.Type_k;
package MSSyst.Reflection.FieldAttributes is
   type ValueType is (
      PrivateScope,
      Private_k,
      FamANDAssem,
      Assembly,
      Family,
      FamORAssem,
      Public,
      FieldAccessMask,
      Static,
      InitOnly,
      Literal,
      NotSerialized,
      HasFieldRVA,
      SpecialName,
      RTSpecialName,
      HasFieldMarshal,
      PinvokeImpl,
      HasDefault,
      ReservedMask);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      PrivateScope =>  0,
      Private_k =>  1,
      FamANDAssem =>  2,
      Assembly =>  3,
      Family =>  4,
      FamORAssem =>  5,
      Public =>  6,
      FieldAccessMask =>  7,
      Static =>  16,
      InitOnly =>  32,
      Literal =>  64,
      NotSerialized =>  128,
      HasFieldRVA =>  256,
      SpecialName =>  512,
      RTSpecialName =>  1024,
      HasFieldMarshal =>  4096,
      PinvokeImpl =>  8192,
      HasDefault =>  32768,
      ReservedMask =>  38144);
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function "+" (L,R : Valuetype) return Valuetype;
   pragma Import (MSIL, "+", "+");
   function CompareTo(
      This : Valuetype;
      target : access MSSyst.Object.Typ'Class) return Integer;
   function Equals(
      This : Valuetype;
      obj : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function GetHashCode(
      This : Valuetype) return Integer;
   function GetType(
      This : Valuetype) return access MSSyst.Type_k.Typ'Class;
   function GetTypeCode(
      This : Valuetype) return MSSyst.TypeCode.Valuetype;
   function ToString(
      This : Valuetype;
      provider : access MSSyst.IFormatProvider.Typ'Class) return access MSSyst.String.Typ'Class;
   function ToString(
      This : Valuetype) return access MSSyst.String.Typ'Class;
   function ToString(
      This : Valuetype;
      format : access MSSyst.String.Typ'Class;
      provider : access MSSyst.IFormatProvider.Typ'Class) return access MSSyst.String.Typ'Class;
   function ToString(
      This : Valuetype;
      format : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
private
   pragma Import(MSIL,CompareTo,"CompareTo");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetType,"GetType");
   pragma Import(MSIL,GetTypeCode,"GetTypeCode");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Reflection.FieldAttributes;
pragma Import(MSIL,MSSyst.Reflection.FieldAttributes,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Reflection.FieldAttributes");
