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
package MSSyst.Windows.Forms.VisualStyles.ColorProperty is
   type ValueType is (
      BorderColor,
      FillColor,
      TextColor,
      EdgeLightColor,
      EdgeHighlightColor,
      EdgeShadowColor,
      EdgeDarkShadowColor,
      EdgeFillColor,
      TransparentColor,
      GradientColor1,
      GradientColor2,
      GradientColor3,
      GradientColor4,
      GradientColor5,
      ShadowColor,
      GlowColor,
      TextBorderColor,
      TextShadowColor,
      GlyphTextColor,
      GlyphTransparentColor,
      FillColorHint,
      BorderColorHint,
      AccentColorHint);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      BorderColor =>  0,
      FillColor =>  3802,
      TextColor =>  3803,
      EdgeLightColor =>  3804,
      EdgeHighlightColor =>  3805,
      EdgeShadowColor =>  3806,
      EdgeDarkShadowColor =>  3807,
      EdgeFillColor =>  3808,
      TransparentColor =>  3809,
      GradientColor1 =>  3810,
      GradientColor2 =>  3811,
      GradientColor3 =>  3812,
      GradientColor4 =>  3813,
      GradientColor5 =>  3814,
      ShadowColor =>  3815,
      GlowColor =>  3816,
      TextBorderColor =>  3817,
      TextShadowColor =>  3818,
      GlyphTextColor =>  3819,
      GlyphTransparentColor =>  3820,
      FillColorHint =>  3821,
      BorderColorHint =>  3822,
      AccentColorHint =>  3823);
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
end MSSyst.Windows.Forms.VisualStyles.ColorProperty;
pragma Import(MSIL,MSSyst.Windows.Forms.VisualStyles.ColorProperty,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.VisualStyles.ColorProperty");
