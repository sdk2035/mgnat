-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Guid;
limited with MSSyst.Windows.Forms.NativeMethods.MSOCRINFOSTRUCT;
with MSSyst.Windows.Forms.UnsafeNativeMethods;
limited with MSSyst.Windows.Forms.UnsafeNativeMethods.IMsoComponent;
package MSSyst.Windows.Forms.UnsafeNativeMethods.IMsoComponentManager is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function FContinueIdle(
      This : access Typ) return Standard.Boolean is abstract;
   function FCreateSubComponentManager(
      This : access Typ;
      punkOuter : access MSSyst.Object.Typ'Class;
      punkServProv : access MSSyst.Object.Typ'Class;
      riid : access MSSyst.Guid.Valuetype;
      ppvObj : MSIL_Types.native_int_addrof) return Standard.Boolean is abstract;
   function FDebugMessage(
      This : access Typ;
      hInst : MSIL_Types.native_int;
      msg : Integer;
      wParam : MSIL_Types.native_int;
      lParam : MSIL_Types.native_int) return Standard.Boolean is abstract;
   function FGetActiveComponent(
      This : access Typ;
      dwgac : Integer;
      ppic : access MSSyst.Windows.Forms.UnsafeNativeMethods.IMsoComponent.Ref_arr;
      pcrinfo : access MSSyst.Windows.Forms.NativeMethods.MSOCRINFOSTRUCT.Typ'Class;
      dwReserved : Integer) return Standard.Boolean is abstract;
   function FGetParentComponentManager(
      This : access Typ;
      ppicm : access MSSyst.Windows.Forms.UnsafeNativeMethods.IMsoComponentManager.Ref) return Standard.Boolean is abstract;
   function FInState(
      This : access Typ;
      uStateID : Integer;
      pvoid : MSIL_Types.native_int) return Standard.Boolean is abstract;
   function FOnComponentActivate(
      This : access Typ;
      dwComponentID : Integer) return Standard.Boolean is abstract;
   function FOnComponentExitState(
      This : access Typ;
      dwComponentID : Integer;
      uStateID : Integer;
      uContext : Integer;
      cpicmExclude : Integer;
      rgpicmExclude : Integer) return Standard.Boolean is abstract;
   function FPushMessageLoop(
      This : access Typ;
      dwComponentID : Integer;
      uReason : Integer;
      pvLoopData : Integer) return Standard.Boolean is abstract;
   function FRegisterComponent(
      This : access Typ;
      component : access MSSyst.Windows.Forms.UnsafeNativeMethods.IMsoComponent.Typ'Class;
      pcrinfo : access MSSyst.Windows.Forms.NativeMethods.MSOCRINFOSTRUCT.Typ'Class;
      dwComponentID : MSIL_Types.Int32_addrof) return Standard.Boolean is abstract;
   function FRevokeComponent(
      This : access Typ;
      dwComponentID : Integer) return Standard.Boolean is abstract;
   function FSetTrackingComponent(
      This : access Typ;
      dwComponentID : Integer;
      fTrack : Standard.Boolean) return Standard.Boolean is abstract;
   function FUpdateComponentRegistration(
      This : access Typ;
      dwComponentID : Integer;
      pcrinfo : access MSSyst.Windows.Forms.NativeMethods.MSOCRINFOSTRUCT.Typ'Class) return Standard.Boolean is abstract;
   procedure OnComponentEnterState(
      This : access Typ;
      dwComponentID : Integer;
      uStateID : Integer;
      uContext : Integer;
      cpicmExclude : Integer;
      rgpicmExclude : Integer;
      dwReserved : Integer) is abstract;
   function QueryService(
      This : access Typ;
      guidService : access MSSyst.Guid.Valuetype;
      iid : access MSSyst.Guid.Valuetype;
      ppvObj : access MSSyst.Object.Ref) return Integer is abstract;
private
   pragma Import(MSIL,FContinueIdle,"FContinueIdle");
   pragma Import(MSIL,FCreateSubComponentManager,"FCreateSubComponentManager");
   pragma Import(MSIL,FDebugMessage,"FDebugMessage");
   pragma Import(MSIL,FGetActiveComponent,"FGetActiveComponent");
   pragma Import(MSIL,FGetParentComponentManager,"FGetParentComponentManager");
   pragma Import(MSIL,FInState,"FInState");
   pragma Import(MSIL,FOnComponentActivate,"FOnComponentActivate");
   pragma Import(MSIL,FOnComponentExitState,"FOnComponentExitState");
   pragma Import(MSIL,FPushMessageLoop,"FPushMessageLoop");
   pragma Import(MSIL,FRegisterComponent,"FRegisterComponent");
   pragma Import(MSIL,FRevokeComponent,"FRevokeComponent");
   pragma Import(MSIL,FSetTrackingComponent,"FSetTrackingComponent");
   pragma Import(MSIL,FUpdateComponentRegistration,"FUpdateComponentRegistration");
   pragma Import(MSIL,OnComponentEnterState,"OnComponentEnterState");
   pragma Import(MSIL,QueryService,"QueryService");
end MSSyst.Windows.Forms.UnsafeNativeMethods.IMsoComponentManager;
pragma Import(MSIL,MSSyst.Windows.Forms.UnsafeNativeMethods.IMsoComponentManager,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.UnsafeNativeMethods/IMsoComponentManager");
