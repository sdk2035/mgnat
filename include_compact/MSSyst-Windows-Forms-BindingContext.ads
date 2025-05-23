-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Object;
with MSSyst.Collections.ICollection;
with type MSSyst.ComponentModel.CollectionChangeEventHandler.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Windows.Forms.BindingManagerBase.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.Windows.Forms.Binding.Ref is access;
package MSSyst.Windows.Forms.BindingContext is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ
         and MSSyst.Collections.ICollection.Typ
   with record
      null;
   end record;
   function new_BindingContext(
      This : Ref := null) return Ref;
   procedure add_CollectionChanged(
      This : access Typ;
      value : MSSyst.ComponentModel.CollectionChangeEventHandler.Ref);
   function Contains(
      This : access Typ;
      dataSource : MSSyst.Object.Ref) return Standard.Boolean;
   function Contains(
      This : access Typ;
      dataSource : MSSyst.Object.Ref;
      dataMember : MSSyst.String.Ref) return Standard.Boolean;
   function get_IsReadOnly(
      This : access Typ) return Standard.Boolean;
   function get_Item(
      This : access Typ;
      dataSource : MSSyst.Object.Ref;
      dataMember : MSSyst.String.Ref) return MSSyst.Windows.Forms.BindingManagerBase.Ref;
   function get_Item(
      This : access Typ;
      dataSource : MSSyst.Object.Ref) return MSSyst.Windows.Forms.BindingManagerBase.Ref;
   procedure remove_CollectionChanged(
      This : access Typ;
      value : MSSyst.ComponentModel.CollectionChangeEventHandler.Ref);
   procedure UpdateBinding(
      newBindingContext : MSSyst.Windows.Forms.BindingContext.Ref;
      binding : MSSyst.Windows.Forms.Binding.Ref);
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
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.BindingContext,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.BindingContext");
