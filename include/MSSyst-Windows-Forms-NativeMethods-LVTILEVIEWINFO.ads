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
with MSSyst.Windows.Forms.NativeMethods.RECT;
limited with MSSyst.Windows.Forms.NativeMethods.SIZE;
package MSSyst.Windows.Forms.NativeMethods.LVTILEVIEWINFO is
   type Typ is new MSSyst.Object.Typ   with record
      cbSize : MSIL_Types.Unsigned_Integer;
      pragma Import(MSIL,cbSize,"cbSize");
      dwMask : Integer;
      pragma Import(MSIL,dwMask,"dwMask");
      dwFlags : Integer;
      pragma Import(MSIL,dwFlags,"dwFlags");
      sizeTile : access MSSyst.Windows.Forms.NativeMethods.SIZE.Typ'Class;
      pragma Import(MSIL,sizeTile,"sizeTile");
      cLines : Integer;
      pragma Import(MSIL,cLines,"cLines");
      rcLabelMargin : MSSyst.Windows.Forms.NativeMethods.RECT.Valuetype;
      pragma Import(MSIL,rcLabelMargin,"rcLabelMargin");
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_LVTILEVIEWINFO(
      This : Ref := null) return Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_LVTILEVIEWINFO);
end MSSyst.Windows.Forms.NativeMethods.LVTILEVIEWINFO;
pragma Import(MSIL,MSSyst.Windows.Forms.NativeMethods.LVTILEVIEWINFO,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.NativeMethods/LVTILEVIEWINFO");
