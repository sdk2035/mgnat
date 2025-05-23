-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Diagnostics.TextWriterTraceListener;
with type MSSyst.Runtime.Remoting.ObjRef.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.Object.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Collections.Specialized.StringDictionary.Ref is access;
with type MSSyst.Diagnostics.TraceFilter.Ref is access;
with MSSyst.Diagnostics.TraceOptions;
with type MSSyst.IO.TextWriter.Ref is access;
with type MSSyst.Diagnostics.TraceEventCache.Ref is access;
with MSSyst.Diagnostics.TraceEventType;
with type MSSyst.Object.Ref_array is access;
with type MSSyst.Guid.Valuetype is tagged;
with type MSSyst.IO.Stream.Ref is access;
package MSSyst.Diagnostics.DelimitedListTraceListener is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Diagnostics.TextWriterTraceListener.Typ   with record
      null;
   end record;
   function new_DelimitedListTraceListener(
      This : Ref := null;
      stream : MSSyst.IO.Stream.Ref) return Ref;
   function new_DelimitedListTraceListener(
      This : Ref := null;
      stream : MSSyst.IO.Stream.Ref;
      name : MSSyst.String.Ref) return Ref;
   function new_DelimitedListTraceListener(
      This : Ref := null;
      writer : MSSyst.IO.TextWriter.Ref) return Ref;
   function new_DelimitedListTraceListener(
      This : Ref := null;
      writer : MSSyst.IO.TextWriter.Ref;
      name : MSSyst.String.Ref) return Ref;
   function new_DelimitedListTraceListener(
      This : Ref := null;
      fileName : MSSyst.String.Ref) return Ref;
   function new_DelimitedListTraceListener(
      This : Ref := null;
      fileName : MSSyst.String.Ref;
      name : MSSyst.String.Ref) return Ref;
   function get_Delimiter(
      This : access Typ) return MSSyst.String.Ref;
   procedure set_Delimiter(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure TraceData(
      This : access Typ;
      eventCache : MSSyst.Diagnostics.TraceEventCache.Ref;
      source : MSSyst.String.Ref;
      eventType : MSSyst.Diagnostics.TraceEventType.Valuetype;
      id : Integer;
      data : MSSyst.Object.Ref);
   procedure TraceData(
      This : access Typ;
      eventCache : MSSyst.Diagnostics.TraceEventCache.Ref;
      source : MSSyst.String.Ref;
      eventType : MSSyst.Diagnostics.TraceEventType.Valuetype;
      id : Integer;
      data : MSSyst.Object.Ref_array);
   procedure TraceEvent(
      This : access Typ;
      eventCache : MSSyst.Diagnostics.TraceEventCache.Ref;
      source : MSSyst.String.Ref;
      eventType : MSSyst.Diagnostics.TraceEventType.Valuetype;
      id : Integer;
      format : MSSyst.String.Ref;
      args : MSSyst.Object.Ref_array);
   procedure TraceEvent(
      This : access Typ;
      eventCache : MSSyst.Diagnostics.TraceEventCache.Ref;
      source : MSSyst.String.Ref;
      eventType : MSSyst.Diagnostics.TraceEventType.Valuetype;
      id : Integer;
      message : MSSyst.String.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_DelimitedListTraceListener);
   pragma Import(MSIL,get_Delimiter,"get_Delimiter");
   pragma Import(MSIL,set_Delimiter,"set_Delimiter");
   pragma Import(MSIL,TraceData,"TraceData");
   pragma Import(MSIL,TraceEvent,"TraceEvent");
end MSSyst.Diagnostics.DelimitedListTraceListener;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Diagnostics.DelimitedListTraceListener,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Diagnostics.DelimitedListTraceListener");
