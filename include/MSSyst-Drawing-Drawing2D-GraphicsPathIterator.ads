-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Drawing.Drawing2D.GraphicsPath;
with MSSyst.Drawing.PointF;
with MSSyst.IDisposable;
with MSSyst.MarshalByRefObject;
limited with MSSyst.Runtime.Remoting.ObjRef;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Drawing.Drawing2D.GraphicsPathIterator is
   type Typ is new MSSyst.MarshalByRefObject.Typ
         and MSSyst.IDisposable.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_GraphicsPathIterator(
      This : Ref := null;
      path : access MSSyst.Drawing.Drawing2D.GraphicsPath.Typ'Class) return Ref;
   function CopyData(
      This : access Typ;
      points : access MSSyst.Drawing.PointF.Valuetype_array;
      types : MSIL_Types.unsigned_int8_Array_addrof;
      startIndex : Integer;
      endIndex : Integer) return Integer;
   procedure Dispose(
      This : access Typ);
   function Enumerate(
      This : access Typ;
      points : access MSSyst.Drawing.PointF.Valuetype_array;
      types : MSIL_Types.unsigned_int8_Array_addrof) return Integer;
   function get_Count(
      This : access Typ) return Integer;
   function get_SubpathCount(
      This : access Typ) return Integer;
   function HasCurve(
      This : access Typ) return Standard.Boolean;
   function NextMarker(
      This : access Typ;
      path : access MSSyst.Drawing.Drawing2D.GraphicsPath.Typ'Class) return Integer;
   function NextMarker(
      This : access Typ;
      startIndex : MSIL_Types.Int32_addrof;
      endIndex : MSIL_Types.Int32_addrof) return Integer;
   function NextPathType(
      This : access Typ;
      pathType : MSIL_Types.unsigned_int8_addrof;
      startIndex : MSIL_Types.Int32_addrof;
      endIndex : MSIL_Types.Int32_addrof) return Integer;
   function NextSubpath(
      This : access Typ;
      startIndex : MSIL_Types.Int32_addrof;
      endIndex : MSIL_Types.Int32_addrof;
      isClosed : MSIL_Types.Bool_addrof) return Integer;
   function NextSubpath(
      This : access Typ;
      path : access MSSyst.Drawing.Drawing2D.GraphicsPath.Typ'Class;
      isClosed : MSIL_Types.Bool_addrof) return Integer;
   procedure Rewind(
      This : access Typ);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_GraphicsPathIterator);
   pragma Import(MSIL,CopyData,"CopyData");
   pragma Import(MSIL,Dispose,"Dispose");
   pragma Import(MSIL,Enumerate,"Enumerate");
   pragma Import(MSIL,get_Count,"get_Count");
   pragma Import(MSIL,get_SubpathCount,"get_SubpathCount");
   pragma Import(MSIL,HasCurve,"HasCurve");
   pragma Import(MSIL,NextMarker,"NextMarker");
   pragma Import(MSIL,NextPathType,"NextPathType");
   pragma Import(MSIL,NextSubpath,"NextSubpath");
   pragma Import(MSIL,Rewind,"Rewind");
end MSSyst.Drawing.Drawing2D.GraphicsPathIterator;
pragma Import(MSIL,MSSyst.Drawing.Drawing2D.GraphicsPathIterator,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Drawing2D.GraphicsPathIterator");
