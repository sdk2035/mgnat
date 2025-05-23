-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Collections.IComparer;
limited with MSSyst.String;
limited with MSSyst.Type_k;
with MSSyst.Windows.Forms.ToolStripPanel;
with MSSyst.Windows.Forms.ToolStripPanel.ToolStripPanelControlCollection;
package MSSyst.Windows.Forms.ToolStripPanel.ToolStripPanelControlCollection.XYComparer is
   type Typ is new MSSyst.Object.Typ
         and MSSyst.Collections.IComparer.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_XYComparer(
      This : Ref := null) return Ref;
   function Compare(
      This : access Typ;
      first : access MSSyst.Object.Typ'Class;
      second : access MSSyst.Object.Typ'Class) return Integer;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_XYComparer);
   pragma Import(MSIL,Compare,"Compare");
end MSSyst.Windows.Forms.ToolStripPanel.ToolStripPanelControlCollection.XYComparer;
pragma Import(MSIL,MSSyst.Windows.Forms.ToolStripPanel.ToolStripPanelControlCollection.XYComparer,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ToolStripPanel/ToolStripPanelControlCollection/XYComparer");
