-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Runtime.Remoting.Messaging.Header;
with MSSyst.Runtime.Serialization.Formatters.ISoapMessage;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Runtime.Serialization.Formatters.SoapMessage is
   type Typ is new MSSyst.Object.Typ
         and MSSyst.Runtime.Serialization.Formatters.ISoapMessage.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_SoapMessage(
      This : Ref := null) return Ref;
   function get_Headers(
      This : access Typ) return access MSSyst.Runtime.Remoting.Messaging.Header.Ref_arr;
   function get_MethodName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_ParamNames(
      This : access Typ) return access MSSyst.String.Ref_arr;
   function get_ParamTypes(
      This : access Typ) return access MSSyst.Type_k.Ref_arr;
   function get_ParamValues(
      This : access Typ) return access MSSyst.Object.Ref_array;
   function get_XmlNameSpace(
      This : access Typ) return access MSSyst.String.Typ'Class;
   procedure set_Headers(
      This : access Typ;
      value : access MSSyst.Runtime.Remoting.Messaging.Header.Ref_arr);
   procedure set_MethodName(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_ParamNames(
      This : access Typ;
      value : access MSSyst.String.Ref_arr);
   procedure set_ParamTypes(
      This : access Typ;
      value : access MSSyst.Type_k.Ref_arr);
   procedure set_ParamValues(
      This : access Typ;
      value : access MSSyst.Object.Ref_arr);
   procedure set_XmlNameSpace(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_SoapMessage);
   pragma Import(MSIL,get_Headers,"get_Headers");
   pragma Import(MSIL,get_MethodName,"get_MethodName");
   pragma Import(MSIL,get_ParamNames,"get_ParamNames");
   pragma Import(MSIL,get_ParamTypes,"get_ParamTypes");
   pragma Import(MSIL,get_ParamValues,"get_ParamValues");
   pragma Import(MSIL,get_XmlNameSpace,"get_XmlNameSpace");
   pragma Import(MSIL,set_Headers,"set_Headers");
   pragma Import(MSIL,set_MethodName,"set_MethodName");
   pragma Import(MSIL,set_ParamNames,"set_ParamNames");
   pragma Import(MSIL,set_ParamTypes,"set_ParamTypes");
   pragma Import(MSIL,set_ParamValues,"set_ParamValues");
   pragma Import(MSIL,set_XmlNameSpace,"set_XmlNameSpace");
end MSSyst.Runtime.Serialization.Formatters.SoapMessage;
pragma Import(MSIL,MSSyst.Runtime.Serialization.Formatters.SoapMessage,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Runtime.Serialization.Formatters.SoapMessage");
