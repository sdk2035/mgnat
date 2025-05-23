-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.IFormatProvider;
limited with MSSyst.String;
limited with MSSyst.TypeCode;
limited with MSSyst.Type_k;
package MSSyst.Windows.Forms.AccessibleEvents is
   type ValueType is (
      SystemSound,
      SystemAlert,
      SystemForeground,
      SystemMenuStart,
      SystemMenuEnd,
      SystemMenuPopupStart,
      SystemMenuPopupEnd,
      SystemCaptureStart,
      SystemCaptureEnd,
      SystemMoveSizeStart,
      SystemMoveSizeEnd,
      SystemContextHelpStart,
      SystemContextHelpEnd,
      SystemDragDropStart,
      SystemDragDropEnd,
      SystemDialogStart,
      SystemDialogEnd,
      SystemScrollingStart,
      SystemScrollingEnd,
      SystemSwitchStart,
      SystemSwitchEnd,
      SystemMinimizeStart,
      SystemMinimizeEnd,
      Create,
      Destroy,
      Show,
      Hide,
      Reorder,
      Focus,
      Selection,
      SelectionAdd,
      SelectionRemove,
      SelectionWithin,
      StateChange,
      LocationChange,
      NameChange,
      DescriptionChange,
      ValueChange,
      ParentChange,
      HelpChange,
      DefaultActionChange,
      AcceleratorChange);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      SystemSound =>  0,
      SystemAlert =>  2,
      SystemForeground =>  3,
      SystemMenuStart =>  4,
      SystemMenuEnd =>  5,
      SystemMenuPopupStart =>  6,
      SystemMenuPopupEnd =>  7,
      SystemCaptureStart =>  8,
      SystemCaptureEnd =>  9,
      SystemMoveSizeStart =>  10,
      SystemMoveSizeEnd =>  11,
      SystemContextHelpStart =>  12,
      SystemContextHelpEnd =>  13,
      SystemDragDropStart =>  14,
      SystemDragDropEnd =>  15,
      SystemDialogStart =>  16,
      SystemDialogEnd =>  17,
      SystemScrollingStart =>  18,
      SystemScrollingEnd =>  19,
      SystemSwitchStart =>  20,
      SystemSwitchEnd =>  21,
      SystemMinimizeStart =>  22,
      SystemMinimizeEnd =>  23,
      Create =>  32768,
      Destroy =>  32769,
      Show =>  32770,
      Hide =>  32771,
      Reorder =>  32772,
      Focus =>  32773,
      Selection =>  32774,
      SelectionAdd =>  32775,
      SelectionRemove =>  32776,
      SelectionWithin =>  32777,
      StateChange =>  32778,
      LocationChange =>  32779,
      NameChange =>  32780,
      DescriptionChange =>  32781,
      ValueChange =>  32782,
      ParentChange =>  32783,
      HelpChange =>  32784,
      DefaultActionChange =>  32785,
      AcceleratorChange =>  32786);
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function CompareTo(
      This : Valuetype;
      target : access MSSyst.Object.Typ'Class) return Integer;
   function Equals(
      This : Valuetype;
      obj : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function GetHashCode(
      This : Valuetype) return Integer;
   function GetType(
      This : Valuetype) return access MSSyst.Type_k.Typ'Class;
   function GetTypeCode(
      This : Valuetype) return MSSyst.TypeCode.Valuetype;
   function ToString(
      This : Valuetype;
      provider : access MSSyst.IFormatProvider.Typ'Class) return access MSSyst.String.Typ'Class;
   function ToString(
      This : Valuetype) return access MSSyst.String.Typ'Class;
   function ToString(
      This : Valuetype;
      format : access MSSyst.String.Typ'Class;
      provider : access MSSyst.IFormatProvider.Typ'Class) return access MSSyst.String.Typ'Class;
   function ToString(
      This : Valuetype;
      format : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
private
   pragma Import(MSIL,CompareTo,"CompareTo");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetType,"GetType");
   pragma Import(MSIL,GetTypeCode,"GetTypeCode");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Windows.Forms.AccessibleEvents;
pragma Import(MSIL,MSSyst.Windows.Forms.AccessibleEvents,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.AccessibleEvents");
