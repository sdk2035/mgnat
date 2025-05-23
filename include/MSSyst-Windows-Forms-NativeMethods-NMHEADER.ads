-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.String;
limited with MSSyst.Type_k;
with MSSyst.Windows.Forms.NativeMethods;
with MSSyst.Windows.Forms.NativeMethods.NMHDR;
package MSSyst.Windows.Forms.NativeMethods.NMHEADER is
   type Typ is new MSSyst.Object.Typ   with record
      nmhdr : MSSyst.Windows.Forms.NativeMethods.NMHDR.Valuetype;
      pragma Import(MSIL,nmhdr,"nmhdr");
      iItem : Integer;
      pragma Import(MSIL,iItem,"iItem");
      iButton : Integer;
      pragma Import(MSIL,iButton,"iButton");
      pItem : MSIL_Types.native_int;
      pragma Import(MSIL,pItem,"pItem");
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_NMHEADER(
      This : Ref := null) return Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_NMHEADER);
end MSSyst.Windows.Forms.NativeMethods.NMHEADER;
pragma Import(MSIL,MSSyst.Windows.Forms.NativeMethods.NMHEADER,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.NativeMethods/NMHEADER");
