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
with MSSyst.Windows.Forms.NativeMethods;
package MSSyst.Windows.Forms.NativeMethods.LVBKIMAGE is
   type Typ is new MSSyst.Object.Typ   with record
      ulFlags : Integer;
      pragma Import(MSIL,ulFlags,"ulFlags");
      hBmp : MSIL_Types.native_int;
      pragma Import(MSIL,hBmp,"hBmp");
      pszImage : access MSSyst.String.Typ'Class;
      pragma Import(MSIL,pszImage,"pszImage");
      cchImageMax : Integer;
      pragma Import(MSIL,cchImageMax,"cchImageMax");
      xOffset : Integer;
      pragma Import(MSIL,xOffset,"xOffset");
      yOffset : Integer;
      pragma Import(MSIL,yOffset,"yOffset");
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_LVBKIMAGE(
      This : Ref := null) return Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_LVBKIMAGE);
end MSSyst.Windows.Forms.NativeMethods.LVBKIMAGE;
pragma Import(MSIL,MSSyst.Windows.Forms.NativeMethods.LVBKIMAGE,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.NativeMethods/LVBKIMAGE");
