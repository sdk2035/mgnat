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
with type MSSyst.String.Ref is access;
with type MSSyst.Security.Cryptography.Oid.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.Security.Cryptography.AsnEncodedData is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   function new_AsnEncodedData(
      This : Ref := null;
      rawData : MSIL_Types.unsigned_int8_Arr) return Ref;
   function new_AsnEncodedData(
      This : Ref := null;
      oid : MSSyst.String.Ref;
      rawData : MSIL_Types.unsigned_int8_Arr) return Ref;
   function new_AsnEncodedData(
      This : Ref := null;
      oid : MSSyst.Security.Cryptography.Oid.Ref;
      rawData : MSIL_Types.unsigned_int8_Arr) return Ref;
   function new_AsnEncodedData(
      This : Ref := null;
      asnEncodedData : MSSyst.Security.Cryptography.AsnEncodedData.Ref) return Ref;
   procedure CopyFrom(
      This : access Typ;
      asnEncodedData : MSSyst.Security.Cryptography.AsnEncodedData.Ref);
   function Format(
      This : access Typ;
      multiLine : Standard.Boolean) return MSSyst.String.Ref;
   function get_Oid(
      This : access Typ) return MSSyst.Security.Cryptography.Oid.Ref;
   function get_RawData(
      This : access Typ) return MSIL_Types.unsigned_int8_Array;
   procedure set_Oid(
      This : access Typ;
      value : MSSyst.Security.Cryptography.Oid.Ref);
   procedure set_RawData(
      This : access Typ;
      value : MSIL_Types.unsigned_int8_Arr);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_AsnEncodedData);
   pragma Import(MSIL,CopyFrom,"CopyFrom");
   pragma Import(MSIL,Format,"Format");
   pragma Import(MSIL,get_Oid,"get_Oid");
   pragma Import(MSIL,get_RawData,"get_RawData");
   pragma Import(MSIL,set_Oid,"set_Oid");
   pragma Import(MSIL,set_RawData,"set_RawData");
end MSSyst.Security.Cryptography.AsnEncodedData;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Security.Cryptography.AsnEncodedData,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Security.Cryptography.AsnEncodedData");
