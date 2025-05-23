-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Collections.Specialized.StringDictionary;
with MSSyst.Diagnostics.Switch;
limited with MSSyst.Diagnostics.TraceLevel;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Diagnostics.TraceSwitch is
   type Typ is new MSSyst.Diagnostics.Switch.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_TraceSwitch(
      This : Ref := null;
      displayName : access MSSyst.String.Typ'Class;
      description : access MSSyst.String.Typ'Class) return Ref;
   function new_TraceSwitch(
      This : Ref := null;
      displayName : access MSSyst.String.Typ'Class;
      description : access MSSyst.String.Typ'Class;
      defaultSwitchValue : access MSSyst.String.Typ'Class) return Ref;
   function get_Level(
      This : access Typ) return MSSyst.Diagnostics.TraceLevel.Valuetype;
   function get_TraceError(
      This : access Typ) return Standard.Boolean;
   function get_TraceInfo(
      This : access Typ) return Standard.Boolean;
   function get_TraceVerbose(
      This : access Typ) return Standard.Boolean;
   function get_TraceWarning(
      This : access Typ) return Standard.Boolean;
   procedure set_Level(
      This : access Typ;
      value : MSSyst.Diagnostics.TraceLevel.Valuetype);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_TraceSwitch);
   pragma Import(MSIL,get_Level,"get_Level");
   pragma Import(MSIL,get_TraceError,"get_TraceError");
   pragma Import(MSIL,get_TraceInfo,"get_TraceInfo");
   pragma Import(MSIL,get_TraceVerbose,"get_TraceVerbose");
   pragma Import(MSIL,get_TraceWarning,"get_TraceWarning");
   pragma Import(MSIL,set_Level,"set_Level");
end MSSyst.Diagnostics.TraceSwitch;
pragma Import(MSIL,MSSyst.Diagnostics.TraceSwitch,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Diagnostics.TraceSwitch");
