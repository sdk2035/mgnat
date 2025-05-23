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
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Diagnostics.DebuggerTypeProxyAttribute is
   type Typ is new MSSyst.Attribute.Typ
         and MSSyst.Runtime.InteropServices.uAttribute.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_DebuggerTypeProxyAttribute(
      This : Ref := null;
      type_k : access MSSyst.Type_k.Typ'Class) return Ref;
   function new_DebuggerTypeProxyAttribute(
      This : Ref := null;
      typeName : access MSSyst.String.Typ'Class) return Ref;
   function get_ProxyTypeName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Target(
      This : access Typ) return access MSSyst.Type_k.Typ'Class;
   function get_TargetTypeName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   procedure set_Target(
      This : access Typ;
      value : access MSSyst.Type_k.Typ'Class);
   procedure set_TargetTypeName(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_DebuggerTypeProxyAttribute);
   pragma Import(MSIL,get_ProxyTypeName,"get_ProxyTypeName");
   pragma Import(MSIL,get_Target,"get_Target");
   pragma Import(MSIL,get_TargetTypeName,"get_TargetTypeName");
   pragma Import(MSIL,set_Target,"set_Target");
   pragma Import(MSIL,set_TargetTypeName,"set_TargetTypeName");
end MSSyst.Diagnostics.DebuggerTypeProxyAttribute;
pragma Import(MSIL,MSSyst.Diagnostics.DebuggerTypeProxyAttribute,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Diagnostics.DebuggerTypeProxyAttribute");
