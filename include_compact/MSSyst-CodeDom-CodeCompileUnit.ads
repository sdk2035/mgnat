-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.CodeDom.CodeObject;
with type MSSyst.Object.Ref is access;
with type MSSyst.CodeDom.CodeAttributeDeclarationCollection.Ref is access;
with type MSSyst.CodeDom.CodeDirectiveCollection.Ref is access;
with type MSSyst.CodeDom.CodeNamespaceCollection.Ref is access;
with type MSSyst.Collections.Specialized.StringCollection.Ref is access;
with type MSSyst.Collections.IDictionary.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.CodeDom.CodeCompileUnit is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.CodeDom.CodeObject.Typ   with record
      null;
   end record;
   function new_CodeCompileUnit(
      This : Ref := null) return Ref;
   function get_AssemblyCustomAttributes(
      This : access Typ) return MSSyst.CodeDom.CodeAttributeDeclarationCollection.Ref;
   function get_EndDirectives(
      This : access Typ) return MSSyst.CodeDom.CodeDirectiveCollection.Ref;
   function get_Namespaces(
      This : access Typ) return MSSyst.CodeDom.CodeNamespaceCollection.Ref;
   function get_ReferencedAssemblies(
      This : access Typ) return MSSyst.Collections.Specialized.StringCollection.Ref;
   function get_StartDirectives(
      This : access Typ) return MSSyst.CodeDom.CodeDirectiveCollection.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_CodeCompileUnit);
   pragma Import(MSIL,get_AssemblyCustomAttributes,"get_AssemblyCustomAttributes");
   pragma Import(MSIL,get_EndDirectives,"get_EndDirectives");
   pragma Import(MSIL,get_Namespaces,"get_Namespaces");
   pragma Import(MSIL,get_ReferencedAssemblies,"get_ReferencedAssemblies");
   pragma Import(MSIL,get_StartDirectives,"get_StartDirectives");
end MSSyst.CodeDom.CodeCompileUnit;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.CodeDom.CodeCompileUnit,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.CodeDom.CodeCompileUnit");
