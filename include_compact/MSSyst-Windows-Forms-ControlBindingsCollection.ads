-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Windows.Forms.BindingsCollection;
with MSSyst.Collections.ICollection;
with type MSSyst.Windows.Forms.Binding.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Object.Ref is access;
with MSSyst.Windows.Forms.DataSourceUpdateMode;
with type MSSyst.IFormatProvider.Ref is access;
with type MSSyst.ComponentModel.CollectionChangeEventHandler.Ref is access;
with type MSSyst.Array_k.Ref is access;
with type MSSyst.Runtime.Remoting.ObjRef.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.Windows.Forms.IBindableComponent.Ref is access;
with type MSSyst.Windows.Forms.Control.Ref is access;
with type MSSyst.Collections.IEnumerator.Ref is access;
package MSSyst.Windows.Forms.ControlBindingsCollection is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Windows.Forms.BindingsCollection.Typ
         and MSSyst.Collections.ICollection.Typ
   with record
      null;
   end record;
   function new_ControlBindingsCollection(
      This : Ref := null;
      control : MSSyst.Windows.Forms.IBindableComponent.Ref) return Ref;
   function Add(
      This : access Typ;
      propertyName : MSSyst.String.Ref;
      dataSource : MSSyst.Object.Ref;
      dataMember : MSSyst.String.Ref;
      formattingEnabled : Standard.Boolean;
      updateMode : MSSyst.Windows.Forms.DataSourceUpdateMode.Valuetype) return MSSyst.Windows.Forms.Binding.Ref;
   function Add(
      This : access Typ;
      propertyName : MSSyst.String.Ref;
      dataSource : MSSyst.Object.Ref;
      dataMember : MSSyst.String.Ref;
      formattingEnabled : Standard.Boolean) return MSSyst.Windows.Forms.Binding.Ref;
   function Add(
      This : access Typ;
      propertyName : MSSyst.String.Ref;
      dataSource : MSSyst.Object.Ref;
      dataMember : MSSyst.String.Ref;
      formattingEnabled : Standard.Boolean;
      updateMode : MSSyst.Windows.Forms.DataSourceUpdateMode.Valuetype;
      nullValue : MSSyst.Object.Ref) return MSSyst.Windows.Forms.Binding.Ref;
   function Add(
      This : access Typ;
      propertyName : MSSyst.String.Ref;
      dataSource : MSSyst.Object.Ref;
      dataMember : MSSyst.String.Ref;
      formattingEnabled : Standard.Boolean;
      updateMode : MSSyst.Windows.Forms.DataSourceUpdateMode.Valuetype;
      nullValue : MSSyst.Object.Ref;
      formatString : MSSyst.String.Ref;
      formatInfo : MSSyst.IFormatProvider.Ref) return MSSyst.Windows.Forms.Binding.Ref;
   function Add(
      This : access Typ;
      propertyName : MSSyst.String.Ref;
      dataSource : MSSyst.Object.Ref;
      dataMember : MSSyst.String.Ref;
      formattingEnabled : Standard.Boolean;
      updateMode : MSSyst.Windows.Forms.DataSourceUpdateMode.Valuetype;
      nullValue : MSSyst.Object.Ref;
      formatString : MSSyst.String.Ref) return MSSyst.Windows.Forms.Binding.Ref;
   procedure Add(
      This : access Typ;
      binding : MSSyst.Windows.Forms.Binding.Ref);
   function Add(
      This : access Typ;
      propertyName : MSSyst.String.Ref;
      dataSource : MSSyst.Object.Ref;
      dataMember : MSSyst.String.Ref) return MSSyst.Windows.Forms.Binding.Ref;
   procedure Clear(
      This : access Typ);
   function get_BindableComponent(
      This : access Typ) return MSSyst.Windows.Forms.IBindableComponent.Ref;
   function get_Control(
      This : access Typ) return MSSyst.Windows.Forms.Control.Ref;
   function get_DefaultDataSourceUpdateMode(
      This : access Typ) return MSSyst.Windows.Forms.DataSourceUpdateMode.Valuetype;
   function get_Item(
      This : access Typ;
      propertyName : MSSyst.String.Ref) return MSSyst.Windows.Forms.Binding.Ref;
   procedure Remove(
      This : access Typ;
      binding : MSSyst.Windows.Forms.Binding.Ref);
   procedure RemoveAt(
      This : access Typ;
      index : Integer);
   procedure set_DefaultDataSourceUpdateMode(
      This : access Typ;
      value : MSSyst.Windows.Forms.DataSourceUpdateMode.Valuetype);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ControlBindingsCollection);
   pragma Import(MSIL,Add,"Add");
   pragma Import(MSIL,Clear,"Clear");
   pragma Import(MSIL,get_BindableComponent,"get_BindableComponent");
   pragma Import(MSIL,get_Control,"get_Control");
   pragma Import(MSIL,get_DefaultDataSourceUpdateMode,"get_DefaultDataSourceUpdateMode");
   pragma Import(MSIL,get_Item,"get_Item");
   pragma Import(MSIL,Remove,"Remove");
   pragma Import(MSIL,RemoveAt,"RemoveAt");
   pragma Import(MSIL,set_DefaultDataSourceUpdateMode,"set_DefaultDataSourceUpdateMode");
end MSSyst.Windows.Forms.ControlBindingsCollection;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.ControlBindingsCollection,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ControlBindingsCollection");
