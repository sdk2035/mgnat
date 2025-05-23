-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.IServiceProvider;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.ComponentModel.Design.ServiceCreatorCallback.Ref is access;
with type MSSyst.Object.Ref is access;
package MSSyst.ComponentModel.Design.IServiceContainer is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is interface;
   procedure AddService(
      This : access Typ;
      serviceType : MSSyst.Type_k.Ref;
      callback : MSSyst.ComponentModel.Design.ServiceCreatorCallback.Ref) is abstract;
   procedure AddService(
      This : access Typ;
      serviceType : MSSyst.Type_k.Ref;
      callback : MSSyst.ComponentModel.Design.ServiceCreatorCallback.Ref;
      promote : Standard.Boolean) is abstract;
   procedure AddService(
      This : access Typ;
      serviceType : MSSyst.Type_k.Ref;
      serviceInstance : MSSyst.Object.Ref) is abstract;
   procedure AddService(
      This : access Typ;
      serviceType : MSSyst.Type_k.Ref;
      serviceInstance : MSSyst.Object.Ref;
      promote : Standard.Boolean) is abstract;
   procedure RemoveService(
      This : access Typ;
      serviceType : MSSyst.Type_k.Ref;
      promote : Standard.Boolean) is abstract;
   procedure RemoveService(
      This : access Typ;
      serviceType : MSSyst.Type_k.Ref) is abstract;
private
   pragma Import(MSIL,AddService,"AddService");
   pragma Import(MSIL,RemoveService,"RemoveService");
end MSSyst.ComponentModel.Design.IServiceContainer;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.ComponentModel.Design.IServiceContainer,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.Design.IServiceContainer");
