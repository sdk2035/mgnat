-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.IDisposable;
limited with MSSyst.Security.Cryptography.CipherMode;
with MSSyst.Security.Cryptography.DES;
limited with MSSyst.Security.Cryptography.ICryptoTransform;
limited with MSSyst.Security.Cryptography.KeySizes;
limited with MSSyst.Security.Cryptography.PaddingMode;
with MSSyst.Security.Cryptography.SymmetricAlgorithm;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Security.Cryptography.DESCryptoServiceProvider is
   type Typ is new MSSyst.Security.Cryptography.DES.Typ
         and MSSyst.IDisposable.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_DESCryptoServiceProvider(
      This : Ref := null) return Ref;
   function CreateDecryptor(
      This : access Typ;
      rgbKey : MSIL_Types.unsigned_int8_Arr;
      rgbIV : MSIL_Types.unsigned_int8_Arr) return access MSSyst.Security.Cryptography.ICryptoTransform.Typ'Class;
   function CreateEncryptor(
      This : access Typ;
      rgbKey : MSIL_Types.unsigned_int8_Arr;
      rgbIV : MSIL_Types.unsigned_int8_Arr) return access MSSyst.Security.Cryptography.ICryptoTransform.Typ'Class;
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
pragma Import(MSIL,MSSyst.Security.Cryptography.DESCryptoServiceProvider,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Security.Cryptography.DESCryptoServiceProvider");
