-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.IO.Stream;
with type MSSyst.IAsyncResult.Ref is access;
with type MSSyst.AsyncCallback.Ref is access;
with type MSSyst.Object.Ref is access;
with type MSSyst.Runtime.Remoting.ObjRef.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
with type Microsoft.Win32.SafeHandles.SafeFileHandle.Ref is access;
with type MSSyst.Security.AccessControl.FileSecurity.Ref is access;
with MSSyst.IO.SeekOrigin;
with MSSyst.IO.FileMode;
with MSSyst.IO.FileAccess;
with MSSyst.IO.FileShare;
with MSSyst.IO.FileOptions;
with MSSyst.Security.AccessControl.FileSystemRights;
package MSSyst.IO.FileStream is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.IO.Stream.Typ   with record
      null;
   end record;
   function new_FileStream(
      This : Ref := null;
      path : MSSyst.String.Ref;
      mode : MSSyst.IO.FileMode.Valuetype) return Ref;
   function new_FileStream(
      This : Ref := null;
      path : MSSyst.String.Ref;
      mode : MSSyst.IO.FileMode.Valuetype;
      access_k : MSSyst.IO.FileAccess.Valuetype) return Ref;
   function new_FileStream(
      This : Ref := null;
      path : MSSyst.String.Ref;
      mode : MSSyst.IO.FileMode.Valuetype;
      access_k : MSSyst.IO.FileAccess.Valuetype;
      share : MSSyst.IO.FileShare.Valuetype) return Ref;
   function new_FileStream(
      This : Ref := null;
      path : MSSyst.String.Ref;
      mode : MSSyst.IO.FileMode.Valuetype;
      access_k : MSSyst.IO.FileAccess.Valuetype;
      share : MSSyst.IO.FileShare.Valuetype;
      bufferSize : Integer;
      options : MSSyst.IO.FileOptions.Valuetype) return Ref;
   function new_FileStream(
      This : Ref := null;
      path : MSSyst.String.Ref;
      mode : MSSyst.IO.FileMode.Valuetype;
      access_k : MSSyst.IO.FileAccess.Valuetype;
      share : MSSyst.IO.FileShare.Valuetype;
      bufferSize : Integer) return Ref;
   function new_FileStream(
      This : Ref := null;
      path : MSSyst.String.Ref;
      mode : MSSyst.IO.FileMode.Valuetype;
      access_k : MSSyst.IO.FileAccess.Valuetype;
      share : MSSyst.IO.FileShare.Valuetype;
      bufferSize : Integer;
      useAsync : Standard.Boolean) return Ref;
   function new_FileStream(
      This : Ref := null;
      path : MSSyst.String.Ref;
      mode : MSSyst.IO.FileMode.Valuetype;
      rights : MSSyst.Security.AccessControl.FileSystemRights.Valuetype;
      share : MSSyst.IO.FileShare.Valuetype;
      bufferSize : Integer;
      options : MSSyst.IO.FileOptions.Valuetype;
      fileSecurity : MSSyst.Security.AccessControl.FileSecurity.Ref) return Ref;
   function new_FileStream(
      This : Ref := null;
      path : MSSyst.String.Ref;
      mode : MSSyst.IO.FileMode.Valuetype;
      rights : MSSyst.Security.AccessControl.FileSystemRights.Valuetype;
      share : MSSyst.IO.FileShare.Valuetype;
      bufferSize : Integer;
      options : MSSyst.IO.FileOptions.Valuetype) return Ref;
   function new_FileStream(
      This : Ref := null;
      handle : MSIL_Types.native_int;
      access_k : MSSyst.IO.FileAccess.Valuetype) return Ref;
   function new_FileStream(
      This : Ref := null;
      handle : MSIL_Types.native_int;
      access_k : MSSyst.IO.FileAccess.Valuetype;
      ownsHandle : Standard.Boolean) return Ref;
   function new_FileStream(
      This : Ref := null;
      handle : MSIL_Types.native_int;
      access_k : MSSyst.IO.FileAccess.Valuetype;
      ownsHandle : Standard.Boolean;
      bufferSize : Integer) return Ref;
   function new_FileStream(
      This : Ref := null;
      handle : MSIL_Types.native_int;
      access_k : MSSyst.IO.FileAccess.Valuetype;
      ownsHandle : Standard.Boolean;
      bufferSize : Integer;
      isAsync : Standard.Boolean) return Ref;
   function new_FileStream(
      This : Ref := null;
      handle : Microsoft.Win32.SafeHandles.SafeFileHandle.Ref;
      access_k : MSSyst.IO.FileAccess.Valuetype) return Ref;
   function new_FileStream(
      This : Ref := null;
      handle : Microsoft.Win32.SafeHandles.SafeFileHandle.Ref;
      access_k : MSSyst.IO.FileAccess.Valuetype;
      bufferSize : Integer) return Ref;
   function new_FileStream(
      This : Ref := null;
      handle : Microsoft.Win32.SafeHandles.SafeFileHandle.Ref;
      access_k : MSSyst.IO.FileAccess.Valuetype;
      bufferSize : Integer;
      isAsync : Standard.Boolean) return Ref;
   function BeginRead(
      This : access Typ;
      array_k : MSIL_Types.unsigned_int8_Arr;
      offset : Integer;
      numBytes : Integer;
      userCallback : MSSyst.AsyncCallback.Ref;
      stateObject : MSSyst.Object.Ref) return MSSyst.IAsyncResult.Ref;
   function BeginWrite(
      This : access Typ;
      array_k : MSIL_Types.unsigned_int8_Arr;
      offset : Integer;
      numBytes : Integer;
      userCallback : MSSyst.AsyncCallback.Ref;
      stateObject : MSSyst.Object.Ref) return MSSyst.IAsyncResult.Ref;
   function EndRead(
      This : access Typ;
      asyncResult : MSSyst.IAsyncResult.Ref) return Integer;
   procedure EndWrite(
      This : access Typ;
      asyncResult : MSSyst.IAsyncResult.Ref);
   procedure Flush(
      This : access Typ);
   function get_CanRead(
      This : access Typ) return Standard.Boolean;
   function get_CanSeek(
      This : access Typ) return Standard.Boolean;
   function get_CanWrite(
      This : access Typ) return Standard.Boolean;
   function get_Handle(
      This : access Typ) return MSIL_Types.native_int;
   function get_IsAsync(
      This : access Typ) return Standard.Boolean;
   function get_Length(
      This : access Typ) return Long_Long_Integer;
   function get_Name(
      This : access Typ) return MSSyst.String.Ref;
   function get_Position(
      This : access Typ) return Long_Long_Integer;
   function get_SafeFileHandle(
      This : access Typ) return Microsoft.Win32.SafeHandles.SafeFileHandle.Ref;
   function GetAccessControl(
      This : access Typ) return MSSyst.Security.AccessControl.FileSecurity.Ref;
   procedure Lock(
      This : access Typ;
      position : Long_Long_Integer;
      length : Long_Long_Integer);
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
   procedure SetAccessControl(
      This : access Typ;
      fileSecurity : MSSyst.Security.AccessControl.FileSecurity.Ref);
   procedure SetLength(
      This : access Typ;
      value : Long_Long_Integer);
   procedure Unlock(
      This : access Typ;
      position : Long_Long_Integer;
      length : Long_Long_Integer);
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
   pragma MSIL_Constructor(new_FileStream);
   pragma Import(MSIL,BeginRead,"BeginRead");
   pragma Import(MSIL,BeginWrite,"BeginWrite");
   pragma Import(MSIL,EndRead,"EndRead");
   pragma Import(MSIL,EndWrite,"EndWrite");
   pragma Import(MSIL,Flush,"Flush");
   pragma Import(MSIL,get_CanRead,"get_CanRead");
   pragma Import(MSIL,get_CanSeek,"get_CanSeek");
   pragma Import(MSIL,get_CanWrite,"get_CanWrite");
   pragma Import(MSIL,get_Handle,"get_Handle");
   pragma Import(MSIL,get_IsAsync,"get_IsAsync");
   pragma Import(MSIL,get_Length,"get_Length");
   pragma Import(MSIL,get_Name,"get_Name");
   pragma Import(MSIL,get_Position,"get_Position");
   pragma Import(MSIL,get_SafeFileHandle,"get_SafeFileHandle");
   pragma Import(MSIL,GetAccessControl,"GetAccessControl");
   pragma Import(MSIL,Lock,"Lock");
   pragma Import(MSIL,Read,"Read");
   pragma Import(MSIL,ReadByte,"ReadByte");
   pragma Import(MSIL,Seek,"Seek");
   pragma Import(MSIL,set_Position,"set_Position");
   pragma Import(MSIL,SetAccessControl,"SetAccessControl");
   pragma Import(MSIL,SetLength,"SetLength");
   pragma Import(MSIL,Unlock,"Unlock");
   pragma Import(MSIL,Write,"Write");
   pragma Import(MSIL,WriteByte,"WriteByte");
end MSSyst.IO.FileStream;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.IO.FileStream,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.IO.FileStream");
