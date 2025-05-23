-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.Object.Ref is access;
with type MSSyst.Type_k.Ref is access;
with MSSyst.TypeCode;
with type MSSyst.String.Ref is access;
with type MSSyst.IFormatProvider.Ref is access;
package MSSyst.Net.Sockets.SocketOptionName is
   type ValueType is (
      DontLinger,
      ExclusiveAddressUse,
      IPOptions,
      NoDelay,
      Expedited,
      TypeOfService,
      IpTimeToLive,
      KeepAlive,
      MulticastInterface,
      MulticastTimeToLive,
      MulticastLoopback,
      AddMembership,
      DropMembership,
      DontFragment,
      AddSourceMembership,
      DropSourceMembership,
      BlockSource,
      UnblockSource,
      PacketInformation,
      ChecksumCoverage,
      HopLimit,
      Broadcast,
      UseLoopback,
      Linger,
      OutOfBandInline,
      SendBuffer,
      ReceiveBuffer,
      SendLowWater,
      ReceiveLowWater,
      SendTimeout,
      ReceiveTimeout,
      Error,
      Type_k,
      UpdateAcceptContext,
      UpdateConnectContext,
      MaxConnections);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      DontLinger => -129,
      ExclusiveAddressUse => -5,
      IPOptions =>  0,
      NoDelay =>  1,
      Expedited =>  2,
      TypeOfService =>  3,
      IpTimeToLive =>  4,
      KeepAlive =>  8,
      MulticastInterface =>  9,
      MulticastTimeToLive =>  10,
      MulticastLoopback =>  11,
      AddMembership =>  12,
      DropMembership =>  13,
      DontFragment =>  14,
      AddSourceMembership =>  15,
      DropSourceMembership =>  16,
      BlockSource =>  17,
      UnblockSource =>  18,
      PacketInformation =>  19,
      ChecksumCoverage =>  20,
      HopLimit =>  21,
      Broadcast =>  32,
      UseLoopback =>  64,
      Linger =>  128,
      OutOfBandInline =>  256,
      SendBuffer =>  4097,
      ReceiveBuffer =>  4098,
      SendLowWater =>  4099,
      ReceiveLowWater =>  4100,
      SendTimeout =>  4101,
      ReceiveTimeout =>  4102,
      Error =>  4103,
      Type_k =>  4104,
      UpdateAcceptContext =>  28683,
      UpdateConnectContext =>  28688,
      MaxConnections =>  2147483647);
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   Debug : constant Valuetype := NoDelay;
   NoChecksum : constant Valuetype := NoDelay;
   HeaderIncluded : constant Valuetype := Expedited;
   AcceptConnection : constant Valuetype := Expedited;
   BsdUrgent : constant Valuetype := Expedited;
   ReuseAddress : constant Valuetype := IpTimeToLive;
   DontRoute : constant Valuetype := DropSourceMembership;
   function CompareTo(
      This : Valuetype;
      target : MSSyst.Object.Ref) return Integer;
   function Equals(
      This : Valuetype;
      obj : MSSyst.Object.Ref) return Standard.Boolean;
   function GetHashCode(
      This : Valuetype) return Integer;
   function GetType(
      This : Valuetype) return MSSyst.Type_k.Ref;
   function GetTypeCode(
      This : Valuetype) return MSSyst.TypeCode.Valuetype;
   function ToString(
      This : Valuetype;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype;
      format : MSSyst.String.Ref;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype;
      format : MSSyst.String.Ref) return MSSyst.String.Ref;
private
   pragma Import(MSIL,CompareTo,"CompareTo");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetType,"GetType");
   pragma Import(MSIL,GetTypeCode,"GetTypeCode");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Net.Sockets.SocketOptionName;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Net.Sockets.SocketOptionName,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Net.Sockets.SocketOptionName");
