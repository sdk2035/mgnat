-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.ComponentModel.ListChangedType;
limited with MSSyst.ComponentModel.PropertyDescriptor;
with MSSyst.EventArgs;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.ComponentModel.ListChangedEventArgs is
   type Typ is new MSSyst.EventArgs.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_ListChangedEventArgs(
      This : Ref := null;
      listChangedType : MSSyst.ComponentModel.ListChangedType.Valuetype;
      newIndex : Integer) return Ref;
   function new_ListChangedEventArgs(
      This : Ref := null;
      listChangedType : MSSyst.ComponentModel.ListChangedType.Valuetype;
      newIndex : Integer;
      propDesc : access MSSyst.ComponentModel.PropertyDescriptor.Typ'Class) return Ref;
   function new_ListChangedEventArgs(
      This : Ref := null;
      listChangedType : MSSyst.ComponentModel.ListChangedType.Valuetype;
      propDesc : access MSSyst.ComponentModel.PropertyDescriptor.Typ'Class) return Ref;
   function new_ListChangedEventArgs(
      This : Ref := null;
      listChangedType : MSSyst.ComponentModel.ListChangedType.Valuetype;
      newIndex : Integer;
      oldIndex : Integer) return Ref;
   function get_ListChangedType(
      This : access Typ) return MSSyst.ComponentModel.ListChangedType.Valuetype;
   function get_NewIndex(
      This : access Typ) return Integer;
   function get_OldIndex(
      This : access Typ) return Integer;
   function get_PropertyDescriptor(
      This : access Typ) return access MSSyst.ComponentModel.PropertyDescriptor.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ListChangedEventArgs);
   pragma Import(MSIL,get_ListChangedType,"get_ListChangedType");
   pragma Import(MSIL,get_NewIndex,"get_NewIndex");
   pragma Import(MSIL,get_OldIndex,"get_OldIndex");
   pragma Import(MSIL,get_PropertyDescriptor,"get_PropertyDescriptor");
end MSSyst.ComponentModel.ListChangedEventArgs;
pragma Import(MSIL,MSSyst.ComponentModel.ListChangedEventArgs,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.ListChangedEventArgs");
