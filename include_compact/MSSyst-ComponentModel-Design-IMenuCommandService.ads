-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.ComponentModel.Design.MenuCommand.Ref is access;
with type MSSyst.ComponentModel.Design.DesignerVerb.Ref is access;
with type MSSyst.ComponentModel.Design.CommandID.Ref is access;
with type MSSyst.ComponentModel.Design.DesignerVerbCollection.Ref is access;
package MSSyst.ComponentModel.Design.IMenuCommandService is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is interface;
   procedure AddCommand(
      This : access Typ;
      command : MSSyst.ComponentModel.Design.MenuCommand.Ref) is abstract;
   procedure AddVerb(
      This : access Typ;
      verb : MSSyst.ComponentModel.Design.DesignerVerb.Ref) is abstract;
   function FindCommand(
      This : access Typ;
      commandID : MSSyst.ComponentModel.Design.CommandID.Ref) return MSSyst.ComponentModel.Design.MenuCommand.Ref is abstract;
   function get_Verbs(
      This : access Typ) return MSSyst.ComponentModel.Design.DesignerVerbCollection.Ref is abstract;
   function GlobalInvoke(
      This : access Typ;
      commandID : MSSyst.ComponentModel.Design.CommandID.Ref) return Standard.Boolean is abstract;
   procedure RemoveCommand(
      This : access Typ;
      command : MSSyst.ComponentModel.Design.MenuCommand.Ref) is abstract;
   procedure RemoveVerb(
      This : access Typ;
      verb : MSSyst.ComponentModel.Design.DesignerVerb.Ref) is abstract;
   procedure ShowContextMenu(
      This : access Typ;
      menuID : MSSyst.ComponentModel.Design.CommandID.Ref;
      x : Integer;
      y : Integer) is abstract;
private
   pragma Import(MSIL,AddCommand,"AddCommand");
   pragma Import(MSIL,AddVerb,"AddVerb");
   pragma Import(MSIL,FindCommand,"FindCommand");
   pragma Import(MSIL,get_Verbs,"get_Verbs");
   pragma Import(MSIL,GlobalInvoke,"GlobalInvoke");
   pragma Import(MSIL,RemoveCommand,"RemoveCommand");
   pragma Import(MSIL,RemoveVerb,"RemoveVerb");
   pragma Import(MSIL,ShowContextMenu,"ShowContextMenu");
end MSSyst.ComponentModel.Design.IMenuCommandService;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.ComponentModel.Design.IMenuCommandService,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.Design.IMenuCommandService");
