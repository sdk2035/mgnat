-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.Drawing.Design.ToolboxItem.Ref is access;
package MSSyst.Drawing.Design.IToolboxUser is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is interface;
   function GetToolSupported(
      This : access Typ;
      tool : MSSyst.Drawing.Design.ToolboxItem.Ref) return Standard.Boolean is abstract;
   procedure ToolPicked(
      This : access Typ;
      tool : MSSyst.Drawing.Design.ToolboxItem.Ref) is abstract;
private
   pragma Import(MSIL,GetToolSupported,"GetToolSupported");
   pragma Import(MSIL,ToolPicked,"ToolPicked");
end MSSyst.Drawing.Design.IToolboxUser;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Drawing.Design.IToolboxUser,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Design.IToolboxUser");
