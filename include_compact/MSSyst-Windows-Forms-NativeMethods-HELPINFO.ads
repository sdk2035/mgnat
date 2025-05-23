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
with type MSSyst.Windows.Forms.NativeMethods.POINT.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Windows.Forms.NativeMethods.HELPINFO is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      cbSize : Integer;
      pragma Import(MSIL,cbSize,"cbSize");
      iContextType : Integer;
      pragma Import(MSIL,iContextType,"iContextType");
      iCtrlId : Integer;
      pragma Import(MSIL,iCtrlId,"iCtrlId");
      hItemHandle : MSIL_Types.native_int;
      pragma Import(MSIL,hItemHandle,"hItemHandle");
      dwContextId : Integer;
      pragma Import(MSIL,dwContextId,"dwContextId");
      MousePos : MSSyst.Windows.Forms.NativeMethods.POINT.Ref;
      pragma Import(MSIL,MousePos,"MousePos");
   end record;
   function new_HELPINFO(
      This : Ref := null) return Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_HELPINFO);
end MSSyst.Windows.Forms.NativeMethods.HELPINFO;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.NativeMethods.HELPINFO,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.NativeMethods/HELPINFO");
