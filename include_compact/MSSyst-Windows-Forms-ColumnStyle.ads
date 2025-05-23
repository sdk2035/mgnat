-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Windows.Forms.TableLayoutStyle;
with type MSSyst.Object.Ref is access;
with MSSyst.Windows.Forms.SizeType;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Windows.Forms.ColumnStyle is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Windows.Forms.TableLayoutStyle.Typ   with record
      null;
   end record;
   function new_ColumnStyle(
      This : Ref := null) return Ref;
   function new_ColumnStyle(
      This : Ref := null;
      sizeType : MSSyst.Windows.Forms.SizeType.Valuetype) return Ref;
   function new_ColumnStyle(
      This : Ref := null;
      sizeType : MSSyst.Windows.Forms.SizeType.Valuetype;
      width : Float) return Ref;
   function get_Width(
      This : access Typ) return Float;
   procedure set_Width(
      This : access Typ;
      value : Float);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ColumnStyle);
   pragma Import(MSIL,get_Width,"get_Width");
   pragma Import(MSIL,set_Width,"set_Width");
end MSSyst.Windows.Forms.ColumnStyle;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.ColumnStyle,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ColumnStyle");
