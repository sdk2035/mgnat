-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Windows.Forms.LayoutSettings;
with MSSyst.Runtime.Serialization.ISerializable;
with type MSSyst.Object.Ref is access;
with type MSSyst.Windows.Forms.TableLayoutColumnStyleCollection.Ref is access;
with MSSyst.Windows.Forms.TableLayoutPanelGrowStyle;
with type MSSyst.Windows.Forms.Layout.LayoutEngine.Ref is access;
with type MSSyst.Windows.Forms.TableLayoutRowStyleCollection.Ref is access;
with type MSSyst.Windows.Forms.TableLayoutPanelCellPosition.Valuetype is tagged;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Windows.Forms.TableLayoutSettings is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Windows.Forms.LayoutSettings.Typ
         and MSSyst.Runtime.Serialization.ISerializable.Typ
   with record
      null;
   end record;
   function get_ColumnCount(
      This : access Typ) return Integer;
   function get_ColumnStyles(
      This : access Typ) return MSSyst.Windows.Forms.TableLayoutColumnStyleCollection.Ref;
   function get_GrowStyle(
      This : access Typ) return MSSyst.Windows.Forms.TableLayoutPanelGrowStyle.Valuetype;
   function get_LayoutEngine(
      This : access Typ) return MSSyst.Windows.Forms.Layout.LayoutEngine.Ref;
   function get_RowCount(
      This : access Typ) return Integer;
   function get_RowStyles(
      This : access Typ) return MSSyst.Windows.Forms.TableLayoutRowStyleCollection.Ref;
   function GetCellPosition(
      This : access Typ;
      control : MSSyst.Object.Ref) return MSSyst.Windows.Forms.TableLayoutPanelCellPosition.Valuetype;
   function GetColumn(
      This : access Typ;
      control : MSSyst.Object.Ref) return Integer;
   function GetColumnSpan(
      This : access Typ;
      control : MSSyst.Object.Ref) return Integer;
   function GetRow(
      This : access Typ;
      control : MSSyst.Object.Ref) return Integer;
   function GetRowSpan(
      This : access Typ;
      control : MSSyst.Object.Ref) return Integer;
   procedure set_ColumnCount(
      This : access Typ;
      value : Integer);
   procedure set_GrowStyle(
      This : access Typ;
      value : MSSyst.Windows.Forms.TableLayoutPanelGrowStyle.Valuetype);
   procedure set_RowCount(
      This : access Typ;
      value : Integer);
   procedure SetCellPosition(
      This : access Typ;
      control : MSSyst.Object.Ref;
      cellPosition : MSSyst.Windows.Forms.TableLayoutPanelCellPosition.Valuetype);
   procedure SetColumn(
      This : access Typ;
      control : MSSyst.Object.Ref;
      column : Integer);
   procedure SetColumnSpan(
      This : access Typ;
      control : MSSyst.Object.Ref;
      value : Integer);
   procedure SetRow(
      This : access Typ;
      control : MSSyst.Object.Ref;
      row : Integer);
   procedure SetRowSpan(
      This : access Typ;
      control : MSSyst.Object.Ref;
      value : Integer);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,get_ColumnCount,"get_ColumnCount");
   pragma Import(MSIL,get_ColumnStyles,"get_ColumnStyles");
   pragma Import(MSIL,get_GrowStyle,"get_GrowStyle");
   pragma Import(MSIL,get_LayoutEngine,"get_LayoutEngine");
   pragma Import(MSIL,get_RowCount,"get_RowCount");
   pragma Import(MSIL,get_RowStyles,"get_RowStyles");
   pragma Import(MSIL,GetCellPosition,"GetCellPosition");
   pragma Import(MSIL,GetColumn,"GetColumn");
   pragma Import(MSIL,GetColumnSpan,"GetColumnSpan");
   pragma Import(MSIL,GetRow,"GetRow");
   pragma Import(MSIL,GetRowSpan,"GetRowSpan");
   pragma Import(MSIL,set_ColumnCount,"set_ColumnCount");
   pragma Import(MSIL,set_GrowStyle,"set_GrowStyle");
   pragma Import(MSIL,set_RowCount,"set_RowCount");
   pragma Import(MSIL,SetCellPosition,"SetCellPosition");
   pragma Import(MSIL,SetColumn,"SetColumn");
   pragma Import(MSIL,SetColumnSpan,"SetColumnSpan");
   pragma Import(MSIL,SetRow,"SetRow");
   pragma Import(MSIL,SetRowSpan,"SetRowSpan");
end MSSyst.Windows.Forms.TableLayoutSettings;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.TableLayoutSettings,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.TableLayoutSettings");
