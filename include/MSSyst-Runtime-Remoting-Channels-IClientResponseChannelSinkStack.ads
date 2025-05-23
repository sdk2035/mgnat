-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Exception_k;
limited with MSSyst.IO.Stream;
limited with MSSyst.Runtime.Remoting.Channels.ITransportHeaders;
limited with MSSyst.Runtime.Remoting.Messaging.IMessage;
package MSSyst.Runtime.Remoting.Channels.IClientResponseChannelSinkStack is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure AsyncProcessResponse(
      This : access Typ;
      headers : access MSSyst.Runtime.Remoting.Channels.ITransportHeaders.Typ'Class;
      stream : access MSSyst.IO.Stream.Typ'Class) is abstract;
   procedure DispatchException(
      This : access Typ;
      e : access MSSyst.Exception_k.Typ'Class) is abstract;
   procedure DispatchReplyMessage(
      This : access Typ;
      msg : access MSSyst.Runtime.Remoting.Messaging.IMessage.Typ'Class) is abstract;
private
   pragma Import(MSIL,AsyncProcessResponse,"AsyncProcessResponse");
   pragma Import(MSIL,DispatchException,"DispatchException");
   pragma Import(MSIL,DispatchReplyMessage,"DispatchReplyMessage");
end MSSyst.Runtime.Remoting.Channels.IClientResponseChannelSinkStack;
pragma Import(MSIL,MSSyst.Runtime.Remoting.Channels.IClientResponseChannelSinkStack,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Runtime.Remoting.Channels.IClientResponseChannelSinkStack");
