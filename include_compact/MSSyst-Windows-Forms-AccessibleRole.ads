-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.Object.Ref is access;
with type MSSyst.Type_k.Ref is access;
with MSSyst.TypeCode;
with type MSSyst.String.Ref is access;
with type MSSyst.IFormatProvider.Ref is access;
package MSSyst.Windows.Forms.AccessibleRole is
   type ValueType is (
      Default,
      None,
      TitleBar,
      MenuBar,
      ScrollBar,
      Grip,
      Sound,
      Cursor,
      Caret,
      Alert,
      Window,
      Client,
      MenuPopup,
      MenuItem,
      ToolTip,
      Application,
      Document,
      Pane,
      Chart,
      Dialog,
      Border,
      Grouping,
      Separator,
      ToolBar,
      StatusBar,
      Table,
      ColumnHeader,
      RowHeader,
      Column,
      Row,
      Cell,
      Link,
      HelpBalloon,
      Character,
      List,
      ListItem,
      Outline,
      OutlineItem,
      PageTab,
      PropertyPage,
      Indicator,
      Graphic,
      StaticText,
      Text,
      PushButton,
      CheckButton,
      RadioButton,
      ComboBox,
      DropList,
      ProgressBar,
      Dial,
      HotkeyField,
      Slider,
      SpinButton,
      Diagram,
      Animation,
      Equation,
      ButtonDropDown,
      ButtonMenu,
      ButtonDropDownGrid,
      WhiteSpace,
      PageTabList,
      Clock,
      SplitButton,
      IpAddress,
      OutlineButton);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      Default => -1,
      None =>  0,
      TitleBar =>  1,
      MenuBar =>  2,
      ScrollBar =>  3,
      Grip =>  4,
      Sound =>  5,
      Cursor =>  6,
      Caret =>  7,
      Alert =>  8,
      Window =>  9,
      Client =>  10,
      MenuPopup =>  11,
      MenuItem =>  12,
      ToolTip =>  13,
      Application =>  14,
      Document =>  15,
      Pane =>  16,
      Chart =>  17,
      Dialog =>  18,
      Border =>  19,
      Grouping =>  20,
      Separator =>  21,
      ToolBar =>  22,
      StatusBar =>  23,
      Table =>  24,
      ColumnHeader =>  25,
      RowHeader =>  26,
      Column =>  27,
      Row =>  28,
      Cell =>  29,
      Link =>  30,
      HelpBalloon =>  31,
      Character =>  32,
      List =>  33,
      ListItem =>  34,
      Outline =>  35,
      OutlineItem =>  36,
      PageTab =>  37,
      PropertyPage =>  38,
      Indicator =>  39,
      Graphic =>  40,
      StaticText =>  41,
      Text =>  42,
      PushButton =>  43,
      CheckButton =>  44,
      RadioButton =>  45,
      ComboBox =>  46,
      DropList =>  47,
      ProgressBar =>  48,
      Dial =>  49,
      HotkeyField =>  50,
      Slider =>  51,
      SpinButton =>  52,
      Diagram =>  53,
      Animation =>  54,
      Equation =>  55,
      ButtonDropDown =>  56,
      ButtonMenu =>  57,
      ButtonDropDownGrid =>  58,
      WhiteSpace =>  59,
      PageTabList =>  60,
      Clock =>  61,
      SplitButton =>  62,
      IpAddress =>  63,
      OutlineButton =>  64);
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function CompareTo(
      This : Valuetype;
      target : MSSyst.Object.Ref) return Integer;
   function Equals(
      This : Valuetype;
      obj : MSSyst.Object.Ref) return Standard.Boolean;
   function GetHashCode(
      This : Valuetype) return Integer;
   function GetType(
      This : Valuetype) return MSSyst.Type_k.Ref;
   function GetTypeCode(
      This : Valuetype) return MSSyst.TypeCode.Valuetype;
   function ToString(
      This : Valuetype;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype;
      format : MSSyst.String.Ref;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype;
      format : MSSyst.String.Ref) return MSSyst.String.Ref;
private
   pragma Import(MSIL,CompareTo,"CompareTo");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetType,"GetType");
   pragma Import(MSIL,GetTypeCode,"GetTypeCode");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Windows.Forms.AccessibleRole;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.AccessibleRole,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.AccessibleRole");
