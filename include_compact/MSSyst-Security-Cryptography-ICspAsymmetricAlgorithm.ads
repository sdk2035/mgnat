-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.Security.Cryptography.CspKeyContainerInfo.Ref is access;
package MSSyst.Security.Cryptography.ICspAsymmetricAlgorithm is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is interface;
   function ExportCspBlob(
      This : access Typ;
      includePrivateParameters : Standard.Boolean) return MSIL_Types.unsigned_int8_Array is abstract;
   function get_CspKeyContainerInfo(
      This : access Typ) return MSSyst.Security.Cryptography.CspKeyContainerInfo.Ref is abstract;
   procedure ImportCspBlob(
      This : access Typ;
      rawData : MSIL_Types.unsigned_int8_Arr) is abstract;
private
   pragma Import(MSIL,ExportCspBlob,"ExportCspBlob");
   pragma Import(MSIL,get_CspKeyContainerInfo,"get_CspKeyContainerInfo");
   pragma Import(MSIL,ImportCspBlob,"ImportCspBlob");
end MSSyst.Security.Cryptography.ICspAsymmetricAlgorithm;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Security.Cryptography.ICspAsymmetricAlgorithm,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Security.Cryptography.ICspAsymmetricAlgorithm");
