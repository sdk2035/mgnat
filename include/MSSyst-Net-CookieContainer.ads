-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Net.CookieCollection;
limited with MSSyst.Net.Cookie;
limited with MSSyst.String;
limited with MSSyst.Type_k;
limited with MSSyst.Uri;
package MSSyst.Net.CookieContainer is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   DefaultCookieLimit : Integer;
   pragma Import(MSIL,DefaultCookieLimit,"DefaultCookieLimit");
   DefaultPerDomainCookieLimit : Integer;
   pragma Import(MSIL,DefaultPerDomainCookieLimit,"DefaultPerDomainCookieLimit");
   DefaultCookieLengthLimit : Integer;
   pragma Import(MSIL,DefaultCookieLengthLimit,"DefaultCookieLengthLimit");
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_CookieContainer(
      This : Ref := null) return Ref;
   function new_CookieContainer(
      This : Ref := null;
      capacity : Integer) return Ref;
   function new_CookieContainer(
      This : Ref := null;
      capacity : Integer;
      perDomainCapacity : Integer;
      maxCookieSize : Integer) return Ref;
   procedure Add(
      This : access Typ;
      cookies : access MSSyst.Net.CookieCollection.Typ'Class);
   procedure Add(
      This : access Typ;
      cookie : access MSSyst.Net.Cookie.Typ'Class);
   procedure Add(
      This : access Typ;
      uri : access MSSyst.Uri.Typ'Class;
      cookies : access MSSyst.Net.CookieCollection.Typ'Class);
   procedure Add(
      This : access Typ;
      uri : access MSSyst.Uri.Typ'Class;
      cookie : access MSSyst.Net.Cookie.Typ'Class);
   function get_Capacity(
      This : access Typ) return Integer;
   function get_Count(
      This : access Typ) return Integer;
   function get_MaxCookieSize(
      This : access Typ) return Integer;
   function get_PerDomainCapacity(
      This : access Typ) return Integer;
   function GetCookieHeader(
      This : access Typ;
      uri : access MSSyst.Uri.Typ'Class) return access MSSyst.String.Typ'Class;
   function GetCookies(
      This : access Typ;
      uri : access MSSyst.Uri.Typ'Class) return access MSSyst.Net.CookieCollection.Typ'Class;
   procedure set_Capacity(
      This : access Typ;
      value : Integer);
   procedure set_MaxCookieSize(
      This : access Typ;
      value : Integer);
   procedure set_PerDomainCapacity(
      This : access Typ;
      value : Integer);
   procedure SetCookies(
      This : access Typ;
      uri : access MSSyst.Uri.Typ'Class;
      cookieHeader : access MSSyst.String.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_CookieContainer);
   pragma Import(MSIL,Add,"Add");
   pragma Import(MSIL,get_Capacity,"get_Capacity");
   pragma Import(MSIL,get_Count,"get_Count");
   pragma Import(MSIL,get_MaxCookieSize,"get_MaxCookieSize");
   pragma Import(MSIL,get_PerDomainCapacity,"get_PerDomainCapacity");
   pragma Import(MSIL,GetCookieHeader,"GetCookieHeader");
   pragma Import(MSIL,GetCookies,"GetCookies");
   pragma Import(MSIL,set_Capacity,"set_Capacity");
   pragma Import(MSIL,set_MaxCookieSize,"set_MaxCookieSize");
   pragma Import(MSIL,set_PerDomainCapacity,"set_PerDomainCapacity");
   pragma Import(MSIL,SetCookies,"SetCookies");
end MSSyst.Net.CookieContainer;
pragma Import(MSIL,MSSyst.Net.CookieContainer,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Net.CookieContainer");
