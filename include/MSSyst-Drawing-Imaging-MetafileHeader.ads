-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Drawing.Imaging.MetaHeader;
limited with MSSyst.Drawing.Imaging.MetafileType;
limited with MSSyst.Drawing.Rectangle;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Drawing.Imaging.MetafileHeader is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function get_Bounds(
      This : access Typ) return MSSyst.Drawing.Rectangle.Valuetype;
   function get_DpiX(
      This : access Typ) return Float;
   function get_DpiY(
      This : access Typ) return Float;
   function get_EmfPlusHeaderSize(
      This : access Typ) return Integer;
   function get_LogicalDpiX(
      This : access Typ) return Integer;
   function get_LogicalDpiY(
      This : access Typ) return Integer;
   function get_MetafileSize(
      This : access Typ) return Integer;
   function get_Type(
      This : access Typ) return MSSyst.Drawing.Imaging.MetafileType.Valuetype;
   function get_Version(
      This : access Typ) return Integer;
   function get_WmfHeader(
      This : access Typ) return access MSSyst.Drawing.Imaging.MetaHeader.Typ'Class;
   function IsDisplay(
      This : access Typ) return Standard.Boolean;
   function IsEmf(
      This : access Typ) return Standard.Boolean;
   function IsEmfOrEmfPlus(
      This : access Typ) return Standard.Boolean;
   function IsEmfPlus(
      This : access Typ) return Standard.Boolean;
   function IsEmfPlusDual(
      This : access Typ) return Standard.Boolean;
   function IsEmfPlusOnly(
      This : access Typ) return Standard.Boolean;
   function IsWmf(
      This : access Typ) return Standard.Boolean;
   function IsWmfPlaceable(
      This : access Typ) return Standard.Boolean;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,get_Bounds,"get_Bounds");
   pragma Import(MSIL,get_DpiX,"get_DpiX");
   pragma Import(MSIL,get_DpiY,"get_DpiY");
   pragma Import(MSIL,get_EmfPlusHeaderSize,"get_EmfPlusHeaderSize");
   pragma Import(MSIL,get_LogicalDpiX,"get_LogicalDpiX");
   pragma Import(MSIL,get_LogicalDpiY,"get_LogicalDpiY");
   pragma Import(MSIL,get_MetafileSize,"get_MetafileSize");
   pragma Import(MSIL,get_Type,"get_Type");
   pragma Import(MSIL,get_Version,"get_Version");
   pragma Import(MSIL,get_WmfHeader,"get_WmfHeader");
   pragma Import(MSIL,IsDisplay,"IsDisplay");
   pragma Import(MSIL,IsEmf,"IsEmf");
   pragma Import(MSIL,IsEmfOrEmfPlus,"IsEmfOrEmfPlus");
   pragma Import(MSIL,IsEmfPlus,"IsEmfPlus");
   pragma Import(MSIL,IsEmfPlusDual,"IsEmfPlusDual");
   pragma Import(MSIL,IsEmfPlusOnly,"IsEmfPlusOnly");
   pragma Import(MSIL,IsWmf,"IsWmf");
   pragma Import(MSIL,IsWmfPlaceable,"IsWmfPlaceable");
end MSSyst.Drawing.Imaging.MetafileHeader;
pragma Import(MSIL,MSSyst.Drawing.Imaging.MetafileHeader,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Imaging.MetafileHeader");
