-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.CharEnumerator;
with MSSyst.Collections.IEnumerable;
limited with MSSyst.Globalization.CultureInfo;
with MSSyst.ICloneable;
with MSSyst.IComparable;
with MSSyst.IConvertible;
limited with MSSyst.IFormatProvider;
with MSSyst.SByte;
limited with MSSyst.StringComparison;
limited with MSSyst.StringSplitOptions;
limited with MSSyst.Text.Encoding;
limited with MSSyst.Text.NormalizationForm;
limited with MSSyst.TypeCode;
limited with MSSyst.Type_k;
package MSSyst.String is
   type Typ is new MSSyst.Object.Typ
         and MSSyst.IComparable.Typ
         and MSSyst.ICloneable.Typ
         and MSSyst.IConvertible.Typ
         and MSSyst.Collections.IEnumerable.Typ
   with record
      null;
   end record;
   Empty : access MSSyst.String.Typ'Class;
   pragma Import(MSIL,Empty,"Empty");
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_String(
      This : Ref := null;
      value : MSIL_Types.char_addrof) return Ref;
   function new_String(
      This : Ref := null;
      value : MSIL_Types.char_addrof;
      startIndex : Integer;
      length : Integer) return Ref;
   function new_String(
      This : Ref := null;
      value : MSIL_Types.Int8_addrof) return Ref;
   function new_String(
      This : Ref := null;
      value : MSIL_Types.Int8_addrof;
      startIndex : Integer;
      length : Integer) return Ref;
   function new_String(
      This : Ref := null;
      value : MSIL_Types.Int8_addrof;
      startIndex : Integer;
      length : Integer;
      enc : access MSSyst.Text.Encoding.Typ'Class) return Ref;
   function new_String(
      This : Ref := null;
      value : MSIL_Types.Char_Arr;
      startIndex : Integer;
      length : Integer) return Ref;
   function new_String(
      This : Ref := null;
      value : MSIL_Types.Char_Arr) return Ref;
   function new_String(
      This : Ref := null;
      c : Wide_Character;
      count : Integer) return Ref;
   function Clone(
      This : access Typ) return access MSSyst.Object.Typ'Class;
   function Compare(
      strA : access MSSyst.String.Typ'Class;
      strB : access MSSyst.String.Typ'Class) return Integer;
   function Compare(
      strA : access MSSyst.String.Typ'Class;
      strB : access MSSyst.String.Typ'Class;
      ignoreCase : Standard.Boolean) return Integer;
   function Compare(
      strA : access MSSyst.String.Typ'Class;
      indexA : Integer;
      strB : access MSSyst.String.Typ'Class;
      indexB : Integer;
      length : Integer;
      ignoreCase : Standard.Boolean) return Integer;
   function Compare(
      strA : access MSSyst.String.Typ'Class;
      strB : access MSSyst.String.Typ'Class;
      ignoreCase : Standard.Boolean;
      culture : access MSSyst.Globalization.CultureInfo.Typ'Class) return Integer;
   function Compare(
      strA : access MSSyst.String.Typ'Class;
      strB : access MSSyst.String.Typ'Class;
      comparisonType : MSSyst.StringComparison.Valuetype) return Integer;
   function Compare(
      strA : access MSSyst.String.Typ'Class;
      indexA : Integer;
      strB : access MSSyst.String.Typ'Class;
      indexB : Integer;
      length : Integer) return Integer;
   function Compare(
      strA : access MSSyst.String.Typ'Class;
      indexA : Integer;
      strB : access MSSyst.String.Typ'Class;
      indexB : Integer;
      length : Integer;
      comparisonType : MSSyst.StringComparison.Valuetype) return Integer;
   function Compare(
      strA : access MSSyst.String.Typ'Class;
      indexA : Integer;
      strB : access MSSyst.String.Typ'Class;
      indexB : Integer;
      length : Integer;
      ignoreCase : Standard.Boolean;
      culture : access MSSyst.Globalization.CultureInfo.Typ'Class) return Integer;
   function CompareOrdinal(
      strA : access MSSyst.String.Typ'Class;
      strB : access MSSyst.String.Typ'Class) return Integer;
   function CompareOrdinal(
      strA : access MSSyst.String.Typ'Class;
      indexA : Integer;
      strB : access MSSyst.String.Typ'Class;
      indexB : Integer;
      length : Integer) return Integer;
   function CompareTo(
      This : access Typ;
      strB : access MSSyst.String.Typ'Class) return Integer;
   function CompareTo(
      This : access Typ;
      value : access MSSyst.Object.Typ'Class) return Integer;
   function Concat(
      arg0 : access MSSyst.Object.Typ'Class) return access MSSyst.String.Typ'Class;
   function Concat(
      arg0 : access MSSyst.Object.Typ'Class;
      arg1 : access MSSyst.Object.Typ'Class) return access MSSyst.String.Typ'Class;
   function Concat(
      str0 : access MSSyst.String.Typ'Class;
      str1 : access MSSyst.String.Typ'Class;
      str2 : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function Concat(
      str0 : access MSSyst.String.Typ'Class;
      str1 : access MSSyst.String.Typ'Class;
      str2 : access MSSyst.String.Typ'Class;
      str3 : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function Concat(
      values : access MSSyst.String.Ref_arr) return access MSSyst.String.Typ'Class;
   function Concat(
      str0 : access MSSyst.String.Typ'Class;
      str1 : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function Concat(
      arg0 : access MSSyst.Object.Typ'Class;
      arg1 : access MSSyst.Object.Typ'Class;
      arg2 : access MSSyst.Object.Typ'Class) return access MSSyst.String.Typ'Class;
   function Concat(
      arg0 : access MSSyst.Object.Typ'Class;
      arg1 : access MSSyst.Object.Typ'Class;
      arg2 : access MSSyst.Object.Typ'Class;
      arg3 : access MSSyst.Object.Typ'Class) return access MSSyst.String.Typ'Class;
   function Concat(
      args : access MSSyst.Object.Ref_arr) return access MSSyst.String.Typ'Class;
   function Contains(
      This : access Typ;
      value : access MSSyst.String.Typ'Class) return Standard.Boolean;
   function Copy(
      str : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   procedure CopyTo(
      This : access Typ;
      sourceIndex : Integer;
      destination : MSIL_Types.Char_Arr;
      destinationIndex : Integer;
      count : Integer);
   function EndsWith(
      This : access Typ;
      value : access MSSyst.String.Typ'Class;
      ignoreCase : Standard.Boolean;
      culture : access MSSyst.Globalization.CultureInfo.Typ'Class) return Standard.Boolean;
   function EndsWith(
      This : access Typ;
      value : access MSSyst.String.Typ'Class;
      comparisonType : MSSyst.StringComparison.Valuetype) return Standard.Boolean;
   function EndsWith(
      This : access Typ;
      value : access MSSyst.String.Typ'Class) return Standard.Boolean;
   function Equals(
      This : access Typ;
      value : access MSSyst.String.Typ'Class) return Standard.Boolean;
   function Equals(
      This : access Typ;
      obj : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function Equals(
      This : access Typ;
      value : access MSSyst.String.Typ'Class;
      comparisonType : MSSyst.StringComparison.Valuetype) return Standard.Boolean;
   function Equals(
      a : access MSSyst.String.Typ'Class;
      b : access MSSyst.String.Typ'Class;
      comparisonType : MSSyst.StringComparison.Valuetype) return Standard.Boolean;
   function Equals(
      a : access MSSyst.String.Typ'Class;
      b : access MSSyst.String.Typ'Class) return Standard.Boolean;
   function Format(
      format : access MSSyst.String.Typ'Class;
      arg0 : access MSSyst.Object.Typ'Class;
      arg1 : access MSSyst.Object.Typ'Class) return access MSSyst.String.Typ'Class;
   function Format(
      format : access MSSyst.String.Typ'Class;
      arg0 : access MSSyst.Object.Typ'Class) return access MSSyst.String.Typ'Class;
   function Format(
      format : access MSSyst.String.Typ'Class;
      arg0 : access MSSyst.Object.Typ'Class;
      arg1 : access MSSyst.Object.Typ'Class;
      arg2 : access MSSyst.Object.Typ'Class) return access MSSyst.String.Typ'Class;
   function Format(
      provider : access MSSyst.IFormatProvider.Typ'Class;
      format : access MSSyst.String.Typ'Class;
      args : access MSSyst.Object.Ref_arr) return access MSSyst.String.Typ'Class;
   function Format(
      format : access MSSyst.String.Typ'Class;
      args : access MSSyst.Object.Ref_arr) return access MSSyst.String.Typ'Class;
   function get_Chars(
      This : access Typ;
      index : Integer) return Wide_Character;
   function get_Length(
      This : access Typ) return Integer;
   function GetEnumerator(
      This : access Typ) return access MSSyst.CharEnumerator.Typ'Class;
   function GetHashCode(
      This : access Typ) return Integer;
   function GetTypeCode(
      This : access Typ) return MSSyst.TypeCode.Valuetype;
   function IndexOf(
      This : access Typ;
      value : access MSSyst.String.Typ'Class;
      startIndex : Integer;
      count : Integer;
      comparisonType : MSSyst.StringComparison.Valuetype) return Integer;
   function IndexOf(
      This : access Typ;
      value : access MSSyst.String.Typ'Class;
      startIndex : Integer;
      comparisonType : MSSyst.StringComparison.Valuetype) return Integer;
   function IndexOf(
      This : access Typ;
      value : access MSSyst.String.Typ'Class;
      comparisonType : MSSyst.StringComparison.Valuetype) return Integer;
   function IndexOf(
      This : access Typ;
      value : Wide_Character) return Integer;
   function IndexOf(
      This : access Typ;
      value : access MSSyst.String.Typ'Class;
      startIndex : Integer) return Integer;
   function IndexOf(
      This : access Typ;
      value : access MSSyst.String.Typ'Class;
      startIndex : Integer;
      count : Integer) return Integer;
   function IndexOf(
      This : access Typ;
      value : access MSSyst.String.Typ'Class) return Integer;
   function IndexOf(
      This : access Typ;
      value : Wide_Character;
      startIndex : Integer) return Integer;
   function IndexOf(
      This : access Typ;
      value : Wide_Character;
      startIndex : Integer;
      count : Integer) return Integer;
   function IndexOfAny(
      This : access Typ;
      anyOf : MSIL_Types.Char_Arr) return Integer;
   function IndexOfAny(
      This : access Typ;
      anyOf : MSIL_Types.Char_Arr;
      startIndex : Integer) return Integer;
   function IndexOfAny(
      This : access Typ;
      anyOf : MSIL_Types.Char_Arr;
      startIndex : Integer;
      count : Integer) return Integer;
   function Insert(
      This : access Typ;
      startIndex : Integer;
      value : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function Intern(
      str : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function IsInterned(
      str : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function IsNormalized(
      This : access Typ;
      normalizationForm : MSSyst.Text.NormalizationForm.Valuetype) return Standard.Boolean;
   function IsNormalized(
      This : access Typ) return Standard.Boolean;
   function IsNullOrEmpty(
      value : access MSSyst.String.Typ'Class) return Standard.Boolean;
   function Join(
      separator : access MSSyst.String.Typ'Class;
      value : access MSSyst.String.Ref_arr;
      startIndex : Integer;
      count : Integer) return access MSSyst.String.Typ'Class;
   function Join(
      separator : access MSSyst.String.Typ'Class;
      value : access MSSyst.String.Ref_arr) return access MSSyst.String.Typ'Class;
   function LastIndexOf(
      This : access Typ;
      value : access MSSyst.String.Typ'Class;
      startIndex : Integer;
      count : Integer) return Integer;
   function LastIndexOf(
      This : access Typ;
      value : access MSSyst.String.Typ'Class;
      startIndex : Integer) return Integer;
   function LastIndexOf(
      This : access Typ;
      value : access MSSyst.String.Typ'Class;
      comparisonType : MSSyst.StringComparison.Valuetype) return Integer;
   function LastIndexOf(
      This : access Typ;
      value : access MSSyst.String.Typ'Class;
      startIndex : Integer;
      count : Integer;
      comparisonType : MSSyst.StringComparison.Valuetype) return Integer;
   function LastIndexOf(
      This : access Typ;
      value : access MSSyst.String.Typ'Class;
      startIndex : Integer;
      comparisonType : MSSyst.StringComparison.Valuetype) return Integer;
   function LastIndexOf(
      This : access Typ;
      value : access MSSyst.String.Typ'Class) return Integer;
   function LastIndexOf(
      This : access Typ;
      value : Wide_Character) return Integer;
   function LastIndexOf(
      This : access Typ;
      value : Wide_Character;
      startIndex : Integer;
      count : Integer) return Integer;
   function LastIndexOf(
      This : access Typ;
      value : Wide_Character;
      startIndex : Integer) return Integer;
   function LastIndexOfAny(
      This : access Typ;
      anyOf : MSIL_Types.Char_Arr;
      startIndex : Integer;
      count : Integer) return Integer;
   function LastIndexOfAny(
      This : access Typ;
      anyOf : MSIL_Types.Char_Arr;
      startIndex : Integer) return Integer;
   function LastIndexOfAny(
      This : access Typ;
      anyOf : MSIL_Types.Char_Arr) return Integer;
   function Normalize(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function Normalize(
      This : access Typ;
      normalizationForm : MSSyst.Text.NormalizationForm.Valuetype) return access MSSyst.String.Typ'Class;
   function op_Equality(
      a : access MSSyst.String.Typ'Class;
      b : access MSSyst.String.Typ'Class) return Standard.Boolean;
   function op_Inequality(
      a : access MSSyst.String.Typ'Class;
      b : access MSSyst.String.Typ'Class) return Standard.Boolean;
   function PadLeft(
      This : access Typ;
      totalWidth : Integer;
      paddingChar : Wide_Character) return access MSSyst.String.Typ'Class;
   function PadLeft(
      This : access Typ;
      totalWidth : Integer) return access MSSyst.String.Typ'Class;
   function PadRight(
      This : access Typ;
      totalWidth : Integer) return access MSSyst.String.Typ'Class;
   function PadRight(
      This : access Typ;
      totalWidth : Integer;
      paddingChar : Wide_Character) return access MSSyst.String.Typ'Class;
   function Remove(
      This : access Typ;
      startIndex : Integer;
      count : Integer) return access MSSyst.String.Typ'Class;
   function Remove(
      This : access Typ;
      startIndex : Integer) return access MSSyst.String.Typ'Class;
   function Replace(
      This : access Typ;
      oldValue : access MSSyst.String.Typ'Class;
      newValue : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function Replace(
      This : access Typ;
      oldChar : Wide_Character;
      newChar : Wide_Character) return access MSSyst.String.Typ'Class;
   function Split(
      This : access Typ;
      separator : MSIL_Types.Char_Arr;
      options : MSSyst.StringSplitOptions.Valuetype) return access MSSyst.String.Ref_arr;
   function Split(
      This : access Typ;
      separator : MSIL_Types.Char_Arr;
      count : Integer) return access MSSyst.String.Ref_arr;
   function Split(
      This : access Typ;
      separator : MSIL_Types.Char_Arr) return access MSSyst.String.Ref_arr;
   function Split(
      This : access Typ;
      separator : access MSSyst.String.Ref_arr;
      count : Integer;
      options : MSSyst.StringSplitOptions.Valuetype) return access MSSyst.String.Ref_arr;
   function Split(
      This : access Typ;
      separator : MSIL_Types.Char_Arr;
      count : Integer;
      options : MSSyst.StringSplitOptions.Valuetype) return access MSSyst.String.Ref_arr;
   function Split(
      This : access Typ;
      separator : access MSSyst.String.Ref_arr;
      options : MSSyst.StringSplitOptions.Valuetype) return access MSSyst.String.Ref_arr;
   function StartsWith(
      This : access Typ;
      value : access MSSyst.String.Typ'Class;
      comparisonType : MSSyst.StringComparison.Valuetype) return Standard.Boolean;
   function StartsWith(
      This : access Typ;
      value : access MSSyst.String.Typ'Class;
      ignoreCase : Standard.Boolean;
      culture : access MSSyst.Globalization.CultureInfo.Typ'Class) return Standard.Boolean;
   function StartsWith(
      This : access Typ;
      value : access MSSyst.String.Typ'Class) return Standard.Boolean;
   function Substring(
      This : access Typ;
      startIndex : Integer) return access MSSyst.String.Typ'Class;
   function Substring(
      This : access Typ;
      startIndex : Integer;
      length : Integer) return access MSSyst.String.Typ'Class;
   function ToCharArray(
      This : access Typ;
      startIndex : Integer;
      length : Integer) return MSIL_Types.Char_Array;
   function ToCharArray(
      This : access Typ) return MSIL_Types.Char_Array;
   function ToLower(
      This : access Typ;
      culture : access MSSyst.Globalization.CultureInfo.Typ'Class) return access MSSyst.String.Typ'Class;
   function ToLower(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function ToLowerInvariant(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function ToString(
      This : access Typ;
      provider : access MSSyst.IFormatProvider.Typ'Class) return access MSSyst.String.Typ'Class;
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function ToUpper(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function ToUpper(
      This : access Typ;
      culture : access MSSyst.Globalization.CultureInfo.Typ'Class) return access MSSyst.String.Typ'Class;
   function ToUpperInvariant(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function Trim(
      This : access Typ;
      trimChars : MSIL_Types.Char_Arr) return access MSSyst.String.Typ'Class;
   function Trim(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function TrimEnd(
      This : access Typ;
      trimChars : MSIL_Types.Char_Arr) return access MSSyst.String.Typ'Class;
   function TrimStart(
      This : access Typ;
      trimChars : MSIL_Types.Char_Arr) return access MSSyst.String.Typ'Class;
   function "+"(R : Standard.String) return Mssyst.String.Ref;
   function "+"(R : access Mssyst.String.Typ'Class) return Standard.String;
   pragma Convention(Intrinsic,"+");
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_String);
   pragma Import(MSIL,Clone,"Clone");
   pragma Import(MSIL,Compare,"Compare");
   pragma Import(MSIL,CompareOrdinal,"CompareOrdinal");
   pragma Import(MSIL,CompareTo,"CompareTo");
   pragma Import(MSIL,Concat,"Concat");
   pragma Import(MSIL,Contains,"Contains");
   pragma Import(MSIL,Copy,"Copy");
   pragma Import(MSIL,CopyTo,"CopyTo");
   pragma Import(MSIL,EndsWith,"EndsWith");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,Format,"Format");
   pragma Import(MSIL,get_Chars,"get_Chars");
   pragma Import(MSIL,get_Length,"get_Length");
   pragma Import(MSIL,GetEnumerator,"GetEnumerator");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetTypeCode,"GetTypeCode");
   pragma Import(MSIL,IndexOf,"IndexOf");
   pragma Import(MSIL,IndexOfAny,"IndexOfAny");
   pragma Import(MSIL,Insert,"Insert");
   pragma Import(MSIL,Intern,"Intern");
   pragma Import(MSIL,IsInterned,"IsInterned");
   pragma Import(MSIL,IsNormalized,"IsNormalized");
   pragma Import(MSIL,IsNullOrEmpty,"IsNullOrEmpty");
   pragma Import(MSIL,Join,"Join");
   pragma Import(MSIL,LastIndexOf,"LastIndexOf");
   pragma Import(MSIL,LastIndexOfAny,"LastIndexOfAny");
   pragma Import(MSIL,Normalize,"Normalize");
   pragma Import(MSIL,op_Equality,"op_Equality");
   pragma Import(MSIL,op_Inequality,"op_Inequality");
   pragma Import(MSIL,PadLeft,"PadLeft");
   pragma Import(MSIL,PadRight,"PadRight");
   pragma Import(MSIL,Remove,"Remove");
   pragma Import(MSIL,Replace,"Replace");
   pragma Import(MSIL,Split,"Split");
   pragma Import(MSIL,StartsWith,"StartsWith");
   pragma Import(MSIL,Substring,"Substring");
   pragma Import(MSIL,ToCharArray,"ToCharArray");
   pragma Import(MSIL,ToLower,"ToLower");
   pragma Import(MSIL,ToLowerInvariant,"ToLowerInvariant");
   pragma Import(MSIL,ToString,"ToString");
   pragma Import(MSIL,ToUpper,"ToUpper");
   pragma Import(MSIL,ToUpperInvariant,"ToUpperInvariant");
   pragma Import(MSIL,Trim,"Trim");
   pragma Import(MSIL,TrimEnd,"TrimEnd");
   pragma Import(MSIL,TrimStart,"TrimStart");
end MSSyst.String;
pragma Import(MSIL,MSSyst.String,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.String");
