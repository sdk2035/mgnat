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
package MSSyst.Windows.Forms.TextFormatFlags is
   type ValueType is (
      Default,
      HorizontalCenter,
      Right,
      VerticalCenter,
      Bottom,
      WordBreak,
      SingleLine,
      ExpandTabs,
      NoClipping,
      ExternalLeading,
      NoPrefix,
      Internal,
      TextBoxControl,
      PathEllipsis,
      EndEllipsis,
      ModifyString,
      RightToLeft,
      WordEllipsis,
      NoFullWidthCharacterBreak,
      HidePrefix,
      PrefixOnly,
      PreserveGraphicsClipping,
      PreserveGraphicsTranslateTransform,
      NoPadding,
      LeftAndRightPadding);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      Default =>  0,
      HorizontalCenter =>  1,
      Right =>  2,
      VerticalCenter =>  4,
      Bottom =>  8,
      WordBreak =>  16,
      SingleLine =>  32,
      ExpandTabs =>  64,
      NoClipping =>  256,
      ExternalLeading =>  512,
      NoPrefix =>  2048,
      Internal =>  4096,
      TextBoxControl =>  8192,
      PathEllipsis =>  16384,
      EndEllipsis =>  32768,
      ModifyString =>  65536,
      RightToLeft =>  131072,
      WordEllipsis =>  262144,
      NoFullWidthCharacterBreak =>  524288,
      HidePrefix =>  1048576,
      PrefixOnly =>  2097152,
      PreserveGraphicsClipping =>  16777216,
      PreserveGraphicsTranslateTransform =>  33554432,
      NoPadding =>  268435456,
      LeftAndRightPadding =>  536870912);
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function "+" (L,R : Valuetype) return Valuetype;
   pragma Import (MSIL, "+", "+");
   Top : constant Valuetype := Default;
   GlyphOverhangPadding : constant Valuetype := Default;
   Left : constant Valuetype := Default;
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
end MSSyst.Windows.Forms.TextFormatFlags;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.TextFormatFlags,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.TextFormatFlags");
