-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.DateTime;
with MSSyst.Runtime.Serialization.IDeserializationCallback;
with MSSyst.Runtime.Serialization.ISerializable;
limited with MSSyst.Security.Cryptography.AsymmetricAlgorithm;
limited with MSSyst.Security.Cryptography.Oid;
limited with MSSyst.Security.Cryptography.X509Certificates.PublicKey;
limited with MSSyst.Security.Cryptography.X509Certificates.X500DistinguishedName;
with MSSyst.Security.Cryptography.X509Certificates.X509Certificate;
limited with MSSyst.Security.Cryptography.X509Certificates.X509ContentType;
limited with MSSyst.Security.Cryptography.X509Certificates.X509ExtensionCollection;
limited with MSSyst.Security.Cryptography.X509Certificates.X509KeyStorageFlags;
limited with MSSyst.Security.Cryptography.X509Certificates.X509NameType;
limited with MSSyst.Security.SecureString;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Security.Cryptography.X509Certificates.X509Certificate2 is
   type Typ is new MSSyst.Security.Cryptography.X509Certificates.X509Certificate.Typ
         and MSSyst.Runtime.Serialization.IDeserializationCallback.Typ
         and MSSyst.Runtime.Serialization.ISerializable.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_X509Certificate2(
      This : Ref := null) return Ref;
   function new_X509Certificate2(
      This : Ref := null;
      rawData : MSIL_Types.unsigned_int8_Arr) return Ref;
   function new_X509Certificate2(
      This : Ref := null;
      rawData : MSIL_Types.unsigned_int8_Arr;
      password : access MSSyst.String.Typ'Class) return Ref;
   function new_X509Certificate2(
      This : Ref := null;
      rawData : MSIL_Types.unsigned_int8_Arr;
      password : access MSSyst.Security.SecureString.Typ'Class) return Ref;
   function new_X509Certificate2(
      This : Ref := null;
      rawData : MSIL_Types.unsigned_int8_Arr;
      password : access MSSyst.String.Typ'Class;
      keyStorageFlags : MSSyst.Security.Cryptography.X509Certificates.X509KeyStorageFlags.Valuetype) return Ref;
   function new_X509Certificate2(
      This : Ref := null;
      rawData : MSIL_Types.unsigned_int8_Arr;
      password : access MSSyst.Security.SecureString.Typ'Class;
      keyStorageFlags : MSSyst.Security.Cryptography.X509Certificates.X509KeyStorageFlags.Valuetype) return Ref;
   function new_X509Certificate2(
      This : Ref := null;
      fileName : access MSSyst.String.Typ'Class) return Ref;
   function new_X509Certificate2(
      This : Ref := null;
      fileName : access MSSyst.String.Typ'Class;
      password : access MSSyst.String.Typ'Class) return Ref;
   function new_X509Certificate2(
      This : Ref := null;
      fileName : access MSSyst.String.Typ'Class;
      password : access MSSyst.Security.SecureString.Typ'Class) return Ref;
   function new_X509Certificate2(
      This : Ref := null;
      fileName : access MSSyst.String.Typ'Class;
      password : access MSSyst.String.Typ'Class;
      keyStorageFlags : MSSyst.Security.Cryptography.X509Certificates.X509KeyStorageFlags.Valuetype) return Ref;
   function new_X509Certificate2(
      This : Ref := null;
      fileName : access MSSyst.String.Typ'Class;
      password : access MSSyst.Security.SecureString.Typ'Class;
      keyStorageFlags : MSSyst.Security.Cryptography.X509Certificates.X509KeyStorageFlags.Valuetype) return Ref;
   function new_X509Certificate2(
      This : Ref := null;
      handle : MSIL_Types.native_int) return Ref;
   function new_X509Certificate2(
      This : Ref := null;
      certificate : access MSSyst.Security.Cryptography.X509Certificates.X509Certificate.Typ'Class) return Ref;
   function get_Archived(
      This : access Typ) return Standard.Boolean;
   function get_Extensions(
      This : access Typ) return access MSSyst.Security.Cryptography.X509Certificates.X509ExtensionCollection.Typ'Class;
   function get_FriendlyName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_HasPrivateKey(
      This : access Typ) return Standard.Boolean;
   function get_IssuerName(
      This : access Typ) return access MSSyst.Security.Cryptography.X509Certificates.X500DistinguishedName.Typ'Class;
   function get_NotAfter(
      This : access Typ) return MSSyst.DateTime.Valuetype;
   function get_NotBefore(
      This : access Typ) return MSSyst.DateTime.Valuetype;
   function get_PrivateKey(
      This : access Typ) return access MSSyst.Security.Cryptography.AsymmetricAlgorithm.Typ'Class;
   function get_PublicKey(
      This : access Typ) return access MSSyst.Security.Cryptography.X509Certificates.PublicKey.Typ'Class;
   function get_RawData(
      This : access Typ) return MSIL_Types.unsigned_int8_Array;
   function get_SerialNumber(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_SignatureAlgorithm(
      This : access Typ) return access MSSyst.Security.Cryptography.Oid.Typ'Class;
   function get_SubjectName(
      This : access Typ) return access MSSyst.Security.Cryptography.X509Certificates.X500DistinguishedName.Typ'Class;
   function get_Thumbprint(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Version(
      This : access Typ) return Integer;
   function GetCertContentType(
      fileName : access MSSyst.String.Typ'Class) return MSSyst.Security.Cryptography.X509Certificates.X509ContentType.Valuetype;
   function GetCertContentType(
      rawData : MSIL_Types.unsigned_int8_Arr) return MSSyst.Security.Cryptography.X509Certificates.X509ContentType.Valuetype;
   function GetNameInfo(
      This : access Typ;
      nameType : MSSyst.Security.Cryptography.X509Certificates.X509NameType.Valuetype;
      forIssuer : Standard.Boolean) return access MSSyst.String.Typ'Class;
   procedure Import(
      This : access Typ;
      rawData : MSIL_Types.unsigned_int8_Arr;
      password : access MSSyst.Security.SecureString.Typ'Class;
      keyStorageFlags : MSSyst.Security.Cryptography.X509Certificates.X509KeyStorageFlags.Valuetype);
   procedure Import(
      This : access Typ;
      rawData : MSIL_Types.unsigned_int8_Arr;
      password : access MSSyst.String.Typ'Class;
      keyStorageFlags : MSSyst.Security.Cryptography.X509Certificates.X509KeyStorageFlags.Valuetype);
   procedure Import(
      This : access Typ;
      rawData : MSIL_Types.unsigned_int8_Arr);
   procedure Import(
      This : access Typ;
      fileName : access MSSyst.String.Typ'Class;
      password : access MSSyst.Security.SecureString.Typ'Class;
      keyStorageFlags : MSSyst.Security.Cryptography.X509Certificates.X509KeyStorageFlags.Valuetype);
   procedure Import(
      This : access Typ;
      fileName : access MSSyst.String.Typ'Class;
      password : access MSSyst.String.Typ'Class;
      keyStorageFlags : MSSyst.Security.Cryptography.X509Certificates.X509KeyStorageFlags.Valuetype);
   procedure Import(
      This : access Typ;
      fileName : access MSSyst.String.Typ'Class);
   procedure Reset(
      This : access Typ);
   procedure set_Archived(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_FriendlyName(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_PrivateKey(
      This : access Typ;
      value : access MSSyst.Security.Cryptography.AsymmetricAlgorithm.Typ'Class);
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function ToString(
      This : access Typ;
      verbose : Standard.Boolean) return access MSSyst.String.Typ'Class;
   function Verify(
      This : access Typ) return Standard.Boolean;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_X509Certificate2);
   pragma Import(MSIL,get_Archived,"get_Archived");
   pragma Import(MSIL,get_Extensions,"get_Extensions");
   pragma Import(MSIL,get_FriendlyName,"get_FriendlyName");
   pragma Import(MSIL,get_HasPrivateKey,"get_HasPrivateKey");
   pragma Import(MSIL,get_IssuerName,"get_IssuerName");
   pragma Import(MSIL,get_NotAfter,"get_NotAfter");
   pragma Import(MSIL,get_NotBefore,"get_NotBefore");
   pragma Import(MSIL,get_PrivateKey,"get_PrivateKey");
   pragma Import(MSIL,get_PublicKey,"get_PublicKey");
   pragma Import(MSIL,get_RawData,"get_RawData");
   pragma Import(MSIL,get_SerialNumber,"get_SerialNumber");
   pragma Import(MSIL,get_SignatureAlgorithm,"get_SignatureAlgorithm");
   pragma Import(MSIL,get_SubjectName,"get_SubjectName");
   pragma Import(MSIL,get_Thumbprint,"get_Thumbprint");
   pragma Import(MSIL,get_Version,"get_Version");
   pragma Import(MSIL,GetCertContentType,"GetCertContentType");
   pragma Import(MSIL,GetNameInfo,"GetNameInfo");
   pragma Import(MSIL,Import,"Import");
   pragma Import(MSIL,Reset,"Reset");
   pragma Import(MSIL,set_Archived,"set_Archived");
   pragma Import(MSIL,set_FriendlyName,"set_FriendlyName");
   pragma Import(MSIL,set_PrivateKey,"set_PrivateKey");
   pragma Import(MSIL,ToString,"ToString");
   pragma Import(MSIL,Verify,"Verify");
end MSSyst.Security.Cryptography.X509Certificates.X509Certificate2;
pragma Import(MSIL,MSSyst.Security.Cryptography.X509Certificates.X509Certificate2,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Security.Cryptography.X509Certificates.X509Certificate2");
