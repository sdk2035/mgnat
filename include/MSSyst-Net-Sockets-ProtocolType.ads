-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.IFormatProvider;
limited with MSSyst.String;
limited with MSSyst.TypeCode;
limited with MSSyst.Type_k;
package MSSyst.Net.Sockets.ProtocolType is
   type ValueType is (
      Unknown,
      Unspecified,
      Icmp,
      Igmp,
      Ggp,
      IPv4,
      Tcp,
      Pup,
      Udp,
      Idp,
      IPv6,
      IPv6RoutingHeader,
      IPv6FragmentHeader,
      IPSecEncapsulatingSecurityPayload,
      IPSecAuthenticationHeader,
      IcmpV6,
      IPv6NoNextHeader,
      IPv6DestinationOptions,
      ND,
      Raw,
      Ipx,
      Spx,
      SpxII);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      Unknown => -1,
      Unspecified =>  0,
      Icmp =>  1,
      Igmp =>  2,
      Ggp =>  3,
      IPv4 =>  4,
      Tcp =>  6,
      Pup =>  12,
      Udp =>  17,
      Idp =>  22,
      IPv6 =>  41,
      IPv6RoutingHeader =>  43,
      IPv6FragmentHeader =>  44,
      IPSecEncapsulatingSecurityPayload =>  50,
      IPSecAuthenticationHeader =>  51,
      IcmpV6 =>  58,
      IPv6NoNextHeader =>  59,
      IPv6DestinationOptions =>  60,
      ND =>  77,
      Raw =>  255,
      Ipx =>  1000,
      Spx =>  1256,
      SpxII =>  1257);
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   IPv6HopByHopOptions : constant Valuetype := Unspecified;
   IP : constant Valuetype := Unspecified;
   function CompareTo(
      This : Valuetype;
      target : access MSSyst.Object.Typ'Class) return Integer;
   function Equals(
      This : Valuetype;
      obj : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function GetHashCode(
      This : Valuetype) return Integer;
   function GetType(
      This : Valuetype) return access MSSyst.Type_k.Typ'Class;
   function GetTypeCode(
      This : Valuetype) return MSSyst.TypeCode.Valuetype;
   function ToString(
      This : Valuetype;
      provider : access MSSyst.IFormatProvider.Typ'Class) return access MSSyst.String.Typ'Class;
   function ToString(
      This : Valuetype) return access MSSyst.String.Typ'Class;
   function ToString(
      This : Valuetype;
      format : access MSSyst.String.Typ'Class;
      provider : access MSSyst.IFormatProvider.Typ'Class) return access MSSyst.String.Typ'Class;
   function ToString(
      This : Valuetype;
      format : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
private
   pragma Import(MSIL,CompareTo,"CompareTo");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetType,"GetType");
   pragma Import(MSIL,GetTypeCode,"GetTypeCode");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Net.Sockets.ProtocolType;
pragma Import(MSIL,MSSyst.Net.Sockets.ProtocolType,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Net.Sockets.ProtocolType");
