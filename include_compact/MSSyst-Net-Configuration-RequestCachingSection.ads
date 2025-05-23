-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Configuration.ConfigurationSection;
with type MSSyst.Object.Ref is access;
with type MSSyst.Net.Configuration.FtpCachePolicyElement.Ref is access;
with type MSSyst.Net.Configuration.HttpCachePolicyElement.Ref is access;
with MSSyst.Net.Cache.RequestCacheLevel;
with type MSSyst.Configuration.ElementInformation.Ref is access;
with type MSSyst.Configuration.ConfigurationLockCollection.Ref is access;
with type MSSyst.Configuration.SectionInformation.Ref is access;
with type MSSyst.TimeSpan.Valuetype is tagged;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Net.Configuration.RequestCachingSection is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Configuration.ConfigurationSection.Typ   with record
      null;
   end record;
   function new_RequestCachingSection(
      This : Ref := null) return Ref;
   function get_DefaultFtpCachePolicy(
      This : access Typ) return MSSyst.Net.Configuration.FtpCachePolicyElement.Ref;
   function get_DefaultHttpCachePolicy(
      This : access Typ) return MSSyst.Net.Configuration.HttpCachePolicyElement.Ref;
   function get_DefaultPolicyLevel(
      This : access Typ) return MSSyst.Net.Cache.RequestCacheLevel.Valuetype;
   function get_DisableAllCaching(
      This : access Typ) return Standard.Boolean;
   function get_IsPrivateCache(
      This : access Typ) return Standard.Boolean;
   function get_UnspecifiedMaximumAge(
      This : access Typ) return MSSyst.TimeSpan.Valuetype;
   procedure set_DefaultPolicyLevel(
      This : access Typ;
      value : MSSyst.Net.Cache.RequestCacheLevel.Valuetype);
   procedure set_DisableAllCaching(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_IsPrivateCache(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_UnspecifiedMaximumAge(
      This : access Typ;
      value : MSSyst.TimeSpan.Valuetype);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_RequestCachingSection);
   pragma Import(MSIL,get_DefaultFtpCachePolicy,"get_DefaultFtpCachePolicy");
   pragma Import(MSIL,get_DefaultHttpCachePolicy,"get_DefaultHttpCachePolicy");
   pragma Import(MSIL,get_DefaultPolicyLevel,"get_DefaultPolicyLevel");
   pragma Import(MSIL,get_DisableAllCaching,"get_DisableAllCaching");
   pragma Import(MSIL,get_IsPrivateCache,"get_IsPrivateCache");
   pragma Import(MSIL,get_UnspecifiedMaximumAge,"get_UnspecifiedMaximumAge");
   pragma Import(MSIL,set_DefaultPolicyLevel,"set_DefaultPolicyLevel");
   pragma Import(MSIL,set_DisableAllCaching,"set_DisableAllCaching");
   pragma Import(MSIL,set_IsPrivateCache,"set_IsPrivateCache");
   pragma Import(MSIL,set_UnspecifiedMaximumAge,"set_UnspecifiedMaximumAge");
end MSSyst.Net.Configuration.RequestCachingSection;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Net.Configuration.RequestCachingSection,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Net.Configuration.RequestCachingSection");
