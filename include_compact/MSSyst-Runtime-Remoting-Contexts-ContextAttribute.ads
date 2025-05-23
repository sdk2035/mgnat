-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Attribute;
with MSSyst.Runtime.Remoting.Contexts.IContextAttribute;
with MSSyst.Runtime.Remoting.Contexts.IContextProperty;
with type MSSyst.Object.Ref is access;
with type MSSyst.Runtime.Remoting.Contexts.Context.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Runtime.Remoting.Activation.IConstructionCallMessage.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.Runtime.Remoting.Contexts.ContextAttribute is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Attribute.Typ
         and MSSyst.Runtime.Remoting.Contexts.IContextAttribute.Typ
         and MSSyst.Runtime.Remoting.Contexts.IContextProperty.Typ
   with record
      null;
   end record;
   function new_ContextAttribute(
      This : Ref := null;
      name : MSSyst.String.Ref) return Ref;
   function Equals(
      This : access Typ;
      o : MSSyst.Object.Ref) return Standard.Boolean;
   procedure Freeze(
      This : access Typ;
      newContext : MSSyst.Runtime.Remoting.Contexts.Context.Ref);
   function get_Name(
      This : access Typ) return MSSyst.String.Ref;
   function GetHashCode(
      This : access Typ) return Integer;
   procedure GetPropertiesForNewContext(
      This : access Typ;
      ctorMsg : MSSyst.Runtime.Remoting.Activation.IConstructionCallMessage.Ref);
   function IsContextOK(
      This : access Typ;
      ctx : MSSyst.Runtime.Remoting.Contexts.Context.Ref;
      ctorMsg : MSSyst.Runtime.Remoting.Activation.IConstructionCallMessage.Ref) return Standard.Boolean;
   function IsNewContextOK(
      This : access Typ;
      newCtx : MSSyst.Runtime.Remoting.Contexts.Context.Ref) return Standard.Boolean;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ContextAttribute);
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,Freeze,"Freeze");
   pragma Import(MSIL,get_Name,"get_Name");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetPropertiesForNewContext,"GetPropertiesForNewContext");
   pragma Import(MSIL,IsContextOK,"IsContextOK");
   pragma Import(MSIL,IsNewContextOK,"IsNewContextOK");
end MSSyst.Runtime.Remoting.Contexts.ContextAttribute;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Runtime.Remoting.Contexts.ContextAttribute,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Runtime.Remoting.Contexts.ContextAttribute");
