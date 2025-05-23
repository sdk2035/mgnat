-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Windows.Forms.DataGridViewElement;
with MSSyst.ICloneable;
with type MSSyst.Windows.Forms.DataGridViewAdvancedBorderStyle.Ref is access;
with type MSSyst.Object.Ref is access;
with type MSSyst.Windows.Forms.AccessibleObject.Ref is access;
with type MSSyst.Drawing.Rectangle.Valuetype is tagged;
with type MSSyst.Windows.Forms.ContextMenuStrip.Ref is access;
with type MSSyst.Windows.Forms.DataGridView.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
with MSSyst.Windows.Forms.DataGridViewElementStates;
with type MSSyst.Windows.Forms.DataGridViewCellStyle.Ref is access;
with type MSSyst.Windows.Forms.DataGridViewColumn.Ref is access;
with type MSSyst.Windows.Forms.DataGridViewRow.Ref is access;
with type MSSyst.Drawing.Size.Valuetype is tagged;
with MSSyst.Windows.Forms.DataGridViewDataErrorContexts;
with type MSSyst.Windows.Forms.KeyEventArgs.Ref is access;
with type MSSyst.Drawing.Graphics.Ref is access;
with type MSSyst.Drawing.Font.Ref is access;
with MSSyst.Windows.Forms.TextFormatFlags;
with type MSSyst.ComponentModel.TypeConverter.Ref is access;
package MSSyst.Windows.Forms.DataGridViewCell is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is abstract new MSSyst.Windows.Forms.DataGridViewElement.Typ
         and MSSyst.ICloneable.Typ
   with record
      null;
   end record;
   function AdjustCellBorderStyle(
      This : access Typ;
      dataGridViewAdvancedBorderStyleInput : MSSyst.Windows.Forms.DataGridViewAdvancedBorderStyle.Ref;
      dataGridViewAdvancedBorderStylePlaceholder : MSSyst.Windows.Forms.DataGridViewAdvancedBorderStyle.Ref;
      singleVerticalBorderAdded : Standard.Boolean;
      singleHorizontalBorderAdded : Standard.Boolean;
      isFirstDisplayedColumn : Standard.Boolean;
      isFirstDisplayedRow : Standard.Boolean) return MSSyst.Windows.Forms.DataGridViewAdvancedBorderStyle.Ref;
   function Clone(
      This : access Typ) return MSSyst.Object.Ref;
   procedure DetachEditingControl(
      This : access Typ);
   procedure Dispose(
      This : access Typ);
   function get_AccessibilityObject(
      This : access Typ) return MSSyst.Windows.Forms.AccessibleObject.Ref;
   function get_ColumnIndex(
      This : access Typ) return Integer;
   function get_ContentBounds(
      This : access Typ) return MSSyst.Drawing.Rectangle.Valuetype;
   function get_ContextMenuStrip(
      This : access Typ) return MSSyst.Windows.Forms.ContextMenuStrip.Ref;
   function get_DefaultNewRowValue(
      This : access Typ) return MSSyst.Object.Ref;
   function get_Displayed(
      This : access Typ) return Standard.Boolean;
   function get_EditedFormattedValue(
      This : access Typ) return MSSyst.Object.Ref;
   function get_EditType(
      This : access Typ) return MSSyst.Type_k.Ref;
   function get_ErrorIconBounds(
      This : access Typ) return MSSyst.Drawing.Rectangle.Valuetype;
   function get_ErrorText(
      This : access Typ) return MSSyst.String.Ref;
   function get_FormattedValue(
      This : access Typ) return MSSyst.Object.Ref;
   function get_FormattedValueType(
      This : access Typ) return MSSyst.Type_k.Ref;
   function get_Frozen(
      This : access Typ) return Standard.Boolean;
   function get_HasStyle(
      This : access Typ) return Standard.Boolean;
   function get_InheritedState(
      This : access Typ) return MSSyst.Windows.Forms.DataGridViewElementStates.Valuetype;
   function get_InheritedStyle(
      This : access Typ) return MSSyst.Windows.Forms.DataGridViewCellStyle.Ref;
   function get_IsInEditMode(
      This : access Typ) return Standard.Boolean;
   function get_OwningColumn(
      This : access Typ) return MSSyst.Windows.Forms.DataGridViewColumn.Ref;
   function get_OwningRow(
      This : access Typ) return MSSyst.Windows.Forms.DataGridViewRow.Ref;
   function get_PreferredSize(
      This : access Typ) return MSSyst.Drawing.Size.Valuetype;
   function get_ReadOnly(
      This : access Typ) return Standard.Boolean;
   function get_Resizable(
      This : access Typ) return Standard.Boolean;
   function get_RowIndex(
      This : access Typ) return Integer;
   function get_Selected(
      This : access Typ) return Standard.Boolean;
   function get_Size(
      This : access Typ) return MSSyst.Drawing.Size.Valuetype;
   function get_Style(
      This : access Typ) return MSSyst.Windows.Forms.DataGridViewCellStyle.Ref;
   function get_Tag(
      This : access Typ) return MSSyst.Object.Ref;
   function get_ToolTipText(
      This : access Typ) return MSSyst.String.Ref;
   function get_Value(
      This : access Typ) return MSSyst.Object.Ref;
   function get_ValueType(
      This : access Typ) return MSSyst.Type_k.Ref;
   function get_Visible(
      This : access Typ) return Standard.Boolean;
   function GetContentBounds(
      This : access Typ;
      rowIndex : Integer) return MSSyst.Drawing.Rectangle.Valuetype;
   function GetEditedFormattedValue(
      This : access Typ;
      rowIndex : Integer;
      context : MSSyst.Windows.Forms.DataGridViewDataErrorContexts.Valuetype) return MSSyst.Object.Ref;
   function GetInheritedContextMenuStrip(
      This : access Typ;
      rowIndex : Integer) return MSSyst.Windows.Forms.ContextMenuStrip.Ref;
   function GetInheritedState(
      This : access Typ;
      rowIndex : Integer) return MSSyst.Windows.Forms.DataGridViewElementStates.Valuetype;
   function GetInheritedStyle(
      This : access Typ;
      inheritedCellStyle : MSSyst.Windows.Forms.DataGridViewCellStyle.Ref;
      rowIndex : Integer;
      includeColors : Standard.Boolean) return MSSyst.Windows.Forms.DataGridViewCellStyle.Ref;
   procedure InitializeEditingControl(
      This : access Typ;
      rowIndex : Integer;
      initialFormattedValue : MSSyst.Object.Ref;
      dataGridViewCellStyle : MSSyst.Windows.Forms.DataGridViewCellStyle.Ref);
   function KeyEntersEditMode(
      This : access Typ;
      e : MSSyst.Windows.Forms.KeyEventArgs.Ref) return Standard.Boolean;
   function MeasureTextHeight(
      graphics : MSSyst.Drawing.Graphics.Ref;
      text : MSSyst.String.Ref;
      font : MSSyst.Drawing.Font.Ref;
      maxWidth : Integer;
      flags : MSSyst.Windows.Forms.TextFormatFlags.Valuetype) return Integer;
   function MeasureTextHeight(
      graphics : MSSyst.Drawing.Graphics.Ref;
      text : MSSyst.String.Ref;
      font : MSSyst.Drawing.Font.Ref;
      maxWidth : Integer;
      flags : MSSyst.Windows.Forms.TextFormatFlags.Valuetype;
      widthTruncated : MSIL_Types.Bool_addrof) return Integer;
   function MeasureTextPreferredSize(
      graphics : MSSyst.Drawing.Graphics.Ref;
      text : MSSyst.String.Ref;
      font : MSSyst.Drawing.Font.Ref;
      maxRatio : Float;
      flags : MSSyst.Windows.Forms.TextFormatFlags.Valuetype) return MSSyst.Drawing.Size.Valuetype;
   function MeasureTextSize(
      graphics : MSSyst.Drawing.Graphics.Ref;
      text : MSSyst.String.Ref;
      font : MSSyst.Drawing.Font.Ref;
      flags : MSSyst.Windows.Forms.TextFormatFlags.Valuetype) return MSSyst.Drawing.Size.Valuetype;
   function MeasureTextWidth(
      graphics : MSSyst.Drawing.Graphics.Ref;
      text : MSSyst.String.Ref;
      font : MSSyst.Drawing.Font.Ref;
      maxHeight : Integer;
      flags : MSSyst.Windows.Forms.TextFormatFlags.Valuetype) return Integer;
   function ParseFormattedValue(
      This : access Typ;
      formattedValue : MSSyst.Object.Ref;
      cellStyle : MSSyst.Windows.Forms.DataGridViewCellStyle.Ref;
      formattedValueTypeConverter : MSSyst.ComponentModel.TypeConverter.Ref;
      valueTypeConverter : MSSyst.ComponentModel.TypeConverter.Ref) return MSSyst.Object.Ref;
   procedure PositionEditingControl(
      This : access Typ;
      setLocation : Standard.Boolean;
      setSize : Standard.Boolean;
      cellBounds : MSSyst.Drawing.Rectangle.Valuetype;
      cellClip : MSSyst.Drawing.Rectangle.Valuetype;
      cellStyle : MSSyst.Windows.Forms.DataGridViewCellStyle.Ref;
      singleVerticalBorderAdded : Standard.Boolean;
      singleHorizontalBorderAdded : Standard.Boolean;
      isFirstDisplayedColumn : Standard.Boolean;
      isFirstDisplayedRow : Standard.Boolean);
   function PositionEditingPanel(
      This : access Typ;
      cellBounds : MSSyst.Drawing.Rectangle.Valuetype;
      cellClip : MSSyst.Drawing.Rectangle.Valuetype;
      cellStyle : MSSyst.Windows.Forms.DataGridViewCellStyle.Ref;
      singleVerticalBorderAdded : Standard.Boolean;
      singleHorizontalBorderAdded : Standard.Boolean;
      isFirstDisplayedColumn : Standard.Boolean;
      isFirstDisplayedRow : Standard.Boolean) return MSSyst.Drawing.Rectangle.Valuetype;
   procedure set_ContextMenuStrip(
      This : access Typ;
      value : MSSyst.Windows.Forms.ContextMenuStrip.Ref);
   procedure set_ErrorText(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_ReadOnly(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Selected(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Style(
      This : access Typ;
      value : MSSyst.Windows.Forms.DataGridViewCellStyle.Ref);
   procedure set_Tag(
      This : access Typ;
      value : MSSyst.Object.Ref);
   procedure set_ToolTipText(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_Value(
      This : access Typ;
      value : MSSyst.Object.Ref);
   procedure set_ValueType(
      This : access Typ;
      value : MSSyst.Type_k.Ref);
   function ToString(
      This : access Typ) return MSSyst.String.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,AdjustCellBorderStyle,"AdjustCellBorderStyle");
   pragma Import(MSIL,Clone,"Clone");
   pragma Import(MSIL,DetachEditingControl,"DetachEditingControl");
   pragma Import(MSIL,Dispose,"Dispose");
   pragma Import(MSIL,get_AccessibilityObject,"get_AccessibilityObject");
   pragma Import(MSIL,get_ColumnIndex,"get_ColumnIndex");
   pragma Import(MSIL,get_ContentBounds,"get_ContentBounds");
   pragma Import(MSIL,get_ContextMenuStrip,"get_ContextMenuStrip");
   pragma Import(MSIL,get_DefaultNewRowValue,"get_DefaultNewRowValue");
   pragma Import(MSIL,get_Displayed,"get_Displayed");
   pragma Import(MSIL,get_EditedFormattedValue,"get_EditedFormattedValue");
   pragma Import(MSIL,get_EditType,"get_EditType");
   pragma Import(MSIL,get_ErrorIconBounds,"get_ErrorIconBounds");
   pragma Import(MSIL,get_ErrorText,"get_ErrorText");
   pragma Import(MSIL,get_FormattedValue,"get_FormattedValue");
   pragma Import(MSIL,get_FormattedValueType,"get_FormattedValueType");
   pragma Import(MSIL,get_Frozen,"get_Frozen");
   pragma Import(MSIL,get_HasStyle,"get_HasStyle");
   pragma Import(MSIL,get_InheritedState,"get_InheritedState");
   pragma Import(MSIL,get_InheritedStyle,"get_InheritedStyle");
   pragma Import(MSIL,get_IsInEditMode,"get_IsInEditMode");
   pragma Import(MSIL,get_OwningColumn,"get_OwningColumn");
   pragma Import(MSIL,get_OwningRow,"get_OwningRow");
   pragma Import(MSIL,get_PreferredSize,"get_PreferredSize");
   pragma Import(MSIL,get_ReadOnly,"get_ReadOnly");
   pragma Import(MSIL,get_Resizable,"get_Resizable");
   pragma Import(MSIL,get_RowIndex,"get_RowIndex");
   pragma Import(MSIL,get_Selected,"get_Selected");
   pragma Import(MSIL,get_Size,"get_Size");
   pragma Import(MSIL,get_Style,"get_Style");
   pragma Import(MSIL,get_Tag,"get_Tag");
   pragma Import(MSIL,get_ToolTipText,"get_ToolTipText");
   pragma Import(MSIL,get_Value,"get_Value");
   pragma Import(MSIL,get_ValueType,"get_ValueType");
   pragma Import(MSIL,get_Visible,"get_Visible");
   pragma Import(MSIL,GetContentBounds,"GetContentBounds");
   pragma Import(MSIL,GetEditedFormattedValue,"GetEditedFormattedValue");
   pragma Import(MSIL,GetInheritedContextMenuStrip,"GetInheritedContextMenuStrip");
   pragma Import(MSIL,GetInheritedState,"GetInheritedState");
   pragma Import(MSIL,GetInheritedStyle,"GetInheritedStyle");
   pragma Import(MSIL,InitializeEditingControl,"InitializeEditingControl");
   pragma Import(MSIL,KeyEntersEditMode,"KeyEntersEditMode");
   pragma Import(MSIL,MeasureTextHeight,"MeasureTextHeight");
   pragma Import(MSIL,MeasureTextPreferredSize,"MeasureTextPreferredSize");
   pragma Import(MSIL,MeasureTextSize,"MeasureTextSize");
   pragma Import(MSIL,MeasureTextWidth,"MeasureTextWidth");
   pragma Import(MSIL,ParseFormattedValue,"ParseFormattedValue");
   pragma Import(MSIL,PositionEditingControl,"PositionEditingControl");
   pragma Import(MSIL,PositionEditingPanel,"PositionEditingPanel");
   pragma Import(MSIL,set_ContextMenuStrip,"set_ContextMenuStrip");
   pragma Import(MSIL,set_ErrorText,"set_ErrorText");
   pragma Import(MSIL,set_ReadOnly,"set_ReadOnly");
   pragma Import(MSIL,set_Selected,"set_Selected");
   pragma Import(MSIL,set_Style,"set_Style");
   pragma Import(MSIL,set_Tag,"set_Tag");
   pragma Import(MSIL,set_ToolTipText,"set_ToolTipText");
   pragma Import(MSIL,set_Value,"set_Value");
   pragma Import(MSIL,set_ValueType,"set_ValueType");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Windows.Forms.DataGridViewCell;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.DataGridViewCell,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.DataGridViewCell");
