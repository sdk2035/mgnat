-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.EventArgs;
with type MSSyst.Object.Ref is access;
with MSSyst.IO.WatcherChangeTypes;
with type MSSyst.String.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.IO.FileSystemEventArgs is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.EventArgs.Typ   with record
      null;
   end record;
   function new_FileSystemEventArgs(
      This : Ref := null;
      changeType : MSSyst.IO.WatcherChangeTypes.Valuetype;
      directory : MSSyst.String.Ref;
      name : MSSyst.String.Ref) return Ref;
   function get_ChangeType(
      This : access Typ) return MSSyst.IO.WatcherChangeTypes.Valuetype;
   function get_FullPath(
      This : access Typ) return MSSyst.String.Ref;
   function get_Name(
      This : access Typ) return MSSyst.String.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_FileSystemEventArgs);
   pragma Import(MSIL,get_ChangeType,"get_ChangeType");
   pragma Import(MSIL,get_FullPath,"get_FullPath");
   pragma Import(MSIL,get_Name,"get_Name");
end MSSyst.IO.FileSystemEventArgs;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.IO.FileSystemEventArgs,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.IO.FileSystemEventArgs");
