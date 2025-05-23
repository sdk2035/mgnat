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
package MSSyst.Windows.Forms.NativeMethods.VARIANT is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      vt : MSIL_Types.int16;
      pragma Import(MSIL,vt,"vt");
      reserved1 : MSIL_Types.int16;
      pragma Import(MSIL,reserved1,"reserved1");
      reserved2 : MSIL_Types.int16;
      pragma Import(MSIL,reserved2,"reserved2");
      reserved3 : MSIL_Types.int16;
      pragma Import(MSIL,reserved3,"reserved3");
      data1 : MSIL_Types.native_int;
      pragma Import(MSIL,data1,"data1");
      data2 : MSIL_Types.native_int;
      pragma Import(MSIL,data2,"data2");
   end record;
   function new_VARIANT(
      This : Ref := null) return Ref;
   procedure Clear(
      This : access Typ);
   function FromObject(
      var : MSSyst.Object.Ref) return MSSyst.Windows.Forms.NativeMethods.VARIANT.Ref;
   function get_Byref(
      This : access Typ) return Standard.Boolean;
   procedure SetLong(
      This : access Typ;
      lVal : Long_Long_Integer);
   function ToCoTaskMemPtr(
      This : access Typ) return MSIL_Types.native_int;
   function ToObject(
      This : access Typ) return MSSyst.Object.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_VARIANT);
   pragma Import(MSIL,Clear,"Clear");
   pragma Import(MSIL,FromObject,"FromObject");
   pragma Import(MSIL,get_Byref,"get_Byref");
   pragma Import(MSIL,SetLong,"SetLong");
   pragma Import(MSIL,ToCoTaskMemPtr,"ToCoTaskMemPtr");
   pragma Import(MSIL,ToObject,"ToObject");
end MSSyst.Windows.Forms.NativeMethods.VARIANT;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.NativeMethods.VARIANT,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.NativeMethods/VARIANT");
