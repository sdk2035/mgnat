-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Object;
with type MSSyst.IAsyncResult.Ref is access;
with type MSSyst.AsyncCallback.Ref is access;
with type MSSyst.Net.IPEndPoint.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Net.IPAddress.Ref is access;
with type MSSyst.Net.IPEndPoint.Ref_addrof is access;
with type MSSyst.Net.Sockets.Socket.Ref is access;
with type MSSyst.Type_k.Ref is access;
with MSSyst.Net.Sockets.AddressFamily;
package MSSyst.Net.Sockets.UdpClient is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   function new_UdpClient(
      This : Ref := null) return Ref;
   function new_UdpClient(
      This : Ref := null;
      family : MSSyst.Net.Sockets.AddressFamily.Valuetype) return Ref;
   function new_UdpClient(
      This : Ref := null;
      port : Integer) return Ref;
   function new_UdpClient(
      This : Ref := null;
      port : Integer;
      family : MSSyst.Net.Sockets.AddressFamily.Valuetype) return Ref;
   function new_UdpClient(
      This : Ref := null;
      localEP : MSSyst.Net.IPEndPoint.Ref) return Ref;
   function new_UdpClient(
      This : Ref := null;
      hostname : MSSyst.String.Ref;
      port : Integer) return Ref;
   function BeginReceive(
      This : access Typ;
      requestCallback : MSSyst.AsyncCallback.Ref;
      state : MSSyst.Object.Ref) return MSSyst.IAsyncResult.Ref;
   function BeginSend(
      This : access Typ;
      datagram : MSIL_Types.unsigned_int8_Arr;
      bytes : Integer;
      endPoint : MSSyst.Net.IPEndPoint.Ref;
      requestCallback : MSSyst.AsyncCallback.Ref;
      state : MSSyst.Object.Ref) return MSSyst.IAsyncResult.Ref;
   function BeginSend(
      This : access Typ;
      datagram : MSIL_Types.unsigned_int8_Arr;
      bytes : Integer;
      hostname : MSSyst.String.Ref;
      port : Integer;
      requestCallback : MSSyst.AsyncCallback.Ref;
      state : MSSyst.Object.Ref) return MSSyst.IAsyncResult.Ref;
   function BeginSend(
      This : access Typ;
      datagram : MSIL_Types.unsigned_int8_Arr;
      bytes : Integer;
      requestCallback : MSSyst.AsyncCallback.Ref;
      state : MSSyst.Object.Ref) return MSSyst.IAsyncResult.Ref;
   procedure Close(
      This : access Typ);
   procedure Connect(
      This : access Typ;
      hostname : MSSyst.String.Ref;
      port : Integer);
   procedure Connect(
      This : access Typ;
      addr : MSSyst.Net.IPAddress.Ref;
      port : Integer);
   procedure Connect(
      This : access Typ;
      endPoint : MSSyst.Net.IPEndPoint.Ref);
   procedure DropMulticastGroup(
      This : access Typ;
      multicastAddr : MSSyst.Net.IPAddress.Ref);
   procedure DropMulticastGroup(
      This : access Typ;
      multicastAddr : MSSyst.Net.IPAddress.Ref;
      ifindex : Integer);
   function EndReceive(
      This : access Typ;
      asyncResult : MSSyst.IAsyncResult.Ref;
      remoteEP : MSSyst.Net.IPEndPoint.Ref_addrof) return MSIL_Types.unsigned_int8_Array;
   function EndSend(
      This : access Typ;
      asyncResult : MSSyst.IAsyncResult.Ref) return Integer;
   function get_Available(
      This : access Typ) return Integer;
   function get_Client(
      This : access Typ) return MSSyst.Net.Sockets.Socket.Ref;
   function get_DontFragment(
      This : access Typ) return Standard.Boolean;
   function get_EnableBroadcast(
      This : access Typ) return Standard.Boolean;
   function get_ExclusiveAddressUse(
      This : access Typ) return Standard.Boolean;
   function get_MulticastLoopback(
      This : access Typ) return Standard.Boolean;
   function get_Ttl(
      This : access Typ) return MSIL_Types.int16;
   procedure JoinMulticastGroup(
      This : access Typ;
      multicastAddr : MSSyst.Net.IPAddress.Ref;
      timeToLive : Integer);
   procedure JoinMulticastGroup(
      This : access Typ;
      ifindex : Integer;
      multicastAddr : MSSyst.Net.IPAddress.Ref);
   procedure JoinMulticastGroup(
      This : access Typ;
      multicastAddr : MSSyst.Net.IPAddress.Ref);
   procedure JoinMulticastGroup(
      This : access Typ;
      multicastAddr : MSSyst.Net.IPAddress.Ref;
      localAddress : MSSyst.Net.IPAddress.Ref);
   function Receive(
      This : access Typ;
      remoteEP : MSSyst.Net.IPEndPoint.Ref_addrof) return MSIL_Types.unsigned_int8_Array;
   function Send(
      This : access Typ;
      dgram : MSIL_Types.unsigned_int8_Arr;
      bytes : Integer;
      endPoint : MSSyst.Net.IPEndPoint.Ref) return Integer;
   function Send(
      This : access Typ;
      dgram : MSIL_Types.unsigned_int8_Arr;
      bytes : Integer;
      hostname : MSSyst.String.Ref;
      port : Integer) return Integer;
   function Send(
      This : access Typ;
      dgram : MSIL_Types.unsigned_int8_Arr;
      bytes : Integer) return Integer;
   procedure set_Client(
      This : access Typ;
      value : MSSyst.Net.Sockets.Socket.Ref);
   procedure set_DontFragment(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_EnableBroadcast(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_ExclusiveAddressUse(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_MulticastLoopback(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Ttl(
      This : access Typ;
      value : MSIL_Types.int16);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_UdpClient);
   pragma Import(MSIL,BeginReceive,"BeginReceive");
   pragma Import(MSIL,BeginSend,"BeginSend");
   pragma Import(MSIL,Close,"Close");
   pragma Import(MSIL,Connect,"Connect");
   pragma Import(MSIL,DropMulticastGroup,"DropMulticastGroup");
   pragma Import(MSIL,EndReceive,"EndReceive");
   pragma Import(MSIL,EndSend,"EndSend");
   pragma Import(MSIL,get_Available,"get_Available");
   pragma Import(MSIL,get_Client,"get_Client");
   pragma Import(MSIL,get_DontFragment,"get_DontFragment");
   pragma Import(MSIL,get_EnableBroadcast,"get_EnableBroadcast");
   pragma Import(MSIL,get_ExclusiveAddressUse,"get_ExclusiveAddressUse");
   pragma Import(MSIL,get_MulticastLoopback,"get_MulticastLoopback");
   pragma Import(MSIL,get_Ttl,"get_Ttl");
   pragma Import(MSIL,JoinMulticastGroup,"JoinMulticastGroup");
   pragma Import(MSIL,Receive,"Receive");
   pragma Import(MSIL,Send,"Send");
   pragma Import(MSIL,set_Client,"set_Client");
   pragma Import(MSIL,set_DontFragment,"set_DontFragment");
   pragma Import(MSIL,set_EnableBroadcast,"set_EnableBroadcast");
   pragma Import(MSIL,set_ExclusiveAddressUse,"set_ExclusiveAddressUse");
   pragma Import(MSIL,set_MulticastLoopback,"set_MulticastLoopback");
   pragma Import(MSIL,set_Ttl,"set_Ttl");
end MSSyst.Net.Sockets.UdpClient;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Net.Sockets.UdpClient,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Net.Sockets.UdpClient");
