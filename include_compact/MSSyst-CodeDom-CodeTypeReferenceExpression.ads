-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.CodeDom.CodeExpression;
with type MSSyst.Object.Ref is access;
with type MSSyst.CodeDom.CodeTypeReference.Ref is access;
with type MSSyst.Collections.IDictionary.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.CodeDom.CodeTypeReferenceExpression is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.CodeDom.CodeExpression.Typ   with record
      null;
   end record;
   function new_CodeTypeReferenceExpression(
      This : Ref := null) return Ref;
   function new_CodeTypeReferenceExpression(
      This : Ref := null;
      type_k : MSSyst.CodeDom.CodeTypeReference.Ref) return Ref;
   function new_CodeTypeReferenceExpression(
      This : Ref := null;
      type_k : MSSyst.String.Ref) return Ref;
   function new_CodeTypeReferenceExpression(
      This : Ref := null;
      type_k : MSSyst.Type_k.Ref) return Ref;
   function get_Type(
      This : access Typ) return MSSyst.CodeDom.CodeTypeReference.Ref;
   procedure set_Type(
      This : access Typ;
      value : MSSyst.CodeDom.CodeTypeReference.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_CodeTypeReferenceExpression);
   pragma Import(MSIL,get_Type,"get_Type");
   pragma Import(MSIL,set_Type,"set_Type");
end MSSyst.CodeDom.CodeTypeReferenceExpression;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.CodeDom.CodeTypeReferenceExpression,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.CodeDom.CodeTypeReferenceExpression");
