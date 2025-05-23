-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Windows.Forms.ToolStripDropDownButton;
with MSSyst.ComponentModel.IComponent;
with type MSSyst.EventHandler.Ref is access;
with type MSSyst.Windows.Forms.DragEventHandler.Ref is access;
with type MSSyst.Windows.Forms.ToolStripItemClickedEventHandler.Ref is access;
with type MSSyst.Windows.Forms.GiveFeedbackEventHandler.Ref is access;
with type MSSyst.Windows.Forms.MouseEventHandler.Ref is access;
with type MSSyst.Windows.Forms.PaintEventHandler.Ref is access;
with type MSSyst.Windows.Forms.QueryAccessibilityHelpEventHandler.Ref is access;
with type MSSyst.Windows.Forms.QueryContinueDragEventHandler.Ref is access;
with type MSSyst.Runtime.Remoting.ObjRef.Ref is access;
with type MSSyst.Type_k.Ref is access;
with MSSyst.Windows.Forms.DragDropEffects;
with type MSSyst.Object.Ref is access;
with type MSSyst.Windows.Forms.AccessibleObject.Ref is access;
with type MSSyst.String.Ref is access;
with MSSyst.Windows.Forms.AccessibleRole;
with MSSyst.Windows.Forms.ToolStripItemAlignment;
with MSSyst.Windows.Forms.AnchorStyles;
with type MSSyst.Drawing.Color.Valuetype is tagged;
with type MSSyst.Drawing.Image.Ref is access;
with MSSyst.Windows.Forms.ImageLayout;
with type MSSyst.Drawing.Rectangle.Valuetype is tagged;
with type MSSyst.ComponentModel.IContainer.Ref is access;
with MSSyst.Windows.Forms.ToolStripItemDisplayStyle;
with MSSyst.Windows.Forms.DockStyle;
with type MSSyst.Windows.Forms.ToolStripDropDown.Ref is access;
with MSSyst.Windows.Forms.ToolStripDropDownDirection;
with type MSSyst.Windows.Forms.ToolStripItemCollection.Ref is access;
with type MSSyst.Drawing.Font.Ref is access;
with MSSyst.Drawing.ContentAlignment;
with MSSyst.Windows.Forms.ToolStripItemImageScaling;
with type MSSyst.Windows.Forms.Padding.Valuetype is tagged;
with MSSyst.Windows.Forms.MergeAction;
with MSSyst.Windows.Forms.ToolStripItemOverflow;
with type MSSyst.Windows.Forms.ToolStrip.Ref is access;
with type MSSyst.Windows.Forms.ToolStripItem.Ref is access;
with MSSyst.Windows.Forms.ToolStripItemPlacement;
with MSSyst.Windows.Forms.RightToLeft;
with type MSSyst.ComponentModel.ISite.Ref is access;
with type MSSyst.Drawing.Size.Valuetype is tagged;
with MSSyst.Windows.Forms.ToolStripTextDirection;
with MSSyst.Windows.Forms.TextImageRelation;
package MSSyst.Windows.Forms.ToolStripOverflowButton is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Windows.Forms.ToolStripDropDownButton.Typ
         and MSSyst.ComponentModel.IComponent.Typ
   with record
      null;
   end record;
   function get_HasDropDownItems(
      This : access Typ) return Standard.Boolean;
   function get_RightToLeftAutoMirrorImage(
      This : access Typ) return Standard.Boolean;
   function GetPreferredSize(
      This : access Typ;
      constrainingSize : MSSyst.Drawing.Size.Valuetype) return MSSyst.Drawing.Size.Valuetype;
   procedure set_RightToLeftAutoMirrorImage(
      This : access Typ;
      value : Standard.Boolean);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,get_HasDropDownItems,"get_HasDropDownItems");
   pragma Import(MSIL,get_RightToLeftAutoMirrorImage,"get_RightToLeftAutoMirrorImage");
   pragma Import(MSIL,GetPreferredSize,"GetPreferredSize");
   pragma Import(MSIL,set_RightToLeftAutoMirrorImage,"set_RightToLeftAutoMirrorImage");
end MSSyst.Windows.Forms.ToolStripOverflowButton;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.ToolStripOverflowButton,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ToolStripOverflowButton");
