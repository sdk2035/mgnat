-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.ComponentModel.Component;
with MSSyst.ComponentModel.IComponent;
limited with MSSyst.ComponentModel.IContainer;
limited with MSSyst.ComponentModel.ISite;
limited with MSSyst.EventHandler;
with MSSyst.IDisposable;
with MSSyst.MarshalByRefObject;
limited with MSSyst.Runtime.Remoting.ObjRef;
limited with MSSyst.String;
limited with MSSyst.Type_k;
limited with MSSyst.Windows.Forms.ContextMenu;
limited with MSSyst.Windows.Forms.MainMenu;
limited with MSSyst.Windows.Forms.Menu.MenuItemCollection;
limited with MSSyst.Windows.Forms.MenuItem;
package MSSyst.Windows.Forms.Menu is
   type Typ is abstract new MSSyst.ComponentModel.Component.Typ
         and MSSyst.ComponentModel.IComponent.Typ
         and MSSyst.IDisposable.Typ
   with record
      null;
   end record;
   FindHandle : Integer;
   pragma Import(MSIL,FindHandle,"FindHandle");
   FindShortcut : Integer;
   pragma Import(MSIL,FindShortcut,"FindShortcut");
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function FindMenuItem(
      This : access Typ;
      type_k : Integer;
      value : MSIL_Types.native_int) return access MSSyst.Windows.Forms.MenuItem.Typ'Class;
   function get_Handle(
      This : access Typ) return MSIL_Types.native_int;
   function get_IsParent(
      This : access Typ) return Standard.Boolean;
   function get_MdiListItem(
      This : access Typ) return access MSSyst.Windows.Forms.MenuItem.Typ'Class;
   function get_MenuItems(
      This : access Typ) return access MSSyst.Windows.Forms.Menu.MenuItemCollection.Typ'Class;
   function get_Name(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Tag(
      This : access Typ) return access MSSyst.Object.Typ'Class;
   function GetContextMenu(
      This : access Typ) return access MSSyst.Windows.Forms.ContextMenu.Typ'Class;
   function GetMainMenu(
      This : access Typ) return access MSSyst.Windows.Forms.MainMenu.Typ'Class;
   procedure MergeMenu(
      This : access Typ;
      menuSrc : access MSSyst.Windows.Forms.Menu.Typ'Class);
   procedure set_Name(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_Tag(
      This : access Typ;
      value : access MSSyst.Object.Typ'Class);
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,FindMenuItem,"FindMenuItem");
   pragma Import(MSIL,get_Handle,"get_Handle");
   pragma Import(MSIL,get_IsParent,"get_IsParent");
   pragma Import(MSIL,get_MdiListItem,"get_MdiListItem");
   pragma Import(MSIL,get_MenuItems,"get_MenuItems");
   pragma Import(MSIL,get_Name,"get_Name");
   pragma Import(MSIL,get_Tag,"get_Tag");
   pragma Import(MSIL,GetContextMenu,"GetContextMenu");
   pragma Import(MSIL,GetMainMenu,"GetMainMenu");
   pragma Import(MSIL,MergeMenu,"MergeMenu");
   pragma Import(MSIL,set_Name,"set_Name");
   pragma Import(MSIL,set_Tag,"set_Tag");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Windows.Forms.Menu;
pragma Import(MSIL,MSSyst.Windows.Forms.Menu,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.Menu");
