-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.CodeDom.CodeExpression;
with MSSyst.CodeDom.CodeObject;
limited with MSSyst.CodeDom.CodeTypeReference;
limited with MSSyst.Collections.IDictionary;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.CodeDom.CodeDelegateCreateExpression is
   type Typ is new MSSyst.CodeDom.CodeExpression.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_CodeDelegateCreateExpression(
      This : Ref := null) return Ref;
   function new_CodeDelegateCreateExpression(
      This : Ref := null;
      delegateType : access MSSyst.CodeDom.CodeTypeReference.Typ'Class;
      targetObject : access MSSyst.CodeDom.CodeExpression.Typ'Class;
      methodName : access MSSyst.String.Typ'Class) return Ref;
   function get_DelegateType(
      This : access Typ) return access MSSyst.CodeDom.CodeTypeReference.Typ'Class;
   function get_MethodName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_TargetObject(
      This : access Typ) return access MSSyst.CodeDom.CodeExpression.Typ'Class;
   procedure set_DelegateType(
      This : access Typ;
      value : access MSSyst.CodeDom.CodeTypeReference.Typ'Class);
   procedure set_MethodName(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_TargetObject(
      This : access Typ;
      value : access MSSyst.CodeDom.CodeExpression.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_CodeDelegateCreateExpression);
   pragma Import(MSIL,get_DelegateType,"get_DelegateType");
   pragma Import(MSIL,get_MethodName,"get_MethodName");
   pragma Import(MSIL,get_TargetObject,"get_TargetObject");
   pragma Import(MSIL,set_DelegateType,"set_DelegateType");
   pragma Import(MSIL,set_MethodName,"set_MethodName");
   pragma Import(MSIL,set_TargetObject,"set_TargetObject");
end MSSyst.CodeDom.CodeDelegateCreateExpression;
pragma Import(MSIL,MSSyst.CodeDom.CodeDelegateCreateExpression,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.CodeDom.CodeDelegateCreateExpression");
