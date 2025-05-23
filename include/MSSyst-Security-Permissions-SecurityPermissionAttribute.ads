-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Attribute;
with MSSyst.Runtime.InteropServices.uAttribute;
limited with MSSyst.Security.IPermission;
with MSSyst.Security.Permissions.CodeAccessSecurityAttribute;
limited with MSSyst.Security.Permissions.SecurityAction;
with MSSyst.Security.Permissions.SecurityAttribute;
limited with MSSyst.Security.Permissions.SecurityPermissionFlag;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Security.Permissions.SecurityPermissionAttribute is
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
   function new_SecurityPermissionAttribute(
      This : Ref := null;
      action : MSSyst.Security.Permissions.SecurityAction.Valuetype) return Ref;
   function CreatePermission(
      This : access Typ) return access MSSyst.Security.IPermission.Typ'Class;
   function get_Assertion(
      This : access Typ) return Standard.Boolean;
   function get_BindingRedirects(
      This : access Typ) return Standard.Boolean;
   function get_ControlAppDomain(
      This : access Typ) return Standard.Boolean;
   function get_ControlDomainPolicy(
      This : access Typ) return Standard.Boolean;
   function get_ControlEvidence(
      This : access Typ) return Standard.Boolean;
   function get_ControlPolicy(
      This : access Typ) return Standard.Boolean;
   function get_ControlPrincipal(
      This : access Typ) return Standard.Boolean;
   function get_ControlThread(
      This : access Typ) return Standard.Boolean;
   function get_Execution(
      This : access Typ) return Standard.Boolean;
   function get_Flags(
      This : access Typ) return MSSyst.Security.Permissions.SecurityPermissionFlag.Valuetype;
   function get_Infrastructure(
      This : access Typ) return Standard.Boolean;
   function get_RemotingConfiguration(
      This : access Typ) return Standard.Boolean;
   function get_SerializationFormatter(
      This : access Typ) return Standard.Boolean;
   function get_SkipVerification(
      This : access Typ) return Standard.Boolean;
   function get_UnmanagedCode(
      This : access Typ) return Standard.Boolean;
   procedure set_Assertion(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_BindingRedirects(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_ControlAppDomain(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_ControlDomainPolicy(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_ControlEvidence(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_ControlPolicy(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_ControlPrincipal(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_ControlThread(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Execution(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Flags(
      This : access Typ;
      value : MSSyst.Security.Permissions.SecurityPermissionFlag.Valuetype);
   procedure set_Infrastructure(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_RemotingConfiguration(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_SerializationFormatter(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_SkipVerification(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_UnmanagedCode(
      This : access Typ;
      value : Standard.Boolean);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_SecurityPermissionAttribute);
   pragma Import(MSIL,CreatePermission,"CreatePermission");
   pragma Import(MSIL,get_Assertion,"get_Assertion");
   pragma Import(MSIL,get_BindingRedirects,"get_BindingRedirects");
   pragma Import(MSIL,get_ControlAppDomain,"get_ControlAppDomain");
   pragma Import(MSIL,get_ControlDomainPolicy,"get_ControlDomainPolicy");
   pragma Import(MSIL,get_ControlEvidence,"get_ControlEvidence");
   pragma Import(MSIL,get_ControlPolicy,"get_ControlPolicy");
   pragma Import(MSIL,get_ControlPrincipal,"get_ControlPrincipal");
   pragma Import(MSIL,get_ControlThread,"get_ControlThread");
   pragma Import(MSIL,get_Execution,"get_Execution");
   pragma Import(MSIL,get_Flags,"get_Flags");
   pragma Import(MSIL,get_Infrastructure,"get_Infrastructure");
   pragma Import(MSIL,get_RemotingConfiguration,"get_RemotingConfiguration");
   pragma Import(MSIL,get_SerializationFormatter,"get_SerializationFormatter");
   pragma Import(MSIL,get_SkipVerification,"get_SkipVerification");
   pragma Import(MSIL,get_UnmanagedCode,"get_UnmanagedCode");
   pragma Import(MSIL,set_Assertion,"set_Assertion");
   pragma Import(MSIL,set_BindingRedirects,"set_BindingRedirects");
   pragma Import(MSIL,set_ControlAppDomain,"set_ControlAppDomain");
   pragma Import(MSIL,set_ControlDomainPolicy,"set_ControlDomainPolicy");
   pragma Import(MSIL,set_ControlEvidence,"set_ControlEvidence");
   pragma Import(MSIL,set_ControlPolicy,"set_ControlPolicy");
   pragma Import(MSIL,set_ControlPrincipal,"set_ControlPrincipal");
   pragma Import(MSIL,set_ControlThread,"set_ControlThread");
   pragma Import(MSIL,set_Execution,"set_Execution");
   pragma Import(MSIL,set_Flags,"set_Flags");
   pragma Import(MSIL,set_Infrastructure,"set_Infrastructure");
   pragma Import(MSIL,set_RemotingConfiguration,"set_RemotingConfiguration");
   pragma Import(MSIL,set_SerializationFormatter,"set_SerializationFormatter");
   pragma Import(MSIL,set_SkipVerification,"set_SkipVerification");
   pragma Import(MSIL,set_UnmanagedCode,"set_UnmanagedCode");
end MSSyst.Security.Permissions.SecurityPermissionAttribute;
pragma Import(MSIL,MSSyst.Security.Permissions.SecurityPermissionAttribute,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Security.Permissions.SecurityPermissionAttribute");
