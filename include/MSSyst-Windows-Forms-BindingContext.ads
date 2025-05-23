-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Collections.ICollection;
with MSSyst.Collections.IEnumerable;
limited with MSSyst.ComponentModel.CollectionChangeEventHandler;
limited with MSSyst.String;
limited with MSSyst.Type_k;
limited with MSSyst.Windows.Forms.BindingManagerBase;
limited with MSSyst.Windows.Forms.Binding;
package MSSyst.Windows.Forms.BindingContext is
   type Typ is new MSSyst.Object.Typ
         and MSSyst.Collections.ICollection.Typ
         and MSSyst.Collections.IEnumerable.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_BindingContext(
      This : Ref := null) return Ref;
   procedure add_CollectionChanged(
      This : access Typ;
      value : access MSSyst.ComponentModel.CollectionChangeEventHandler.Typ'Class);
   function Contains(
      This : access Typ;
      dataSource : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function Contains(
      This : access Typ;
      dataSource : access MSSyst.Object.Typ'Class;
      dataMember : access MSSyst.String.Typ'Class) return Standard.Boolean;
   function get_IsReadOnly(
      This : access Typ) return Standard.Boolean;
   function get_Item(
      This : access Typ;
      dataSource : access MSSyst.Object.Typ'Class;
      dataMember : access MSSyst.String.Typ'Class) return access MSSyst.Windows.Forms.BindingManagerBase.Typ'Class;
   function get_Item(
      This : access Typ;
      dataSource : access MSSyst.Object.Typ'Class) return access MSSyst.Windows.Forms.BindingManagerBase.Typ'Class;
   procedure remove_CollectionChanged(
      This : access Typ;
      value : access MSSyst.ComponentModel.CollectionChangeEventHandler.Typ'Class);
   procedure UpdateBinding(
      newBindingContext : access MSSyst.Windows.Forms.BindingContext.Typ'Class;
      binding : access MSSyst.Windows.Forms.Binding.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_BindingContext);
   pragma Import(MSIL,add_CollectionChanged,"add_CollectionChanged");
   pragma Import(MSIL,Contains,"Contains");
   pragma Import(MSIL,get_IsReadOnly,"get_IsReadOnly");
   pragma Import(MSIL,get_Item,"get_Item");
   pragma Import(MSIL,remove_CollectionChanged,"remove_CollectionChanged");
   pragma Import(MSIL,UpdateBinding,"UpdateBinding");
end MSSyst.Windows.Forms.BindingContext;
pragma Import(MSIL,MSSyst.Windows.Forms.BindingContext,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.BindingContext");
