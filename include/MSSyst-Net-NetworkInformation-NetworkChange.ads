-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Net.NetworkInformation.NetworkAddressChangedEventHandler;
limited with MSSyst.Net.NetworkInformation.NetworkAvailabilityChangedEventHandler;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Net.NetworkInformation.NetworkChange is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure add_NetworkAddressChanged(
      value : access MSSyst.Net.NetworkInformation.NetworkAddressChangedEventHandler.Typ'Class);
   procedure add_NetworkAvailabilityChanged(
      value : access MSSyst.Net.NetworkInformation.NetworkAvailabilityChangedEventHandler.Typ'Class);
   procedure remove_NetworkAddressChanged(
      value : access MSSyst.Net.NetworkInformation.NetworkAddressChangedEventHandler.Typ'Class);
   procedure remove_NetworkAvailabilityChanged(
      value : access MSSyst.Net.NetworkInformation.NetworkAvailabilityChangedEventHandler.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,add_NetworkAddressChanged,"add_NetworkAddressChanged");
   pragma Import(MSIL,add_NetworkAvailabilityChanged,"add_NetworkAvailabilityChanged");
   pragma Import(MSIL,remove_NetworkAddressChanged,"remove_NetworkAddressChanged");
   pragma Import(MSIL,remove_NetworkAvailabilityChanged,"remove_NetworkAvailabilityChanged");
end MSSyst.Net.NetworkInformation.NetworkChange;
pragma Import(MSIL,MSSyst.Net.NetworkInformation.NetworkChange,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Net.NetworkInformation.NetworkChange");
