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
package MSSyst.Windows.Forms.NativeMethods.tagEXCEPINFO is
   type Typ is new MSSyst.Object.Typ   with record
      wCode : MSIL_Types.int16;
      pragma Import(MSIL,wCode,"wCode");
      wReserved : MSIL_Types.int16;
      pragma Import(MSIL,wReserved,"wReserved");
      bstrSource : access MSSyst.String.Typ'Class;
      pragma Import(MSIL,bstrSource,"bstrSource");
      bstrDescription : access MSSyst.String.Typ'Class;
      pragma Import(MSIL,bstrDescription,"bstrDescription");
      bstrHelpFile : access MSSyst.String.Typ'Class;
      pragma Import(MSIL,bstrHelpFile,"bstrHelpFile");
      dwHelpContext : Integer;
      pragma Import(MSIL,dwHelpContext,"dwHelpContext");
      pvReserved : MSIL_Types.native_int;
      pragma Import(MSIL,pvReserved,"pvReserved");
      pfnDeferredFillIn : MSIL_Types.native_int;
      pragma Import(MSIL,pfnDeferredFillIn,"pfnDeferredFillIn");
      scode : Integer;
      pragma Import(MSIL,scode,"scode");
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_tagEXCEPINFO(
      This : Ref := null) return Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_tagEXCEPINFO);
end MSSyst.Windows.Forms.NativeMethods.tagEXCEPINFO;
pragma Import(MSIL,MSSyst.Windows.Forms.NativeMethods.tagEXCEPINFO,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.NativeMethods/tagEXCEPINFO");
