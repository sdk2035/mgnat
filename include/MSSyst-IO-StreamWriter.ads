-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Decimal;
with MSSyst.IDisposable;
limited with MSSyst.IFormatProvider;
limited with MSSyst.IO.Stream;
with MSSyst.IO.TextWriter;
with MSSyst.MarshalByRefObject;
limited with MSSyst.Runtime.Remoting.ObjRef;
limited with MSSyst.String;
limited with MSSyst.Text.Encoding;
limited with MSSyst.Type_k;
package MSSyst.IO.StreamWriter is
   type Typ is new MSSyst.IO.TextWriter.Typ
         and MSSyst.IDisposable.Typ
   with record
      null;
   end record;
   Null_k : access MSSyst.IO.StreamWriter.Typ'Class;
   pragma Import(MSIL,Null_k,"Null");
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_StreamWriter(
      This : Ref := null;
      path : access MSSyst.String.Typ'Class;
      append : Standard.Boolean;
      encoding : access MSSyst.Text.Encoding.Typ'Class) return Ref;
   function new_StreamWriter(
      This : Ref := null;
      stream : access MSSyst.IO.Stream.Typ'Class) return Ref;
   function new_StreamWriter(
      This : Ref := null;
      stream : access MSSyst.IO.Stream.Typ'Class;
      encoding : access MSSyst.Text.Encoding.Typ'Class) return Ref;
   function new_StreamWriter(
      This : Ref := null;
      stream : access MSSyst.IO.Stream.Typ'Class;
      encoding : access MSSyst.Text.Encoding.Typ'Class;
      bufferSize : Integer) return Ref;
   function new_StreamWriter(
      This : Ref := null;
      path : access MSSyst.String.Typ'Class) return Ref;
   function new_StreamWriter(
      This : Ref := null;
      path : access MSSyst.String.Typ'Class;
      append : Standard.Boolean) return Ref;
   function new_StreamWriter(
      This : Ref := null;
      path : access MSSyst.String.Typ'Class;
      append : Standard.Boolean;
      encoding : access MSSyst.Text.Encoding.Typ'Class;
      bufferSize : Integer) return Ref;
   procedure Close(
      This : access Typ);
   procedure Flush(
      This : access Typ);
   function get_AutoFlush(
      This : access Typ) return Standard.Boolean;
   function get_BaseStream(
      This : access Typ) return access MSSyst.IO.Stream.Typ'Class;
   function get_Encoding(
      This : access Typ) return access MSSyst.Text.Encoding.Typ'Class;
   procedure set_AutoFlush(
      This : access Typ;
      value : Standard.Boolean);
   procedure Write(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure Write(
      This : access Typ;
      buffer : MSIL_Types.Char_Arr;
      index : Integer;
      count : Integer);
   procedure Write(
      This : access Typ;
      buffer : MSIL_Types.Char_Arr);
   procedure Write(
      This : access Typ;
      value : Wide_Character);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_StreamWriter);
   pragma Import(MSIL,Close,"Close");
   pragma Import(MSIL,Flush,"Flush");
   pragma Import(MSIL,get_AutoFlush,"get_AutoFlush");
   pragma Import(MSIL,get_BaseStream,"get_BaseStream");
   pragma Import(MSIL,get_Encoding,"get_Encoding");
   pragma Import(MSIL,set_AutoFlush,"set_AutoFlush");
   pragma Import(MSIL,Write,"Write");
end MSSyst.IO.StreamWriter;
pragma Import(MSIL,MSSyst.IO.StreamWriter,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.IO.StreamWriter");
