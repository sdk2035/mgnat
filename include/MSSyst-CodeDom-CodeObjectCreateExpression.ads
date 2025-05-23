-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.CodeDom.CodeExpression;
limited with MSSyst.CodeDom.CodeExpressionCollection;
with MSSyst.CodeDom.CodeObject;
limited with MSSyst.CodeDom.CodeTypeReference;
limited with MSSyst.Collections.IDictionary;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.CodeDom.CodeObjectCreateExpression is
   type Typ is new MSSyst.CodeDom.CodeExpression.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_CodeObjectCreateExpression(
      This : Ref := null) return Ref;
   function new_CodeObjectCreateExpression(
      This : Ref := null;
      createType : access MSSyst.CodeDom.CodeTypeReference.Typ'Class;
      parameters : access MSSyst.CodeDom.CodeExpression.Ref_arr) return Ref;
   function new_CodeObjectCreateExpression(
      This : Ref := null;
      createType : access MSSyst.String.Typ'Class;
      parameters : access MSSyst.CodeDom.CodeExpression.Ref_arr) return Ref;
   function new_CodeObjectCreateExpression(
      This : Ref := null;
      createType : access MSSyst.Type_k.Typ'Class;
      parameters : access MSSyst.CodeDom.CodeExpression.Ref_arr) return Ref;
   function get_CreateType(
      This : access Typ) return access MSSyst.CodeDom.CodeTypeReference.Typ'Class;
   function get_Parameters(
      This : access Typ) return access MSSyst.CodeDom.CodeExpressionCollection.Typ'Class;
   procedure set_CreateType(
      This : access Typ;
      value : access MSSyst.CodeDom.CodeTypeReference.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_CodeObjectCreateExpression);
   pragma Import(MSIL,get_CreateType,"get_CreateType");
   pragma Import(MSIL,get_Parameters,"get_Parameters");
   pragma Import(MSIL,set_CreateType,"set_CreateType");
end MSSyst.CodeDom.CodeObjectCreateExpression;
pragma Import(MSIL,MSSyst.CodeDom.CodeObjectCreateExpression,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.CodeDom.CodeObjectCreateExpression");
