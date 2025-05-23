-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.Object.Ref is access;
with MSSyst.Guid;
with type MSSyst.Object.Ref_array is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Object.Ref_addrof is access;
with type MSSyst.Windows.Forms.NativeMethods.tagLICINFO.Ref is access;
with type MSSyst.String.Ref_array is access;
package MSSyst.Windows.Forms.UnsafeNativeMethods.IClassFactory2 is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is interface;
   procedure CreateInstance(
      This : access Typ;
      unused : MSSyst.Object.Ref;
      refiid : MSSyst.Guid.Valuetype_addrof;
      ppunk : MSSyst.Object.Ref_array) is abstract;
   procedure CreateInstanceLic(
      This : access Typ;
      pUnkOuter : MSSyst.Object.Ref;
      pUnkReserved : MSSyst.Object.Ref;
      riid : MSSyst.Guid.Valuetype_addrof;
      bstrKey : MSSyst.String.Ref;
      ppVal : MSSyst.Object.Ref_addrof) is abstract;
   procedure GetLicInfo(
      This : access Typ;
      licInfo : MSSyst.Windows.Forms.NativeMethods.tagLICINFO.Ref) is abstract;
   procedure LockServer(
      This : access Typ;
      fLock : Integer) is abstract;
   procedure RequestLicKey(
      This : access Typ;
      dwReserved : Integer;
      pBstrKey : MSSyst.String.Ref_array) is abstract;
private
   pragma Import(MSIL,CreateInstance,"CreateInstance");
   pragma Import(MSIL,CreateInstanceLic,"CreateInstanceLic");
   pragma Import(MSIL,GetLicInfo,"GetLicInfo");
   pragma Import(MSIL,LockServer,"LockServer");
   pragma Import(MSIL,RequestLicKey,"RequestLicKey");
end MSSyst.Windows.Forms.UnsafeNativeMethods.IClassFactory2;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.UnsafeNativeMethods.IClassFactory2,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.UnsafeNativeMethods/IClassFactory2");
