-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.ComponentModel.TypeConverter;
limited with MSSyst.Drawing.Rectangle;
limited with MSSyst.Drawing.Size;
with MSSyst.ICloneable;
with MSSyst.IDisposable;
limited with MSSyst.String;
limited with MSSyst.Type_k;
limited with MSSyst.Windows.Forms.AccessibleObject;
limited with MSSyst.Windows.Forms.ContextMenuStrip;
limited with MSSyst.Windows.Forms.DataGridViewAdvancedBorderStyle;
with MSSyst.Windows.Forms.DataGridViewCell;
limited with MSSyst.Windows.Forms.DataGridViewCellStyle;
with MSSyst.Windows.Forms.DataGridViewColumnHeaderCell;
limited with MSSyst.Windows.Forms.DataGridViewColumn;
limited with MSSyst.Windows.Forms.DataGridViewDataErrorContexts;
with MSSyst.Windows.Forms.DataGridViewElement;
limited with MSSyst.Windows.Forms.DataGridViewElementStates;
with MSSyst.Windows.Forms.DataGridViewHeaderCell;
limited with MSSyst.Windows.Forms.DataGridViewRow;
limited with MSSyst.Windows.Forms.DataGridView;
limited with MSSyst.Windows.Forms.KeyEventArgs;
limited with MSSyst.Windows.Forms.SortOrder;
package MSSyst.Windows.Forms.DataGridViewTopLeftHeaderCell is
   type Typ is new MSSyst.Windows.Forms.DataGridViewColumnHeaderCell.Typ
         and MSSyst.ICloneable.Typ
         and MSSyst.IDisposable.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_DataGridViewTopLeftHeaderCell(
      This : Ref := null) return Ref;
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_DataGridViewTopLeftHeaderCell);
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Windows.Forms.DataGridViewTopLeftHeaderCell;
pragma Import(MSIL,MSSyst.Windows.Forms.DataGridViewTopLeftHeaderCell,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.DataGridViewTopLeftHeaderCell");
