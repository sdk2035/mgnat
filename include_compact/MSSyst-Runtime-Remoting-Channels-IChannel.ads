-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.String.Ref is access;
with type MSSyst.String.Ref_addrof is access;
package MSSyst.Runtime.Remoting.Channels.IChannel is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is interface;
   function get_ChannelName(
      This : access Typ) return MSSyst.String.Ref is abstract;
   function get_ChannelPriority(
      This : access Typ) return Integer is abstract;
   function Parse(
      This : access Typ;
      url : MSSyst.String.Ref;
      objectURI : MSSyst.String.Ref_addrof) return MSSyst.String.Ref is abstract;
private
   pragma Import(MSIL,get_ChannelName,"get_ChannelName");
   pragma Import(MSIL,get_ChannelPriority,"get_ChannelPriority");
   pragma Import(MSIL,Parse,"Parse");
end MSSyst.Runtime.Remoting.Channels.IChannel;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Runtime.Remoting.Channels.IChannel,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Runtime.Remoting.Channels.IChannel");
