-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.Uri.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.Net.IWebProxyScript is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is interface;
   procedure Close(
      This : access Typ) is abstract;
   function Load(
      This : access Typ;
      scriptLocation : MSSyst.Uri.Ref;
      script : MSSyst.String.Ref;
      helperType : MSSyst.Type_k.Ref) return Standard.Boolean is abstract;
   function Run(
      This : access Typ;
      url : MSSyst.String.Ref;
      host : MSSyst.String.Ref) return MSSyst.String.Ref is abstract;
private
   pragma Import(MSIL,Close,"Close");
   pragma Import(MSIL,Load,"Load");
   pragma Import(MSIL,Run,"Run");
end MSSyst.Net.IWebProxyScript;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Net.IWebProxyScript,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Net.IWebProxyScript");
