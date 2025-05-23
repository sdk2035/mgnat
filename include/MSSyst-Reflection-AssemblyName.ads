-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Configuration.Assemblies.AssemblyHashAlgorithm;
limited with MSSyst.Configuration.Assemblies.AssemblyVersionCompatibility;
limited with MSSyst.Globalization.CultureInfo;
with MSSyst.ICloneable;
limited with MSSyst.Reflection.AssemblyNameFlags;
limited with MSSyst.Reflection.ProcessorArchitecture;
limited with MSSyst.Reflection.StrongNameKeyPair;
with MSSyst.Runtime.InteropServices.uAssemblyName;
with MSSyst.Runtime.Serialization.IDeserializationCallback;
with MSSyst.Runtime.Serialization.ISerializable;
limited with MSSyst.Runtime.Serialization.SerializationInfo;
limited with MSSyst.Runtime.Serialization.StreamingContext;
limited with MSSyst.String;
limited with MSSyst.Type_k;
limited with MSSyst.Version;
package MSSyst.Reflection.AssemblyName is
   type Typ is new MSSyst.Object.Typ
         and MSSyst.Runtime.InteropServices.uAssemblyName.Typ
         and MSSyst.ICloneable.Typ
         and MSSyst.Runtime.Serialization.ISerializable.Typ
         and MSSyst.Runtime.Serialization.IDeserializationCallback.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_AssemblyName(
      This : Ref := null) return Ref;
   function new_AssemblyName(
      This : Ref := null;
      assemblyName : access MSSyst.String.Typ'Class) return Ref;
   function Clone(
      This : access Typ) return access MSSyst.Object.Typ'Class;
   function get_CodeBase(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_CultureInfo(
      This : access Typ) return access MSSyst.Globalization.CultureInfo.Typ'Class;
   function get_EscapedCodeBase(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Flags(
      This : access Typ) return MSSyst.Reflection.AssemblyNameFlags.Valuetype;
   function get_FullName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_HashAlgorithm(
      This : access Typ) return MSSyst.Configuration.Assemblies.AssemblyHashAlgorithm.Valuetype;
   function get_KeyPair(
      This : access Typ) return access MSSyst.Reflection.StrongNameKeyPair.Typ'Class;
   function get_Name(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_ProcessorArchitecture(
      This : access Typ) return MSSyst.Reflection.ProcessorArchitecture.Valuetype;
   function get_Version(
      This : access Typ) return access MSSyst.Version.Typ'Class;
   function get_VersionCompatibility(
      This : access Typ) return MSSyst.Configuration.Assemblies.AssemblyVersionCompatibility.Valuetype;
   function GetAssemblyName(
      assemblyFile : access MSSyst.String.Typ'Class) return access MSSyst.Reflection.AssemblyName.Typ'Class;
   procedure GetObjectData(
      This : access Typ;
      info : access MSSyst.Runtime.Serialization.SerializationInfo.Typ'Class;
      context : MSSyst.Runtime.Serialization.StreamingContext.Valuetype);
   function GetPublicKey(
      This : access Typ) return MSIL_Types.unsigned_int8_Array;
   function GetPublicKeyToken(
      This : access Typ) return MSIL_Types.unsigned_int8_Array;
   procedure OnDeserialization(
      This : access Typ;
      sender : access MSSyst.Object.Typ'Class);
   function ReferenceMatchesDefinition(
      reference : access MSSyst.Reflection.AssemblyName.Typ'Class;
      definition : access MSSyst.Reflection.AssemblyName.Typ'Class) return Standard.Boolean;
   procedure set_CodeBase(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_CultureInfo(
      This : access Typ;
      value : access MSSyst.Globalization.CultureInfo.Typ'Class);
   procedure set_Flags(
      This : access Typ;
      value : MSSyst.Reflection.AssemblyNameFlags.Valuetype);
   procedure set_HashAlgorithm(
      This : access Typ;
      value : MSSyst.Configuration.Assemblies.AssemblyHashAlgorithm.Valuetype);
   procedure set_KeyPair(
      This : access Typ;
      value : access MSSyst.Reflection.StrongNameKeyPair.Typ'Class);
   procedure set_Name(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_ProcessorArchitecture(
      This : access Typ;
      value : MSSyst.Reflection.ProcessorArchitecture.Valuetype);
   procedure set_Version(
      This : access Typ;
      value : access MSSyst.Version.Typ'Class);
   procedure set_VersionCompatibility(
      This : access Typ;
      value : MSSyst.Configuration.Assemblies.AssemblyVersionCompatibility.Valuetype);
   procedure SetPublicKey(
      This : access Typ;
      publicKey : MSIL_Types.unsigned_int8_Arr);
   procedure SetPublicKeyToken(
      This : access Typ;
      publicKeyToken : MSIL_Types.unsigned_int8_Arr);
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_AssemblyName);
   pragma Import(MSIL,Clone,"Clone");
   pragma Import(MSIL,get_CodeBase,"get_CodeBase");
   pragma Import(MSIL,get_CultureInfo,"get_CultureInfo");
   pragma Import(MSIL,get_EscapedCodeBase,"get_EscapedCodeBase");
   pragma Import(MSIL,get_Flags,"get_Flags");
   pragma Import(MSIL,get_FullName,"get_FullName");
   pragma Import(MSIL,get_HashAlgorithm,"get_HashAlgorithm");
   pragma Import(MSIL,get_KeyPair,"get_KeyPair");
   pragma Import(MSIL,get_Name,"get_Name");
   pragma Import(MSIL,get_ProcessorArchitecture,"get_ProcessorArchitecture");
   pragma Import(MSIL,get_Version,"get_Version");
   pragma Import(MSIL,get_VersionCompatibility,"get_VersionCompatibility");
   pragma Import(MSIL,GetAssemblyName,"GetAssemblyName");
   pragma Import(MSIL,GetObjectData,"GetObjectData");
   pragma Import(MSIL,GetPublicKey,"GetPublicKey");
   pragma Import(MSIL,GetPublicKeyToken,"GetPublicKeyToken");
   pragma Import(MSIL,OnDeserialization,"OnDeserialization");
   pragma Import(MSIL,ReferenceMatchesDefinition,"ReferenceMatchesDefinition");
   pragma Import(MSIL,set_CodeBase,"set_CodeBase");
   pragma Import(MSIL,set_CultureInfo,"set_CultureInfo");
   pragma Import(MSIL,set_Flags,"set_Flags");
   pragma Import(MSIL,set_HashAlgorithm,"set_HashAlgorithm");
   pragma Import(MSIL,set_KeyPair,"set_KeyPair");
   pragma Import(MSIL,set_Name,"set_Name");
   pragma Import(MSIL,set_ProcessorArchitecture,"set_ProcessorArchitecture");
   pragma Import(MSIL,set_Version,"set_Version");
   pragma Import(MSIL,set_VersionCompatibility,"set_VersionCompatibility");
   pragma Import(MSIL,SetPublicKey,"SetPublicKey");
   pragma Import(MSIL,SetPublicKeyToken,"SetPublicKeyToken");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Reflection.AssemblyName;
pragma Import(MSIL,MSSyst.Reflection.AssemblyName,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Reflection.AssemblyName");
