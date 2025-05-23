-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.MarshalByRefObject;
limited with MSSyst.Runtime.Remoting.ObjRef;
limited with MSSyst.String;
limited with MSSyst.Type_k;
limited with MSSyst.Windows.Forms.CreateParams;
with MSSyst.Windows.Forms.IWin32Window;
with MSSyst.Windows.Forms.Message;
package MSSyst.Windows.Forms.NativeWindow is
   type Typ is new MSSyst.MarshalByRefObject.Typ
         and MSSyst.Windows.Forms.IWin32Window.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_NativeWindow(
      This : Ref := null) return Ref;
   procedure AssignHandle(
      This : access Typ;
      handle : MSIL_Types.native_int);
   procedure CreateHandle(
      This : access Typ;
      cp : access MSSyst.Windows.Forms.CreateParams.Typ'Class);
   procedure DefWndProc(
      This : access Typ;
      m : access MSSyst.Windows.Forms.Message.Valuetype);
   procedure DestroyHandle(
      This : access Typ);
   function FromHandle(
      handle : MSIL_Types.native_int) return access MSSyst.Windows.Forms.NativeWindow.Typ'Class;
   function get_Handle(
      This : access Typ) return MSIL_Types.native_int;
   procedure ReleaseHandle(
      This : access Typ);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_NativeWindow);
   pragma Import(MSIL,AssignHandle,"AssignHandle");
   pragma Import(MSIL,CreateHandle,"CreateHandle");
   pragma Import(MSIL,DefWndProc,"DefWndProc");
   pragma Import(MSIL,DestroyHandle,"DestroyHandle");
   pragma Import(MSIL,FromHandle,"FromHandle");
   pragma Import(MSIL,get_Handle,"get_Handle");
   pragma Import(MSIL,ReleaseHandle,"ReleaseHandle");
end MSSyst.Windows.Forms.NativeWindow;
pragma Import(MSIL,MSSyst.Windows.Forms.NativeWindow,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.NativeWindow");
