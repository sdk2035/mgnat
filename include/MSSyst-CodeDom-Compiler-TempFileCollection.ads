-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Collections.ICollection;
with MSSyst.Collections.IEnumerable;
limited with MSSyst.Collections.IEnumerator;
with MSSyst.IDisposable;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.CodeDom.Compiler.TempFileCollection is
   type Typ is new MSSyst.Object.Typ
         and MSSyst.Collections.ICollection.Typ
         and MSSyst.Collections.IEnumerable.Typ
         and MSSyst.IDisposable.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_TempFileCollection(
      This : Ref := null) return Ref;
   function new_TempFileCollection(
      This : Ref := null;
      tempDir : access MSSyst.String.Typ'Class) return Ref;
   function new_TempFileCollection(
      This : Ref := null;
      tempDir : access MSSyst.String.Typ'Class;
      keepFiles : Standard.Boolean) return Ref;
   function AddExtension(
      This : access Typ;
      fileExtension : access MSSyst.String.Typ'Class;
      keepFile : Standard.Boolean) return access MSSyst.String.Typ'Class;
   function AddExtension(
      This : access Typ;
      fileExtension : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   procedure AddFile(
      This : access Typ;
      fileName : access MSSyst.String.Typ'Class;
      keepFile : Standard.Boolean);
   procedure CopyTo(
      This : access Typ;
      fileNames : access MSSyst.String.Ref_arr;
      start : Integer);
   procedure Delete(
      This : access Typ);
   function get_BasePath(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Count(
      This : access Typ) return Integer;
   function get_KeepFiles(
      This : access Typ) return Standard.Boolean;
   function get_TempDir(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function GetEnumerator(
      This : access Typ) return access MSSyst.Collections.IEnumerator.Typ'Class;
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
pragma Import(MSIL,MSSyst.CodeDom.Compiler.TempFileCollection,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.CodeDom.Compiler.TempFileCollection");
