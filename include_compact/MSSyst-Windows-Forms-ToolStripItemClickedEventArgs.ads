-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.EventArgs;
with type MSSyst.Object.Ref is access;
with type MSSyst.Windows.Forms.ToolStripItem.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Windows.Forms.ToolStripItemClickedEventArgs is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.EventArgs.Typ   with record
      null;
   end record;
   function new_ToolStripItemClickedEventArgs(
      This : Ref := null;
      clickedItem : MSSyst.Windows.Forms.ToolStripItem.Ref) return Ref;
   function get_ClickedItem(
      This : access Typ) return MSSyst.Windows.Forms.ToolStripItem.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ToolStripItemClickedEventArgs);
   pragma Import(MSIL,get_ClickedItem,"get_ClickedItem");
end MSSyst.Windows.Forms.ToolStripItemClickedEventArgs;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.ToolStripItemClickedEventArgs,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ToolStripItemClickedEventArgs");
