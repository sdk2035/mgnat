-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.EventArgs;
limited with MSSyst.String;
limited with MSSyst.Type_k;
limited with MSSyst.Windows.Forms.LinkLabel.Link;
limited with MSSyst.Windows.Forms.MouseButtons;
package MSSyst.Windows.Forms.LinkLabelLinkClickedEventArgs is
   type Typ is new MSSyst.EventArgs.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_LinkLabelLinkClickedEventArgs(
      This : Ref := null;
      link : access MSSyst.Windows.Forms.LinkLabel.Link.Typ'Class) return Ref;
   function new_LinkLabelLinkClickedEventArgs(
      This : Ref := null;
      link : access MSSyst.Windows.Forms.LinkLabel.Link.Typ'Class;
      button : MSSyst.Windows.Forms.MouseButtons.Valuetype) return Ref;
   function get_Button(
      This : access Typ) return MSSyst.Windows.Forms.MouseButtons.Valuetype;
   function get_Link(
      This : access Typ) return access MSSyst.Windows.Forms.LinkLabel.Link.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_LinkLabelLinkClickedEventArgs);
   pragma Import(MSIL,get_Button,"get_Button");
   pragma Import(MSIL,get_Link,"get_Link");
end MSSyst.Windows.Forms.LinkLabelLinkClickedEventArgs;
pragma Import(MSIL,MSSyst.Windows.Forms.LinkLabelLinkClickedEventArgs,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.LinkLabelLinkClickedEventArgs");
