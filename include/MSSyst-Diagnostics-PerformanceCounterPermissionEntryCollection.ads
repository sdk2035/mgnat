-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Collections.CollectionBase;
with MSSyst.Collections.ICollection;
with MSSyst.Collections.IEnumerable;
limited with MSSyst.Collections.IEnumerator;
with MSSyst.Collections.IList;
limited with MSSyst.Diagnostics.PerformanceCounterPermissionEntry;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Diagnostics.PerformanceCounterPermissionEntryCollection is
   type Typ is new MSSyst.Collections.CollectionBase.Typ
         and MSSyst.Collections.IList.Typ
         and MSSyst.Collections.ICollection.Typ
         and MSSyst.Collections.IEnumerable.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function Add(
      This : access Typ;
      value : access MSSyst.Diagnostics.PerformanceCounterPermissionEntry.Typ'Class) return Integer;
   procedure AddRange(
      This : access Typ;
      value : access MSSyst.Diagnostics.PerformanceCounterPermissionEntry.Ref_arr);
   procedure AddRange(
      This : access Typ;
      value : access MSSyst.Diagnostics.PerformanceCounterPermissionEntryCollection.Typ'Class);
   function Contains(
      This : access Typ;
      value : access MSSyst.Diagnostics.PerformanceCounterPermissionEntry.Typ'Class) return Standard.Boolean;
   procedure CopyTo(
      This : access Typ;
      array_k : access MSSyst.Diagnostics.PerformanceCounterPermissionEntry.Ref_arr;
      index : Integer);
   function get_Item(
      This : access Typ;
      index : Integer) return access MSSyst.Diagnostics.PerformanceCounterPermissionEntry.Typ'Class;
   function IndexOf(
      This : access Typ;
      value : access MSSyst.Diagnostics.PerformanceCounterPermissionEntry.Typ'Class) return Integer;
   procedure Insert(
      This : access Typ;
      index : Integer;
      value : access MSSyst.Diagnostics.PerformanceCounterPermissionEntry.Typ'Class);
   procedure Remove(
      This : access Typ;
      value : access MSSyst.Diagnostics.PerformanceCounterPermissionEntry.Typ'Class);
   procedure set_Item(
      This : access Typ;
      index : Integer;
      value : access MSSyst.Diagnostics.PerformanceCounterPermissionEntry.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,Add,"Add");
   pragma Import(MSIL,AddRange,"AddRange");
   pragma Import(MSIL,Contains,"Contains");
   pragma Import(MSIL,CopyTo,"CopyTo");
   pragma Import(MSIL,get_Item,"get_Item");
   pragma Import(MSIL,IndexOf,"IndexOf");
   pragma Import(MSIL,Insert,"Insert");
   pragma Import(MSIL,Remove,"Remove");
   pragma Import(MSIL,set_Item,"set_Item");
end MSSyst.Diagnostics.PerformanceCounterPermissionEntryCollection;
pragma Import(MSIL,MSSyst.Diagnostics.PerformanceCounterPermissionEntryCollection,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Diagnostics.PerformanceCounterPermissionEntryCollection");
