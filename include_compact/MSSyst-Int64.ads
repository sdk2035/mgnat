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
with type MSSyst.Type_k.Ref is access;
with MSSyst.TypeCode;
with type MSSyst.String.Ref is access;
with MSSyst.Globalization.NumberStyles;
with type MSSyst.IFormatProvider.Ref is access;
package MSSyst.Int64 is
   type ValueType is new MSSyst.ValueType.Typ with null record;
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function CompareTo(
      This : Valuetype;
      value : MSSyst.Object.Ref) return Integer;
   function CompareTo(
      This : Valuetype;
      value : Long_Long_Integer) return Integer;
   function Equals(
      This : Valuetype;
      obj : MSSyst.Object.Ref) return Standard.Boolean;
   function Equals(
      This : Valuetype;
      obj : Long_Long_Integer) return Standard.Boolean;
   function GetHashCode(
      This : Valuetype) return Integer;
   function GetTypeCode(
      This : Valuetype) return MSSyst.TypeCode.Valuetype;
   function Parse(
      s : MSSyst.String.Ref) return Long_Long_Integer;
   function Parse(
      s : MSSyst.String.Ref;
      style : MSSyst.Globalization.NumberStyles.Valuetype) return Long_Long_Integer;
   function Parse(
      s : MSSyst.String.Ref;
      style : MSSyst.Globalization.NumberStyles.Valuetype;
      provider : MSSyst.IFormatProvider.Ref) return Long_Long_Integer;
   function Parse(
      s : MSSyst.String.Ref;
      provider : MSSyst.IFormatProvider.Ref) return Long_Long_Integer;
   function ToString(
      This : Valuetype;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype;
      format : MSSyst.String.Ref) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype;
      format : MSSyst.String.Ref;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref;
   function TryParse(
      s : MSSyst.String.Ref;
      style : MSSyst.Globalization.NumberStyles.Valuetype;
      provider : MSSyst.IFormatProvider.Ref;
      result : MSIL_Types.Int64_addrof) return Standard.Boolean;
   function TryParse(
      s : MSSyst.String.Ref;
      result : MSIL_Types.Int64_addrof) return Standard.Boolean;
private
   pragma Import(MSIL,CompareTo,"CompareTo");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetTypeCode,"GetTypeCode");
   pragma Import(MSIL,Parse,"Parse");
   pragma Import(MSIL,ToString,"ToString");
   pragma Import(MSIL,TryParse,"TryParse");
end MSSyst.Int64;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Int64,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Int64");
