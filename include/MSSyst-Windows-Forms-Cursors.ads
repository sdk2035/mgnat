-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.String;
limited with MSSyst.Type_k;
limited with MSSyst.Windows.Forms.Cursor;
package MSSyst.Windows.Forms.Cursors is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function get_AppStarting return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_Arrow return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_Cross return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_Default return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_Hand return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_Help return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_HSplit return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_IBeam return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_No return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_NoMove2D return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_NoMoveHoriz return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_NoMoveVert return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_PanEast return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_PanNE return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_PanNorth return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_PanNW return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_PanSE return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_PanSouth return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_PanSW return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_PanWest return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_SizeAll return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_SizeNESW return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_SizeNS return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_SizeNWSE return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_SizeWE return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_UpArrow return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_VSplit return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_WaitCursor return access MSSyst.Windows.Forms.Cursor.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,get_AppStarting,"get_AppStarting");
   pragma Import(MSIL,get_Arrow,"get_Arrow");
   pragma Import(MSIL,get_Cross,"get_Cross");
   pragma Import(MSIL,get_Default,"get_Default");
   pragma Import(MSIL,get_Hand,"get_Hand");
   pragma Import(MSIL,get_Help,"get_Help");
   pragma Import(MSIL,get_HSplit,"get_HSplit");
   pragma Import(MSIL,get_IBeam,"get_IBeam");
   pragma Import(MSIL,get_No,"get_No");
   pragma Import(MSIL,get_NoMove2D,"get_NoMove2D");
   pragma Import(MSIL,get_NoMoveHoriz,"get_NoMoveHoriz");
   pragma Import(MSIL,get_NoMoveVert,"get_NoMoveVert");
   pragma Import(MSIL,get_PanEast,"get_PanEast");
   pragma Import(MSIL,get_PanNE,"get_PanNE");
   pragma Import(MSIL,get_PanNorth,"get_PanNorth");
   pragma Import(MSIL,get_PanNW,"get_PanNW");
   pragma Import(MSIL,get_PanSE,"get_PanSE");
   pragma Import(MSIL,get_PanSouth,"get_PanSouth");
   pragma Import(MSIL,get_PanSW,"get_PanSW");
   pragma Import(MSIL,get_PanWest,"get_PanWest");
   pragma Import(MSIL,get_SizeAll,"get_SizeAll");
   pragma Import(MSIL,get_SizeNESW,"get_SizeNESW");
   pragma Import(MSIL,get_SizeNS,"get_SizeNS");
   pragma Import(MSIL,get_SizeNWSE,"get_SizeNWSE");
   pragma Import(MSIL,get_SizeWE,"get_SizeWE");
   pragma Import(MSIL,get_UpArrow,"get_UpArrow");
   pragma Import(MSIL,get_VSplit,"get_VSplit");
   pragma Import(MSIL,get_WaitCursor,"get_WaitCursor");
end MSSyst.Windows.Forms.Cursors;
pragma Import(MSIL,MSSyst.Windows.Forms.Cursors,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.Cursors");
