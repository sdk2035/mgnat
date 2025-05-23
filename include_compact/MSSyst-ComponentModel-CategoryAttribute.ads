-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Attribute;
with type MSSyst.Object.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.ComponentModel.CategoryAttribute is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Attribute.Typ   with record
      null;
   end record;
   function new_CategoryAttribute(
      This : Ref := null) return Ref;
   function new_CategoryAttribute(
      This : Ref := null;
      category : MSSyst.String.Ref) return Ref;
   function Equals(
      This : access Typ;
      obj : MSSyst.Object.Ref) return Standard.Boolean;
   function get_Action return MSSyst.ComponentModel.CategoryAttribute.Ref;
   function get_Appearance return MSSyst.ComponentModel.CategoryAttribute.Ref;
   function get_Asynchronous return MSSyst.ComponentModel.CategoryAttribute.Ref;
   function get_Behavior return MSSyst.ComponentModel.CategoryAttribute.Ref;
   function get_Category(
      This : access Typ) return MSSyst.String.Ref;
   function get_Data return MSSyst.ComponentModel.CategoryAttribute.Ref;
   function get_Default return MSSyst.ComponentModel.CategoryAttribute.Ref;
   function get_Design return MSSyst.ComponentModel.CategoryAttribute.Ref;
   function get_DragDrop return MSSyst.ComponentModel.CategoryAttribute.Ref;
   function get_Focus return MSSyst.ComponentModel.CategoryAttribute.Ref;
   function get_Format return MSSyst.ComponentModel.CategoryAttribute.Ref;
   function get_Key return MSSyst.ComponentModel.CategoryAttribute.Ref;
   function get_Layout return MSSyst.ComponentModel.CategoryAttribute.Ref;
   function get_Mouse return MSSyst.ComponentModel.CategoryAttribute.Ref;
   function get_WindowStyle return MSSyst.ComponentModel.CategoryAttribute.Ref;
   function GetHashCode(
      This : access Typ) return Integer;
   function IsDefaultAttribute(
      This : access Typ) return Standard.Boolean;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_CategoryAttribute);
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,get_Action,"get_Action");
   pragma Import(MSIL,get_Appearance,"get_Appearance");
   pragma Import(MSIL,get_Asynchronous,"get_Asynchronous");
   pragma Import(MSIL,get_Behavior,"get_Behavior");
   pragma Import(MSIL,get_Category,"get_Category");
   pragma Import(MSIL,get_Data,"get_Data");
   pragma Import(MSIL,get_Default,"get_Default");
   pragma Import(MSIL,get_Design,"get_Design");
   pragma Import(MSIL,get_DragDrop,"get_DragDrop");
   pragma Import(MSIL,get_Focus,"get_Focus");
   pragma Import(MSIL,get_Format,"get_Format");
   pragma Import(MSIL,get_Key,"get_Key");
   pragma Import(MSIL,get_Layout,"get_Layout");
   pragma Import(MSIL,get_Mouse,"get_Mouse");
   pragma Import(MSIL,get_WindowStyle,"get_WindowStyle");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,IsDefaultAttribute,"IsDefaultAttribute");
end MSSyst.ComponentModel.CategoryAttribute;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.ComponentModel.CategoryAttribute,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.CategoryAttribute");
