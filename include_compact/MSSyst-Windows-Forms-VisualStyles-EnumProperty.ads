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
package MSSyst.Windows.Forms.VisualStyles.EnumProperty is
   type ValueType is (
      BackgroundType,
      BorderType,
      FillType,
      SizingType,
      HorizontalAlignment,
      ContentAlignment,
      VerticalAlignment,
      OffsetType,
      IconEffect,
      TextShadowType,
      ImageLayout,
      GlyphType,
      ImageSelectType,
      GlyphFontSizingType,
      TrueSizeScalingType);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      BackgroundType =>  0,
      BorderType =>  4002,
      FillType =>  4003,
      SizingType =>  4004,
      HorizontalAlignment =>  4005,
      ContentAlignment =>  4006,
      VerticalAlignment =>  4007,
      OffsetType =>  4008,
      IconEffect =>  4009,
      TextShadowType =>  4010,
      ImageLayout =>  4011,
      GlyphType =>  4012,
      ImageSelectType =>  4013,
      GlyphFontSizingType =>  4014,
      TrueSizeScalingType =>  4015);
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
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
end MSSyst.Windows.Forms.VisualStyles.EnumProperty;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.VisualStyles.EnumProperty,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.VisualStyles.EnumProperty");
