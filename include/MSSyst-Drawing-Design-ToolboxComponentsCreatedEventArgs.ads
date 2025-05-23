-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.ComponentModel.IComponent;
with MSSyst.EventArgs;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Drawing.Design.ToolboxComponentsCreatedEventArgs is
   type Typ is new MSSyst.EventArgs.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_ToolboxComponentsCreatedEventArgs(
      This : Ref := null;
      components : access MSSyst.ComponentModel.IComponent.Ref_arr) return Ref;
   function get_Components(
      This : access Typ) return access MSSyst.ComponentModel.IComponent.Ref_arr;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ToolboxComponentsCreatedEventArgs);
   pragma Import(MSIL,get_Components,"get_Components");
end MSSyst.Drawing.Design.ToolboxComponentsCreatedEventArgs;
pragma Import(MSIL,MSSyst.Drawing.Design.ToolboxComponentsCreatedEventArgs,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Design.ToolboxComponentsCreatedEventArgs");
