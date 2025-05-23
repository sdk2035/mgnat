-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.IDisposable;
limited with MSSyst.String;
package MSSyst.Resources.IResourceWriter is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure AddResource(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : MSIL_Types.unsigned_int8_Arr) is abstract;
   procedure AddResource(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : access MSSyst.Object.Typ'Class) is abstract;
   procedure AddResource(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : access MSSyst.String.Typ'Class) is abstract;
   procedure Close(
      This : access Typ) is abstract;
   procedure Generate(
      This : access Typ) is abstract;
private
   pragma Import(MSIL,AddResource,"AddResource");
   pragma Import(MSIL,Close,"Close");
   pragma Import(MSIL,Generate,"Generate");
end MSSyst.Resources.IResourceWriter;
pragma Import(MSIL,MSSyst.Resources.IResourceWriter,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Resources.IResourceWriter");
