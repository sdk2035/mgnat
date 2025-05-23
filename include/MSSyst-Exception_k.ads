-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Collections.IDictionary;
limited with MSSyst.Reflection.MethodBase;
with MSSyst.Runtime.InteropServices.uException;
with MSSyst.Runtime.Serialization.ISerializable;
limited with MSSyst.Runtime.Serialization.SerializationInfo;
limited with MSSyst.Runtime.Serialization.StreamingContext;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Exception_k is
   type Typ is new MSSyst.Object.Typ
         and MSSyst.Runtime.Serialization.ISerializable.Typ
         and MSSyst.Runtime.InteropServices.uException.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_Exception(
      This : Ref := null) return Ref;
   function new_Exception(
      This : Ref := null;
      message : access MSSyst.String.Typ'Class) return Ref;
   function new_Exception(
      This : Ref := null;
      message : access MSSyst.String.Typ'Class;
      innerException : access MSSyst.Exception_k.Typ'Class) return Ref;
   function get_Data(
      This : access Typ) return access MSSyst.Collections.IDictionary.Typ'Class;
   function get_HelpLink(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_InnerException(
      This : access Typ) return access MSSyst.Exception_k.Typ'Class;
   function get_Message(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Source(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_StackTrace(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_TargetSite(
      This : access Typ) return access MSSyst.Reflection.MethodBase.Typ'Class;
   function GetBaseException(
      This : access Typ) return access MSSyst.Exception_k.Typ'Class;
   procedure GetObjectData(
      This : access Typ;
      info : access MSSyst.Runtime.Serialization.SerializationInfo.Typ'Class;
      context : MSSyst.Runtime.Serialization.StreamingContext.Valuetype);
   function GetType(
      This : access Typ) return access MSSyst.Type_k.Typ'Class;
   procedure set_HelpLink(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_Source(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_Exception);
   pragma Import(MSIL,get_Data,"get_Data");
   pragma Import(MSIL,get_HelpLink,"get_HelpLink");
   pragma Import(MSIL,get_InnerException,"get_InnerException");
   pragma Import(MSIL,get_Message,"get_Message");
   pragma Import(MSIL,get_Source,"get_Source");
   pragma Import(MSIL,get_StackTrace,"get_StackTrace");
   pragma Import(MSIL,get_TargetSite,"get_TargetSite");
   pragma Import(MSIL,GetBaseException,"GetBaseException");
   pragma Import(MSIL,GetObjectData,"GetObjectData");
   pragma Import(MSIL,GetType,"GetType");
   pragma Import(MSIL,set_HelpLink,"set_HelpLink");
   pragma Import(MSIL,set_Source,"set_Source");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Exception_k;
pragma Import(MSIL,MSSyst.Exception_k,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Exception");
