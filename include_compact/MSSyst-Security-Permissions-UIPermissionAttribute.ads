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
with MSSyst.Security.Permissions.UIPermissionClipboard;
with MSSyst.Security.Permissions.UIPermissionWindow;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Security.Permissions.UIPermissionAttribute is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Security.Permissions.CodeAccessSecurityAttribute.Typ   with record
      null;
   end record;
   function new_UIPermissionAttribute(
      This : Ref := null;
      action : MSSyst.Security.Permissions.SecurityAction.Valuetype) return Ref;
   function CreatePermission(
      This : access Typ) return MSSyst.Security.IPermission.Ref;
   function get_Clipboard(
      This : access Typ) return MSSyst.Security.Permissions.UIPermissionClipboard.Valuetype;
   function get_Window(
      This : access Typ) return MSSyst.Security.Permissions.UIPermissionWindow.Valuetype;
   procedure set_Clipboard(
      This : access Typ;
      value : MSSyst.Security.Permissions.UIPermissionClipboard.Valuetype);
   procedure set_Window(
      This : access Typ;
      value : MSSyst.Security.Permissions.UIPermissionWindow.Valuetype);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_UIPermissionAttribute);
   pragma Import(MSIL,CreatePermission,"CreatePermission");
   pragma Import(MSIL,get_Clipboard,"get_Clipboard");
   pragma Import(MSIL,get_Window,"get_Window");
   pragma Import(MSIL,set_Clipboard,"set_Clipboard");
   pragma Import(MSIL,set_Window,"set_Window");
end MSSyst.Security.Permissions.UIPermissionAttribute;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Security.Permissions.UIPermissionAttribute,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Security.Permissions.UIPermissionAttribute");
