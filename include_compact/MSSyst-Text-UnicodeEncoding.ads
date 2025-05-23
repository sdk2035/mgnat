-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Text.Encoding;
with MSSyst.ICloneable;
with type MSSyst.Object.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Text.DecoderFallback.Ref is access;
with type MSSyst.Text.EncoderFallback.Ref is access;
with type MSSyst.Text.Decoder.Ref is access;
with type MSSyst.Text.Encoder.Ref is access;
with type MSSyst.Type_k.Ref is access;
with MSSyst.Text.NormalizationForm;
package MSSyst.Text.UnicodeEncoding is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Text.Encoding.Typ
         and MSSyst.ICloneable.Typ
   with record
      null;
   end record;
   CharSize : Integer;
   pragma Import(MSIL,CharSize,"CharSize");
   function new_UnicodeEncoding(
      This : Ref := null) return Ref;
   function new_UnicodeEncoding(
      This : Ref := null;
      bigEndian : Standard.Boolean;
      byteOrderMark : Standard.Boolean) return Ref;
   function new_UnicodeEncoding(
      This : Ref := null;
      bigEndian : Standard.Boolean;
      byteOrderMark : Standard.Boolean;
      throwOnInvalidBytes : Standard.Boolean) return Ref;
   function Equals(
      This : access Typ;
      value : MSSyst.Object.Ref) return Standard.Boolean;
   function GetByteCount(
      This : access Typ;
      chars : MSIL_Types.char_addrof;
      count : Integer) return Integer;
   function GetByteCount(
      This : access Typ;
      chars : MSIL_Types.Char_Arr;
      index : Integer;
      count : Integer) return Integer;
   function GetByteCount(
      This : access Typ;
      s : MSSyst.String.Ref) return Integer;
   function GetBytes(
      This : access Typ;
      s : MSSyst.String.Ref;
      charIndex : Integer;
      charCount : Integer;
      bytes : MSIL_Types.unsigned_int8_Arr;
      byteIndex : Integer) return Integer;
   function GetBytes(
      This : access Typ;
      chars : MSIL_Types.char_addrof;
      charCount : Integer;
      bytes : MSIL_Types.unsigned_int8_addrof;
      byteCount : Integer) return Integer;
   function GetBytes(
      This : access Typ;
      chars : MSIL_Types.Char_Arr;
      charIndex : Integer;
      charCount : Integer;
      bytes : MSIL_Types.unsigned_int8_Arr;
      byteIndex : Integer) return Integer;
   function GetCharCount(
      This : access Typ;
      bytes : MSIL_Types.unsigned_int8_Arr;
      index : Integer;
      count : Integer) return Integer;
   function GetCharCount(
      This : access Typ;
      bytes : MSIL_Types.unsigned_int8_addrof;
      count : Integer) return Integer;
   function GetChars(
      This : access Typ;
      bytes : MSIL_Types.unsigned_int8_addrof;
      byteCount : Integer;
      chars : MSIL_Types.char_addrof;
      charCount : Integer) return Integer;
   function GetChars(
      This : access Typ;
      bytes : MSIL_Types.unsigned_int8_Arr;
      byteIndex : Integer;
      byteCount : Integer;
      chars : MSIL_Types.Char_Arr;
      charIndex : Integer) return Integer;
   function GetDecoder(
      This : access Typ) return MSSyst.Text.Decoder.Ref;
   function GetEncoder(
      This : access Typ) return MSSyst.Text.Encoder.Ref;
   function GetHashCode(
      This : access Typ) return Integer;
   function GetMaxByteCount(
      This : access Typ;
      charCount : Integer) return Integer;
   function GetMaxCharCount(
      This : access Typ;
      byteCount : Integer) return Integer;
   function GetPreamble(
      This : access Typ) return MSIL_Types.unsigned_int8_Array;
   function GetString(
      This : access Typ;
      bytes : MSIL_Types.unsigned_int8_Arr;
      index : Integer;
      count : Integer) return MSSyst.String.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_UnicodeEncoding);
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,GetByteCount,"GetByteCount");
   pragma Import(MSIL,GetBytes,"GetBytes");
   pragma Import(MSIL,GetCharCount,"GetCharCount");
   pragma Import(MSIL,GetChars,"GetChars");
   pragma Import(MSIL,GetDecoder,"GetDecoder");
   pragma Import(MSIL,GetEncoder,"GetEncoder");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetMaxByteCount,"GetMaxByteCount");
   pragma Import(MSIL,GetMaxCharCount,"GetMaxCharCount");
   pragma Import(MSIL,GetPreamble,"GetPreamble");
   pragma Import(MSIL,GetString,"GetString");
end MSSyst.Text.UnicodeEncoding;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Text.UnicodeEncoding,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Text.UnicodeEncoding");
