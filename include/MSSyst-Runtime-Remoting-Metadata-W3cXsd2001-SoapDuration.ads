-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.String;
limited with MSSyst.TimeSpan;
limited with MSSyst.Type_k;
package MSSyst.Runtime.Remoting.Metadata.W3cXsd2001.SoapDuration is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_SoapDuration(
      This : Ref := null) return Ref;
   function get_XsdType return access MSSyst.String.Typ'Class;
   function Parse(
      value : access MSSyst.String.Typ'Class) return MSSyst.TimeSpan.Valuetype;
   function ToString(
      timeSpan : MSSyst.TimeSpan.Valuetype) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_SoapDuration);
   pragma Import(MSIL,get_XsdType,"get_XsdType");
   pragma Import(MSIL,Parse,"Parse");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Runtime.Remoting.Metadata.W3cXsd2001.SoapDuration;
pragma Import(MSIL,MSSyst.Runtime.Remoting.Metadata.W3cXsd2001.SoapDuration,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDuration");
