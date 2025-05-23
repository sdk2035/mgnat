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
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Drawing.Imaging.MetaHeader is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   function new_MetaHeader(
      This : Ref := null) return Ref;
   function get_HeaderSize(
      This : access Typ) return MSIL_Types.int16;
   function get_MaxRecord(
      This : access Typ) return Integer;
   function get_NoObjects(
      This : access Typ) return MSIL_Types.int16;
   function get_NoParameters(
      This : access Typ) return MSIL_Types.int16;
   function get_Size(
      This : access Typ) return Integer;
   function get_Type(
      This : access Typ) return MSIL_Types.int16;
   function get_Version(
      This : access Typ) return MSIL_Types.int16;
   procedure set_HeaderSize(
      This : access Typ;
      value : MSIL_Types.int16);
   procedure set_MaxRecord(
      This : access Typ;
      value : Integer);
   procedure set_NoObjects(
      This : access Typ;
      value : MSIL_Types.int16);
   procedure set_NoParameters(
      This : access Typ;
      value : MSIL_Types.int16);
   procedure set_Size(
      This : access Typ;
      value : Integer);
   procedure set_Type(
      This : access Typ;
      value : MSIL_Types.int16);
   procedure set_Version(
      This : access Typ;
      value : MSIL_Types.int16);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_MetaHeader);
   pragma Import(MSIL,get_HeaderSize,"get_HeaderSize");
   pragma Import(MSIL,get_MaxRecord,"get_MaxRecord");
   pragma Import(MSIL,get_NoObjects,"get_NoObjects");
   pragma Import(MSIL,get_NoParameters,"get_NoParameters");
   pragma Import(MSIL,get_Size,"get_Size");
   pragma Import(MSIL,get_Type,"get_Type");
   pragma Import(MSIL,get_Version,"get_Version");
   pragma Import(MSIL,set_HeaderSize,"set_HeaderSize");
   pragma Import(MSIL,set_MaxRecord,"set_MaxRecord");
   pragma Import(MSIL,set_NoObjects,"set_NoObjects");
   pragma Import(MSIL,set_NoParameters,"set_NoParameters");
   pragma Import(MSIL,set_Size,"set_Size");
   pragma Import(MSIL,set_Type,"set_Type");
   pragma Import(MSIL,set_Version,"set_Version");
end MSSyst.Drawing.Imaging.MetaHeader;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Drawing.Imaging.MetaHeader,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Imaging.MetaHeader");
