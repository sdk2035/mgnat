-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Drawing.Color;
limited with MSSyst.Drawing.Font;
limited with MSSyst.Drawing.Graphics;
limited with MSSyst.Drawing.Rectangle;
with MSSyst.EventArgs;
limited with MSSyst.String;
limited with MSSyst.Type_k;
with MSSyst.Windows.Forms.DrawItemEventArgs;
limited with MSSyst.Windows.Forms.DrawItemState;
limited with MSSyst.Windows.Forms.StatusBarPanel;
package MSSyst.Windows.Forms.StatusBarDrawItemEventArgs is
   type Typ is new MSSyst.Windows.Forms.DrawItemEventArgs.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_StatusBarDrawItemEventArgs(
      This : Ref := null;
      g : access MSSyst.Drawing.Graphics.Typ'Class;
      font : access MSSyst.Drawing.Font.Typ'Class;
      r : MSSyst.Drawing.Rectangle.Valuetype;
      itemId : Integer;
      itemState : MSSyst.Windows.Forms.DrawItemState.Valuetype;
      panel : access MSSyst.Windows.Forms.StatusBarPanel.Typ'Class) return Ref;
   function new_StatusBarDrawItemEventArgs(
      This : Ref := null;
      g : access MSSyst.Drawing.Graphics.Typ'Class;
      font : access MSSyst.Drawing.Font.Typ'Class;
      r : MSSyst.Drawing.Rectangle.Valuetype;
      itemId : Integer;
      itemState : MSSyst.Windows.Forms.DrawItemState.Valuetype;
      panel : access MSSyst.Windows.Forms.StatusBarPanel.Typ'Class;
      foreColor : MSSyst.Drawing.Color.Valuetype;
      backColor : MSSyst.Drawing.Color.Valuetype) return Ref;
   function get_Panel(
      This : access Typ) return access MSSyst.Windows.Forms.StatusBarPanel.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_StatusBarDrawItemEventArgs);
   pragma Import(MSIL,get_Panel,"get_Panel");
end MSSyst.Windows.Forms.StatusBarDrawItemEventArgs;
pragma Import(MSIL,MSSyst.Windows.Forms.StatusBarDrawItemEventArgs,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.StatusBarDrawItemEventArgs");
