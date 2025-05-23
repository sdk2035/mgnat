-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Diagnostics.SymbolStore.ISymbolDocument;
limited with MSSyst.Diagnostics.SymbolStore.ISymbolMethod;
limited with MSSyst.Diagnostics.SymbolStore.ISymbolNamespace;
limited with MSSyst.Diagnostics.SymbolStore.ISymbolVariable;
limited with MSSyst.Diagnostics.SymbolStore.SymbolToken;
limited with MSSyst.Guid;
limited with MSSyst.String;
package MSSyst.Diagnostics.SymbolStore.ISymbolReader is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function get_UserEntryPoint(
      This : access Typ) return MSSyst.Diagnostics.SymbolStore.SymbolToken.Valuetype is abstract;
   function GetDocument(
      This : access Typ;
      url : access MSSyst.String.Typ'Class;
      language : MSSyst.Guid.Valuetype;
      languageVendor : MSSyst.Guid.Valuetype;
      documentType : MSSyst.Guid.Valuetype) return access MSSyst.Diagnostics.SymbolStore.ISymbolDocument.Typ'Class is abstract;
   function GetDocuments(
      This : access Typ) return access MSSyst.Diagnostics.SymbolStore.ISymbolDocument.Ref_arr is abstract;
   function GetGlobalVariables(
      This : access Typ) return access MSSyst.Diagnostics.SymbolStore.ISymbolVariable.Ref_arr is abstract;
   function GetMethod(
      This : access Typ;
      method : MSSyst.Diagnostics.SymbolStore.SymbolToken.Valuetype;
      version : Integer) return access MSSyst.Diagnostics.SymbolStore.ISymbolMethod.Typ'Class is abstract;
   function GetMethod(
      This : access Typ;
      method : MSSyst.Diagnostics.SymbolStore.SymbolToken.Valuetype) return access MSSyst.Diagnostics.SymbolStore.ISymbolMethod.Typ'Class is abstract;
   function GetMethodFromDocumentPosition(
      This : access Typ;
      document : access MSSyst.Diagnostics.SymbolStore.ISymbolDocument.Typ'Class;
      line : Integer;
      column : Integer) return access MSSyst.Diagnostics.SymbolStore.ISymbolMethod.Typ'Class is abstract;
   function GetNamespaces(
      This : access Typ) return access MSSyst.Diagnostics.SymbolStore.ISymbolNamespace.Ref_arr is abstract;
   function GetSymAttribute(
      This : access Typ;
      parent : MSSyst.Diagnostics.SymbolStore.SymbolToken.Valuetype;
      name : access MSSyst.String.Typ'Class) return MSIL_Types.unsigned_int8_Array is abstract;
   function GetVariables(
      This : access Typ;
      parent : MSSyst.Diagnostics.SymbolStore.SymbolToken.Valuetype) return access MSSyst.Diagnostics.SymbolStore.ISymbolVariable.Ref_arr is abstract;
private
   pragma Import(MSIL,get_UserEntryPoint,"get_UserEntryPoint");
   pragma Import(MSIL,GetDocument,"GetDocument");
   pragma Import(MSIL,GetDocuments,"GetDocuments");
   pragma Import(MSIL,GetGlobalVariables,"GetGlobalVariables");
   pragma Import(MSIL,GetMethod,"GetMethod");
   pragma Import(MSIL,GetMethodFromDocumentPosition,"GetMethodFromDocumentPosition");
   pragma Import(MSIL,GetNamespaces,"GetNamespaces");
   pragma Import(MSIL,GetSymAttribute,"GetSymAttribute");
   pragma Import(MSIL,GetVariables,"GetVariables");
end MSSyst.Diagnostics.SymbolStore.ISymbolReader;
pragma Import(MSIL,MSSyst.Diagnostics.SymbolStore.ISymbolReader,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Diagnostics.SymbolStore.ISymbolReader");
