-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Configuration.ConfigurationElement;
with type MSSyst.Object.Ref is access;
with type MSSyst.Configuration.ElementInformation.Ref is access;
with type MSSyst.Configuration.ConfigurationLockCollection.Ref is access;
with type MSSyst.Xml.XmlNode.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Configuration.SettingValueElement is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Configuration.ConfigurationElement.Typ   with record
      null;
   end record;
   function new_SettingValueElement(
      This : Ref := null) return Ref;
   function Equals(
      This : access Typ;
      settingValue : MSSyst.Object.Ref) return Standard.Boolean;
   function get_ValueXml(
      This : access Typ) return MSSyst.Xml.XmlNode.Ref;
   function GetHashCode(
      This : access Typ) return Integer;
   procedure set_ValueXml(
      This : access Typ;
      value : MSSyst.Xml.XmlNode.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_SettingValueElement);
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,get_ValueXml,"get_ValueXml");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,set_ValueXml,"set_ValueXml");
end MSSyst.Configuration.SettingValueElement;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Configuration.SettingValueElement,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Configuration.SettingValueElement");
