-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with Accessibility.IAccessible;
limited with MSSyst.Drawing.Rectangle;
with MSSyst.MarshalByRefObject;
with MSSyst.Reflection.IReflect;
with MSSyst.Runtime.InteropServices.StandardOleMarshalObject;
limited with MSSyst.Runtime.Remoting.ObjRef;
limited with MSSyst.String;
limited with MSSyst.Type_k;
limited with MSSyst.Windows.Forms.AccessibleNavigation;
with MSSyst.Windows.Forms.AccessibleObject;
limited with MSSyst.Windows.Forms.AccessibleRole;
limited with MSSyst.Windows.Forms.AccessibleSelection;
limited with MSSyst.Windows.Forms.AccessibleStates;
with MSSyst.Windows.Forms.ToolStripItem;
package MSSyst.Windows.Forms.ToolStripItem.ToolStripItemAccessibleObject is
   type Typ is new MSSyst.Windows.Forms.AccessibleObject.Typ
         and MSSyst.Reflection.IReflect.Typ
         and Accessibility.IAccessible.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_ToolStripItemAccessibleObject(
      This : Ref := null;
      ownerItem : access MSSyst.Windows.Forms.ToolStripItem.Typ'Class) return Ref;
   procedure AddState(
      This : access Typ;
      state : MSSyst.Windows.Forms.AccessibleStates.Valuetype);
   procedure DoDefaultAction(
      This : access Typ);
   function get_Bounds(
      This : access Typ) return MSSyst.Drawing.Rectangle.Valuetype;
   function get_DefaultAction(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Description(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Help(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_KeyboardShortcut(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Name(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Parent(
      This : access Typ) return access MSSyst.Windows.Forms.AccessibleObject.Typ'Class;
   function get_Role(
      This : access Typ) return MSSyst.Windows.Forms.AccessibleRole.Valuetype;
   function get_State(
      This : access Typ) return MSSyst.Windows.Forms.AccessibleStates.Valuetype;
   function GetHelpTopic(
      This : access Typ;
      fileName : access MSSyst.String.Ref) return Integer;
   function Navigate(
      This : access Typ;
      navigationDirection : MSSyst.Windows.Forms.AccessibleNavigation.Valuetype) return access MSSyst.Windows.Forms.AccessibleObject.Typ'Class;
   procedure set_Name(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ToolStripItemAccessibleObject);
   pragma Import(MSIL,AddState,"AddState");
   pragma Import(MSIL,DoDefaultAction,"DoDefaultAction");
   pragma Import(MSIL,get_Bounds,"get_Bounds");
   pragma Import(MSIL,get_DefaultAction,"get_DefaultAction");
   pragma Import(MSIL,get_Description,"get_Description");
   pragma Import(MSIL,get_Help,"get_Help");
   pragma Import(MSIL,get_KeyboardShortcut,"get_KeyboardShortcut");
   pragma Import(MSIL,get_Name,"get_Name");
   pragma Import(MSIL,get_Parent,"get_Parent");
   pragma Import(MSIL,get_Role,"get_Role");
   pragma Import(MSIL,get_State,"get_State");
   pragma Import(MSIL,GetHelpTopic,"GetHelpTopic");
   pragma Import(MSIL,Navigate,"Navigate");
   pragma Import(MSIL,set_Name,"set_Name");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Windows.Forms.ToolStripItem.ToolStripItemAccessibleObject;
pragma Import(MSIL,MSSyst.Windows.Forms.ToolStripItem.ToolStripItemAccessibleObject,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ToolStripItem/ToolStripItemAccessibleObject");
