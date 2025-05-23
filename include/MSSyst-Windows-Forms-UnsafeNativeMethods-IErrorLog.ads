-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.String;
limited with MSSyst.Windows.Forms.NativeMethods.tagEXCEPINFO;
with MSSyst.Windows.Forms.UnsafeNativeMethods;
package MSSyst.Windows.Forms.UnsafeNativeMethods.IErrorLog is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure AddError(
      This : access Typ;
      pszPropName_p0 : access MSSyst.String.Typ'Class;
      pExcepInfo_p1 : access MSSyst.Windows.Forms.NativeMethods.tagEXCEPINFO.Typ'Class) is abstract;
private
   pragma Import(MSIL,AddError,"AddError");
end MSSyst.Windows.Forms.UnsafeNativeMethods.IErrorLog;
pragma Import(MSIL,MSSyst.Windows.Forms.UnsafeNativeMethods.IErrorLog,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.UnsafeNativeMethods/IErrorLog");
