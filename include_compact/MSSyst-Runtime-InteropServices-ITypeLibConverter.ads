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
with type MSSyst.Reflection.Assembly.Ref is access;
with type MSSyst.String.Ref is access;
with MSSyst.Runtime.InteropServices.TypeLibExporterFlags;
with type MSSyst.Runtime.InteropServices.ITypeLibExporterNotifySink.Ref is access;
with type MSSyst.Reflection.Emit.AssemblyBuilder.Ref is access;
with type MSSyst.Runtime.InteropServices.ITypeLibImporterNotifySink.Ref is access;
with type MSSyst.Reflection.StrongNameKeyPair.Ref is access;
with MSSyst.Runtime.InteropServices.TypeLibImporterFlags;
with type MSSyst.Version.Ref is access;
with type MSSyst.Guid.Valuetype is tagged;
with type MSSyst.String.Ref_addrof is access;
package MSSyst.Runtime.InteropServices.ITypeLibConverter is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is interface;
   function ConvertAssemblyToTypeLib(
      This : access Typ;
      assembly : MSSyst.Reflection.Assembly.Ref;
      typeLibName : MSSyst.String.Ref;
      flags : MSSyst.Runtime.InteropServices.TypeLibExporterFlags.Valuetype;
      notifySink : MSSyst.Runtime.InteropServices.ITypeLibExporterNotifySink.Ref) return MSSyst.Object.Ref is abstract;
   function ConvertTypeLibToAssembly(
      This : access Typ;
      typeLib : MSSyst.Object.Ref;
      asmFileName : MSSyst.String.Ref;
      flags : Integer;
      notifySink : MSSyst.Runtime.InteropServices.ITypeLibImporterNotifySink.Ref;
      publicKey : MSIL_Types.unsigned_int8_Arr;
      keyPair : MSSyst.Reflection.StrongNameKeyPair.Ref;
      unsafeInterfaces : Standard.Boolean) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref is abstract;
   function ConvertTypeLibToAssembly(
      This : access Typ;
      typeLib : MSSyst.Object.Ref;
      asmFileName : MSSyst.String.Ref;
      flags : MSSyst.Runtime.InteropServices.TypeLibImporterFlags.Valuetype;
      notifySink : MSSyst.Runtime.InteropServices.ITypeLibImporterNotifySink.Ref;
      publicKey : MSIL_Types.unsigned_int8_Arr;
      keyPair : MSSyst.Reflection.StrongNameKeyPair.Ref;
      asmNamespace : MSSyst.String.Ref;
      asmVersion : MSSyst.Version.Ref) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref is abstract;
   function GetPrimaryInteropAssembly(
      This : access Typ;
      g : MSSyst.Guid.Valuetype;
      major : Integer;
      minor : Integer;
      lcid : Integer;
      asmName : MSSyst.String.Ref_addrof;
      asmCodeBase : MSSyst.String.Ref_addrof) return Standard.Boolean is abstract;
private
   pragma Import(MSIL,ConvertAssemblyToTypeLib,"ConvertAssemblyToTypeLib");
   pragma Import(MSIL,ConvertTypeLibToAssembly,"ConvertTypeLibToAssembly");
   pragma Import(MSIL,GetPrimaryInteropAssembly,"GetPrimaryInteropAssembly");
end MSSyst.Runtime.InteropServices.ITypeLibConverter;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Runtime.InteropServices.ITypeLibConverter,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Runtime.InteropServices.ITypeLibConverter");
