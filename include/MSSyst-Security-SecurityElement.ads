-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Collections.ArrayList;
limited with MSSyst.Collections.Hashtable;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Security.SecurityElement is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_SecurityElement(
      This : Ref := null;
      tag : access MSSyst.String.Typ'Class) return Ref;
   function new_SecurityElement(
      This : Ref := null;
      tag : access MSSyst.String.Typ'Class;
      text : access MSSyst.String.Typ'Class) return Ref;
   procedure AddAttribute(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : access MSSyst.String.Typ'Class);
   procedure AddChild(
      This : access Typ;
      child : access MSSyst.Security.SecurityElement.Typ'Class);
   function Attribute(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function Copy(
      This : access Typ) return access MSSyst.Security.SecurityElement.Typ'Class;
   function Equal(
      This : access Typ;
      other : access MSSyst.Security.SecurityElement.Typ'Class) return Standard.Boolean;
   function Escape(
      str : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function FromString(
      xml : access MSSyst.String.Typ'Class) return access MSSyst.Security.SecurityElement.Typ'Class;
   function get_Attributes(
      This : access Typ) return access MSSyst.Collections.Hashtable.Typ'Class;
   function get_Children(
      This : access Typ) return access MSSyst.Collections.ArrayList.Typ'Class;
   function get_Tag(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Text(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function IsValidAttributeName(
      name : access MSSyst.String.Typ'Class) return Standard.Boolean;
   function IsValidAttributeValue(
      value : access MSSyst.String.Typ'Class) return Standard.Boolean;
   function IsValidTag(
      tag : access MSSyst.String.Typ'Class) return Standard.Boolean;
   function IsValidText(
      text : access MSSyst.String.Typ'Class) return Standard.Boolean;
   function SearchForChildByTag(
      This : access Typ;
      tag : access MSSyst.String.Typ'Class) return access MSSyst.Security.SecurityElement.Typ'Class;
   function SearchForTextOfTag(
      This : access Typ;
      tag : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   procedure set_Attributes(
      This : access Typ;
      value : access MSSyst.Collections.Hashtable.Typ'Class);
   procedure set_Children(
      This : access Typ;
      value : access MSSyst.Collections.ArrayList.Typ'Class);
   procedure set_Tag(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_Text(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_SecurityElement);
   pragma Import(MSIL,AddAttribute,"AddAttribute");
   pragma Import(MSIL,AddChild,"AddChild");
   pragma Import(MSIL,Attribute,"Attribute");
   pragma Import(MSIL,Copy,"Copy");
   pragma Import(MSIL,Equal,"Equal");
   pragma Import(MSIL,Escape,"Escape");
   pragma Import(MSIL,FromString,"FromString");
   pragma Import(MSIL,get_Attributes,"get_Attributes");
   pragma Import(MSIL,get_Children,"get_Children");
   pragma Import(MSIL,get_Tag,"get_Tag");
   pragma Import(MSIL,get_Text,"get_Text");
   pragma Import(MSIL,IsValidAttributeName,"IsValidAttributeName");
   pragma Import(MSIL,IsValidAttributeValue,"IsValidAttributeValue");
   pragma Import(MSIL,IsValidTag,"IsValidTag");
   pragma Import(MSIL,IsValidText,"IsValidText");
   pragma Import(MSIL,SearchForChildByTag,"SearchForChildByTag");
   pragma Import(MSIL,SearchForTextOfTag,"SearchForTextOfTag");
   pragma Import(MSIL,set_Attributes,"set_Attributes");
   pragma Import(MSIL,set_Children,"set_Children");
   pragma Import(MSIL,set_Tag,"set_Tag");
   pragma Import(MSIL,set_Text,"set_Text");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Security.SecurityElement;
pragma Import(MSIL,MSSyst.Security.SecurityElement,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Security.SecurityElement");
