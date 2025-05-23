-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.DateTime;
limited with MSSyst.Decimal;
limited with MSSyst.Runtime.Serialization.IFormatterConverter;
limited with MSSyst.Runtime.Serialization.SerializationInfoEnumerator;
limited with MSSyst.SByte;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Runtime.Serialization.SerializationInfo is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_SerializationInfo(
      This : Ref := null;
      type_k : access MSSyst.Type_k.Typ'Class;
      converter : access MSSyst.Runtime.Serialization.IFormatterConverter.Typ'Class) return Ref;
   procedure AddValue(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : Integer);
   procedure AddValue(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : MSIL_Types.Unsigned_Integer);
   procedure AddValue(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : MSIL_Types.unsigned_int16);
   procedure AddValue(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : MSIL_Types.unsigned_int8);
   procedure AddValue(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : MSIL_Types.int16);
   procedure AddValue(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : Long_Long_Integer);
   procedure AddValue(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : MSSyst.Decimal.Valuetype);
   procedure AddValue(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : MSSyst.DateTime.Valuetype);
   procedure AddValue(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : Long_Float);
   procedure AddValue(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : MSIL_Types.Unsigned_Long_Long_Integer);
   procedure AddValue(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : Float);
   procedure AddValue(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : MSSyst.SByte.Valuetype);
   procedure AddValue(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : access MSSyst.Object.Typ'Class);
   procedure AddValue(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : access MSSyst.Object.Typ'Class;
      type_k : access MSSyst.Type_k.Typ'Class);
   procedure AddValue(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : Wide_Character);
   procedure AddValue(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : Standard.Boolean);
   function get_AssemblyName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_FullTypeName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_MemberCount(
      This : access Typ) return Integer;
   function GetBoolean(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return Standard.Boolean;
   function GetByte(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return MSIL_Types.unsigned_int8;
   function GetChar(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return Wide_Character;
   function GetDateTime(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return MSSyst.DateTime.Valuetype;
   function GetDecimal(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return MSSyst.Decimal.Valuetype;
   function GetDouble(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return Long_Float;
   function GetEnumerator(
      This : access Typ) return access MSSyst.Runtime.Serialization.SerializationInfoEnumerator.Typ'Class;
   function GetInt16(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return MSIL_Types.int16;
   function GetInt32(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return Integer;
   function GetInt64(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return Long_Long_Integer;
   function GetSByte(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return MSSyst.SByte.Valuetype;
   function GetSingle(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return Float;
   function GetString(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function GetUInt16(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return MSIL_Types.unsigned_int16;
   function GetUInt32(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return MSIL_Types.Unsigned_Integer;
   function GetUInt64(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return MSIL_Types.Unsigned_Long_Long_Integer;
   function GetValue(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      type_k : access MSSyst.Type_k.Typ'Class) return access MSSyst.Object.Typ'Class;
   procedure set_AssemblyName(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_FullTypeName(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure SetType(
      This : access Typ;
      type_k : access MSSyst.Type_k.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_SerializationInfo);
   pragma Import(MSIL,AddValue,"AddValue");
   pragma Import(MSIL,get_AssemblyName,"get_AssemblyName");
   pragma Import(MSIL,get_FullTypeName,"get_FullTypeName");
   pragma Import(MSIL,get_MemberCount,"get_MemberCount");
   pragma Import(MSIL,GetBoolean,"GetBoolean");
   pragma Import(MSIL,GetByte,"GetByte");
   pragma Import(MSIL,GetChar,"GetChar");
   pragma Import(MSIL,GetDateTime,"GetDateTime");
   pragma Import(MSIL,GetDecimal,"GetDecimal");
   pragma Import(MSIL,GetDouble,"GetDouble");
   pragma Import(MSIL,GetEnumerator,"GetEnumerator");
   pragma Import(MSIL,GetInt16,"GetInt16");
   pragma Import(MSIL,GetInt32,"GetInt32");
   pragma Import(MSIL,GetInt64,"GetInt64");
   pragma Import(MSIL,GetSByte,"GetSByte");
   pragma Import(MSIL,GetSingle,"GetSingle");
   pragma Import(MSIL,GetString,"GetString");
   pragma Import(MSIL,GetUInt16,"GetUInt16");
   pragma Import(MSIL,GetUInt32,"GetUInt32");
   pragma Import(MSIL,GetUInt64,"GetUInt64");
   pragma Import(MSIL,GetValue,"GetValue");
   pragma Import(MSIL,set_AssemblyName,"set_AssemblyName");
   pragma Import(MSIL,set_FullTypeName,"set_FullTypeName");
   pragma Import(MSIL,SetType,"SetType");
end MSSyst.Runtime.Serialization.SerializationInfo;
pragma Import(MSIL,MSSyst.Runtime.Serialization.SerializationInfo,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Runtime.Serialization.SerializationInfo");
