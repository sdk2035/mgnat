-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Decimal;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Windows.Forms.NumericUpDownAcceleration is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_NumericUpDownAcceleration(
      This : Ref := null;
      seconds : Integer;
      increment : MSSyst.Decimal.Valuetype) return Ref;
   function get_Increment(
      This : access Typ) return MSSyst.Decimal.Valuetype;
   function get_Seconds(
      This : access Typ) return Integer;
   procedure set_Increment(
      This : access Typ;
      value : MSSyst.Decimal.Valuetype);
   procedure set_Seconds(
      This : access Typ;
      value : Integer);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_NumericUpDownAcceleration);
   pragma Import(MSIL,get_Increment,"get_Increment");
   pragma Import(MSIL,get_Seconds,"get_Seconds");
   pragma Import(MSIL,set_Increment,"set_Increment");
   pragma Import(MSIL,set_Seconds,"set_Seconds");
end MSSyst.Windows.Forms.NumericUpDownAcceleration;
pragma Import(MSIL,MSSyst.Windows.Forms.NumericUpDownAcceleration,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.NumericUpDownAcceleration");
