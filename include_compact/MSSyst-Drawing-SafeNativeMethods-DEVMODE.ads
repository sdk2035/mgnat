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
with type MSSyst.String.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.Drawing.SafeNativeMethods.DEVMODE is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      dmDeviceName : MSSyst.String.Ref;
      pragma Import(MSIL,dmDeviceName,"dmDeviceName");
      dmSpecVersion : MSIL_Types.int16;
      pragma Import(MSIL,dmSpecVersion,"dmSpecVersion");
      dmDriverVersion : MSIL_Types.int16;
      pragma Import(MSIL,dmDriverVersion,"dmDriverVersion");
      dmSize : MSIL_Types.int16;
      pragma Import(MSIL,dmSize,"dmSize");
      dmDriverExtra : MSIL_Types.int16;
      pragma Import(MSIL,dmDriverExtra,"dmDriverExtra");
      dmFields : Integer;
      pragma Import(MSIL,dmFields,"dmFields");
      dmOrientation : MSIL_Types.int16;
      pragma Import(MSIL,dmOrientation,"dmOrientation");
      dmPaperSize : MSIL_Types.int16;
      pragma Import(MSIL,dmPaperSize,"dmPaperSize");
      dmPaperLength : MSIL_Types.int16;
      pragma Import(MSIL,dmPaperLength,"dmPaperLength");
      dmPaperWidth : MSIL_Types.int16;
      pragma Import(MSIL,dmPaperWidth,"dmPaperWidth");
      dmScale : MSIL_Types.int16;
      pragma Import(MSIL,dmScale,"dmScale");
      dmCopies : MSIL_Types.int16;
      pragma Import(MSIL,dmCopies,"dmCopies");
      dmDefaultSource : MSIL_Types.int16;
      pragma Import(MSIL,dmDefaultSource,"dmDefaultSource");
      dmPrintQuality : MSIL_Types.int16;
      pragma Import(MSIL,dmPrintQuality,"dmPrintQuality");
      dmColor : MSIL_Types.int16;
      pragma Import(MSIL,dmColor,"dmColor");
      dmDuplex : MSIL_Types.int16;
      pragma Import(MSIL,dmDuplex,"dmDuplex");
      dmYResolution : MSIL_Types.int16;
      pragma Import(MSIL,dmYResolution,"dmYResolution");
      dmTTOption : MSIL_Types.int16;
      pragma Import(MSIL,dmTTOption,"dmTTOption");
      dmCollate : MSIL_Types.int16;
      pragma Import(MSIL,dmCollate,"dmCollate");
      dmFormName : MSSyst.String.Ref;
      pragma Import(MSIL,dmFormName,"dmFormName");
      dmLogPixels : MSIL_Types.int16;
      pragma Import(MSIL,dmLogPixels,"dmLogPixels");
      dmBitsPerPel : Integer;
      pragma Import(MSIL,dmBitsPerPel,"dmBitsPerPel");
      dmPelsWidth : Integer;
      pragma Import(MSIL,dmPelsWidth,"dmPelsWidth");
      dmPelsHeight : Integer;
      pragma Import(MSIL,dmPelsHeight,"dmPelsHeight");
      dmDisplayFlags : Integer;
      pragma Import(MSIL,dmDisplayFlags,"dmDisplayFlags");
      dmDisplayFrequency : Integer;
      pragma Import(MSIL,dmDisplayFrequency,"dmDisplayFrequency");
      dmICMMethod : Integer;
      pragma Import(MSIL,dmICMMethod,"dmICMMethod");
      dmICMIntent : Integer;
      pragma Import(MSIL,dmICMIntent,"dmICMIntent");
      dmMediaType : Integer;
      pragma Import(MSIL,dmMediaType,"dmMediaType");
      dmDitherType : Integer;
      pragma Import(MSIL,dmDitherType,"dmDitherType");
      dmICCManufacturer : Integer;
      pragma Import(MSIL,dmICCManufacturer,"dmICCManufacturer");
      dmICCModel : Integer;
      pragma Import(MSIL,dmICCModel,"dmICCModel");
      dmPanningWidth : Integer;
      pragma Import(MSIL,dmPanningWidth,"dmPanningWidth");
      dmPanningHeight : Integer;
      pragma Import(MSIL,dmPanningHeight,"dmPanningHeight");
   end record;
   function new_DEVMODE(
      This : Ref := null) return Ref;
   function ToString(
      This : access Typ) return MSSyst.String.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_DEVMODE);
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Drawing.SafeNativeMethods.DEVMODE;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Drawing.SafeNativeMethods.DEVMODE,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.SafeNativeMethods/DEVMODE");
