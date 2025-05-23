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
with MSSyst.ComponentModel.IComponent;
with MSSyst.IServiceProvider;
with type MSSyst.EventHandler.Ref is access;
with type MSSyst.ComponentModel.IContainer.Ref is access;
with type MSSyst.ComponentModel.ISite.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.ComponentModel.MarshalByValueComponent is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ
         and MSSyst.ComponentModel.IComponent.Typ
         and MSSyst.IServiceProvider.Typ
   with record
      null;
   end record;
   function new_MarshalByValueComponent(
      This : Ref := null) return Ref;
   procedure add_Disposed(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure Dispose(
      This : access Typ);
   function get_Container(
      This : access Typ) return MSSyst.ComponentModel.IContainer.Ref;
   function get_DesignMode(
      This : access Typ) return Standard.Boolean;
   function get_Site(
      This : access Typ) return MSSyst.ComponentModel.ISite.Ref;
   function GetService(
      This : access Typ;
      service : MSSyst.Type_k.Ref) return MSSyst.Object.Ref;
   procedure remove_Disposed(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure set_Site(
      This : access Typ;
      value : MSSyst.ComponentModel.ISite.Ref);
   function ToString(
      This : access Typ) return MSSyst.String.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_MarshalByValueComponent);
   pragma Import(MSIL,add_Disposed,"add_Disposed");
   pragma Import(MSIL,Dispose,"Dispose");
   pragma Import(MSIL,get_Container,"get_Container");
   pragma Import(MSIL,get_DesignMode,"get_DesignMode");
   pragma Import(MSIL,get_Site,"get_Site");
   pragma Import(MSIL,GetService,"GetService");
   pragma Import(MSIL,remove_Disposed,"remove_Disposed");
   pragma Import(MSIL,set_Site,"set_Site");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.ComponentModel.MarshalByValueComponent;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.ComponentModel.MarshalByValueComponent,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.MarshalByValueComponent");
