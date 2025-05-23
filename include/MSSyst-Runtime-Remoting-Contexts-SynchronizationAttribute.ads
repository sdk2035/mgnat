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
limited with MSSyst.Runtime.Remoting.Activation.IConstructionCallMessage;
with MSSyst.Runtime.Remoting.Contexts.ContextAttribute;
limited with MSSyst.Runtime.Remoting.Contexts.Context;
with MSSyst.Runtime.Remoting.Contexts.IContextAttribute;
with MSSyst.Runtime.Remoting.Contexts.IContextProperty;
with MSSyst.Runtime.Remoting.Contexts.IContributeClientContextSink;
with MSSyst.Runtime.Remoting.Contexts.IContributeServerContextSink;
limited with MSSyst.Runtime.Remoting.Messaging.IMessageSink;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Runtime.Remoting.Contexts.SynchronizationAttribute is
   type Typ is new MSSyst.Runtime.Remoting.Contexts.ContextAttribute.Typ
         and MSSyst.Runtime.InteropServices.uAttribute.Typ
         and MSSyst.Runtime.Remoting.Contexts.IContextAttribute.Typ
         and MSSyst.Runtime.Remoting.Contexts.IContextProperty.Typ
         and MSSyst.Runtime.Remoting.Contexts.IContributeServerContextSink.Typ
         and MSSyst.Runtime.Remoting.Contexts.IContributeClientContextSink.Typ
   with record
      null;
   end record;
   NOT_SUPPORTED : Integer;
   pragma Import(MSIL,NOT_SUPPORTED,"NOT_SUPPORTED");
   SUPPORTED : Integer;
   pragma Import(MSIL,SUPPORTED,"SUPPORTED");
   REQUIRED : Integer;
   pragma Import(MSIL,REQUIRED,"REQUIRED");
   REQUIRES_NEW : Integer;
   pragma Import(MSIL,REQUIRES_NEW,"REQUIRES_NEW");
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_SynchronizationAttribute(
      This : Ref := null) return Ref;
   function new_SynchronizationAttribute(
      This : Ref := null;
      reEntrant : Standard.Boolean) return Ref;
   function new_SynchronizationAttribute(
      This : Ref := null;
      flag : Integer) return Ref;
   function new_SynchronizationAttribute(
      This : Ref := null;
      flag : Integer;
      reEntrant : Standard.Boolean) return Ref;
   function get_IsReEntrant(
      This : access Typ) return Standard.Boolean;
   function get_Locked(
      This : access Typ) return Standard.Boolean;
   function GetClientContextSink(
      This : access Typ;
      nextSink : access MSSyst.Runtime.Remoting.Messaging.IMessageSink.Typ'Class) return access MSSyst.Runtime.Remoting.Messaging.IMessageSink.Typ'Class;
   procedure GetPropertiesForNewContext(
      This : access Typ;
      ctorMsg : access MSSyst.Runtime.Remoting.Activation.IConstructionCallMessage.Typ'Class);
   function GetServerContextSink(
      This : access Typ;
      nextSink : access MSSyst.Runtime.Remoting.Messaging.IMessageSink.Typ'Class) return access MSSyst.Runtime.Remoting.Messaging.IMessageSink.Typ'Class;
   function IsContextOK(
      This : access Typ;
      ctx : access MSSyst.Runtime.Remoting.Contexts.Context.Typ'Class;
      msg : access MSSyst.Runtime.Remoting.Activation.IConstructionCallMessage.Typ'Class) return Standard.Boolean;
   procedure set_Locked(
      This : access Typ;
      value : Standard.Boolean);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_SynchronizationAttribute);
   pragma Import(MSIL,get_IsReEntrant,"get_IsReEntrant");
   pragma Import(MSIL,get_Locked,"get_Locked");
   pragma Import(MSIL,GetClientContextSink,"GetClientContextSink");
   pragma Import(MSIL,GetPropertiesForNewContext,"GetPropertiesForNewContext");
   pragma Import(MSIL,GetServerContextSink,"GetServerContextSink");
   pragma Import(MSIL,IsContextOK,"IsContextOK");
   pragma Import(MSIL,set_Locked,"set_Locked");
end MSSyst.Runtime.Remoting.Contexts.SynchronizationAttribute;
pragma Import(MSIL,MSSyst.Runtime.Remoting.Contexts.SynchronizationAttribute,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Runtime.Remoting.Contexts.SynchronizationAttribute");
