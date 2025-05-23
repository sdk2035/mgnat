-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with Accessibility.AnnoScope;
with Accessibility.CAccPropServices;
limited with Accessibility.IAccPropServer;
with Accessibility.IAccPropServices;
with Accessibility.uRemotableHandle;
with MSSyst.Guid;
with MSSyst.MarshalByRefObject;
limited with MSSyst.Runtime.Remoting.ObjRef;
limited with MSSyst.String;
limited with MSSyst.Type_k;
with MSSyst.u_ComObject;
package Accessibility.CAccPropServicesClass is
   type Typ is new MSSyst.u_ComObject.Typ
         and Accessibility.IAccPropServices.Typ
         and Accessibility.CAccPropServices.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_CAccPropServicesClass(
      This : Ref := null) return Ref;
   procedure ClearHmenuProps(
      This : access Typ;
      hmenu : access Accessibility.uRemotableHandle.Valuetype;
      idChild : MSIL_Types.Unsigned_Integer;
      paProps : access MSSyst.Guid.Valuetype;
      cProps : Integer);
   procedure ClearHwndProps(
      This : access Typ;
      hwnd : access Accessibility.uRemotableHandle.Valuetype;
      idObject : MSIL_Types.Unsigned_Integer;
      idChild : MSIL_Types.Unsigned_Integer;
      paProps : access MSSyst.Guid.Valuetype;
      cProps : Integer);
   procedure ClearProps(
      This : access Typ;
      pIDString : MSIL_Types.unsigned_int8_addrof;
      dwIDStringLen : MSIL_Types.Unsigned_Integer;
      paProps : access MSSyst.Guid.Valuetype;
      cProps : Integer);
   procedure ComposeHmenuIdentityString(
      This : access Typ;
      hmenu : access Accessibility.uRemotableHandle.Valuetype;
      idChild : MSIL_Types.Unsigned_Integer;
      ppIDString : MSIL_Types.native_int;
      pdwIDStringLen : MSIL_Types.Unsigned_Integer_addrof);
   procedure ComposeHwndIdentityString(
      This : access Typ;
      hwnd : access Accessibility.uRemotableHandle.Valuetype;
      idObject : MSIL_Types.Unsigned_Integer;
      idChild : MSIL_Types.Unsigned_Integer;
      ppIDString : MSIL_Types.native_int;
      pdwIDStringLen : MSIL_Types.Unsigned_Integer_addrof);
   procedure DecomposeHmenuIdentityString(
      This : access Typ;
      pIDString : MSIL_Types.unsigned_int8_addrof;
      dwIDStringLen : MSIL_Types.Unsigned_Integer;
      phmenu : MSIL_Types.native_int;
      pidChild : MSIL_Types.Unsigned_Integer_addrof);
   procedure DecomposeHwndIdentityString(
      This : access Typ;
      pIDString : MSIL_Types.unsigned_int8_addrof;
      dwIDStringLen : MSIL_Types.Unsigned_Integer;
      phwnd : MSIL_Types.native_int;
      pidObject : MSIL_Types.Unsigned_Integer_addrof;
      pidChild : MSIL_Types.Unsigned_Integer_addrof);
   procedure SetHmenuProp(
      This : access Typ;
      hmenu : access Accessibility.uRemotableHandle.Valuetype;
      idChild : MSIL_Types.Unsigned_Integer;
      idProp : MSSyst.Guid.Valuetype;
      var : access MSSyst.Object.Typ'Class);
   procedure SetHmenuPropServer(
      This : access Typ;
      hmenu : access Accessibility.uRemotableHandle.Valuetype;
      idChild : MSIL_Types.Unsigned_Integer;
      paProps : access MSSyst.Guid.Valuetype;
      cProps : Integer;
      pServer : access Accessibility.IAccPropServer.Typ'Class;
      AnnoScope : Accessibility.AnnoScope.Valuetype);
   procedure SetHmenuPropStr(
      This : access Typ;
      hmenu : access Accessibility.uRemotableHandle.Valuetype;
      idChild : MSIL_Types.Unsigned_Integer;
      idProp : MSSyst.Guid.Valuetype;
      str : access MSSyst.String.Typ'Class);
   procedure SetHwndProp(
      This : access Typ;
      hwnd : access Accessibility.uRemotableHandle.Valuetype;
      idObject : MSIL_Types.Unsigned_Integer;
      idChild : MSIL_Types.Unsigned_Integer;
      idProp : MSSyst.Guid.Valuetype;
      var : access MSSyst.Object.Typ'Class);
   procedure SetHwndPropServer(
      This : access Typ;
      hwnd : access Accessibility.uRemotableHandle.Valuetype;
      idObject : MSIL_Types.Unsigned_Integer;
      idChild : MSIL_Types.Unsigned_Integer;
      paProps : access MSSyst.Guid.Valuetype;
      cProps : Integer;
      pServer : access Accessibility.IAccPropServer.Typ'Class;
      AnnoScope : Accessibility.AnnoScope.Valuetype);
   procedure SetHwndPropStr(
      This : access Typ;
      hwnd : access Accessibility.uRemotableHandle.Valuetype;
      idObject : MSIL_Types.Unsigned_Integer;
      idChild : MSIL_Types.Unsigned_Integer;
      idProp : MSSyst.Guid.Valuetype;
      str : access MSSyst.String.Typ'Class);
   procedure SetPropServer(
      This : access Typ;
      pIDString : MSIL_Types.unsigned_int8_addrof;
      dwIDStringLen : MSIL_Types.Unsigned_Integer;
      paProps : access MSSyst.Guid.Valuetype;
      cProps : Integer;
      pServer : access Accessibility.IAccPropServer.Typ'Class;
      AnnoScope : Accessibility.AnnoScope.Valuetype);
   procedure SetPropValue(
      This : access Typ;
      pIDString : MSIL_Types.unsigned_int8_addrof;
      dwIDStringLen : MSIL_Types.Unsigned_Integer;
      idProp : MSSyst.Guid.Valuetype;
      var : access MSSyst.Object.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_CAccPropServicesClass);
   pragma Import(MSIL,ClearHmenuProps,"ClearHmenuProps");
   pragma Import(MSIL,ClearHwndProps,"ClearHwndProps");
   pragma Import(MSIL,ClearProps,"ClearProps");
   pragma Import(MSIL,ComposeHmenuIdentityString,"ComposeHmenuIdentityString");
   pragma Import(MSIL,ComposeHwndIdentityString,"ComposeHwndIdentityString");
   pragma Import(MSIL,DecomposeHmenuIdentityString,"DecomposeHmenuIdentityString");
   pragma Import(MSIL,DecomposeHwndIdentityString,"DecomposeHwndIdentityString");
   pragma Import(MSIL,SetHmenuProp,"SetHmenuProp");
   pragma Import(MSIL,SetHmenuPropServer,"SetHmenuPropServer");
   pragma Import(MSIL,SetHmenuPropStr,"SetHmenuPropStr");
   pragma Import(MSIL,SetHwndProp,"SetHwndProp");
   pragma Import(MSIL,SetHwndPropServer,"SetHwndPropServer");
   pragma Import(MSIL,SetHwndPropStr,"SetHwndPropStr");
   pragma Import(MSIL,SetPropServer,"SetPropServer");
   pragma Import(MSIL,SetPropValue,"SetPropValue");
end Accessibility.CAccPropServicesClass;
pragma Import(MSIL,Accessibility.CAccPropServicesClass,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[Accessibility]Accessibility.CAccPropServicesClass");
