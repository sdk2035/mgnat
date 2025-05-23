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
package MSSyst.Globalization.RegionInfo is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_RegionInfo(
      This : Ref := null;
      name : access MSSyst.String.Typ'Class) return Ref;
   function new_RegionInfo(
      This : Ref := null;
      culture : Integer) return Ref;
   function Equals(
      This : access Typ;
      value : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function get_CurrencyEnglishName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_CurrencyNativeName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_CurrencySymbol(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_CurrentRegion return access MSSyst.Globalization.RegionInfo.Typ'Class;
   function get_DisplayName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_EnglishName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_GeoId(
      This : access Typ) return Integer;
   function get_IsMetric(
      This : access Typ) return Standard.Boolean;
   function get_ISOCurrencySymbol(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Name(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_NativeName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_ThreeLetterISORegionName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_ThreeLetterWindowsRegionName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_TwoLetterISORegionName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function GetHashCode(
      This : access Typ) return Integer;
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_RegionInfo);
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,get_CurrencyEnglishName,"get_CurrencyEnglishName");
   pragma Import(MSIL,get_CurrencyNativeName,"get_CurrencyNativeName");
   pragma Import(MSIL,get_CurrencySymbol,"get_CurrencySymbol");
   pragma Import(MSIL,get_CurrentRegion,"get_CurrentRegion");
   pragma Import(MSIL,get_DisplayName,"get_DisplayName");
   pragma Import(MSIL,get_EnglishName,"get_EnglishName");
   pragma Import(MSIL,get_GeoId,"get_GeoId");
   pragma Import(MSIL,get_IsMetric,"get_IsMetric");
   pragma Import(MSIL,get_ISOCurrencySymbol,"get_ISOCurrencySymbol");
   pragma Import(MSIL,get_Name,"get_Name");
   pragma Import(MSIL,get_NativeName,"get_NativeName");
   pragma Import(MSIL,get_ThreeLetterISORegionName,"get_ThreeLetterISORegionName");
   pragma Import(MSIL,get_ThreeLetterWindowsRegionName,"get_ThreeLetterWindowsRegionName");
   pragma Import(MSIL,get_TwoLetterISORegionName,"get_TwoLetterISORegionName");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Globalization.RegionInfo;
pragma Import(MSIL,MSSyst.Globalization.RegionInfo,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Globalization.RegionInfo");
