-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Attribute;
limited with MSSyst.Collections.ICollection;
limited with MSSyst.Collections.IDictionary;
limited with MSSyst.ComponentModel.ITypeDescriptorContext;
limited with MSSyst.ComponentModel.PropertyDescriptorCollection;
with MSSyst.ComponentModel.TypeConverter;
limited with MSSyst.ComponentModel.TypeConverter.StandardValuesCollection;
limited with MSSyst.Globalization.CultureInfo;
limited with MSSyst.String;
limited with MSSyst.Type_k;
with MSSyst.Windows.Forms.ScrollableControl;
package MSSyst.Windows.Forms.ScrollableControl.DockPaddingEdgesConverter is
   type Typ is new MSSyst.ComponentModel.TypeConverter.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_DockPaddingEdgesConverter(
      This : Ref := null) return Ref;
   function GetProperties(
      This : access Typ;
      context : access MSSyst.ComponentModel.ITypeDescriptorContext.Typ'Class;
      value : access MSSyst.Object.Typ'Class;
      attributes : access MSSyst.Attribute.Ref_arr) return access MSSyst.ComponentModel.PropertyDescriptorCollection.Typ'Class;
   function GetPropertiesSupported(
      This : access Typ;
      context : access MSSyst.ComponentModel.ITypeDescriptorContext.Typ'Class) return Standard.Boolean;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_DockPaddingEdgesConverter);
   pragma Import(MSIL,GetProperties,"GetProperties");
   pragma Import(MSIL,GetPropertiesSupported,"GetPropertiesSupported");
end MSSyst.Windows.Forms.ScrollableControl.DockPaddingEdgesConverter;
pragma Import(MSIL,MSSyst.Windows.Forms.ScrollableControl.DockPaddingEdgesConverter,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ScrollableControl/DockPaddingEdgesConverter");
