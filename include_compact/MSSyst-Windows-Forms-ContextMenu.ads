-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Windows.Forms.Menu;
with MSSyst.ComponentModel.IComponent;
with type MSSyst.EventHandler.Ref is access;
with type MSSyst.Runtime.Remoting.ObjRef.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.Object.Ref is access;
with type MSSyst.Windows.Forms.MenuItem.Ref is access;
with type MSSyst.ComponentModel.IContainer.Ref is access;
with type MSSyst.Windows.Forms.Menu.MenuItemCollection.Ref is access;
with type MSSyst.String.Ref is access;
with MSSyst.Windows.Forms.RightToLeft;
with type MSSyst.ComponentModel.ISite.Ref is access;
with type MSSyst.Windows.Forms.Control.Ref is access;
with type MSSyst.Windows.Forms.MainMenu.Ref is access;
with type MSSyst.Drawing.Point.Valuetype is tagged;
with MSSyst.Windows.Forms.LeftRightAlignment;
with type MSSyst.Windows.Forms.MenuItem.Ref_array is access;
package MSSyst.Windows.Forms.ContextMenu is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Windows.Forms.Menu.Typ
         and MSSyst.ComponentModel.IComponent.Typ
   with record
      null;
   end record;
   function new_ContextMenu(
      This : Ref := null) return Ref;
   function new_ContextMenu(
      This : Ref := null;
      menuItems : MSSyst.Windows.Forms.MenuItem.Ref_array) return Ref;
   procedure add_Collapse(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_Popup(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   function get_RightToLeft(
      This : access Typ) return MSSyst.Windows.Forms.RightToLeft.Valuetype;
   function get_SourceControl(
      This : access Typ) return MSSyst.Windows.Forms.Control.Ref;
   procedure remove_Collapse(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_Popup(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure set_RightToLeft(
      This : access Typ;
      value : MSSyst.Windows.Forms.RightToLeft.Valuetype);
   procedure Show(
      This : access Typ;
      control : MSSyst.Windows.Forms.Control.Ref;
      pos : MSSyst.Drawing.Point.Valuetype);
   procedure Show(
      This : access Typ;
      control : MSSyst.Windows.Forms.Control.Ref;
      pos : MSSyst.Drawing.Point.Valuetype;
      alignment : MSSyst.Windows.Forms.LeftRightAlignment.Valuetype);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ContextMenu);
   pragma Import(MSIL,add_Collapse,"add_Collapse");
   pragma Import(MSIL,add_Popup,"add_Popup");
   pragma Import(MSIL,get_RightToLeft,"get_RightToLeft");
   pragma Import(MSIL,get_SourceControl,"get_SourceControl");
   pragma Import(MSIL,remove_Collapse,"remove_Collapse");
   pragma Import(MSIL,remove_Popup,"remove_Popup");
   pragma Import(MSIL,set_RightToLeft,"set_RightToLeft");
   pragma Import(MSIL,Show,"Show");
end MSSyst.Windows.Forms.ContextMenu;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.ContextMenu,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ContextMenu");
