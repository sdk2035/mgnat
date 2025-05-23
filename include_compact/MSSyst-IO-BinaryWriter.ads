-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Object;
with type MSSyst.IO.Stream.Ref is access;
with type MSSyst.Type_k.Ref is access;
with MSSyst.IO.SeekOrigin;
with type MSSyst.String.Ref is access;
with type MSSyst.SByte.Valuetype is tagged;
with type MSSyst.Decimal.Valuetype is tagged;
with type MSSyst.Text.Encoding.Ref is access;
package MSSyst.IO.BinaryWriter is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   Null_k : MSSyst.IO.BinaryWriter.Ref;
   pragma Import(MSIL,Null_k,"Null");
   function new_BinaryWriter(
      This : Ref := null;
      output : MSSyst.IO.Stream.Ref) return Ref;
   function new_BinaryWriter(
      This : Ref := null;
      output : MSSyst.IO.Stream.Ref;
      encoding : MSSyst.Text.Encoding.Ref) return Ref;
   procedure Close(
      This : access Typ);
   procedure Flush(
      This : access Typ);
   function get_BaseStream(
      This : access Typ) return MSSyst.IO.Stream.Ref;
   function Seek(
      This : access Typ;
      offset : Integer;
      origin : MSSyst.IO.SeekOrigin.Valuetype) return Long_Long_Integer;
   procedure Write(
      This : access Typ;
      value : MSIL_Types.Unsigned_Integer);
   procedure Write(
      This : access Typ;
      value : Integer);
   procedure Write(
      This : access Typ;
      value : MSIL_Types.unsigned_int16);
   procedure Write(
      This : access Typ;
      value : Long_Long_Integer);
   procedure Write(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure Write(
      This : access Typ;
      value : Float);
   procedure Write(
      This : access Typ;
      value : MSIL_Types.Unsigned_Long_Long_Integer);
   procedure Write(
      This : access Typ;
      buffer : MSIL_Types.unsigned_int8_Arr);
   procedure Write(
      This : access Typ;
      buffer : MSIL_Types.unsigned_int8_Arr;
      index : Integer;
      count : Integer);
   procedure Write(
      This : access Typ;
      value : MSSyst.SByte.Valuetype);
   procedure Write(
      This : access Typ;
      value : Standard.Boolean);
   procedure Write(
      This : access Typ;
      value : MSIL_Types.unsigned_int8);
   procedure Write(
      This : access Typ;
      ch : Wide_Character);
   procedure Write(
      This : access Typ;
      value : MSSyst.Decimal.Valuetype);
   procedure Write(
      This : access Typ;
      value : MSIL_Types.int16);
   procedure Write(
      This : access Typ;
      value : Long_Float);
   procedure Write(
      This : access Typ;
      chars : MSIL_Types.Char_Arr);
   procedure Write(
      This : access Typ;
      chars : MSIL_Types.Char_Arr;
      index : Integer;
      count : Integer);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_BinaryWriter);
   pragma Import(MSIL,Close,"Close");
   pragma Import(MSIL,Flush,"Flush");
   pragma Import(MSIL,get_BaseStream,"get_BaseStream");
   pragma Import(MSIL,Seek,"Seek");
   pragma Import(MSIL,Write,"Write");
end MSSyst.IO.BinaryWriter;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.IO.BinaryWriter,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.IO.BinaryWriter");
