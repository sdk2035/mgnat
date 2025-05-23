-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Security.Permissions.CodeAccessSecurityAttribute;
with type MSSyst.Security.IPermission.Ref is access;
with type MSSyst.Object.Ref is access;
with MSSyst.Security.Permissions.SecurityAction;
with MSSyst.Security.Permissions.IsolatedStorageContainment;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Security.Permissions.IsolatedStoragePermissionAttribute is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is abstract new MSSyst.Security.Permissions.CodeAccessSecurityAttribute.Typ   with record
      null;
   end record;
   function get_UsageAllowed(
      This : access Typ) return MSSyst.Security.Permissions.IsolatedStorageContainment.Valuetype;
   function get_UserQuota(
      This : access Typ) return Long_Long_Integer;
   procedure set_UsageAllowed(
      This : access Typ;
      value : MSSyst.Security.Permissions.IsolatedStorageContainment.Valuetype);
   procedure set_UserQuota(
      This : access Typ;
      value : Long_Long_Integer);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,get_UsageAllowed,"get_UsageAllowed");
   pragma Import(MSIL,get_UserQuota,"get_UserQuota");
   pragma Import(MSIL,set_UsageAllowed,"set_UsageAllowed");
   pragma Import(MSIL,set_UserQuota,"set_UserQuota");
end MSSyst.Security.Permissions.IsolatedStoragePermissionAttribute;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Security.Permissions.IsolatedStoragePermissionAttribute,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Security.Permissions.IsolatedStoragePermissionAttribute");
