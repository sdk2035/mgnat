-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Drawing.Point;
with MSSyst.EventArgs;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Windows.Forms.HelpEventArgs is
   type Typ is new MSSyst.EventArgs.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_HelpEventArgs(
      This : Ref := null;
      mousePos : MSSyst.Drawing.Point.Valuetype) return Ref;
   function get_Handled(
      This : access Typ) return Standard.Boolean;
   function get_MousePos(
      This : access Typ) return MSSyst.Drawing.Point.Valuetype;
   procedure set_Handled(
      This : access Typ;
      value : Standard.Boolean);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_HelpEventArgs);
   pragma Import(MSIL,get_Handled,"get_Handled");
   pragma Import(MSIL,get_MousePos,"get_MousePos");
   pragma Import(MSIL,set_Handled,"set_Handled");
end MSSyst.Windows.Forms.HelpEventArgs;
pragma Import(MSIL,MSSyst.Windows.Forms.HelpEventArgs,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.HelpEventArgs");
