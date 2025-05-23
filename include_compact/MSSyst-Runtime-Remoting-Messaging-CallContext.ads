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
with type MSSyst.String.Ref is access;
with type MSSyst.Runtime.Remoting.Messaging.Header.Ref_array is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.Runtime.Remoting.Messaging.CallContext is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   procedure FreeNamedDataSlot(
      name : MSSyst.String.Ref);
   function get_HostContext return MSSyst.Object.Ref;
   function GetData(
      name : MSSyst.String.Ref) return MSSyst.Object.Ref;
   function GetHeaders return MSSyst.Runtime.Remoting.Messaging.Header.Ref_array;
   function LogicalGetData(
      name : MSSyst.String.Ref) return MSSyst.Object.Ref;
   procedure LogicalSetData(
      name : MSSyst.String.Ref;
      data : MSSyst.Object.Ref);
   procedure set_HostContext(
      value : MSSyst.Object.Ref);
   procedure SetData(
      name : MSSyst.String.Ref;
      data : MSSyst.Object.Ref);
   procedure SetHeaders(
      headers : MSSyst.Runtime.Remoting.Messaging.Header.Ref_array);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,FreeNamedDataSlot,"FreeNamedDataSlot");
   pragma Import(MSIL,get_HostContext,"get_HostContext");
   pragma Import(MSIL,GetData,"GetData");
   pragma Import(MSIL,GetHeaders,"GetHeaders");
   pragma Import(MSIL,LogicalGetData,"LogicalGetData");
   pragma Import(MSIL,LogicalSetData,"LogicalSetData");
   pragma Import(MSIL,set_HostContext,"set_HostContext");
   pragma Import(MSIL,SetData,"SetData");
   pragma Import(MSIL,SetHeaders,"SetHeaders");
end MSSyst.Runtime.Remoting.Messaging.CallContext;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Runtime.Remoting.Messaging.CallContext,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Runtime.Remoting.Messaging.CallContext");
