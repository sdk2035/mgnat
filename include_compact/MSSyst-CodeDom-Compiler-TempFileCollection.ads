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
with MSSyst.Collections.ICollection;
with type MSSyst.String.Ref is access;
with type MSSyst.String.Ref_array is access;
with type MSSyst.Collections.IEnumerator.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.CodeDom.Compiler.TempFileCollection is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ
         and MSSyst.Collections.ICollection.Typ
   with record
      null;
   end record;
   function new_TempFileCollection(
      This : Ref := null) return Ref;
   function new_TempFileCollection(
      This : Ref := null;
      tempDir : MSSyst.String.Ref) return Ref;
   function new_TempFileCollection(
      This : Ref := null;
      tempDir : MSSyst.String.Ref;
      keepFiles : Standard.Boolean) return Ref;
   function AddExtension(
      This : access Typ;
      fileExtension : MSSyst.String.Ref;
      keepFile : Standard.Boolean) return MSSyst.String.Ref;
   function AddExtension(
      This : access Typ;
      fileExtension : MSSyst.String.Ref) return MSSyst.String.Ref;
   procedure AddFile(
      This : access Typ;
      fileName : MSSyst.String.Ref;
      keepFile : Standard.Boolean);
   procedure CopyTo(
      This : access Typ;
      fileNames : MSSyst.String.Ref_array;
      start : Integer);
   procedure Delete(
      This : access Typ);
   function get_BasePath(
      This : access Typ) return MSSyst.String.Ref;
   function get_Count(
      This : access Typ) return Integer;
   function get_KeepFiles(
      This : access Typ) return Standard.Boolean;
   function get_TempDir(
      This : access Typ) return MSSyst.String.Ref;
   function GetEnumerator(
      This : access Typ) return MSSyst.Collections.IEnumerator.Ref;
   procedure set_KeepFiles(
      This : access Typ;
      value : Standard.Boolean);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_TempFileCollection);
   pragma Import(MSIL,AddExtension,"AddExtension");
   pragma Import(MSIL,AddFile,"AddFile");
   pragma Import(MSIL,CopyTo,"CopyTo");
   pragma Import(MSIL,Delete,"Delete");
   pragma Import(MSIL,get_BasePath,"get_BasePath");
   pragma Import(MSIL,get_Count,"get_Count");
   pragma Import(MSIL,get_KeepFiles,"get_KeepFiles");
   pragma Import(MSIL,get_TempDir,"get_TempDir");
   pragma Import(MSIL,GetEnumerator,"GetEnumerator");
   pragma Import(MSIL,set_KeepFiles,"set_KeepFiles");
end MSSyst.CodeDom.Compiler.TempFileCollection;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.CodeDom.Compiler.TempFileCollection,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.CodeDom.Compiler.TempFileCollection");
