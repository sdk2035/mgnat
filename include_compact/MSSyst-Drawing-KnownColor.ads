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
package MSSyst.Drawing.KnownColor is
   type ValueType is (
      ActiveBorder,
      ActiveCaption,
      ActiveCaptionText,
      AppWorkspace,
      Control,
      ControlDark,
      ControlDarkDark,
      ControlLight,
      ControlLightLight,
      ControlText,
      Desktop,
      GrayText,
      Highlight,
      HighlightText,
      HotTrack,
      InactiveBorder,
      InactiveCaption,
      InactiveCaptionText,
      Info,
      InfoText,
      Menu,
      MenuText,
      ScrollBar,
      Window,
      WindowFrame,
      WindowText,
      Transparent,
      AliceBlue,
      AntiqueWhite,
      Aqua,
      Aquamarine,
      Azure,
      Beige,
      Bisque,
      Black,
      BlanchedAlmond,
      Blue,
      BlueViolet,
      Brown,
      BurlyWood,
      CadetBlue,
      Chartreuse,
      Chocolate,
      Coral,
      CornflowerBlue,
      Cornsilk,
      Crimson,
      Cyan,
      DarkBlue,
      DarkCyan,
      DarkGoldenrod,
      DarkGray,
      DarkGreen,
      DarkKhaki,
      DarkMagenta,
      DarkOliveGreen,
      DarkOrange,
      DarkOrchid,
      DarkRed,
      DarkSalmon,
      DarkSeaGreen,
      DarkSlateBlue,
      DarkSlateGray,
      DarkTurquoise,
      DarkViolet,
      DeepPink,
      DeepSkyBlue,
      DimGray,
      DodgerBlue,
      Firebrick,
      FloralWhite,
      ForestGreen,
      Fuchsia,
      Gainsboro,
      GhostWhite,
      Gold,
      Goldenrod,
      Gray,
      Green,
      GreenYellow,
      Honeydew,
      HotPink,
      IndianRed,
      Indigo,
      Ivory,
      Khaki,
      Lavender,
      LavenderBlush,
      LawnGreen,
      LemonChiffon,
      LightBlue,
      LightCoral,
      LightCyan,
      LightGoldenrodYellow,
      LightGray,
      LightGreen,
      LightPink,
      LightSalmon,
      LightSeaGreen,
      LightSkyBlue,
      LightSlateGray,
      LightSteelBlue,
      LightYellow,
      Lime,
      LimeGreen,
      Linen,
      Magenta,
      Maroon,
      MediumAquamarine,
      MediumBlue,
      MediumOrchid,
      MediumPurple,
      MediumSeaGreen,
      MediumSlateBlue,
      MediumSpringGreen,
      MediumTurquoise,
      MediumVioletRed,
      MidnightBlue,
      MintCream,
      MistyRose,
      Moccasin,
      NavajoWhite,
      Navy,
      OldLace,
      Olive,
      OliveDrab,
      Orange,
      OrangeRed,
      Orchid,
      PaleGoldenrod,
      PaleGreen,
      PaleTurquoise,
      PaleVioletRed,
      PapayaWhip,
      PeachPuff,
      Peru,
      Pink,
      Plum,
      PowderBlue,
      Purple,
      Red,
      RosyBrown,
      RoyalBlue,
      SaddleBrown,
      Salmon,
      SandyBrown,
      SeaGreen,
      SeaShell,
      Sienna,
      Silver,
      SkyBlue,
      SlateBlue,
      SlateGray,
      Snow,
      SpringGreen,
      SteelBlue,
      Tan,
      Teal,
      Thistle,
      Tomato,
      Turquoise,
      Violet,
      Wheat,
      White,
      WhiteSmoke,
      Yellow,
      YellowGreen,
      ButtonFace,
      ButtonHighlight,
      ButtonShadow,
      GradientActiveCaption,
      GradientInactiveCaption,
      MenuBar,
      MenuHighlight);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      ActiveBorder =>  0,
      ActiveCaption =>  2,
      ActiveCaptionText =>  3,
      AppWorkspace =>  4,
      Control =>  5,
      ControlDark =>  6,
      ControlDarkDark =>  7,
      ControlLight =>  8,
      ControlLightLight =>  9,
      ControlText =>  10,
      Desktop =>  11,
      GrayText =>  12,
      Highlight =>  13,
      HighlightText =>  14,
      HotTrack =>  15,
      InactiveBorder =>  16,
      InactiveCaption =>  17,
      InactiveCaptionText =>  18,
      Info =>  19,
      InfoText =>  20,
      Menu =>  21,
      MenuText =>  22,
      ScrollBar =>  23,
      Window =>  24,
      WindowFrame =>  25,
      WindowText =>  26,
      Transparent =>  27,
      AliceBlue =>  28,
      AntiqueWhite =>  29,
      Aqua =>  30,
      Aquamarine =>  31,
      Azure =>  32,
      Beige =>  33,
      Bisque =>  34,
      Black =>  35,
      BlanchedAlmond =>  36,
      Blue =>  37,
      BlueViolet =>  38,
      Brown =>  39,
      BurlyWood =>  40,
      CadetBlue =>  41,
      Chartreuse =>  42,
      Chocolate =>  43,
      Coral =>  44,
      CornflowerBlue =>  45,
      Cornsilk =>  46,
      Crimson =>  47,
      Cyan =>  48,
      DarkBlue =>  49,
      DarkCyan =>  50,
      DarkGoldenrod =>  51,
      DarkGray =>  52,
      DarkGreen =>  53,
      DarkKhaki =>  54,
      DarkMagenta =>  55,
      DarkOliveGreen =>  56,
      DarkOrange =>  57,
      DarkOrchid =>  58,
      DarkRed =>  59,
      DarkSalmon =>  60,
      DarkSeaGreen =>  61,
      DarkSlateBlue =>  62,
      DarkSlateGray =>  63,
      DarkTurquoise =>  64,
      DarkViolet =>  65,
      DeepPink =>  66,
      DeepSkyBlue =>  67,
      DimGray =>  68,
      DodgerBlue =>  69,
      Firebrick =>  70,
      FloralWhite =>  71,
      ForestGreen =>  72,
      Fuchsia =>  73,
      Gainsboro =>  74,
      GhostWhite =>  75,
      Gold =>  76,
      Goldenrod =>  77,
      Gray =>  78,
      Green =>  79,
      GreenYellow =>  80,
      Honeydew =>  81,
      HotPink =>  82,
      IndianRed =>  83,
      Indigo =>  84,
      Ivory =>  85,
      Khaki =>  86,
      Lavender =>  87,
      LavenderBlush =>  88,
      LawnGreen =>  89,
      LemonChiffon =>  90,
      LightBlue =>  91,
      LightCoral =>  92,
      LightCyan =>  93,
      LightGoldenrodYellow =>  94,
      LightGray =>  95,
      LightGreen =>  96,
      LightPink =>  97,
      LightSalmon =>  98,
      LightSeaGreen =>  99,
      LightSkyBlue =>  100,
      LightSlateGray =>  101,
      LightSteelBlue =>  102,
      LightYellow =>  103,
      Lime =>  104,
      LimeGreen =>  105,
      Linen =>  106,
      Magenta =>  107,
      Maroon =>  108,
      MediumAquamarine =>  109,
      MediumBlue =>  110,
      MediumOrchid =>  111,
      MediumPurple =>  112,
      MediumSeaGreen =>  113,
      MediumSlateBlue =>  114,
      MediumSpringGreen =>  115,
      MediumTurquoise =>  116,
      MediumVioletRed =>  117,
      MidnightBlue =>  118,
      MintCream =>  119,
      MistyRose =>  120,
      Moccasin =>  121,
      NavajoWhite =>  122,
      Navy =>  123,
      OldLace =>  124,
      Olive =>  125,
      OliveDrab =>  126,
      Orange =>  127,
      OrangeRed =>  128,
      Orchid =>  129,
      PaleGoldenrod =>  130,
      PaleGreen =>  131,
      PaleTurquoise =>  132,
      PaleVioletRed =>  133,
      PapayaWhip =>  134,
      PeachPuff =>  135,
      Peru =>  136,
      Pink =>  137,
      Plum =>  138,
      PowderBlue =>  139,
      Purple =>  140,
      Red =>  141,
      RosyBrown =>  142,
      RoyalBlue =>  143,
      SaddleBrown =>  144,
      Salmon =>  145,
      SandyBrown =>  146,
      SeaGreen =>  147,
      SeaShell =>  148,
      Sienna =>  149,
      Silver =>  150,
      SkyBlue =>  151,
      SlateBlue =>  152,
      SlateGray =>  153,
      Snow =>  154,
      SpringGreen =>  155,
      SteelBlue =>  156,
      Tan =>  157,
      Teal =>  158,
      Thistle =>  159,
      Tomato =>  160,
      Turquoise =>  161,
      Violet =>  162,
      Wheat =>  163,
      White =>  164,
      WhiteSmoke =>  165,
      Yellow =>  166,
      YellowGreen =>  167,
      ButtonFace =>  168,
      ButtonHighlight =>  169,
      ButtonShadow =>  170,
      GradientActiveCaption =>  171,
      GradientInactiveCaption =>  172,
      MenuBar =>  173,
      MenuHighlight =>  174);
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
end MSSyst.Drawing.KnownColor;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Drawing.KnownColor,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.KnownColor");
