-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Reflection.Assembly;
limited with MSSyst.Reflection.MethodBase;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Runtime.Remoting.SoapServices is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function CodeXmlNamespaceForClrTypeNamespace(
      typeNamespace : access MSSyst.String.Typ'Class;
      assemblyName : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function DecodeXmlNamespaceForClrTypeNamespace(
      inNamespace : access MSSyst.String.Typ'Class;
      typeNamespace : access MSSyst.String.Ref;
      assemblyName : access MSSyst.String.Ref) return Standard.Boolean;
   function get_XmlNsForClrType return access MSSyst.String.Typ'Class;
   function get_XmlNsForClrTypeWithAssembly return access MSSyst.String.Typ'Class;
   function get_XmlNsForClrTypeWithNs return access MSSyst.String.Typ'Class;
   function get_XmlNsForClrTypeWithNsAndAssembly return access MSSyst.String.Typ'Class;
   procedure GetInteropFieldTypeAndNameFromXmlAttribute(
      containingType : access MSSyst.Type_k.Typ'Class;
      xmlAttribute : access MSSyst.String.Typ'Class;
      xmlNamespace : access MSSyst.String.Typ'Class;
      type_k : access MSSyst.Type_k.Ref;
      name : access MSSyst.String.Ref);
   procedure GetInteropFieldTypeAndNameFromXmlElement(
      containingType : access MSSyst.Type_k.Typ'Class;
      xmlElement : access MSSyst.String.Typ'Class;
      xmlNamespace : access MSSyst.String.Typ'Class;
      type_k : access MSSyst.Type_k.Ref;
      name : access MSSyst.String.Ref);
   function GetInteropTypeFromXmlElement(
      xmlElement : access MSSyst.String.Typ'Class;
      xmlNamespace : access MSSyst.String.Typ'Class) return access MSSyst.Type_k.Typ'Class;
   function GetInteropTypeFromXmlType(
      xmlType : access MSSyst.String.Typ'Class;
      xmlTypeNamespace : access MSSyst.String.Typ'Class) return access MSSyst.Type_k.Typ'Class;
   function GetSoapActionFromMethodBase(
      mb : access MSSyst.Reflection.MethodBase.Typ'Class) return access MSSyst.String.Typ'Class;
   function GetTypeAndMethodNameFromSoapAction(
      soapAction : access MSSyst.String.Typ'Class;
      typeName : access MSSyst.String.Ref;
      methodName : access MSSyst.String.Ref) return Standard.Boolean;
   function GetXmlElementForInteropType(
      type_k : access MSSyst.Type_k.Typ'Class;
      xmlElement : access MSSyst.String.Ref;
      xmlNamespace : access MSSyst.String.Ref) return Standard.Boolean;
   function GetXmlNamespaceForMethodCall(
      mb : access MSSyst.Reflection.MethodBase.Typ'Class) return access MSSyst.String.Typ'Class;
   function GetXmlNamespaceForMethodResponse(
      mb : access MSSyst.Reflection.MethodBase.Typ'Class) return access MSSyst.String.Typ'Class;
   function GetXmlTypeForInteropType(
      type_k : access MSSyst.Type_k.Typ'Class;
      xmlType : access MSSyst.String.Ref;
      xmlTypeNamespace : access MSSyst.String.Ref) return Standard.Boolean;
   function IsClrTypeNamespace(
      namespaceString : access MSSyst.String.Typ'Class) return Standard.Boolean;
   function IsSoapActionValidForMethodBase(
      soapAction : access MSSyst.String.Typ'Class;
      mb : access MSSyst.Reflection.MethodBase.Typ'Class) return Standard.Boolean;
   procedure PreLoad(
      assembly : access MSSyst.Reflection.Assembly.Typ'Class);
   procedure PreLoad(
      type_k : access MSSyst.Type_k.Typ'Class);
   procedure RegisterInteropXmlElement(
      xmlElement : access MSSyst.String.Typ'Class;
      xmlNamespace : access MSSyst.String.Typ'Class;
      type_k : access MSSyst.Type_k.Typ'Class);
   procedure RegisterInteropXmlType(
      xmlType : access MSSyst.String.Typ'Class;
      xmlTypeNamespace : access MSSyst.String.Typ'Class;
      type_k : access MSSyst.Type_k.Typ'Class);
   procedure RegisterSoapActionForMethodBase(
      mb : access MSSyst.Reflection.MethodBase.Typ'Class);
   procedure RegisterSoapActionForMethodBase(
      mb : access MSSyst.Reflection.MethodBase.Typ'Class;
      soapAction : access MSSyst.String.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,CodeXmlNamespaceForClrTypeNamespace,"CodeXmlNamespaceForClrTypeNamespace");
   pragma Import(MSIL,DecodeXmlNamespaceForClrTypeNamespace,"DecodeXmlNamespaceForClrTypeNamespace");
   pragma Import(MSIL,get_XmlNsForClrType,"get_XmlNsForClrType");
   pragma Import(MSIL,get_XmlNsForClrTypeWithAssembly,"get_XmlNsForClrTypeWithAssembly");
   pragma Import(MSIL,get_XmlNsForClrTypeWithNs,"get_XmlNsForClrTypeWithNs");
   pragma Import(MSIL,get_XmlNsForClrTypeWithNsAndAssembly,"get_XmlNsForClrTypeWithNsAndAssembly");
   pragma Import(MSIL,GetInteropFieldTypeAndNameFromXmlAttribute,"GetInteropFieldTypeAndNameFromXmlAttribute");
   pragma Import(MSIL,GetInteropFieldTypeAndNameFromXmlElement,"GetInteropFieldTypeAndNameFromXmlElement");
   pragma Import(MSIL,GetInteropTypeFromXmlElement,"GetInteropTypeFromXmlElement");
   pragma Import(MSIL,GetInteropTypeFromXmlType,"GetInteropTypeFromXmlType");
   pragma Import(MSIL,GetSoapActionFromMethodBase,"GetSoapActionFromMethodBase");
   pragma Import(MSIL,GetTypeAndMethodNameFromSoapAction,"GetTypeAndMethodNameFromSoapAction");
   pragma Import(MSIL,GetXmlElementForInteropType,"GetXmlElementForInteropType");
   pragma Import(MSIL,GetXmlNamespaceForMethodCall,"GetXmlNamespaceForMethodCall");
   pragma Import(MSIL,GetXmlNamespaceForMethodResponse,"GetXmlNamespaceForMethodResponse");
   pragma Import(MSIL,GetXmlTypeForInteropType,"GetXmlTypeForInteropType");
   pragma Import(MSIL,IsClrTypeNamespace,"IsClrTypeNamespace");
   pragma Import(MSIL,IsSoapActionValidForMethodBase,"IsSoapActionValidForMethodBase");
   pragma Import(MSIL,PreLoad,"PreLoad");
   pragma Import(MSIL,RegisterInteropXmlElement,"RegisterInteropXmlElement");
   pragma Import(MSIL,RegisterInteropXmlType,"RegisterInteropXmlType");
   pragma Import(MSIL,RegisterSoapActionForMethodBase,"RegisterSoapActionForMethodBase");
end MSSyst.Runtime.Remoting.SoapServices;
pragma Import(MSIL,MSSyst.Runtime.Remoting.SoapServices,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Runtime.Remoting.SoapServices");
