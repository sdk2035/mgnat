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
package MSSyst.ComponentModel.MaskedTextResultHint is
   type ValueType is (
      PositionOutOfRange,
      NonEditPosition,
      UnavailableEditPosition,
      PromptCharNotAllowed,
      InvalidInput,
      SignedDigitExpected,
      LetterExpected,
      DigitExpected,
      AlphanumericCharacterExpected,
      AsciiCharacterExpected,
      Unknown,
      CharacterEscaped,
      NoEffect,
      SideEffect,
      Success);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      PositionOutOfRange => -55,
      NonEditPosition => -54,
      UnavailableEditPosition => -53,
      PromptCharNotAllowed => -52,
      InvalidInput => -51,
      SignedDigitExpected => -5,
      LetterExpected => -4,
      DigitExpected => -3,
      AlphanumericCharacterExpected => -2,
      AsciiCharacterExpected => -1,
      Unknown =>  0,
      CharacterEscaped =>  1,
      NoEffect =>  2,
      SideEffect =>  3,
      Success =>  4);
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
end MSSyst.ComponentModel.MaskedTextResultHint;
pragma Import(MSIL,MSSyst.ComponentModel.MaskedTextResultHint,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.MaskedTextResultHint");
