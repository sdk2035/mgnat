-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Runtime.Remoting.Contexts.IDynamicMessageSink;
package MSSyst.Runtime.Remoting.Contexts.IContributeDynamicSink is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function GetDynamicSink(
      This : access Typ) return access MSSyst.Runtime.Remoting.Contexts.IDynamicMessageSink.Typ'Class is abstract;
private
   pragma Import(MSIL,GetDynamicSink,"GetDynamicSink");
end MSSyst.Runtime.Remoting.Contexts.IContributeDynamicSink;
pragma Import(MSIL,MSSyst.Runtime.Remoting.Contexts.IContributeDynamicSink,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Runtime.Remoting.Contexts.IContributeDynamicSink");
