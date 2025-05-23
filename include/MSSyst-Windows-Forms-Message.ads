-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.String;
limited with MSSyst.Type_k;
with MSSyst.ValueType;
package MSSyst.Windows.Forms.Message is
   type ValueType is new MSSyst.ValueType.Typ with null record;
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function Create(
      hWnd : MSIL_Types.native_int;
      msg : Integer;
      wparam : MSIL_Types.native_int;
      lparam : MSIL_Types.native_int) return MSSyst.Windows.Forms.Message.Valuetype;
   function Equals(
      This : Valuetype;
      o : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function get_HWnd(
      This : Valuetype) return MSIL_Types.native_int;
   function get_LParam(
      This : Valuetype) return MSIL_Types.native_int;
   function get_Msg(
      This : Valuetype) return Integer;
   function get_Result(
      This : Valuetype) return MSIL_Types.native_int;
   function get_WParam(
      This : Valuetype) return MSIL_Types.native_int;
   function GetHashCode(
      This : Valuetype) return Integer;
   function GetLParam(
      This : Valuetype;
      cls : access MSSyst.Type_k.Typ'Class) return access MSSyst.Object.Typ'Class;
   function op_Equality(
      a : MSSyst.Windows.Forms.Message.Valuetype;
      b : MSSyst.Windows.Forms.Message.Valuetype) return Standard.Boolean;
   function op_Inequality(
      a : MSSyst.Windows.Forms.Message.Valuetype;
      b : MSSyst.Windows.Forms.Message.Valuetype) return Standard.Boolean;
   procedure set_HWnd(
      This : Valuetype;
      value : MSIL_Types.native_int);
   procedure set_LParam(
      This : Valuetype;
      value : MSIL_Types.native_int);
   procedure set_Msg(
      This : Valuetype;
      value : Integer);
   procedure set_Result(
      This : Valuetype;
      value : MSIL_Types.native_int);
   procedure set_WParam(
      This : Valuetype;
      value : MSIL_Types.native_int);
   function ToString(
      This : Valuetype) return access MSSyst.String.Typ'Class;
private
   pragma Import(MSIL,Create,"Create");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,get_HWnd,"get_HWnd");
   pragma Import(MSIL,get_LParam,"get_LParam");
   pragma Import(MSIL,get_Msg,"get_Msg");
   pragma Import(MSIL,get_Result,"get_Result");
   pragma Import(MSIL,get_WParam,"get_WParam");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetLParam,"GetLParam");
   pragma Import(MSIL,op_Equality,"op_Equality");
   pragma Import(MSIL,op_Inequality,"op_Inequality");
   pragma Import(MSIL,set_HWnd,"set_HWnd");
   pragma Import(MSIL,set_LParam,"set_LParam");
   pragma Import(MSIL,set_Msg,"set_Msg");
   pragma Import(MSIL,set_Result,"set_Result");
   pragma Import(MSIL,set_WParam,"set_WParam");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Windows.Forms.Message;
pragma Import(MSIL,MSSyst.Windows.Forms.Message,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.Message");
