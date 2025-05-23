-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Attribute;
with MSSyst.Runtime.InteropServices.uAttribute;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.ComponentModel.Design.Serialization.DesignerSerializerAttribute is
   type Typ is new MSSyst.Attribute.Typ
         and MSSyst.Runtime.InteropServices.uAttribute.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_DesignerSerializerAttribute(
      This : Ref := null;
      serializerTypeName : access MSSyst.String.Typ'Class;
      baseSerializerTypeName : access MSSyst.String.Typ'Class) return Ref;
   function new_DesignerSerializerAttribute(
      This : Ref := null;
      serializerType : access MSSyst.Type_k.Typ'Class;
      baseSerializerType : access MSSyst.Type_k.Typ'Class) return Ref;
   function new_DesignerSerializerAttribute(
      This : Ref := null;
      serializerTypeName : access MSSyst.String.Typ'Class;
      baseSerializerType : access MSSyst.Type_k.Typ'Class) return Ref;
   function get_SerializerBaseTypeName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_SerializerTypeName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_TypeId(
      This : access Typ) return access MSSyst.Object.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_DesignerSerializerAttribute);
   pragma Import(MSIL,get_SerializerBaseTypeName,"get_SerializerBaseTypeName");
   pragma Import(MSIL,get_SerializerTypeName,"get_SerializerTypeName");
   pragma Import(MSIL,get_TypeId,"get_TypeId");
end MSSyst.ComponentModel.Design.Serialization.DesignerSerializerAttribute;
pragma Import(MSIL,MSSyst.ComponentModel.Design.Serialization.DesignerSerializerAttribute,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.Design.Serialization.DesignerSerializerAttribute");
