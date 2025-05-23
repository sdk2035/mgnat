-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Object;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Drawing.Internal.IntNativeMethods.DRAWTEXTPARAMS is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      iTabLength : Integer;
      pragma Import(MSIL,iTabLength,"iTabLength");
      iLeftMargin : Integer;
      pragma Import(MSIL,iLeftMargin,"iLeftMargin");
      iRightMargin : Integer;
      pragma Import(MSIL,iRightMargin,"iRightMargin");
      uiLengthDrawn : Integer;
      pragma Import(MSIL,uiLengthDrawn,"uiLengthDrawn");
   end record;
   function new_DRAWTEXTPARAMS(
      This : Ref := null) return Ref;
   function new_DRAWTEXTPARAMS(
      This : Ref := null;
      original : MSSyst.Drawing.Internal.IntNativeMethods.DRAWTEXTPARAMS.Ref) return Ref;
   function new_DRAWTEXTPARAMS(
      This : Ref := null;
      leftMargin : Integer;
      rightMargin : Integer) return Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_DRAWTEXTPARAMS);
end MSSyst.Drawing.Internal.IntNativeMethods.DRAWTEXTPARAMS;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Drawing.Internal.IntNativeMethods.DRAWTEXTPARAMS,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Internal.IntNativeMethods/DRAWTEXTPARAMS");
