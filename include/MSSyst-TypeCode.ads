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
limited with MSSyst.Type_k;
package MSSyst.TypeCode is
   type ValueType is (
      Empty,
      Object,
      DBNull,
      Boolean,
      Char,
      SByte,
      Byte,
      Int16,
      UInt16,
      Int32,
      UInt32,
      Int64,
      UInt64,
      Single,
      Double,
      Decimal,
      DateTime,
      String);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      Empty =>  0,
      Object =>  1,
      DBNull =>  2,
      Boolean =>  3,
      Char =>  4,
      SByte =>  5,
      Byte =>  6,
      Int16 =>  7,
      UInt16 =>  8,
      Int32 =>  9,
      UInt32 =>  10,
      Int64 =>  11,
      UInt64 =>  12,
      Single =>  13,
      Double =>  14,
      Decimal =>  15,
      DateTime =>  16,
      String =>  18);
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
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
end MSSyst.TypeCode;
pragma Import(MSIL,MSSyst.TypeCode,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.TypeCode");
