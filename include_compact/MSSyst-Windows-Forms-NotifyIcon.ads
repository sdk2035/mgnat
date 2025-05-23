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
with type MSSyst.EventHandler.Ref is access;
with type MSSyst.Windows.Forms.MouseEventHandler.Ref is access;
with type MSSyst.Runtime.Remoting.ObjRef.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.Object.Ref is access;
with MSSyst.Windows.Forms.ToolTipIcon;
with type MSSyst.String.Ref is access;
with type MSSyst.ComponentModel.IContainer.Ref is access;
with type MSSyst.Windows.Forms.ContextMenu.Ref is access;
with type MSSyst.Windows.Forms.ContextMenuStrip.Ref is access;
with type MSSyst.Drawing.Icon.Ref is access;
with type MSSyst.ComponentModel.ISite.Ref is access;
package MSSyst.Windows.Forms.NotifyIcon is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.ComponentModel.Component.Typ
         and MSSyst.ComponentModel.IComponent.Typ
   with record
      null;
   end record;
   function new_NotifyIcon(
      This : Ref := null) return Ref;
   function new_NotifyIcon(
      This : Ref := null;
      container : MSSyst.ComponentModel.IContainer.Ref) return Ref;
   procedure add_BalloonTipClicked(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_BalloonTipClosed(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_BalloonTipShown(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_Click(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_DoubleClick(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_MouseClick(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   procedure add_MouseDoubleClick(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   procedure add_MouseDown(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   procedure add_MouseMove(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   procedure add_MouseUp(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   function get_BalloonTipIcon(
      This : access Typ) return MSSyst.Windows.Forms.ToolTipIcon.Valuetype;
   function get_BalloonTipText(
      This : access Typ) return MSSyst.String.Ref;
   function get_BalloonTipTitle(
      This : access Typ) return MSSyst.String.Ref;
   function get_ContextMenu(
      This : access Typ) return MSSyst.Windows.Forms.ContextMenu.Ref;
   function get_ContextMenuStrip(
      This : access Typ) return MSSyst.Windows.Forms.ContextMenuStrip.Ref;
   function get_Icon(
      This : access Typ) return MSSyst.Drawing.Icon.Ref;
   function get_Tag(
      This : access Typ) return MSSyst.Object.Ref;
   function get_Text(
      This : access Typ) return MSSyst.String.Ref;
   function get_Visible(
      This : access Typ) return Standard.Boolean;
   procedure remove_BalloonTipClicked(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_BalloonTipClosed(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_BalloonTipShown(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_Click(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_DoubleClick(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_MouseClick(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   procedure remove_MouseDoubleClick(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   procedure remove_MouseDown(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   procedure remove_MouseMove(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   procedure remove_MouseUp(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   procedure set_BalloonTipIcon(
      This : access Typ;
      value : MSSyst.Windows.Forms.ToolTipIcon.Valuetype);
   procedure set_BalloonTipText(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_BalloonTipTitle(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_ContextMenu(
      This : access Typ;
      value : MSSyst.Windows.Forms.ContextMenu.Ref);
   procedure set_ContextMenuStrip(
      This : access Typ;
      value : MSSyst.Windows.Forms.ContextMenuStrip.Ref);
   procedure set_Icon(
      This : access Typ;
      value : MSSyst.Drawing.Icon.Ref);
   procedure set_Tag(
      This : access Typ;
      value : MSSyst.Object.Ref);
   procedure set_Text(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_Visible(
      This : access Typ;
      value : Standard.Boolean);
   procedure ShowBalloonTip(
      This : access Typ;
      timeout : Integer);
   procedure ShowBalloonTip(
      This : access Typ;
      timeout : Integer;
      tipTitle : MSSyst.String.Ref;
      tipText : MSSyst.String.Ref;
      tipIcon : MSSyst.Windows.Forms.ToolTipIcon.Valuetype);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_NotifyIcon);
   pragma Import(MSIL,add_BalloonTipClicked,"add_BalloonTipClicked");
   pragma Import(MSIL,add_BalloonTipClosed,"add_BalloonTipClosed");
   pragma Import(MSIL,add_BalloonTipShown,"add_BalloonTipShown");
   pragma Import(MSIL,add_Click,"add_Click");
   pragma Import(MSIL,add_DoubleClick,"add_DoubleClick");
   pragma Import(MSIL,add_MouseClick,"add_MouseClick");
   pragma Import(MSIL,add_MouseDoubleClick,"add_MouseDoubleClick");
   pragma Import(MSIL,add_MouseDown,"add_MouseDown");
   pragma Import(MSIL,add_MouseMove,"add_MouseMove");
   pragma Import(MSIL,add_MouseUp,"add_MouseUp");
   pragma Import(MSIL,get_BalloonTipIcon,"get_BalloonTipIcon");
   pragma Import(MSIL,get_BalloonTipText,"get_BalloonTipText");
   pragma Import(MSIL,get_BalloonTipTitle,"get_BalloonTipTitle");
   pragma Import(MSIL,get_ContextMenu,"get_ContextMenu");
   pragma Import(MSIL,get_ContextMenuStrip,"get_ContextMenuStrip");
   pragma Import(MSIL,get_Icon,"get_Icon");
   pragma Import(MSIL,get_Tag,"get_Tag");
   pragma Import(MSIL,get_Text,"get_Text");
   pragma Import(MSIL,get_Visible,"get_Visible");
   pragma Import(MSIL,remove_BalloonTipClicked,"remove_BalloonTipClicked");
   pragma Import(MSIL,remove_BalloonTipClosed,"remove_BalloonTipClosed");
   pragma Import(MSIL,remove_BalloonTipShown,"remove_BalloonTipShown");
   pragma Import(MSIL,remove_Click,"remove_Click");
   pragma Import(MSIL,remove_DoubleClick,"remove_DoubleClick");
   pragma Import(MSIL,remove_MouseClick,"remove_MouseClick");
   pragma Import(MSIL,remove_MouseDoubleClick,"remove_MouseDoubleClick");
   pragma Import(MSIL,remove_MouseDown,"remove_MouseDown");
   pragma Import(MSIL,remove_MouseMove,"remove_MouseMove");
   pragma Import(MSIL,remove_MouseUp,"remove_MouseUp");
   pragma Import(MSIL,set_BalloonTipIcon,"set_BalloonTipIcon");
   pragma Import(MSIL,set_BalloonTipText,"set_BalloonTipText");
   pragma Import(MSIL,set_BalloonTipTitle,"set_BalloonTipTitle");
   pragma Import(MSIL,set_ContextMenu,"set_ContextMenu");
   pragma Import(MSIL,set_ContextMenuStrip,"set_ContextMenuStrip");
   pragma Import(MSIL,set_Icon,"set_Icon");
   pragma Import(MSIL,set_Tag,"set_Tag");
   pragma Import(MSIL,set_Text,"set_Text");
   pragma Import(MSIL,set_Visible,"set_Visible");
   pragma Import(MSIL,ShowBalloonTip,"ShowBalloonTip");
end MSSyst.Windows.Forms.NotifyIcon;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.NotifyIcon,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.NotifyIcon");
