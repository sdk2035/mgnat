-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.Object.Ref is access;
with type MSSyst.Type_k.Ref is access;
with MSSyst.TypeCode;
with type MSSyst.String.Ref is access;
with type MSSyst.IFormatProvider.Ref is access;
package MSSyst.Environment_Specialfolder is
   type ValueType is (
      Desktop,
      Programs,
      MyDocuments,
      Favorites,
      Startup,
      Recent,
      SendTo,
      StartMenu,
      MyMusic,
      DesktopDirectory,
      MyComputer,
      Templates,
      ApplicationData,
      LocalApplicationData,
      InternetCache,
      Cookies,
      History,
      CommonApplicationData,
      System,
      ProgramFiles,
      MyPictures,
      CommonProgramFiles);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      Desktop =>  0,
      Programs =>  2,
      MyDocuments =>  5,
      Favorites =>  6,
      Startup =>  7,
      Recent =>  8,
      SendTo =>  9,
      StartMenu =>  11,
      MyMusic =>  13,
      DesktopDirectory =>  16,
      MyComputer =>  17,
      Templates =>  21,
      ApplicationData =>  26,
      LocalApplicationData =>  28,
      InternetCache =>  32,
      Cookies =>  33,
      History =>  34,
      CommonApplicationData =>  35,
      System =>  37,
      ProgramFiles =>  38,
      MyPictures =>  39,
      CommonProgramFiles =>  43);
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   Personal : constant Valuetype := MyDocuments;
   function CompareTo(
      This : Valuetype;
      target : MSSyst.Object.Ref) return Integer;
   function Equals(
      This : Valuetype;
      obj : MSSyst.Object.Ref) return Standard.Boolean;
   function GetHashCode(
      This : Valuetype) return Integer;
   function GetType(
      This : Valuetype) return MSSyst.Type_k.Ref;
   function GetTypeCode(
      This : Valuetype) return MSSyst.TypeCode.Valuetype;
   function ToString(
      This : Valuetype;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype;
      format : MSSyst.String.Ref;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype;
      format : MSSyst.String.Ref) return MSSyst.String.Ref;
private
   pragma Import(MSIL,CompareTo,"CompareTo");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetType,"GetType");
   pragma Import(MSIL,GetTypeCode,"GetTypeCode");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Environment_Specialfolder;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Environment_Specialfolder,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Environment/SpecialFolder");
