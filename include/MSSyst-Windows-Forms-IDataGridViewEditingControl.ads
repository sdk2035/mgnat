-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Windows.Forms.Cursor;
limited with MSSyst.Windows.Forms.DataGridViewCellStyle;
limited with MSSyst.Windows.Forms.DataGridViewDataErrorContexts;
limited with MSSyst.Windows.Forms.DataGridView;
limited with MSSyst.Windows.Forms.Keys;
package MSSyst.Windows.Forms.IDataGridViewEditingControl is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure ApplyCellStyleToEditingControl(
      This : access Typ;
      dataGridViewCellStyle : access MSSyst.Windows.Forms.DataGridViewCellStyle.Typ'Class) is abstract;
   function EditingControlWantsInputKey(
      This : access Typ;
      keyData : MSSyst.Windows.Forms.Keys.Valuetype;
      dataGridViewWantsInputKey : Standard.Boolean) return Standard.Boolean is abstract;
   function get_EditingControlDataGridView(
      This : access Typ) return access MSSyst.Windows.Forms.DataGridView.Typ'Class is abstract;
   function get_EditingControlFormattedValue(
      This : access Typ) return access MSSyst.Object.Typ'Class is abstract;
   function get_EditingControlRowIndex(
      This : access Typ) return Integer is abstract;
   function get_EditingControlValueChanged(
      This : access Typ) return Standard.Boolean is abstract;
   function get_EditingPanelCursor(
      This : access Typ) return access MSSyst.Windows.Forms.Cursor.Typ'Class is abstract;
   function get_RepositionEditingControlOnValueChange(
      This : access Typ) return Standard.Boolean is abstract;
   function GetEditingControlFormattedValue(
      This : access Typ;
      context : MSSyst.Windows.Forms.DataGridViewDataErrorContexts.Valuetype) return access MSSyst.Object.Typ'Class is abstract;
   procedure PrepareEditingControlForEdit(
      This : access Typ;
      selectAll : Standard.Boolean) is abstract;
   procedure set_EditingControlDataGridView(
      This : access Typ;
      value : access MSSyst.Windows.Forms.DataGridView.Typ'Class) is abstract;
   procedure set_EditingControlFormattedValue(
      This : access Typ;
      value : access MSSyst.Object.Typ'Class) is abstract;
   procedure set_EditingControlRowIndex(
      This : access Typ;
      value : Integer) is abstract;
   procedure set_EditingControlValueChanged(
      This : access Typ;
      value : Standard.Boolean) is abstract;
private
   pragma Import(MSIL,ApplyCellStyleToEditingControl,"ApplyCellStyleToEditingControl");
   pragma Import(MSIL,EditingControlWantsInputKey,"EditingControlWantsInputKey");
   pragma Import(MSIL,get_EditingControlDataGridView,"get_EditingControlDataGridView");
   pragma Import(MSIL,get_EditingControlFormattedValue,"get_EditingControlFormattedValue");
   pragma Import(MSIL,get_EditingControlRowIndex,"get_EditingControlRowIndex");
   pragma Import(MSIL,get_EditingControlValueChanged,"get_EditingControlValueChanged");
   pragma Import(MSIL,get_EditingPanelCursor,"get_EditingPanelCursor");
   pragma Import(MSIL,get_RepositionEditingControlOnValueChange,"get_RepositionEditingControlOnValueChange");
   pragma Import(MSIL,GetEditingControlFormattedValue,"GetEditingControlFormattedValue");
   pragma Import(MSIL,PrepareEditingControlForEdit,"PrepareEditingControlForEdit");
   pragma Import(MSIL,set_EditingControlDataGridView,"set_EditingControlDataGridView");
   pragma Import(MSIL,set_EditingControlFormattedValue,"set_EditingControlFormattedValue");
   pragma Import(MSIL,set_EditingControlRowIndex,"set_EditingControlRowIndex");
   pragma Import(MSIL,set_EditingControlValueChanged,"set_EditingControlValueChanged");
end MSSyst.Windows.Forms.IDataGridViewEditingControl;
pragma Import(MSIL,MSSyst.Windows.Forms.IDataGridViewEditingControl,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.IDataGridViewEditingControl");
