-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.ComponentModel.ITypeDescriptorContext;
limited with MSSyst.Drawing.Design.PaintValueEventArgs;
with MSSyst.Drawing.Design.UITypeEditor;
limited with MSSyst.Drawing.Design.UITypeEditorEditStyle;
limited with MSSyst.Drawing.Graphics;
limited with MSSyst.Drawing.Rectangle;
limited with MSSyst.IServiceProvider;
limited with MSSyst.String;
limited with MSSyst.Type_k;
with MSSyst.Windows.Forms.ComponentModel.Com2Interop.Com2AboutBoxPropertyDescriptor;
package MSSyst.Windows.Forms.ComponentModel.Com2Interop.Com2AboutBoxPropertyDescriptor.AboutBoxUITypeEditor is
   type Typ is new MSSyst.Drawing.Design.UITypeEditor.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_AboutBoxUITypeEditor(
      This : Ref := null) return Ref;
   function EditValue(
      This : access Typ;
      context : access MSSyst.ComponentModel.ITypeDescriptorContext.Typ'Class;
      provider : access MSSyst.IServiceProvider.Typ'Class;
      value : access MSSyst.Object.Typ'Class) return access MSSyst.Object.Typ'Class;
   function GetEditStyle(
      This : access Typ;
      context : access MSSyst.ComponentModel.ITypeDescriptorContext.Typ'Class) return MSSyst.Drawing.Design.UITypeEditorEditStyle.Valuetype;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_AboutBoxUITypeEditor);
   pragma Import(MSIL,EditValue,"EditValue");
   pragma Import(MSIL,GetEditStyle,"GetEditStyle");
end MSSyst.Windows.Forms.ComponentModel.Com2Interop.Com2AboutBoxPropertyDescriptor.AboutBoxUITypeEditor;
pragma Import(MSIL,MSSyst.Windows.Forms.ComponentModel.Com2Interop.Com2AboutBoxPropertyDescriptor.AboutBoxUITypeEditor,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ComponentModel.Com2Interop.Com2AboutBoxPropertyDescriptor/AboutBoxUITypeEditor");
