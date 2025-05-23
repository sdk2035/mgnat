-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Diagnostics.PerformanceCounterType;
limited with MSSyst.String;
limited with MSSyst.Type_k;
with MSSyst.ValueType;
package MSSyst.Diagnostics.CounterSample is
   type ValueType is new MSSyst.ValueType.Typ with null record;
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function new_CounterSample(
      rawValue : Long_Long_Integer;
      baseValue : Long_Long_Integer;
      counterFrequency : Long_Long_Integer;
      systemFrequency : Long_Long_Integer;
      timeStamp : Long_Long_Integer;
      timeStamp100nSec : Long_Long_Integer;
      counterType : MSSyst.Diagnostics.PerformanceCounterType.Valuetype) return Valuetype;
   function new_CounterSample(
      rawValue : Long_Long_Integer;
      baseValue : Long_Long_Integer;
      counterFrequency : Long_Long_Integer;
      systemFrequency : Long_Long_Integer;
      timeStamp : Long_Long_Integer;
      timeStamp100nSec : Long_Long_Integer;
      counterType : MSSyst.Diagnostics.PerformanceCounterType.Valuetype;
      counterTimeStamp : Long_Long_Integer) return Valuetype;
   function Calculate(
      counterSample : MSSyst.Diagnostics.CounterSample.Valuetype) return Float;
   function Calculate(
      counterSample : MSSyst.Diagnostics.CounterSample.Valuetype;
      nextCounterSample : MSSyst.Diagnostics.CounterSample.Valuetype) return Float;
   function Equals(
      This : Valuetype;
      o : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function Equals(
      This : Valuetype;
      sample : MSSyst.Diagnostics.CounterSample.Valuetype) return Standard.Boolean;
   function get_BaseValue(
      This : Valuetype) return Long_Long_Integer;
   function get_CounterFrequency(
      This : Valuetype) return Long_Long_Integer;
   function get_CounterTimeStamp(
      This : Valuetype) return Long_Long_Integer;
   function get_CounterType(
      This : Valuetype) return MSSyst.Diagnostics.PerformanceCounterType.Valuetype;
   function get_RawValue(
      This : Valuetype) return Long_Long_Integer;
   function get_SystemFrequency(
      This : Valuetype) return Long_Long_Integer;
   function get_TimeStamp(
      This : Valuetype) return Long_Long_Integer;
   function get_TimeStamp100nSec(
      This : Valuetype) return Long_Long_Integer;
   function GetHashCode(
      This : Valuetype) return Integer;
   function op_Equality(
      a : MSSyst.Diagnostics.CounterSample.Valuetype;
      b : MSSyst.Diagnostics.CounterSample.Valuetype) return Standard.Boolean;
   function op_Inequality(
      a : MSSyst.Diagnostics.CounterSample.Valuetype;
      b : MSSyst.Diagnostics.CounterSample.Valuetype) return Standard.Boolean;
private
   pragma MSIL_Constructor(new_CounterSample);
   pragma Import(MSIL,Calculate,"Calculate");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,get_BaseValue,"get_BaseValue");
   pragma Import(MSIL,get_CounterFrequency,"get_CounterFrequency");
   pragma Import(MSIL,get_CounterTimeStamp,"get_CounterTimeStamp");
   pragma Import(MSIL,get_CounterType,"get_CounterType");
   pragma Import(MSIL,get_RawValue,"get_RawValue");
   pragma Import(MSIL,get_SystemFrequency,"get_SystemFrequency");
   pragma Import(MSIL,get_TimeStamp,"get_TimeStamp");
   pragma Import(MSIL,get_TimeStamp100nSec,"get_TimeStamp100nSec");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,op_Equality,"op_Equality");
   pragma Import(MSIL,op_Inequality,"op_Inequality");
end MSSyst.Diagnostics.CounterSample;
pragma Import(MSIL,MSSyst.Diagnostics.CounterSample,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Diagnostics.CounterSample");
