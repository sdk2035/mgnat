-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.Windows.Forms.NativeMethods.tagDVTARGETDEVICE.Ref is access;
with type MSSyst.Windows.Forms.NativeMethods.COMRECT.Ref is access;
with type MSSyst.Runtime.InteropServices.ComTypes.IAdviseSink.Ref_array is access;
with type MSSyst.Windows.Forms.NativeMethods.tagLOGPALETTE.Ref is access;
with type MSSyst.Windows.Forms.NativeMethods.tagSIZEL.Ref is access;
with type MSSyst.Runtime.InteropServices.ComTypes.IAdviseSink.Ref is access;
package MSSyst.Windows.Forms.UnsafeNativeMethods.IViewObject2 is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is interface;
   procedure Draw(
      This : access Typ;
      dwDrawAspect : Integer;
      lindex : Integer;
      pvAspect : MSIL_Types.native_int;
      ptd : MSSyst.Windows.Forms.NativeMethods.tagDVTARGETDEVICE.Ref;
      hdcTargetDev : MSIL_Types.native_int;
      hdcDraw : MSIL_Types.native_int;
      lprcBounds : MSSyst.Windows.Forms.NativeMethods.COMRECT.Ref;
      lprcWBounds : MSSyst.Windows.Forms.NativeMethods.COMRECT.Ref;
      pfnContinue : MSIL_Types.native_int;
      dwContinue : Integer) is abstract;
   function Freeze(
      This : access Typ;
      dwDrawAspect : Integer;
      lindex : Integer;
      pvAspect : MSIL_Types.native_int;
      pdwFreeze : MSIL_Types.native_int) return Integer is abstract;
   procedure GetAdvise(
      This : access Typ;
      paspects : MSIL_Types.Int32_Arr;
      advf : MSIL_Types.Int32_Arr;
      pAdvSink : MSSyst.Runtime.InteropServices.ComTypes.IAdviseSink.Ref_array) is abstract;
   function GetColorSet(
      This : access Typ;
      dwDrawAspect : Integer;
      lindex : Integer;
      pvAspect : MSIL_Types.native_int;
      ptd : MSSyst.Windows.Forms.NativeMethods.tagDVTARGETDEVICE.Ref;
      hicTargetDev : MSIL_Types.native_int;
      ppColorSet : MSSyst.Windows.Forms.NativeMethods.tagLOGPALETTE.Ref) return Integer is abstract;
   procedure GetExtent(
      This : access Typ;
      dwDrawAspect : Integer;
      lindex : Integer;
      ptd : MSSyst.Windows.Forms.NativeMethods.tagDVTARGETDEVICE.Ref;
      lpsizel : MSSyst.Windows.Forms.NativeMethods.tagSIZEL.Ref) is abstract;
   procedure SetAdvise(
      This : access Typ;
      aspects : Integer;
      advf : Integer;
      pAdvSink : MSSyst.Runtime.InteropServices.ComTypes.IAdviseSink.Ref) is abstract;
   function Unfreeze(
      This : access Typ;
      dwFreeze : Integer) return Integer is abstract;
private
   pragma Import(MSIL,Draw,"Draw");
   pragma Import(MSIL,Freeze,"Freeze");
   pragma Import(MSIL,GetAdvise,"GetAdvise");
   pragma Import(MSIL,GetColorSet,"GetColorSet");
   pragma Import(MSIL,GetExtent,"GetExtent");
   pragma Import(MSIL,SetAdvise,"SetAdvise");
   pragma Import(MSIL,Unfreeze,"Unfreeze");
end MSSyst.Windows.Forms.UnsafeNativeMethods.IViewObject2;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.UnsafeNativeMethods.IViewObject2,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.UnsafeNativeMethods/IViewObject2");
