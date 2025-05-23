-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Object;
with type MSSyst.Drawing.Size.Valuetype is tagged;
with MSSyst.Drawing.Printing.PrinterUnit;
with type MSSyst.Drawing.Rectangle.Valuetype is tagged;
with type MSSyst.Drawing.Printing.Margins.Ref is access;
with type MSSyst.Drawing.Point.Valuetype is tagged;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Drawing.Printing.PrinterUnitConvert is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   function Convert(
      value : MSSyst.Drawing.Size.Valuetype;
      fromUnit : MSSyst.Drawing.Printing.PrinterUnit.Valuetype;
      toUnit : MSSyst.Drawing.Printing.PrinterUnit.Valuetype) return MSSyst.Drawing.Size.Valuetype;
   function Convert(
      value : MSSyst.Drawing.Rectangle.Valuetype;
      fromUnit : MSSyst.Drawing.Printing.PrinterUnit.Valuetype;
      toUnit : MSSyst.Drawing.Printing.PrinterUnit.Valuetype) return MSSyst.Drawing.Rectangle.Valuetype;
   function Convert(
      value : MSSyst.Drawing.Printing.Margins.Ref;
      fromUnit : MSSyst.Drawing.Printing.PrinterUnit.Valuetype;
      toUnit : MSSyst.Drawing.Printing.PrinterUnit.Valuetype) return MSSyst.Drawing.Printing.Margins.Ref;
   function Convert(
      value : Long_Float;
      fromUnit : MSSyst.Drawing.Printing.PrinterUnit.Valuetype;
      toUnit : MSSyst.Drawing.Printing.PrinterUnit.Valuetype) return Long_Float;
   function Convert(
      value : Integer;
      fromUnit : MSSyst.Drawing.Printing.PrinterUnit.Valuetype;
      toUnit : MSSyst.Drawing.Printing.PrinterUnit.Valuetype) return Integer;
   function Convert(
      value : MSSyst.Drawing.Point.Valuetype;
      fromUnit : MSSyst.Drawing.Printing.PrinterUnit.Valuetype;
      toUnit : MSSyst.Drawing.Printing.PrinterUnit.Valuetype) return MSSyst.Drawing.Point.Valuetype;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,Convert,"Convert");
end MSSyst.Drawing.Printing.PrinterUnitConvert;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Drawing.Printing.PrinterUnitConvert,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Printing.PrinterUnitConvert");
