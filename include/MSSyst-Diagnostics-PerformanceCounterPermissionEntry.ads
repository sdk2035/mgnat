-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Diagnostics.PerformanceCounterPermissionAccess;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Diagnostics.PerformanceCounterPermissionEntry is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_PerformanceCounterPermissionEntry(
      This : Ref := null;
      permissionAccess : MSSyst.Diagnostics.PerformanceCounterPermissionAccess.Valuetype;
      machineName : access MSSyst.String.Typ'Class;
      categoryName : access MSSyst.String.Typ'Class) return Ref;
   function get_CategoryName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_MachineName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_PermissionAccess(
      This : access Typ) return MSSyst.Diagnostics.PerformanceCounterPermissionAccess.Valuetype;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_PerformanceCounterPermissionEntry);
   pragma Import(MSIL,get_CategoryName,"get_CategoryName");
   pragma Import(MSIL,get_MachineName,"get_MachineName");
   pragma Import(MSIL,get_PermissionAccess,"get_PermissionAccess");
end MSSyst.Diagnostics.PerformanceCounterPermissionEntry;
pragma Import(MSIL,MSSyst.Diagnostics.PerformanceCounterPermissionEntry,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Diagnostics.PerformanceCounterPermissionEntry");
