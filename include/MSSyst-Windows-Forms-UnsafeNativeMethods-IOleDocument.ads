-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Windows.Forms.UnsafeNativeMethods;
limited with MSSyst.Windows.Forms.UnsafeNativeMethods.IOleDocumentView;
limited with MSSyst.Windows.Forms.UnsafeNativeMethods.IOleInPlaceSite;
limited with MSSyst.Windows.Forms.UnsafeNativeMethods.IStream;
package MSSyst.Windows.Forms.UnsafeNativeMethods.IOleDocument is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function CreateView(
      This : access Typ;
      pIPSite : access MSSyst.Windows.Forms.UnsafeNativeMethods.IOleInPlaceSite.Typ'Class;
      pstm : access MSSyst.Windows.Forms.UnsafeNativeMethods.IStream.Typ'Class;
      dwReserved : Integer;
      ppView : access MSSyst.Windows.Forms.UnsafeNativeMethods.IOleDocumentView.Ref) return Integer is abstract;
   function EnumViews(
      This : access Typ;
      ppEnum : access MSSyst.Object.Ref;
      ppView : access MSSyst.Windows.Forms.UnsafeNativeMethods.IOleDocumentView.Ref) return Integer is abstract;
   function GetDocMiscStatus(
      This : access Typ;
      pdwStatus : MSIL_Types.Int32_addrof) return Integer is abstract;
private
   pragma Import(MSIL,CreateView,"CreateView");
   pragma Import(MSIL,EnumViews,"EnumViews");
   pragma Import(MSIL,GetDocMiscStatus,"GetDocMiscStatus");
end MSSyst.Windows.Forms.UnsafeNativeMethods.IOleDocument;
pragma Import(MSIL,MSSyst.Windows.Forms.UnsafeNativeMethods.IOleDocument,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.UnsafeNativeMethods/IOleDocument");
