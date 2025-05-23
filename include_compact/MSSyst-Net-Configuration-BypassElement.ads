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
with type MSSyst.String.Ref is access;
with type MSSyst.Configuration.ElementInformation.Ref is access;
with type MSSyst.Configuration.ConfigurationLockCollection.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.Net.Configuration.BypassElement is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Configuration.ConfigurationElement.Typ   with record
      null;
   end record;
   function new_BypassElement(
      This : Ref := null) return Ref;
   function new_BypassElement(
      This : Ref := null;
      address : MSSyst.String.Ref) return Ref;
   function get_Address(
      This : access Typ) return MSSyst.String.Ref;
   procedure set_Address(
      This : access Typ;
      value : MSSyst.String.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_BypassElement);
   pragma Import(MSIL,get_Address,"get_Address");
   pragma Import(MSIL,set_Address,"set_Address");
end MSSyst.Net.Configuration.BypassElement;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Net.Configuration.BypassElement,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Net.Configuration.BypassElement");
