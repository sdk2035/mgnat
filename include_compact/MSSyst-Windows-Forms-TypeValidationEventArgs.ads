-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.EventArgs;
with type MSSyst.Object.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.Windows.Forms.TypeValidationEventArgs is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.EventArgs.Typ   with record
      null;
   end record;
   function new_TypeValidationEventArgs(
      This : Ref := null;
      validatingType : MSSyst.Type_k.Ref;
      isValidInput : Standard.Boolean;
      returnValue : MSSyst.Object.Ref;
      message : MSSyst.String.Ref) return Ref;
   function get_Cancel(
      This : access Typ) return Standard.Boolean;
   function get_IsValidInput(
      This : access Typ) return Standard.Boolean;
   function get_Message(
      This : access Typ) return MSSyst.String.Ref;
   function get_ReturnValue(
      This : access Typ) return MSSyst.Object.Ref;
   function get_ValidatingType(
      This : access Typ) return MSSyst.Type_k.Ref;
   procedure set_Cancel(
      This : access Typ;
      value : Standard.Boolean);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_TypeValidationEventArgs);
   pragma Import(MSIL,get_Cancel,"get_Cancel");
   pragma Import(MSIL,get_IsValidInput,"get_IsValidInput");
   pragma Import(MSIL,get_Message,"get_Message");
   pragma Import(MSIL,get_ReturnValue,"get_ReturnValue");
   pragma Import(MSIL,get_ValidatingType,"get_ValidatingType");
   pragma Import(MSIL,set_Cancel,"set_Cancel");
end MSSyst.Windows.Forms.TypeValidationEventArgs;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.TypeValidationEventArgs,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.TypeValidationEventArgs");
