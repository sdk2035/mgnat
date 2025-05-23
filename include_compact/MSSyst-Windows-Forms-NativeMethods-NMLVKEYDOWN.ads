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
with type MSSyst.Windows.Forms.NativeMethods.NMHDR.Valuetype is tagged;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Windows.Forms.NativeMethods.NMLVKEYDOWN is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      hdr : MSSyst.Windows.Forms.NativeMethods.NMHDR.Valuetype;
      pragma Import(MSIL,hdr,"hdr");
      wVKey : MSIL_Types.int16;
      pragma Import(MSIL,wVKey,"wVKey");
      flags : MSIL_Types.Unsigned_Integer;
      pragma Import(MSIL,flags,"flags");
   end record;
   function new_NMLVKEYDOWN(
      This : Ref := null) return Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_NMLVKEYDOWN);
end MSSyst.Windows.Forms.NativeMethods.NMLVKEYDOWN;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.NativeMethods.NMLVKEYDOWN,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.NativeMethods/NMLVKEYDOWN");
