-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.String.Ref is access;
with type MSSyst.Windows.Forms.UnsafeNativeMethods.ITypeInfo.Ref_array is access;
with MSSyst.Windows.Forms.NativeMethods.tagDESCKIND;
with type MSSyst.Windows.Forms.NativeMethods.tagFUNCDESC.Ref_array is access;
with type MSSyst.Windows.Forms.NativeMethods.tagVARDESC.Ref_array is access;
with type MSSyst.Windows.Forms.UnsafeNativeMethods.ITypeComp.Ref_array is access;
package MSSyst.Windows.Forms.UnsafeNativeMethods.ITypeComp is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is interface;
   procedure RemoteBind(
      This : access Typ;
      szName : MSSyst.String.Ref;
      lHashVal : Integer;
      wFlags : MSIL_Types.int16;
      ppTInfo : MSSyst.Windows.Forms.UnsafeNativeMethods.ITypeInfo.Ref_array;
      pDescKind : MSSyst.Windows.Forms.NativeMethods.tagDESCKIND.Valuetype_array;
      ppFuncDesc : MSSyst.Windows.Forms.NativeMethods.tagFUNCDESC.Ref_array;
      ppVarDesc : MSSyst.Windows.Forms.NativeMethods.tagVARDESC.Ref_array;
      ppTypeComp : MSSyst.Windows.Forms.UnsafeNativeMethods.ITypeComp.Ref_array;
      pDummy : MSIL_Types.Int32_Arr) is abstract;
   procedure RemoteBindType(
      This : access Typ;
      szName : MSSyst.String.Ref;
      lHashVal : Integer;
      ppTInfo : MSSyst.Windows.Forms.UnsafeNativeMethods.ITypeInfo.Ref_array) is abstract;
private
   pragma Import(MSIL,RemoteBind,"RemoteBind");
   pragma Import(MSIL,RemoteBindType,"RemoteBindType");
end MSSyst.Windows.Forms.UnsafeNativeMethods.ITypeComp;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.UnsafeNativeMethods.ITypeComp,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.UnsafeNativeMethods/ITypeComp");
