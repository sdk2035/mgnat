-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Drawing.Printing.PrintingPermissionLevel;
with MSSyst.Security.CodeAccessPermission;
with MSSyst.Security.IPermission;
with MSSyst.Security.ISecurityEncodable;
with MSSyst.Security.IStackWalk;
with MSSyst.Security.Permissions.IUnrestrictedPermission;
limited with MSSyst.Security.Permissions.PermissionState;
limited with MSSyst.Security.SecurityElement;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Drawing.Printing.PrintingPermission is
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
   function new_PrintingPermission(
      This : Ref := null;
      state : MSSyst.Security.Permissions.PermissionState.Valuetype) return Ref;
   function new_PrintingPermission(
      This : Ref := null;
      printingLevel : MSSyst.Drawing.Printing.PrintingPermissionLevel.Valuetype) return Ref;
   function Copy(
      This : access Typ) return access MSSyst.Security.IPermission.Typ'Class;
   procedure FromXml(
      This : access Typ;
      esd : access MSSyst.Security.SecurityElement.Typ'Class);
   function get_Level(
      This : access Typ) return MSSyst.Drawing.Printing.PrintingPermissionLevel.Valuetype;
   function Intersect(
      This : access Typ;
      target : access MSSyst.Security.IPermission.Typ'Class) return access MSSyst.Security.IPermission.Typ'Class;
   function IsSubsetOf(
      This : access Typ;
      target : access MSSyst.Security.IPermission.Typ'Class) return Standard.Boolean;
   function IsUnrestricted(
      This : access Typ) return Standard.Boolean;
   procedure set_Level(
      This : access Typ;
      value : MSSyst.Drawing.Printing.PrintingPermissionLevel.Valuetype);
   function ToXml(
      This : access Typ) return access MSSyst.Security.SecurityElement.Typ'Class;
   function Union(
      This : access Typ;
      target : access MSSyst.Security.IPermission.Typ'Class) return access MSSyst.Security.IPermission.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_PrintingPermission);
   pragma Import(MSIL,Copy,"Copy");
   pragma Import(MSIL,FromXml,"FromXml");
   pragma Import(MSIL,get_Level,"get_Level");
   pragma Import(MSIL,Intersect,"Intersect");
   pragma Import(MSIL,IsSubsetOf,"IsSubsetOf");
   pragma Import(MSIL,IsUnrestricted,"IsUnrestricted");
   pragma Import(MSIL,set_Level,"set_Level");
   pragma Import(MSIL,ToXml,"ToXml");
   pragma Import(MSIL,Union,"Union");
end MSSyst.Drawing.Printing.PrintingPermission;
pragma Import(MSIL,MSSyst.Drawing.Printing.PrintingPermission,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Printing.PrintingPermission");
