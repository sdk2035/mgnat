-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.Runtime.Remoting.Channels.ITransportHeaders.Ref is access;
with type MSSyst.IO.Stream.Ref is access;
with type MSSyst.Exception_k.Ref is access;
with type MSSyst.Runtime.Remoting.Messaging.IMessage.Ref is access;
package MSSyst.Runtime.Remoting.Channels.IClientResponseChannelSinkStack is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is interface;
   procedure AsyncProcessResponse(
      This : access Typ;
      headers : MSSyst.Runtime.Remoting.Channels.ITransportHeaders.Ref;
      stream : MSSyst.IO.Stream.Ref) is abstract;
   procedure DispatchException(
      This : access Typ;
      e : MSSyst.Exception_k.Ref) is abstract;
   procedure DispatchReplyMessage(
      This : access Typ;
      msg : MSSyst.Runtime.Remoting.Messaging.IMessage.Ref) is abstract;
private
   pragma Import(MSIL,AsyncProcessResponse,"AsyncProcessResponse");
   pragma Import(MSIL,DispatchException,"DispatchException");
   pragma Import(MSIL,DispatchReplyMessage,"DispatchReplyMessage");
end MSSyst.Runtime.Remoting.Channels.IClientResponseChannelSinkStack;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Runtime.Remoting.Channels.IClientResponseChannelSinkStack,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Runtime.Remoting.Channels.IClientResponseChannelSinkStack");
