-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Guid;
with MSSyst.Windows.Forms.UnsafeNativeMethods;
package MSSyst.Windows.Forms.UnsafeNativeMethods.IGetOleObject is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function GetOleObject(
      This : access Typ;
      riid : access MSSyst.Guid.Valuetype) return access MSSyst.Object.Typ'Class is abstract;
private
   pragma Import(MSIL,GetOleObject,"GetOleObject");
end MSSyst.Windows.Forms.UnsafeNativeMethods.IGetOleObject;
pragma Import(MSIL,MSSyst.Windows.Forms.UnsafeNativeMethods.IGetOleObject,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.UnsafeNativeMethods/IGetOleObject");
