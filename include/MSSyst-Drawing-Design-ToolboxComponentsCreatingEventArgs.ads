-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.ComponentModel.Design.IDesignerHost;
with MSSyst.EventArgs;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Drawing.Design.ToolboxComponentsCreatingEventArgs is
   type Typ is new MSSyst.EventArgs.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_ToolboxComponentsCreatingEventArgs(
      This : Ref := null;
      host : access MSSyst.ComponentModel.Design.IDesignerHost.Typ'Class) return Ref;
   function get_DesignerHost(
      This : access Typ) return access MSSyst.ComponentModel.Design.IDesignerHost.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ToolboxComponentsCreatingEventArgs);
   pragma Import(MSIL,get_DesignerHost,"get_DesignerHost");
end MSSyst.Drawing.Design.ToolboxComponentsCreatingEventArgs;
pragma Import(MSIL,MSSyst.Drawing.Design.ToolboxComponentsCreatingEventArgs,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Design.ToolboxComponentsCreatingEventArgs");
