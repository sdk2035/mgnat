-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.CodeDom.CodeTypeMember;
with type MSSyst.EventHandler.Ref is access;
with type MSSyst.Object.Ref is access;
with MSSyst.CodeDom.MemberAttributes;
with type MSSyst.CodeDom.CodeCommentStatementCollection.Ref is access;
with type MSSyst.CodeDom.CodeAttributeDeclarationCollection.Ref is access;
with type MSSyst.CodeDom.CodeDirectiveCollection.Ref is access;
with type MSSyst.CodeDom.CodeTypeReferenceCollection.Ref is access;
with type MSSyst.CodeDom.CodeLinePragma.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.CodeDom.CodeParameterDeclarationExpressionCollection.Ref is access;
with type MSSyst.CodeDom.CodeTypeReference.Ref is access;
with type MSSyst.CodeDom.CodeStatementCollection.Ref is access;
with type MSSyst.CodeDom.CodeTypeParameterCollection.Ref is access;
with type MSSyst.Collections.IDictionary.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.CodeDom.CodeMemberMethod is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.CodeDom.CodeTypeMember.Typ   with record
      null;
   end record;
   function new_CodeMemberMethod(
      This : Ref := null) return Ref;
   procedure add_PopulateImplementationTypes(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_PopulateParameters(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_PopulateStatements(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   function get_ImplementationTypes(
      This : access Typ) return MSSyst.CodeDom.CodeTypeReferenceCollection.Ref;
   function get_Parameters(
      This : access Typ) return MSSyst.CodeDom.CodeParameterDeclarationExpressionCollection.Ref;
   function get_PrivateImplementationType(
      This : access Typ) return MSSyst.CodeDom.CodeTypeReference.Ref;
   function get_ReturnType(
      This : access Typ) return MSSyst.CodeDom.CodeTypeReference.Ref;
   function get_ReturnTypeCustomAttributes(
      This : access Typ) return MSSyst.CodeDom.CodeAttributeDeclarationCollection.Ref;
   function get_Statements(
      This : access Typ) return MSSyst.CodeDom.CodeStatementCollection.Ref;
   function get_TypeParameters(
      This : access Typ) return MSSyst.CodeDom.CodeTypeParameterCollection.Ref;
   procedure remove_PopulateImplementationTypes(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_PopulateParameters(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_PopulateStatements(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure set_PrivateImplementationType(
      This : access Typ;
      value : MSSyst.CodeDom.CodeTypeReference.Ref);
   procedure set_ReturnType(
      This : access Typ;
      value : MSSyst.CodeDom.CodeTypeReference.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_CodeMemberMethod);
   pragma Import(MSIL,add_PopulateImplementationTypes,"add_PopulateImplementationTypes");
   pragma Import(MSIL,add_PopulateParameters,"add_PopulateParameters");
   pragma Import(MSIL,add_PopulateStatements,"add_PopulateStatements");
   pragma Import(MSIL,get_ImplementationTypes,"get_ImplementationTypes");
   pragma Import(MSIL,get_Parameters,"get_Parameters");
   pragma Import(MSIL,get_PrivateImplementationType,"get_PrivateImplementationType");
   pragma Import(MSIL,get_ReturnType,"get_ReturnType");
   pragma Import(MSIL,get_ReturnTypeCustomAttributes,"get_ReturnTypeCustomAttributes");
   pragma Import(MSIL,get_Statements,"get_Statements");
   pragma Import(MSIL,get_TypeParameters,"get_TypeParameters");
   pragma Import(MSIL,remove_PopulateImplementationTypes,"remove_PopulateImplementationTypes");
   pragma Import(MSIL,remove_PopulateParameters,"remove_PopulateParameters");
   pragma Import(MSIL,remove_PopulateStatements,"remove_PopulateStatements");
   pragma Import(MSIL,set_PrivateImplementationType,"set_PrivateImplementationType");
   pragma Import(MSIL,set_ReturnType,"set_ReturnType");
end MSSyst.CodeDom.CodeMemberMethod;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.CodeDom.CodeMemberMethod,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.CodeDom.CodeMemberMethod");
