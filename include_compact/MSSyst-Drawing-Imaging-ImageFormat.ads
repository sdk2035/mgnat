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
with type MSSyst.Guid.Valuetype is tagged;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Drawing.Imaging.ImageFormat is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   function new_ImageFormat(
      This : Ref := null;
      guid : MSSyst.Guid.Valuetype) return Ref;
   function Equals(
      This : access Typ;
      o : MSSyst.Object.Ref) return Standard.Boolean;
   function get_Bmp return MSSyst.Drawing.Imaging.ImageFormat.Ref;
   function get_Emf return MSSyst.Drawing.Imaging.ImageFormat.Ref;
   function get_Exif return MSSyst.Drawing.Imaging.ImageFormat.Ref;
   function get_Gif return MSSyst.Drawing.Imaging.ImageFormat.Ref;
   function get_Guid(
      This : access Typ) return MSSyst.Guid.Valuetype;
   function get_Icon return MSSyst.Drawing.Imaging.ImageFormat.Ref;
   function get_Jpeg return MSSyst.Drawing.Imaging.ImageFormat.Ref;
   function get_MemoryBmp return MSSyst.Drawing.Imaging.ImageFormat.Ref;
   function get_Png return MSSyst.Drawing.Imaging.ImageFormat.Ref;
   function get_Tiff return MSSyst.Drawing.Imaging.ImageFormat.Ref;
   function get_Wmf return MSSyst.Drawing.Imaging.ImageFormat.Ref;
   function GetHashCode(
      This : access Typ) return Integer;
   function ToString(
      This : access Typ) return MSSyst.String.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ImageFormat);
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,get_Bmp,"get_Bmp");
   pragma Import(MSIL,get_Emf,"get_Emf");
   pragma Import(MSIL,get_Exif,"get_Exif");
   pragma Import(MSIL,get_Gif,"get_Gif");
   pragma Import(MSIL,get_Guid,"get_Guid");
   pragma Import(MSIL,get_Icon,"get_Icon");
   pragma Import(MSIL,get_Jpeg,"get_Jpeg");
   pragma Import(MSIL,get_MemoryBmp,"get_MemoryBmp");
   pragma Import(MSIL,get_Png,"get_Png");
   pragma Import(MSIL,get_Tiff,"get_Tiff");
   pragma Import(MSIL,get_Wmf,"get_Wmf");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Drawing.Imaging.ImageFormat;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Drawing.Imaging.ImageFormat,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Imaging.ImageFormat");
