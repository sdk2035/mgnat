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
package MSSyst.Windows.Forms.NativeMethods.DOCHOSTUIINFO is
   type Typ is new MSSyst.Object.Typ   with record
      cbSize : Integer;
      pragma Import(MSIL,cbSize,"cbSize");
      dwFlags : Integer;
      pragma Import(MSIL,dwFlags,"dwFlags");
      dwDoubleClick : Integer;
      pragma Import(MSIL,dwDoubleClick,"dwDoubleClick");
      dwReserved1 : Integer;
      pragma Import(MSIL,dwReserved1,"dwReserved1");
      dwReserved2 : Integer;
      pragma Import(MSIL,dwReserved2,"dwReserved2");
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_DOCHOSTUIINFO(
      This : Ref := null) return Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_DOCHOSTUIINFO);
end MSSyst.Windows.Forms.NativeMethods.DOCHOSTUIINFO;
pragma Import(MSIL,MSSyst.Windows.Forms.NativeMethods.DOCHOSTUIINFO,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.NativeMethods/DOCHOSTUIINFO");
