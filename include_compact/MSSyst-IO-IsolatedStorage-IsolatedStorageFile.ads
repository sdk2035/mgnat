-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.IO.IsolatedStorage.IsolatedStorage;
with type MSSyst.String.Ref is access;
with type MSSyst.Runtime.Remoting.ObjRef.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.Object.Ref is access;
with MSSyst.IO.IsolatedStorage.IsolatedStorageScope;
with type MSSyst.String.Ref_array is access;
with type MSSyst.Collections.IEnumerator.Ref is access;
with type MSSyst.Security.Policy.Evidence.Ref is access;
package MSSyst.IO.IsolatedStorage.IsolatedStorageFile is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.IO.IsolatedStorage.IsolatedStorage.Typ   with record
      null;
   end record;
   procedure Close(
      This : access Typ);
   procedure CreateDirectory(
      This : access Typ;
      dir : MSSyst.String.Ref);
   procedure DeleteDirectory(
      This : access Typ;
      dir : MSSyst.String.Ref);
   procedure DeleteFile(
      This : access Typ;
      file : MSSyst.String.Ref);
   procedure Dispose(
      This : access Typ);
   function get_CurrentSize(
      This : access Typ) return MSIL_Types.Unsigned_Long_Long_Integer;
   function get_MaximumSize(
      This : access Typ) return MSIL_Types.Unsigned_Long_Long_Integer;
   function GetDirectoryNames(
      This : access Typ;
      searchPattern : MSSyst.String.Ref) return MSSyst.String.Ref_array;
   function GetEnumerator(
      scope : MSSyst.IO.IsolatedStorage.IsolatedStorageScope.Valuetype) return MSSyst.Collections.IEnumerator.Ref;
   function GetFileNames(
      This : access Typ;
      searchPattern : MSSyst.String.Ref) return MSSyst.String.Ref_array;
   function GetMachineStoreForApplication return MSSyst.IO.IsolatedStorage.IsolatedStorageFile.Ref;
   function GetMachineStoreForAssembly return MSSyst.IO.IsolatedStorage.IsolatedStorageFile.Ref;
   function GetMachineStoreForDomain return MSSyst.IO.IsolatedStorage.IsolatedStorageFile.Ref;
   function GetStore(
      scope : MSSyst.IO.IsolatedStorage.IsolatedStorageScope.Valuetype;
      domainEvidence : MSSyst.Security.Policy.Evidence.Ref;
      domainEvidenceType : MSSyst.Type_k.Ref;
      assemblyEvidence : MSSyst.Security.Policy.Evidence.Ref;
      assemblyEvidenceType : MSSyst.Type_k.Ref) return MSSyst.IO.IsolatedStorage.IsolatedStorageFile.Ref;
   function GetStore(
      scope : MSSyst.IO.IsolatedStorage.IsolatedStorageScope.Valuetype;
      applicationEvidenceType : MSSyst.Type_k.Ref) return MSSyst.IO.IsolatedStorage.IsolatedStorageFile.Ref;
   function GetStore(
      scope : MSSyst.IO.IsolatedStorage.IsolatedStorageScope.Valuetype;
      applicationIdentity : MSSyst.Object.Ref) return MSSyst.IO.IsolatedStorage.IsolatedStorageFile.Ref;
   function GetStore(
      scope : MSSyst.IO.IsolatedStorage.IsolatedStorageScope.Valuetype;
      domainIdentity : MSSyst.Object.Ref;
      assemblyIdentity : MSSyst.Object.Ref) return MSSyst.IO.IsolatedStorage.IsolatedStorageFile.Ref;
   function GetStore(
      scope : MSSyst.IO.IsolatedStorage.IsolatedStorageScope.Valuetype;
      domainEvidenceType : MSSyst.Type_k.Ref;
      assemblyEvidenceType : MSSyst.Type_k.Ref) return MSSyst.IO.IsolatedStorage.IsolatedStorageFile.Ref;
   function GetUserStoreForApplication return MSSyst.IO.IsolatedStorage.IsolatedStorageFile.Ref;
   function GetUserStoreForAssembly return MSSyst.IO.IsolatedStorage.IsolatedStorageFile.Ref;
   function GetUserStoreForDomain return MSSyst.IO.IsolatedStorage.IsolatedStorageFile.Ref;
   procedure Remove(
      scope : MSSyst.IO.IsolatedStorage.IsolatedStorageScope.Valuetype);
   procedure Remove(
      This : access Typ);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,Close,"Close");
   pragma Import(MSIL,CreateDirectory,"CreateDirectory");
   pragma Import(MSIL,DeleteDirectory,"DeleteDirectory");
   pragma Import(MSIL,DeleteFile,"DeleteFile");
   pragma Import(MSIL,Dispose,"Dispose");
   pragma Import(MSIL,get_CurrentSize,"get_CurrentSize");
   pragma Import(MSIL,get_MaximumSize,"get_MaximumSize");
   pragma Import(MSIL,GetDirectoryNames,"GetDirectoryNames");
   pragma Import(MSIL,GetEnumerator,"GetEnumerator");
   pragma Import(MSIL,GetFileNames,"GetFileNames");
   pragma Import(MSIL,GetMachineStoreForApplication,"GetMachineStoreForApplication");
   pragma Import(MSIL,GetMachineStoreForAssembly,"GetMachineStoreForAssembly");
   pragma Import(MSIL,GetMachineStoreForDomain,"GetMachineStoreForDomain");
   pragma Import(MSIL,GetStore,"GetStore");
   pragma Import(MSIL,GetUserStoreForApplication,"GetUserStoreForApplication");
   pragma Import(MSIL,GetUserStoreForAssembly,"GetUserStoreForAssembly");
   pragma Import(MSIL,GetUserStoreForDomain,"GetUserStoreForDomain");
   pragma Import(MSIL,Remove,"Remove");
end MSSyst.IO.IsolatedStorage.IsolatedStorageFile;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.IO.IsolatedStorage.IsolatedStorageFile,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.IO.IsolatedStorage.IsolatedStorageFile");
