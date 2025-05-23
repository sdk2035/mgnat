-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Runtime.Remoting.Messaging.IMessageCtrl;
limited with MSSyst.Runtime.Remoting.Messaging.IMessage;
package MSSyst.Runtime.Remoting.Messaging.IMessageSink is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function AsyncProcessMessage(
      This : access Typ;
      msg : access MSSyst.Runtime.Remoting.Messaging.IMessage.Typ'Class;
      replySink : access MSSyst.Runtime.Remoting.Messaging.IMessageSink.Typ'Class) return access MSSyst.Runtime.Remoting.Messaging.IMessageCtrl.Typ'Class is abstract;
   function get_NextSink(
      This : access Typ) return access MSSyst.Runtime.Remoting.Messaging.IMessageSink.Typ'Class is abstract;
   function SyncProcessMessage(
      This : access Typ;
      msg : access MSSyst.Runtime.Remoting.Messaging.IMessage.Typ'Class) return access MSSyst.Runtime.Remoting.Messaging.IMessage.Typ'Class is abstract;
private
   pragma Import(MSIL,AsyncProcessMessage,"AsyncProcessMessage");
   pragma Import(MSIL,get_NextSink,"get_NextSink");
   pragma Import(MSIL,SyncProcessMessage,"SyncProcessMessage");
end MSSyst.Runtime.Remoting.Messaging.IMessageSink;
pragma Import(MSIL,MSSyst.Runtime.Remoting.Messaging.IMessageSink,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Runtime.Remoting.Messaging.IMessageSink");
