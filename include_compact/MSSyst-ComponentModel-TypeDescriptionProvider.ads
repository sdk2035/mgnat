-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Object;
with type MSSyst.IServiceProvider.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.Type_k.Ref_array is access;
with type MSSyst.Object.Ref_array is access;
with type MSSyst.Collections.IDictionary.Ref is access;
with type MSSyst.ComponentModel.ICustomTypeDescriptor.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.ComponentModel.TypeDescriptionProvider is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is abstract new MSSyst.Object.Typ   with record
      null;
   end record;
   function CreateInstance(
      This : access Typ;
      provider : MSSyst.IServiceProvider.Ref;
      objectType : MSSyst.Type_k.Ref;
      argTypes : MSSyst.Type_k.Ref_array;
      args : MSSyst.Object.Ref_array) return MSSyst.Object.Ref;
   function GetCache(
      This : access Typ;
      instance : MSSyst.Object.Ref) return MSSyst.Collections.IDictionary.Ref;
   function GetExtendedTypeDescriptor(
      This : access Typ;
      instance : MSSyst.Object.Ref) return MSSyst.ComponentModel.ICustomTypeDescriptor.Ref;
   function GetFullComponentName(
      This : access Typ;
      component : MSSyst.Object.Ref) return MSSyst.String.Ref;
   function GetReflectionType(
      This : access Typ;
      objectType : MSSyst.Type_k.Ref;
      instance : MSSyst.Object.Ref) return MSSyst.Type_k.Ref;
   function GetReflectionType(
      This : access Typ;
      instance : MSSyst.Object.Ref) return MSSyst.Type_k.Ref;
   function GetReflectionType(
      This : access Typ;
      objectType : MSSyst.Type_k.Ref) return MSSyst.Type_k.Ref;
   function GetTypeDescriptor(
      This : access Typ;
      instance : MSSyst.Object.Ref) return MSSyst.ComponentModel.ICustomTypeDescriptor.Ref;
   function GetTypeDescriptor(
      This : access Typ;
      objectType : MSSyst.Type_k.Ref) return MSSyst.ComponentModel.ICustomTypeDescriptor.Ref;
   function GetTypeDescriptor(
      This : access Typ;
      objectType : MSSyst.Type_k.Ref;
      instance : MSSyst.Object.Ref) return MSSyst.ComponentModel.ICustomTypeDescriptor.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,CreateInstance,"CreateInstance");
   pragma Import(MSIL,GetCache,"GetCache");
   pragma Import(MSIL,GetExtendedTypeDescriptor,"GetExtendedTypeDescriptor");
   pragma Import(MSIL,GetFullComponentName,"GetFullComponentName");
   pragma Import(MSIL,GetReflectionType,"GetReflectionType");
   pragma Import(MSIL,GetTypeDescriptor,"GetTypeDescriptor");
end MSSyst.ComponentModel.TypeDescriptionProvider;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.ComponentModel.TypeDescriptionProvider,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.TypeDescriptionProvider");
