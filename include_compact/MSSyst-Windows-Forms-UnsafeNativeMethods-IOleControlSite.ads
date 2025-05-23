-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.Object.Ref_addrof is access;
with type MSSyst.Windows.Forms.NativeMethods.uPOINTL.Ref is access;
with type MSSyst.Windows.Forms.NativeMethods.tagPOINTF.Ref is access;
with MSSyst.Windows.Forms.NativeMethods.MSG;
package MSSyst.Windows.Forms.UnsafeNativeMethods.IOleControlSite is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is interface;
   function GetExtendedControl(
      This : access Typ;
      ppDisp : MSSyst.Object.Ref_addrof) return Integer is abstract;
   function LockInPlaceActive(
      This : access Typ;
      fLock : Integer) return Integer is abstract;
   function OnControlInfoChanged(
      This : access Typ) return Integer is abstract;
   function OnFocus(
      This : access Typ;
      fGotFocus : Integer) return Integer is abstract;
   function ShowPropertyFrame(
      This : access Typ) return Integer is abstract;
   function TransformCoords(
      This : access Typ;
      pPtlHimetric : MSSyst.Windows.Forms.NativeMethods.uPOINTL.Ref;
      pPtfContainer : MSSyst.Windows.Forms.NativeMethods.tagPOINTF.Ref;
      dwFlags : Integer) return Integer is abstract;
   function TranslateAccelerator(
      This : access Typ;
      pMsg : MSSyst.Windows.Forms.NativeMethods.MSG.Valuetype_addrof;
      grfModifiers : Integer) return Integer is abstract;
private
   pragma Import(MSIL,GetExtendedControl,"GetExtendedControl");
   pragma Import(MSIL,LockInPlaceActive,"LockInPlaceActive");
   pragma Import(MSIL,OnControlInfoChanged,"OnControlInfoChanged");
   pragma Import(MSIL,OnFocus,"OnFocus");
   pragma Import(MSIL,ShowPropertyFrame,"ShowPropertyFrame");
   pragma Import(MSIL,TransformCoords,"TransformCoords");
   pragma Import(MSIL,TranslateAccelerator,"TranslateAccelerator");
end MSSyst.Windows.Forms.UnsafeNativeMethods.IOleControlSite;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.UnsafeNativeMethods.IOleControlSite,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.UnsafeNativeMethods/IOleControlSite");
