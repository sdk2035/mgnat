-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.ComponentModel.Component;
with MSSyst.ComponentModel.IComponent;
with MSSyst.ComponentModel.IExtenderProvider;
with MSSyst.ComponentModel.ISupportInitialize;
with type MSSyst.EventHandler.Ref is access;
with type MSSyst.Object.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Runtime.Remoting.ObjRef.Ref is access;
with type MSSyst.Type_k.Ref is access;
with MSSyst.Windows.Forms.ErrorBlinkStyle;
with type MSSyst.ComponentModel.IContainer.Ref is access;
with type MSSyst.Windows.Forms.ContainerControl.Ref is access;
with type MSSyst.Drawing.Icon.Ref is access;
with type MSSyst.ComponentModel.ISite.Ref is access;
with type MSSyst.Windows.Forms.Control.Ref is access;
with MSSyst.Windows.Forms.ErrorIconAlignment;
package MSSyst.Windows.Forms.ErrorProvider is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.ComponentModel.Component.Typ
         and MSSyst.ComponentModel.IComponent.Typ
         and MSSyst.ComponentModel.IExtenderProvider.Typ
         and MSSyst.ComponentModel.ISupportInitialize.Typ
   with record
      null;
   end record;
   function new_ErrorProvider(
      This : Ref := null) return Ref;
   function new_ErrorProvider(
      This : Ref := null;
      parentControl : MSSyst.Windows.Forms.ContainerControl.Ref) return Ref;
   function new_ErrorProvider(
      This : Ref := null;
      container : MSSyst.ComponentModel.IContainer.Ref) return Ref;
   procedure add_RightToLeftChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure BindToDataAndErrors(
      This : access Typ;
      newDataSource : MSSyst.Object.Ref;
      newDataMember : MSSyst.String.Ref);
   function CanExtend(
      This : access Typ;
      extendee : MSSyst.Object.Ref) return Standard.Boolean;
   procedure Clear(
      This : access Typ);
   function get_BlinkRate(
      This : access Typ) return Integer;
   function get_BlinkStyle(
      This : access Typ) return MSSyst.Windows.Forms.ErrorBlinkStyle.Valuetype;
   function get_ContainerControl(
      This : access Typ) return MSSyst.Windows.Forms.ContainerControl.Ref;
   function get_DataMember(
      This : access Typ) return MSSyst.String.Ref;
   function get_DataSource(
      This : access Typ) return MSSyst.Object.Ref;
   function get_Icon(
      This : access Typ) return MSSyst.Drawing.Icon.Ref;
   function get_RightToLeft(
      This : access Typ) return Standard.Boolean;
   function get_Tag(
      This : access Typ) return MSSyst.Object.Ref;
   function GetError(
      This : access Typ;
      control : MSSyst.Windows.Forms.Control.Ref) return MSSyst.String.Ref;
   function GetIconAlignment(
      This : access Typ;
      control : MSSyst.Windows.Forms.Control.Ref) return MSSyst.Windows.Forms.ErrorIconAlignment.Valuetype;
   function GetIconPadding(
      This : access Typ;
      control : MSSyst.Windows.Forms.Control.Ref) return Integer;
   procedure remove_RightToLeftChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure set_BlinkRate(
      This : access Typ;
      value : Integer);
   procedure set_BlinkStyle(
      This : access Typ;
      value : MSSyst.Windows.Forms.ErrorBlinkStyle.Valuetype);
   procedure set_ContainerControl(
      This : access Typ;
      value : MSSyst.Windows.Forms.ContainerControl.Ref);
   procedure set_DataMember(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_DataSource(
      This : access Typ;
      value : MSSyst.Object.Ref);
   procedure set_Icon(
      This : access Typ;
      value : MSSyst.Drawing.Icon.Ref);
   procedure set_RightToLeft(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Site(
      This : access Typ;
      value : MSSyst.ComponentModel.ISite.Ref);
   procedure set_Tag(
      This : access Typ;
      value : MSSyst.Object.Ref);
   procedure SetError(
      This : access Typ;
      control : MSSyst.Windows.Forms.Control.Ref;
      value : MSSyst.String.Ref);
   procedure SetIconAlignment(
      This : access Typ;
      control : MSSyst.Windows.Forms.Control.Ref;
      value : MSSyst.Windows.Forms.ErrorIconAlignment.Valuetype);
   procedure SetIconPadding(
      This : access Typ;
      control : MSSyst.Windows.Forms.Control.Ref;
      padding : Integer);
   procedure UpdateBinding(
      This : access Typ);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ErrorProvider);
   pragma Import(MSIL,add_RightToLeftChanged,"add_RightToLeftChanged");
   pragma Import(MSIL,BindToDataAndErrors,"BindToDataAndErrors");
   pragma Import(MSIL,CanExtend,"CanExtend");
   pragma Import(MSIL,Clear,"Clear");
   pragma Import(MSIL,get_BlinkRate,"get_BlinkRate");
   pragma Import(MSIL,get_BlinkStyle,"get_BlinkStyle");
   pragma Import(MSIL,get_ContainerControl,"get_ContainerControl");
   pragma Import(MSIL,get_DataMember,"get_DataMember");
   pragma Import(MSIL,get_DataSource,"get_DataSource");
   pragma Import(MSIL,get_Icon,"get_Icon");
   pragma Import(MSIL,get_RightToLeft,"get_RightToLeft");
   pragma Import(MSIL,get_Tag,"get_Tag");
   pragma Import(MSIL,GetError,"GetError");
   pragma Import(MSIL,GetIconAlignment,"GetIconAlignment");
   pragma Import(MSIL,GetIconPadding,"GetIconPadding");
   pragma Import(MSIL,remove_RightToLeftChanged,"remove_RightToLeftChanged");
   pragma Import(MSIL,set_BlinkRate,"set_BlinkRate");
   pragma Import(MSIL,set_BlinkStyle,"set_BlinkStyle");
   pragma Import(MSIL,set_ContainerControl,"set_ContainerControl");
   pragma Import(MSIL,set_DataMember,"set_DataMember");
   pragma Import(MSIL,set_DataSource,"set_DataSource");
   pragma Import(MSIL,set_Icon,"set_Icon");
   pragma Import(MSIL,set_RightToLeft,"set_RightToLeft");
   pragma Import(MSIL,set_Site,"set_Site");
   pragma Import(MSIL,set_Tag,"set_Tag");
   pragma Import(MSIL,SetError,"SetError");
   pragma Import(MSIL,SetIconAlignment,"SetIconAlignment");
   pragma Import(MSIL,SetIconPadding,"SetIconPadding");
   pragma Import(MSIL,UpdateBinding,"UpdateBinding");
end MSSyst.Windows.Forms.ErrorProvider;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.ErrorProvider,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ErrorProvider");
