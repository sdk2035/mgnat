-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.ApplicationIdentity;
limited with MSSyst.Security.Policy.TrustManagerUIContext;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Security.Policy.TrustManagerContext is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_TrustManagerContext(
      This : Ref := null) return Ref;
   function new_TrustManagerContext(
      This : Ref := null;
      uiContext : MSSyst.Security.Policy.TrustManagerUIContext.Valuetype) return Ref;
   function get_IgnorePersistedDecision(
      This : access Typ) return Standard.Boolean;
   function get_KeepAlive(
      This : access Typ) return Standard.Boolean;
   function get_NoPrompt(
      This : access Typ) return Standard.Boolean;
   function get_Persist(
      This : access Typ) return Standard.Boolean;
   function get_PreviousApplicationIdentity(
      This : access Typ) return access MSSyst.ApplicationIdentity.Typ'Class;
   function get_UIContext(
      This : access Typ) return MSSyst.Security.Policy.TrustManagerUIContext.Valuetype;
   procedure set_IgnorePersistedDecision(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_KeepAlive(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_NoPrompt(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Persist(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_PreviousApplicationIdentity(
      This : access Typ;
      value : access MSSyst.ApplicationIdentity.Typ'Class);
   procedure set_UIContext(
      This : access Typ;
      value : MSSyst.Security.Policy.TrustManagerUIContext.Valuetype);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_TrustManagerContext);
   pragma Import(MSIL,get_IgnorePersistedDecision,"get_IgnorePersistedDecision");
   pragma Import(MSIL,get_KeepAlive,"get_KeepAlive");
   pragma Import(MSIL,get_NoPrompt,"get_NoPrompt");
   pragma Import(MSIL,get_Persist,"get_Persist");
   pragma Import(MSIL,get_PreviousApplicationIdentity,"get_PreviousApplicationIdentity");
   pragma Import(MSIL,get_UIContext,"get_UIContext");
   pragma Import(MSIL,set_IgnorePersistedDecision,"set_IgnorePersistedDecision");
   pragma Import(MSIL,set_KeepAlive,"set_KeepAlive");
   pragma Import(MSIL,set_NoPrompt,"set_NoPrompt");
   pragma Import(MSIL,set_Persist,"set_Persist");
   pragma Import(MSIL,set_PreviousApplicationIdentity,"set_PreviousApplicationIdentity");
   pragma Import(MSIL,set_UIContext,"set_UIContext");
end MSSyst.Security.Policy.TrustManagerContext;
pragma Import(MSIL,MSSyst.Security.Policy.TrustManagerContext,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Security.Policy.TrustManagerContext");
