-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Windows.Forms.DrawItemEventArgs;
with type MSSyst.Object.Ref is access;
with type MSSyst.Drawing.Color.Valuetype is tagged;
with type MSSyst.Drawing.Rectangle.Valuetype is tagged;
with type MSSyst.Drawing.Font.Ref is access;
with type MSSyst.Drawing.Graphics.Ref is access;
with type MSSyst.Windows.Forms.StatusBarPanel.Ref is access;
with MSSyst.Windows.Forms.DrawItemState;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Windows.Forms.StatusBarDrawItemEventArgs is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Windows.Forms.DrawItemEventArgs.Typ   with record
      null;
   end record;
   function new_StatusBarDrawItemEventArgs(
      This : Ref := null;
      g : MSSyst.Drawing.Graphics.Ref;
      font : MSSyst.Drawing.Font.Ref;
      r : MSSyst.Drawing.Rectangle.Valuetype;
      itemId : Integer;
      itemState : MSSyst.Windows.Forms.DrawItemState.Valuetype;
      panel : MSSyst.Windows.Forms.StatusBarPanel.Ref) return Ref;
   function new_StatusBarDrawItemEventArgs(
      This : Ref := null;
      g : MSSyst.Drawing.Graphics.Ref;
      font : MSSyst.Drawing.Font.Ref;
      r : MSSyst.Drawing.Rectangle.Valuetype;
      itemId : Integer;
      itemState : MSSyst.Windows.Forms.DrawItemState.Valuetype;
      panel : MSSyst.Windows.Forms.StatusBarPanel.Ref;
      foreColor : MSSyst.Drawing.Color.Valuetype;
      backColor : MSSyst.Drawing.Color.Valuetype) return Ref;
   function get_Panel(
      This : access Typ) return MSSyst.Windows.Forms.StatusBarPanel.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_StatusBarDrawItemEventArgs);
   pragma Import(MSIL,get_Panel,"get_Panel");
end MSSyst.Windows.Forms.StatusBarDrawItemEventArgs;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.StatusBarDrawItemEventArgs,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.StatusBarDrawItemEventArgs");
