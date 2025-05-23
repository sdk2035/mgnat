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
with MSSyst.Windows.Forms.UnsafeNativeMethods;
package MSSyst.Windows.Forms.UnsafeNativeMethods.tagQACONTROL is
   type Typ is new MSSyst.Object.Typ   with record
      cbSize : Integer;
      pragma Import(MSIL,cbSize,"cbSize");
      dwMiscStatus : Integer;
      pragma Import(MSIL,dwMiscStatus,"dwMiscStatus");
      dwViewStatus : Integer;
      pragma Import(MSIL,dwViewStatus,"dwViewStatus");
      dwEventCookie : Integer;
      pragma Import(MSIL,dwEventCookie,"dwEventCookie");
      dwPropNotifyCookie : Integer;
      pragma Import(MSIL,dwPropNotifyCookie,"dwPropNotifyCookie");
      dwPointerActivationPolicy : Integer;
      pragma Import(MSIL,dwPointerActivationPolicy,"dwPointerActivationPolicy");
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_tagQACONTROL(
      This : Ref := null) return Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_tagQACONTROL);
end MSSyst.Windows.Forms.UnsafeNativeMethods.tagQACONTROL;
pragma Import(MSIL,MSSyst.Windows.Forms.UnsafeNativeMethods.tagQACONTROL,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.UnsafeNativeMethods/tagQACONTROL");
