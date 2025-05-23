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
package MSSyst.Globalization.UnicodeCategory is
   type ValueType is (
      UppercaseLetter,
      LowercaseLetter,
      TitlecaseLetter,
      ModifierLetter,
      OtherLetter,
      NonSpacingMark,
      SpacingCombiningMark,
      EnclosingMark,
      DecimalDigitNumber,
      LetterNumber,
      OtherNumber,
      SpaceSeparator,
      LineSeparator,
      ParagraphSeparator,
      Control,
      Format,
      Surrogate,
      PrivateUse,
      ConnectorPunctuation,
      DashPunctuation,
      OpenPunctuation,
      ClosePunctuation,
      InitialQuotePunctuation,
      FinalQuotePunctuation,
      OtherPunctuation,
      MathSymbol,
      CurrencySymbol,
      ModifierSymbol,
      OtherSymbol,
      OtherNotAssigned);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      UppercaseLetter =>  0,
      LowercaseLetter =>  1,
      TitlecaseLetter =>  2,
      ModifierLetter =>  3,
      OtherLetter =>  4,
      NonSpacingMark =>  5,
      SpacingCombiningMark =>  6,
      EnclosingMark =>  7,
      DecimalDigitNumber =>  8,
      LetterNumber =>  9,
      OtherNumber =>  10,
      SpaceSeparator =>  11,
      LineSeparator =>  12,
      ParagraphSeparator =>  13,
      Control =>  14,
      Format =>  15,
      Surrogate =>  16,
      PrivateUse =>  17,
      ConnectorPunctuation =>  18,
      DashPunctuation =>  19,
      OpenPunctuation =>  20,
      ClosePunctuation =>  21,
      InitialQuotePunctuation =>  22,
      FinalQuotePunctuation =>  23,
      OtherPunctuation =>  24,
      MathSymbol =>  25,
      CurrencySymbol =>  26,
      ModifierSymbol =>  27,
      OtherSymbol =>  28,
      OtherNotAssigned =>  29);
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
end MSSyst.Globalization.UnicodeCategory;
pragma Import(MSIL,MSSyst.Globalization.UnicodeCategory,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Globalization.UnicodeCategory");
