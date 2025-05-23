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
package MSSyst.Drawing.Printing.PaperKind is
   type ValueType is (
      Custom,
      Letter,
      LetterSmall,
      Tabloid,
      Ledger,
      Legal,
      Statement,
      Executive,
      A3,
      A4,
      A4Small,
      A5,
      B4,
      B5,
      Folio,
      Quarto,
      Standard10x14,
      Standard11x17,
      Note,
      Number9Envelope,
      Number10Envelope,
      Number11Envelope,
      Number12Envelope,
      Number14Envelope,
      CSheet,
      DSheet,
      ESheet,
      DLEnvelope,
      C5Envelope,
      C3Envelope,
      C4Envelope,
      C6Envelope,
      C65Envelope,
      B4Envelope,
      B5Envelope,
      B6Envelope,
      ItalyEnvelope,
      MonarchEnvelope,
      PersonalEnvelope,
      USStandardFanfold,
      GermanStandardFanfold,
      GermanLegalFanfold,
      IsoB4,
      JapanesePostcard,
      Standard9x11,
      Standard10x11,
      Standard15x11,
      InviteEnvelope,
      LetterExtra,
      LegalExtra,
      TabloidExtra,
      A4Extra,
      LetterTransverse,
      A4Transverse,
      LetterExtraTransverse,
      APlus,
      BPlus,
      LetterPlus,
      A4Plus,
      A5Transverse,
      B5Transverse,
      A3Extra,
      A5Extra,
      B5Extra,
      A2,
      A3Transverse,
      A3ExtraTransverse,
      JapaneseDoublePostcard,
      A6,
      JapaneseEnvelopeKakuNumber2,
      JapaneseEnvelopeKakuNumber3,
      JapaneseEnvelopeChouNumber3,
      JapaneseEnvelopeChouNumber4,
      LetterRotated,
      A3Rotated,
      A4Rotated,
      A5Rotated,
      B4JisRotated,
      B5JisRotated,
      JapanesePostcardRotated,
      JapaneseDoublePostcardRotated,
      A6Rotated,
      JapaneseEnvelopeKakuNumber2Rotated,
      JapaneseEnvelopeKakuNumber3Rotated,
      JapaneseEnvelopeChouNumber3Rotated,
      JapaneseEnvelopeChouNumber4Rotated,
      B6Jis,
      B6JisRotated,
      Standard12x11,
      JapaneseEnvelopeYouNumber4,
      JapaneseEnvelopeYouNumber4Rotated,
      Prc16K,
      Prc32K,
      Prc32KBig,
      PrcEnvelopeNumber1,
      PrcEnvelopeNumber2,
      PrcEnvelopeNumber3,
      PrcEnvelopeNumber4,
      PrcEnvelopeNumber5,
      PrcEnvelopeNumber6,
      PrcEnvelopeNumber7,
      PrcEnvelopeNumber8,
      PrcEnvelopeNumber9,
      PrcEnvelopeNumber10,
      Prc16KRotated,
      Prc32KRotated,
      Prc32KBigRotated,
      PrcEnvelopeNumber1Rotated,
      PrcEnvelopeNumber2Rotated,
      PrcEnvelopeNumber3Rotated,
      PrcEnvelopeNumber4Rotated,
      PrcEnvelopeNumber5Rotated,
      PrcEnvelopeNumber6Rotated,
      PrcEnvelopeNumber7Rotated,
      PrcEnvelopeNumber8Rotated,
      PrcEnvelopeNumber9Rotated,
      PrcEnvelopeNumber10Rotated);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      Custom =>  0,
      Letter =>  1,
      LetterSmall =>  2,
      Tabloid =>  3,
      Ledger =>  4,
      Legal =>  5,
      Statement =>  6,
      Executive =>  7,
      A3 =>  8,
      A4 =>  9,
      A4Small =>  10,
      A5 =>  11,
      B4 =>  12,
      B5 =>  13,
      Folio =>  14,
      Quarto =>  15,
      Standard10x14 =>  16,
      Standard11x17 =>  17,
      Note =>  18,
      Number9Envelope =>  19,
      Number10Envelope =>  20,
      Number11Envelope =>  21,
      Number12Envelope =>  22,
      Number14Envelope =>  23,
      CSheet =>  24,
      DSheet =>  25,
      ESheet =>  26,
      DLEnvelope =>  27,
      C5Envelope =>  28,
      C3Envelope =>  29,
      C4Envelope =>  30,
      C6Envelope =>  31,
      C65Envelope =>  32,
      B4Envelope =>  33,
      B5Envelope =>  34,
      B6Envelope =>  35,
      ItalyEnvelope =>  36,
      MonarchEnvelope =>  37,
      PersonalEnvelope =>  38,
      USStandardFanfold =>  39,
      GermanStandardFanfold =>  40,
      GermanLegalFanfold =>  41,
      IsoB4 =>  42,
      JapanesePostcard =>  43,
      Standard9x11 =>  44,
      Standard10x11 =>  45,
      Standard15x11 =>  46,
      InviteEnvelope =>  47,
      LetterExtra =>  50,
      LegalExtra =>  51,
      TabloidExtra =>  52,
      A4Extra =>  53,
      LetterTransverse =>  54,
      A4Transverse =>  55,
      LetterExtraTransverse =>  56,
      APlus =>  57,
      BPlus =>  58,
      LetterPlus =>  59,
      A4Plus =>  60,
      A5Transverse =>  61,
      B5Transverse =>  62,
      A3Extra =>  63,
      A5Extra =>  64,
      B5Extra =>  65,
      A2 =>  66,
      A3Transverse =>  67,
      A3ExtraTransverse =>  68,
      JapaneseDoublePostcard =>  69,
      A6 =>  70,
      JapaneseEnvelopeKakuNumber2 =>  71,
      JapaneseEnvelopeKakuNumber3 =>  72,
      JapaneseEnvelopeChouNumber3 =>  73,
      JapaneseEnvelopeChouNumber4 =>  74,
      LetterRotated =>  75,
      A3Rotated =>  76,
      A4Rotated =>  77,
      A5Rotated =>  78,
      B4JisRotated =>  79,
      B5JisRotated =>  80,
      JapanesePostcardRotated =>  81,
      JapaneseDoublePostcardRotated =>  82,
      A6Rotated =>  83,
      JapaneseEnvelopeKakuNumber2Rotated =>  84,
      JapaneseEnvelopeKakuNumber3Rotated =>  85,
      JapaneseEnvelopeChouNumber3Rotated =>  86,
      JapaneseEnvelopeChouNumber4Rotated =>  87,
      B6Jis =>  88,
      B6JisRotated =>  89,
      Standard12x11 =>  90,
      JapaneseEnvelopeYouNumber4 =>  91,
      JapaneseEnvelopeYouNumber4Rotated =>  92,
      Prc16K =>  93,
      Prc32K =>  94,
      Prc32KBig =>  95,
      PrcEnvelopeNumber1 =>  96,
      PrcEnvelopeNumber2 =>  97,
      PrcEnvelopeNumber3 =>  98,
      PrcEnvelopeNumber4 =>  99,
      PrcEnvelopeNumber5 =>  100,
      PrcEnvelopeNumber6 =>  101,
      PrcEnvelopeNumber7 =>  102,
      PrcEnvelopeNumber8 =>  103,
      PrcEnvelopeNumber9 =>  104,
      PrcEnvelopeNumber10 =>  105,
      Prc16KRotated =>  106,
      Prc32KRotated =>  107,
      Prc32KBigRotated =>  108,
      PrcEnvelopeNumber1Rotated =>  109,
      PrcEnvelopeNumber2Rotated =>  110,
      PrcEnvelopeNumber3Rotated =>  111,
      PrcEnvelopeNumber4Rotated =>  112,
      PrcEnvelopeNumber5Rotated =>  113,
      PrcEnvelopeNumber6Rotated =>  114,
      PrcEnvelopeNumber7Rotated =>  115,
      PrcEnvelopeNumber8Rotated =>  116,
      PrcEnvelopeNumber9Rotated =>  117,
      PrcEnvelopeNumber10Rotated =>  118);
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
end MSSyst.Drawing.Printing.PaperKind;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Drawing.Printing.PaperKind,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Printing.PaperKind");
