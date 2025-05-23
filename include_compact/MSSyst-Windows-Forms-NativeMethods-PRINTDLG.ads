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
with type MSSyst.Windows.Forms.NativeMethods.WndProc.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.Windows.Forms.NativeMethods.PRINTDLG is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      lStructSize : Integer;
      pragma Import(MSIL,lStructSize,"lStructSize");
      hwndOwner : MSIL_Types.native_int;
      pragma Import(MSIL,hwndOwner,"hwndOwner");
      hDevMode : MSIL_Types.native_int;
      pragma Import(MSIL,hDevMode,"hDevMode");
      hDevNames : MSIL_Types.native_int;
      pragma Import(MSIL,hDevNames,"hDevNames");
      hDC : MSIL_Types.native_int;
      pragma Import(MSIL,hDC,"hDC");
      Flags : Integer;
      pragma Import(MSIL,Flags,"Flags");
      nFromPage : MSIL_Types.int16;
      pragma Import(MSIL,nFromPage,"nFromPage");
      nToPage : MSIL_Types.int16;
      pragma Import(MSIL,nToPage,"nToPage");
      nMinPage : MSIL_Types.int16;
      pragma Import(MSIL,nMinPage,"nMinPage");
      nMaxPage : MSIL_Types.int16;
      pragma Import(MSIL,nMaxPage,"nMaxPage");
      nCopies : MSIL_Types.int16;
      pragma Import(MSIL,nCopies,"nCopies");
      hInstance : MSIL_Types.native_int;
      pragma Import(MSIL,hInstance,"hInstance");
      lCustData : MSIL_Types.native_int;
      pragma Import(MSIL,lCustData,"lCustData");
      lpfnPrintHook : MSSyst.Windows.Forms.NativeMethods.WndProc.Ref;
      pragma Import(MSIL,lpfnPrintHook,"lpfnPrintHook");
      lpfnSetupHook : MSSyst.Windows.Forms.NativeMethods.WndProc.Ref;
      pragma Import(MSIL,lpfnSetupHook,"lpfnSetupHook");
      lpPrintTemplateName : MSSyst.String.Ref;
      pragma Import(MSIL,lpPrintTemplateName,"lpPrintTemplateName");
      lpSetupTemplateName : MSSyst.String.Ref;
      pragma Import(MSIL,lpSetupTemplateName,"lpSetupTemplateName");
      hPrintTemplate : MSIL_Types.native_int;
      pragma Import(MSIL,hPrintTemplate,"hPrintTemplate");
      hSetupTemplate : MSIL_Types.native_int;
      pragma Import(MSIL,hSetupTemplate,"hSetupTemplate");
   end record;
   function new_PRINTDLG(
      This : Ref := null) return Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_PRINTDLG);
end MSSyst.Windows.Forms.NativeMethods.PRINTDLG;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.NativeMethods.PRINTDLG,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.NativeMethods/PRINTDLG");
