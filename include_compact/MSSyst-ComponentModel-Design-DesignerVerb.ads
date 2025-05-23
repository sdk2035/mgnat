-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.ComponentModel.Design.MenuCommand;
with type MSSyst.EventHandler.Ref is access;
with type MSSyst.Object.Ref is access;
with type MSSyst.ComponentModel.Design.CommandID.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Collections.IDictionary.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.ComponentModel.Design.DesignerVerb is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.ComponentModel.Design.MenuCommand.Typ   with record
      null;
   end record;
   function new_DesignerVerb(
      This : Ref := null;
      text : MSSyst.String.Ref;
      handler : MSSyst.EventHandler.Ref) return Ref;
   function new_DesignerVerb(
      This : Ref := null;
      text : MSSyst.String.Ref;
      handler : MSSyst.EventHandler.Ref;
      startCommandID : MSSyst.ComponentModel.Design.CommandID.Ref) return Ref;
   function get_Description(
      This : access Typ) return MSSyst.String.Ref;
   function get_Text(
      This : access Typ) return MSSyst.String.Ref;
   procedure set_Description(
      This : access Typ;
      value : MSSyst.String.Ref);
   function ToString(
      This : access Typ) return MSSyst.String.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_DesignerVerb);
   pragma Import(MSIL,get_Description,"get_Description");
   pragma Import(MSIL,get_Text,"get_Text");
   pragma Import(MSIL,set_Description,"set_Description");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.ComponentModel.Design.DesignerVerb;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.ComponentModel.Design.DesignerVerb,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.Design.DesignerVerb");
