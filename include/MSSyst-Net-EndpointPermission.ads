-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Net.TransportType;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Net.EndpointPermission is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function Equals(
      This : access Typ;
      obj : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function get_Hostname(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Port(
      This : access Typ) return Integer;
   function get_Transport(
      This : access Typ) return MSSyst.Net.TransportType.Valuetype;
   function GetHashCode(
      This : access Typ) return Integer;
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,get_Hostname,"get_Hostname");
   pragma Import(MSIL,get_Port,"get_Port");
   pragma Import(MSIL,get_Transport,"get_Transport");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Net.EndpointPermission;
pragma Import(MSIL,MSSyst.Net.EndpointPermission,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Net.EndpointPermission");
