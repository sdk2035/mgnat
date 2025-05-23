-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Attribute;
with type MSSyst.Object.Ref is access;
with MSSyst.Runtime.ConstrainedExecution.Cer;
with MSSyst.Runtime.ConstrainedExecution.Consistency;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Runtime.ConstrainedExecution.ReliabilityContractAttribute is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Attribute.Typ   with record
      null;
   end record;
   function new_ReliabilityContractAttribute(
      This : Ref := null;
      consistencyGuarantee : MSSyst.Runtime.ConstrainedExecution.Consistency.Valuetype;
      cer : MSSyst.Runtime.ConstrainedExecution.Cer.Valuetype) return Ref;
   function get_Cer(
      This : access Typ) return MSSyst.Runtime.ConstrainedExecution.Cer.Valuetype;
   function get_ConsistencyGuarantee(
      This : access Typ) return MSSyst.Runtime.ConstrainedExecution.Consistency.Valuetype;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ReliabilityContractAttribute);
   pragma Import(MSIL,get_Cer,"get_Cer");
   pragma Import(MSIL,get_ConsistencyGuarantee,"get_ConsistencyGuarantee");
end MSSyst.Runtime.ConstrainedExecution.ReliabilityContractAttribute;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Runtime.ConstrainedExecution.ReliabilityContractAttribute,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Runtime.ConstrainedExecution.ReliabilityContractAttribute");
