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
with MSSyst.Runtime.Serialization.ISurrogateSelector;
with type MSSyst.Runtime.Remoting.Messaging.MessageSurrogateFilter.Ref is access;
with type MSSyst.Runtime.Serialization.ISerializationSurrogate.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.Runtime.Serialization.StreamingContext.Valuetype is tagged;
with type MSSyst.Runtime.Serialization.ISurrogateSelector.Ref_addrof is access;
with type MSSyst.String.Ref is access;
package MSSyst.Runtime.Remoting.Messaging.RemotingSurrogateSelector is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ
         and MSSyst.Runtime.Serialization.ISurrogateSelector.Typ
   with record
      null;
   end record;
   function new_RemotingSurrogateSelector(
      This : Ref := null) return Ref;
   procedure ChainSelector(
      This : access Typ;
      selector : MSSyst.Runtime.Serialization.ISurrogateSelector.Ref);
   function get_Filter(
      This : access Typ) return MSSyst.Runtime.Remoting.Messaging.MessageSurrogateFilter.Ref;
   function GetNextSelector(
      This : access Typ) return MSSyst.Runtime.Serialization.ISurrogateSelector.Ref;
   function GetRootObject(
      This : access Typ) return MSSyst.Object.Ref;
   function GetSurrogate(
      This : access Typ;
      type_k : MSSyst.Type_k.Ref;
      context : MSSyst.Runtime.Serialization.StreamingContext.Valuetype;
      ssout : MSSyst.Runtime.Serialization.ISurrogateSelector.Ref_addrof) return MSSyst.Runtime.Serialization.ISerializationSurrogate.Ref;
   procedure set_Filter(
      This : access Typ;
      value : MSSyst.Runtime.Remoting.Messaging.MessageSurrogateFilter.Ref);
   procedure SetRootObject(
      This : access Typ;
      obj : MSSyst.Object.Ref);
   procedure UseSoapFormat(
      This : access Typ);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_RemotingSurrogateSelector);
   pragma Import(MSIL,ChainSelector,"ChainSelector");
   pragma Import(MSIL,get_Filter,"get_Filter");
   pragma Import(MSIL,GetNextSelector,"GetNextSelector");
   pragma Import(MSIL,GetRootObject,"GetRootObject");
   pragma Import(MSIL,GetSurrogate,"GetSurrogate");
   pragma Import(MSIL,set_Filter,"set_Filter");
   pragma Import(MSIL,SetRootObject,"SetRootObject");
   pragma Import(MSIL,UseSoapFormat,"UseSoapFormat");
end MSSyst.Runtime.Remoting.Messaging.RemotingSurrogateSelector;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Runtime.Remoting.Messaging.RemotingSurrogateSelector,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Runtime.Remoting.Messaging.RemotingSurrogateSelector");
