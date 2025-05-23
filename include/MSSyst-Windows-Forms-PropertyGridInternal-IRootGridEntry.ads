-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.ComponentModel.AttributeCollection;
package MSSyst.Windows.Forms.PropertyGridInternal.IRootGridEntry is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function get_BrowsableAttributes(
      This : access Typ) return access MSSyst.ComponentModel.AttributeCollection.Typ'Class is abstract;
   procedure ResetBrowsableAttributes(
      This : access Typ) is abstract;
   procedure set_BrowsableAttributes(
      This : access Typ;
      value : access MSSyst.ComponentModel.AttributeCollection.Typ'Class) is abstract;
   procedure ShowCategories(
      This : access Typ;
      showCategories : Standard.Boolean) is abstract;
private
   pragma Import(MSIL,get_BrowsableAttributes,"get_BrowsableAttributes");
   pragma Import(MSIL,ResetBrowsableAttributes,"ResetBrowsableAttributes");
   pragma Import(MSIL,set_BrowsableAttributes,"set_BrowsableAttributes");
   pragma Import(MSIL,ShowCategories,"ShowCategories");
end MSSyst.Windows.Forms.PropertyGridInternal.IRootGridEntry;
pragma Import(MSIL,MSSyst.Windows.Forms.PropertyGridInternal.IRootGridEntry,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.PropertyGridInternal.IRootGridEntry");
