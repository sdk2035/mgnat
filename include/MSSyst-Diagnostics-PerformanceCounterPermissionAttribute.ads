-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Attribute;
limited with MSSyst.Diagnostics.PerformanceCounterPermissionAccess;
with MSSyst.Runtime.InteropServices.uAttribute;
limited with MSSyst.Security.IPermission;
with MSSyst.Security.Permissions.CodeAccessSecurityAttribute;
limited with MSSyst.Security.Permissions.SecurityAction;
with MSSyst.Security.Permissions.SecurityAttribute;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Diagnostics.PerformanceCounterPermissionAttribute is
   type Typ is new MSSyst.Security.Permissions.CodeAccessSecurityAttribute.Typ
         and MSSyst.Runtime.InteropServices.uAttribute.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_PerformanceCounterPermissionAttribute(
      This : Ref := null;
      action : MSSyst.Security.Permissions.SecurityAction.Valuetype) return Ref;
   function CreatePermission(
      This : access Typ) return access MSSyst.Security.IPermission.Typ'Class;
   function get_CategoryName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_MachineName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_PermissionAccess(
      This : access Typ) return MSSyst.Diagnostics.PerformanceCounterPermissionAccess.Valuetype;
   procedure set_CategoryName(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_MachineName(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_PermissionAccess(
      This : access Typ;
      value : MSSyst.Diagnostics.PerformanceCounterPermissionAccess.Valuetype);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_PerformanceCounterPermissionAttribute);
   pragma Import(MSIL,CreatePermission,"CreatePermission");
   pragma Import(MSIL,get_CategoryName,"get_CategoryName");
   pragma Import(MSIL,get_MachineName,"get_MachineName");
   pragma Import(MSIL,get_PermissionAccess,"get_PermissionAccess");
   pragma Import(MSIL,set_CategoryName,"set_CategoryName");
   pragma Import(MSIL,set_MachineName,"set_MachineName");
   pragma Import(MSIL,set_PermissionAccess,"set_PermissionAccess");
end MSSyst.Diagnostics.PerformanceCounterPermissionAttribute;
pragma Import(MSIL,MSSyst.Diagnostics.PerformanceCounterPermissionAttribute,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Diagnostics.PerformanceCounterPermissionAttribute");
