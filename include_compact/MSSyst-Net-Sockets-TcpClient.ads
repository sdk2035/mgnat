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
with type MSSyst.Net.IPAddress.Ref is access;
with type MSSyst.AsyncCallback.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Net.IPAddress.Ref_array is access;
with type MSSyst.Net.IPEndPoint.Ref is access;
with type MSSyst.Net.Sockets.Socket.Ref is access;
with type MSSyst.Net.Sockets.LingerOption.Ref is access;
with type MSSyst.Net.Sockets.NetworkStream.Ref is access;
with type MSSyst.Type_k.Ref is access;
with MSSyst.Net.Sockets.AddressFamily;
package MSSyst.Net.Sockets.TcpClient is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   function new_TcpClient(
      This : Ref := null;
      localEP : MSSyst.Net.IPEndPoint.Ref) return Ref;
   function new_TcpClient(
      This : Ref := null) return Ref;
   function new_TcpClient(
      This : Ref := null;
      family : MSSyst.Net.Sockets.AddressFamily.Valuetype) return Ref;
   function new_TcpClient(
      This : Ref := null;
      hostname : MSSyst.String.Ref;
      port : Integer) return Ref;
   function BeginConnect(
      This : access Typ;
      address : MSSyst.Net.IPAddress.Ref;
      port : Integer;
      requestCallback : MSSyst.AsyncCallback.Ref;
      state : MSSyst.Object.Ref) return MSSyst.IAsyncResult.Ref;
   function BeginConnect(
      This : access Typ;
      host : MSSyst.String.Ref;
      port : Integer;
      requestCallback : MSSyst.AsyncCallback.Ref;
      state : MSSyst.Object.Ref) return MSSyst.IAsyncResult.Ref;
   function BeginConnect(
      This : access Typ;
      addresses : MSSyst.Net.IPAddress.Ref_array;
      port : Integer;
      requestCallback : MSSyst.AsyncCallback.Ref;
      state : MSSyst.Object.Ref) return MSSyst.IAsyncResult.Ref;
   procedure Close(
      This : access Typ);
   procedure Connect(
      This : access Typ;
      address : MSSyst.Net.IPAddress.Ref;
      port : Integer);
   procedure Connect(
      This : access Typ;
      remoteEP : MSSyst.Net.IPEndPoint.Ref);
   procedure Connect(
      This : access Typ;
      ipAddresses : MSSyst.Net.IPAddress.Ref_array;
      port : Integer);
   procedure Connect(
      This : access Typ;
      hostname : MSSyst.String.Ref;
      port : Integer);
   procedure EndConnect(
      This : access Typ;
      asyncResult : MSSyst.IAsyncResult.Ref);
   function get_Available(
      This : access Typ) return Integer;
   function get_Client(
      This : access Typ) return MSSyst.Net.Sockets.Socket.Ref;
   function get_Connected(
      This : access Typ) return Standard.Boolean;
   function get_ExclusiveAddressUse(
      This : access Typ) return Standard.Boolean;
   function get_LingerState(
      This : access Typ) return MSSyst.Net.Sockets.LingerOption.Ref;
   function get_NoDelay(
      This : access Typ) return Standard.Boolean;
   function get_ReceiveBufferSize(
      This : access Typ) return Integer;
   function get_ReceiveTimeout(
      This : access Typ) return Integer;
   function get_SendBufferSize(
      This : access Typ) return Integer;
   function get_SendTimeout(
      This : access Typ) return Integer;
   function GetStream(
      This : access Typ) return MSSyst.Net.Sockets.NetworkStream.Ref;
   procedure set_Client(
      This : access Typ;
      value : MSSyst.Net.Sockets.Socket.Ref);
   procedure set_ExclusiveAddressUse(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_LingerState(
      This : access Typ;
      value : MSSyst.Net.Sockets.LingerOption.Ref);
   procedure set_NoDelay(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_ReceiveBufferSize(
      This : access Typ;
      value : Integer);
   procedure set_ReceiveTimeout(
      This : access Typ;
      value : Integer);
   procedure set_SendBufferSize(
      This : access Typ;
      value : Integer);
   procedure set_SendTimeout(
      This : access Typ;
      value : Integer);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_TcpClient);
   pragma Import(MSIL,BeginConnect,"BeginConnect");
   pragma Import(MSIL,Close,"Close");
   pragma Import(MSIL,Connect,"Connect");
   pragma Import(MSIL,EndConnect,"EndConnect");
   pragma Import(MSIL,get_Available,"get_Available");
   pragma Import(MSIL,get_Client,"get_Client");
   pragma Import(MSIL,get_Connected,"get_Connected");
   pragma Import(MSIL,get_ExclusiveAddressUse,"get_ExclusiveAddressUse");
   pragma Import(MSIL,get_LingerState,"get_LingerState");
   pragma Import(MSIL,get_NoDelay,"get_NoDelay");
   pragma Import(MSIL,get_ReceiveBufferSize,"get_ReceiveBufferSize");
   pragma Import(MSIL,get_ReceiveTimeout,"get_ReceiveTimeout");
   pragma Import(MSIL,get_SendBufferSize,"get_SendBufferSize");
   pragma Import(MSIL,get_SendTimeout,"get_SendTimeout");
   pragma Import(MSIL,GetStream,"GetStream");
   pragma Import(MSIL,set_Client,"set_Client");
   pragma Import(MSIL,set_ExclusiveAddressUse,"set_ExclusiveAddressUse");
   pragma Import(MSIL,set_LingerState,"set_LingerState");
   pragma Import(MSIL,set_NoDelay,"set_NoDelay");
   pragma Import(MSIL,set_ReceiveBufferSize,"set_ReceiveBufferSize");
   pragma Import(MSIL,set_ReceiveTimeout,"set_ReceiveTimeout");
   pragma Import(MSIL,set_SendBufferSize,"set_SendBufferSize");
   pragma Import(MSIL,set_SendTimeout,"set_SendTimeout");
end MSSyst.Net.Sockets.TcpClient;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Net.Sockets.TcpClient,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Net.Sockets.TcpClient");
