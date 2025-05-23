-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Collections.IDictionary;
with MSSyst.Exception_k;
limited with MSSyst.Reflection.MethodBase;
with MSSyst.Runtime.InteropServices.uException;
with MSSyst.Runtime.Serialization.ISerializable;
limited with MSSyst.Runtime.Serialization.SerializationInfo;
limited with MSSyst.Runtime.Serialization.StreamingContext;
limited with MSSyst.String;
with MSSyst.SystemException;
limited with MSSyst.Type_k;
limited with MSSyst.Xml.XmlNode;
package MSSyst.Configuration.ConfigurationException is
   type Typ is new MSSyst.SystemException.Typ
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
   function new_ConfigurationException(
      This : Ref := null) return Ref;
   function new_ConfigurationException(
      This : Ref := null;
      message : access MSSyst.String.Typ'Class) return Ref;
   function new_ConfigurationException(
      This : Ref := null;
      message : access MSSyst.String.Typ'Class;
      inner : access MSSyst.Exception_k.Typ'Class) return Ref;
   function new_ConfigurationException(
      This : Ref := null;
      message : access MSSyst.String.Typ'Class;
      node : access MSSyst.Xml.XmlNode.Typ'Class) return Ref;
   function new_ConfigurationException(
      This : Ref := null;
      message : access MSSyst.String.Typ'Class;
      inner : access MSSyst.Exception_k.Typ'Class;
      node : access MSSyst.Xml.XmlNode.Typ'Class) return Ref;
   function new_ConfigurationException(
      This : Ref := null;
      message : access MSSyst.String.Typ'Class;
      filename : access MSSyst.String.Typ'Class;
      line : Integer) return Ref;
   function new_ConfigurationException(
      This : Ref := null;
      message : access MSSyst.String.Typ'Class;
      inner : access MSSyst.Exception_k.Typ'Class;
      filename : access MSSyst.String.Typ'Class;
      line : Integer) return Ref;
   function get_BareMessage(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Filename(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Line(
      This : access Typ) return Integer;
   function get_Message(
      This : access Typ) return access MSSyst.String.Typ'Class;
   procedure GetObjectData(
      This : access Typ;
      info : access MSSyst.Runtime.Serialization.SerializationInfo.Typ'Class;
      context : MSSyst.Runtime.Serialization.StreamingContext.Valuetype);
   function GetXmlNodeFilename(
      node : access MSSyst.Xml.XmlNode.Typ'Class) return access MSSyst.String.Typ'Class;
   function GetXmlNodeLineNumber(
      node : access MSSyst.Xml.XmlNode.Typ'Class) return Integer;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ConfigurationException);
   pragma Import(MSIL,get_BareMessage,"get_BareMessage");
   pragma Import(MSIL,get_Filename,"get_Filename");
   pragma Import(MSIL,get_Line,"get_Line");
   pragma Import(MSIL,get_Message,"get_Message");
   pragma Import(MSIL,GetObjectData,"GetObjectData");
   pragma Import(MSIL,GetXmlNodeFilename,"GetXmlNodeFilename");
   pragma Import(MSIL,GetXmlNodeLineNumber,"GetXmlNodeLineNumber");
end MSSyst.Configuration.ConfigurationException;
pragma Import(MSIL,MSSyst.Configuration.ConfigurationException,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Configuration.ConfigurationException");
