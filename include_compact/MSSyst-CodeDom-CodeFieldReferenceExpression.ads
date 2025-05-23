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
with type MSSyst.String.Ref is access;
with type MSSyst.Collections.IDictionary.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.CodeDom.CodeFieldReferenceExpression is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.CodeDom.CodeExpression.Typ   with record
      null;
   end record;
   function new_CodeFieldReferenceExpression(
      This : Ref := null) return Ref;
   function new_CodeFieldReferenceExpression(
      This : Ref := null;
      targetObject : MSSyst.CodeDom.CodeExpression.Ref;
      fieldName : MSSyst.String.Ref) return Ref;
   function get_FieldName(
      This : access Typ) return MSSyst.String.Ref;
   function get_TargetObject(
      This : access Typ) return MSSyst.CodeDom.CodeExpression.Ref;
   procedure set_FieldName(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_TargetObject(
      This : access Typ;
      value : MSSyst.CodeDom.CodeExpression.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_CodeFieldReferenceExpression);
   pragma Import(MSIL,get_FieldName,"get_FieldName");
   pragma Import(MSIL,get_TargetObject,"get_TargetObject");
   pragma Import(MSIL,set_FieldName,"set_FieldName");
   pragma Import(MSIL,set_TargetObject,"set_TargetObject");
end MSSyst.CodeDom.CodeFieldReferenceExpression;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.CodeDom.CodeFieldReferenceExpression,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.CodeDom.CodeFieldReferenceExpression");
