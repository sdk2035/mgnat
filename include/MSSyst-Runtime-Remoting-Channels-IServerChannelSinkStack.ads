-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.IAsyncResult;
limited with MSSyst.Runtime.Remoting.Channels.IServerChannelSink;
with MSSyst.Runtime.Remoting.Channels.IServerResponseChannelSinkStack;
package MSSyst.Runtime.Remoting.Channels.IServerChannelSinkStack is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function Pop(
      This : access Typ;
      sink : access MSSyst.Runtime.Remoting.Channels.IServerChannelSink.Typ'Class) return access MSSyst.Object.Typ'Class is abstract;
   procedure Push(
      This : access Typ;
      sink : access MSSyst.Runtime.Remoting.Channels.IServerChannelSink.Typ'Class;
      state : access MSSyst.Object.Typ'Class) is abstract;
   procedure ServerCallback(
      This : access Typ;
      ar : access MSSyst.IAsyncResult.Typ'Class) is abstract;
   procedure Store(
      This : access Typ;
      sink : access MSSyst.Runtime.Remoting.Channels.IServerChannelSink.Typ'Class;
      state : access MSSyst.Object.Typ'Class) is abstract;
   procedure StoreAndDispatch(
      This : access Typ;
      sink : access MSSyst.Runtime.Remoting.Channels.IServerChannelSink.Typ'Class;
      state : access MSSyst.Object.Typ'Class) is abstract;
private
   pragma Import(MSIL,Pop,"Pop");
   pragma Import(MSIL,Push,"Push");
   pragma Import(MSIL,ServerCallback,"ServerCallback");
   pragma Import(MSIL,Store,"Store");
   pragma Import(MSIL,StoreAndDispatch,"StoreAndDispatch");
end MSSyst.Runtime.Remoting.Channels.IServerChannelSinkStack;
pragma Import(MSIL,MSSyst.Runtime.Remoting.Channels.IServerChannelSinkStack,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Runtime.Remoting.Channels.IServerChannelSinkStack");
