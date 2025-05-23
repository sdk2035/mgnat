-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.Object.Ref is access;
with type MSSyst.Type_k.Ref is access;
with MSSyst.TypeCode;
with type MSSyst.String.Ref is access;
with type MSSyst.IFormatProvider.Ref is access;
package MSSyst.Drawing.Imaging.PixelFormat is
   type ValueType is (
      Undefined,
      Max,
      Indexed,
      Gdi,
      Format16bppRgb555,
      Format16bppRgb565,
      Format24bppRgb,
      Format32bppRgb,
      Format1bppIndexed,
      Format4bppIndexed,
      Format8bppIndexed,
      Alpha,
      Format16bppArgb1555,
      PAlpha,
      Format32bppPArgb,
      Extended,
      Format16bppGrayScale,
      Format48bppRgb,
      Format64bppPArgb,
      Canonical,
      Format32bppArgb,
      Format64bppArgb);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      Undefined =>  0,
      Max =>  15,
      Indexed =>  65536,
      Gdi =>  131072,
      Format16bppRgb555 =>  135173,
      Format16bppRgb565 =>  135174,
      Format24bppRgb =>  137224,
      Format32bppRgb =>  139273,
      Format1bppIndexed =>  196865,
      Format4bppIndexed =>  197634,
      Format8bppIndexed =>  198659,
      Alpha =>  262144,
      Format16bppArgb1555 =>  397319,
      PAlpha =>  524288,
      Format32bppPArgb =>  925707,
      Extended =>  1048576,
      Format16bppGrayScale =>  1052676,
      Format48bppRgb =>  1060876,
      Format64bppPArgb =>  1851406,
      Canonical =>  2097152,
      Format32bppArgb =>  2498570,
      Format64bppArgb =>  3424269);
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   DontCare : constant Valuetype := Undefined;
   function CompareTo(
      This : Valuetype;
      target : MSSyst.Object.Ref) return Integer;
   function Equals(
      This : Valuetype;
      obj : MSSyst.Object.Ref) return Standard.Boolean;
   function GetHashCode(
      This : Valuetype) return Integer;
   function GetType(
      This : Valuetype) return MSSyst.Type_k.Ref;
   function GetTypeCode(
      This : Valuetype) return MSSyst.TypeCode.Valuetype;
   function ToString(
      This : Valuetype;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype;
      format : MSSyst.String.Ref;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype;
      format : MSSyst.String.Ref) return MSSyst.String.Ref;
private
   pragma Import(MSIL,CompareTo,"CompareTo");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetType,"GetType");
   pragma Import(MSIL,GetTypeCode,"GetTypeCode");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Drawing.Imaging.PixelFormat;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Drawing.Imaging.PixelFormat,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Imaging.PixelFormat");
