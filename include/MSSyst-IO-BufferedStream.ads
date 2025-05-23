-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.AsyncCallback;
limited with MSSyst.IAsyncResult;
with MSSyst.IDisposable;
limited with MSSyst.IO.SeekOrigin;
with MSSyst.IO.Stream;
with MSSyst.MarshalByRefObject;
limited with MSSyst.Runtime.Remoting.ObjRef;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.IO.BufferedStream is
   type Typ is new MSSyst.IO.Stream.Typ
         and MSSyst.IDisposable.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_BufferedStream(
      This : Ref := null;
      stream : access MSSyst.IO.Stream.Typ'Class) return Ref;
   function new_BufferedStream(
      This : Ref := null;
      stream : access MSSyst.IO.Stream.Typ'Class;
      bufferSize : Integer) return Ref;
   procedure Flush(
      This : access Typ);
   function get_CanRead(
      This : access Typ) return Standard.Boolean;
   function get_CanSeek(
      This : access Typ) return Standard.Boolean;
   function get_CanWrite(
      This : access Typ) return Standard.Boolean;
   function get_Length(
      This : access Typ) return Long_Long_Integer;
   function get_Position(
      This : access Typ) return Long_Long_Integer;
   function Read(
      This : access Typ;
      array_k : MSIL_Types.unsigned_int8_Arr;
      offset : Integer;
      count : Integer) return Integer;
   function ReadByte(
      This : access Typ) return Integer;
   function Seek(
      This : access Typ;
      offset : Long_Long_Integer;
      origin : MSSyst.IO.SeekOrigin.Valuetype) return Long_Long_Integer;
   procedure set_Position(
      This : access Typ;
      value : Long_Long_Integer);
   procedure SetLength(
      This : access Typ;
      value : Long_Long_Integer);
   procedure Write(
      This : access Typ;
      array_k : MSIL_Types.unsigned_int8_Arr;
      offset : Integer;
      count : Integer);
   procedure WriteByte(
      This : access Typ;
      value : MSIL_Types.unsigned_int8);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_BufferedStream);
   pragma Import(MSIL,Flush,"Flush");
   pragma Import(MSIL,get_CanRead,"get_CanRead");
   pragma Import(MSIL,get_CanSeek,"get_CanSeek");
   pragma Import(MSIL,get_CanWrite,"get_CanWrite");
   pragma Import(MSIL,get_Length,"get_Length");
   pragma Import(MSIL,get_Position,"get_Position");
   pragma Import(MSIL,Read,"Read");
   pragma Import(MSIL,ReadByte,"ReadByte");
   pragma Import(MSIL,Seek,"Seek");
   pragma Import(MSIL,set_Position,"set_Position");
   pragma Import(MSIL,SetLength,"SetLength");
   pragma Import(MSIL,Write,"Write");
   pragma Import(MSIL,WriteByte,"WriteByte");
end MSSyst.IO.BufferedStream;
pragma Import(MSIL,MSSyst.IO.BufferedStream,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.IO.BufferedStream");
