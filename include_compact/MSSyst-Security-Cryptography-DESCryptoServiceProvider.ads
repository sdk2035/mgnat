-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Security.Cryptography.DES;
with type MSSyst.Security.Cryptography.ICryptoTransform.Ref is access;
with type MSSyst.Object.Ref is access;
with type MSSyst.Security.Cryptography.KeySizes.Ref_array is access;
with MSSyst.Security.Cryptography.CipherMode;
with MSSyst.Security.Cryptography.PaddingMode;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Security.Cryptography.DESCryptoServiceProvider is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Security.Cryptography.DES.Typ   with record
      null;
   end record;
   function new_DESCryptoServiceProvider(
      This : Ref := null) return Ref;
   function CreateDecryptor(
      This : access Typ;
      rgbKey : MSIL_Types.unsigned_int8_Arr;
      rgbIV : MSIL_Types.unsigned_int8_Arr) return MSSyst.Security.Cryptography.ICryptoTransform.Ref;
   function CreateEncryptor(
      This : access Typ;
      rgbKey : MSIL_Types.unsigned_int8_Arr;
      rgbIV : MSIL_Types.unsigned_int8_Arr) return MSSyst.Security.Cryptography.ICryptoTransform.Ref;
   procedure GenerateIV(
      This : access Typ);
   procedure GenerateKey(
      This : access Typ);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_DESCryptoServiceProvider);
   pragma Import(MSIL,CreateDecryptor,"CreateDecryptor");
   pragma Import(MSIL,CreateEncryptor,"CreateEncryptor");
   pragma Import(MSIL,GenerateIV,"GenerateIV");
   pragma Import(MSIL,GenerateKey,"GenerateKey");
end MSSyst.Security.Cryptography.DESCryptoServiceProvider;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Security.Cryptography.DESCryptoServiceProvider,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Security.Cryptography.DESCryptoServiceProvider");
