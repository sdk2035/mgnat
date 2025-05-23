-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.Net.Authorization.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Net.WebRequest.Ref is access;
with type MSSyst.Net.ICredentials.Ref is access;
package MSSyst.Net.IAuthenticationModule is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is interface;
   function Authenticate(
      This : access Typ;
      challenge : MSSyst.String.Ref;
      request : MSSyst.Net.WebRequest.Ref;
      credentials : MSSyst.Net.ICredentials.Ref) return MSSyst.Net.Authorization.Ref is abstract;
   function get_AuthenticationType(
      This : access Typ) return MSSyst.String.Ref is abstract;
   function get_CanPreAuthenticate(
      This : access Typ) return Standard.Boolean is abstract;
   function PreAuthenticate(
      This : access Typ;
      request : MSSyst.Net.WebRequest.Ref;
      credentials : MSSyst.Net.ICredentials.Ref) return MSSyst.Net.Authorization.Ref is abstract;
private
   pragma Import(MSIL,Authenticate,"Authenticate");
   pragma Import(MSIL,get_AuthenticationType,"get_AuthenticationType");
   pragma Import(MSIL,get_CanPreAuthenticate,"get_CanPreAuthenticate");
   pragma Import(MSIL,PreAuthenticate,"PreAuthenticate");
end MSSyst.Net.IAuthenticationModule;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Net.IAuthenticationModule,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Net.IAuthenticationModule");
