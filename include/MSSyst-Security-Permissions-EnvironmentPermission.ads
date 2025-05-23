-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Security.CodeAccessPermission;
with MSSyst.Security.IPermission;
with MSSyst.Security.ISecurityEncodable;
with MSSyst.Security.IStackWalk;
limited with MSSyst.Security.Permissions.EnvironmentPermissionAccess;
with MSSyst.Security.Permissions.IUnrestrictedPermission;
limited with MSSyst.Security.Permissions.PermissionState;
limited with MSSyst.Security.SecurityElement;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Security.Permissions.EnvironmentPermission is
   type Typ is new MSSyst.Security.CodeAccessPermission.Typ
         and MSSyst.Security.IPermission.Typ
         and MSSyst.Security.ISecurityEncodable.Typ
         and MSSyst.Security.IStackWalk.Typ
         and MSSyst.Security.Permissions.IUnrestrictedPermission.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_EnvironmentPermission(
      This : Ref := null;
      state : MSSyst.Security.Permissions.PermissionState.Valuetype) return Ref;
   function new_EnvironmentPermission(
      This : Ref := null;
      flag : MSSyst.Security.Permissions.EnvironmentPermissionAccess.Valuetype;
      pathList : access MSSyst.String.Typ'Class) return Ref;
   procedure AddPathList(
      This : access Typ;
      flag : MSSyst.Security.Permissions.EnvironmentPermissionAccess.Valuetype;
      pathList : access MSSyst.String.Typ'Class);
   function Copy(
      This : access Typ) return access MSSyst.Security.IPermission.Typ'Class;
   procedure FromXml(
      This : access Typ;
      esd : access MSSyst.Security.SecurityElement.Typ'Class);
   function GetPathList(
      This : access Typ;
      flag : MSSyst.Security.Permissions.EnvironmentPermissionAccess.Valuetype) return access MSSyst.String.Typ'Class;
   function Intersect(
      This : access Typ;
      target : access MSSyst.Security.IPermission.Typ'Class) return access MSSyst.Security.IPermission.Typ'Class;
   function IsSubsetOf(
      This : access Typ;
      target : access MSSyst.Security.IPermission.Typ'Class) return Standard.Boolean;
   function IsUnrestricted(
      This : access Typ) return Standard.Boolean;
   procedure SetPathList(
      This : access Typ;
      flag : MSSyst.Security.Permissions.EnvironmentPermissionAccess.Valuetype;
      pathList : access MSSyst.String.Typ'Class);
   function ToXml(
      This : access Typ) return access MSSyst.Security.SecurityElement.Typ'Class;
   function Union(
      This : access Typ;
      other : access MSSyst.Security.IPermission.Typ'Class) return access MSSyst.Security.IPermission.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_EnvironmentPermission);
   pragma Import(MSIL,AddPathList,"AddPathList");
   pragma Import(MSIL,Copy,"Copy");
   pragma Import(MSIL,FromXml,"FromXml");
   pragma Import(MSIL,GetPathList,"GetPathList");
   pragma Import(MSIL,Intersect,"Intersect");
   pragma Import(MSIL,IsSubsetOf,"IsSubsetOf");
   pragma Import(MSIL,IsUnrestricted,"IsUnrestricted");
   pragma Import(MSIL,SetPathList,"SetPathList");
   pragma Import(MSIL,ToXml,"ToXml");
   pragma Import(MSIL,Union,"Union");
end MSSyst.Security.Permissions.EnvironmentPermission;
pragma Import(MSIL,MSSyst.Security.Permissions.EnvironmentPermission,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Security.Permissions.EnvironmentPermission");
