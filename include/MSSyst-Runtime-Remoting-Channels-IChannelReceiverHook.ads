-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Runtime.Remoting.Channels.IServerChannelSink;
limited with MSSyst.String;
package MSSyst.Runtime.Remoting.Channels.IChannelReceiverHook is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure AddHookChannelUri(
      This : access Typ;
      channelUri : access MSSyst.String.Typ'Class) is abstract;
   function get_ChannelScheme(
      This : access Typ) return access MSSyst.String.Typ'Class is abstract;
   function get_ChannelSinkChain(
      This : access Typ) return access MSSyst.Runtime.Remoting.Channels.IServerChannelSink.Typ'Class is abstract;
   function get_WantsToListen(
      This : access Typ) return Standard.Boolean is abstract;
private
   pragma Import(MSIL,AddHookChannelUri,"AddHookChannelUri");
   pragma Import(MSIL,get_ChannelScheme,"get_ChannelScheme");
   pragma Import(MSIL,get_ChannelSinkChain,"get_ChannelSinkChain");
   pragma Import(MSIL,get_WantsToListen,"get_WantsToListen");
end MSSyst.Runtime.Remoting.Channels.IChannelReceiverHook;
pragma Import(MSIL,MSSyst.Runtime.Remoting.Channels.IChannelReceiverHook,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Runtime.Remoting.Channels.IChannelReceiverHook");
