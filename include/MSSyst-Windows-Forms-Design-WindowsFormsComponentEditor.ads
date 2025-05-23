-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.ComponentModel.ComponentEditor;
limited with MSSyst.ComponentModel.ITypeDescriptorContext;
limited with MSSyst.String;
limited with MSSyst.Type_k;
limited with MSSyst.Windows.Forms.IWin32Window;
package MSSyst.Windows.Forms.Design.WindowsFormsComponentEditor is
   type Typ is abstract new MSSyst.ComponentModel.ComponentEditor.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function EditComponent(
      This : access Typ;
      context : access MSSyst.ComponentModel.ITypeDescriptorContext.Typ'Class;
      component : access MSSyst.Object.Typ'Class;
      owner : access MSSyst.Windows.Forms.IWin32Window.Typ'Class) return Standard.Boolean;
   function EditComponent(
      This : access Typ;
      context : access MSSyst.ComponentModel.ITypeDescriptorContext.Typ'Class;
      component : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function EditComponent(
      This : access Typ;
      component : access MSSyst.Object.Typ'Class;
      owner : access MSSyst.Windows.Forms.IWin32Window.Typ'Class) return Standard.Boolean;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,EditComponent,"EditComponent");
end MSSyst.Windows.Forms.Design.WindowsFormsComponentEditor;
pragma Import(MSIL,MSSyst.Windows.Forms.Design.WindowsFormsComponentEditor,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.Design.WindowsFormsComponentEditor");
