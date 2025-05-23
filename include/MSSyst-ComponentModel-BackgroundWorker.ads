-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.ComponentModel.Component;
limited with MSSyst.ComponentModel.DoWorkEventHandler;
with MSSyst.ComponentModel.IComponent;
limited with MSSyst.ComponentModel.IContainer;
limited with MSSyst.ComponentModel.ISite;
limited with MSSyst.ComponentModel.ProgressChangedEventHandler;
limited with MSSyst.ComponentModel.RunWorkerCompletedEventHandler;
limited with MSSyst.EventHandler;
with MSSyst.IDisposable;
with MSSyst.MarshalByRefObject;
limited with MSSyst.Runtime.Remoting.ObjRef;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.ComponentModel.BackgroundWorker is
   type Typ is new MSSyst.ComponentModel.Component.Typ
         and MSSyst.ComponentModel.IComponent.Typ
         and MSSyst.IDisposable.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_BackgroundWorker(
      This : Ref := null) return Ref;
   procedure add_DoWork(
      This : access Typ;
      value : access MSSyst.ComponentModel.DoWorkEventHandler.Typ'Class);
   procedure add_ProgressChanged(
      This : access Typ;
      value : access MSSyst.ComponentModel.ProgressChangedEventHandler.Typ'Class);
   procedure add_RunWorkerCompleted(
      This : access Typ;
      value : access MSSyst.ComponentModel.RunWorkerCompletedEventHandler.Typ'Class);
   procedure CancelAsync(
      This : access Typ);
   function get_CancellationPending(
      This : access Typ) return Standard.Boolean;
   function get_IsBusy(
      This : access Typ) return Standard.Boolean;
   function get_WorkerReportsProgress(
      This : access Typ) return Standard.Boolean;
   function get_WorkerSupportsCancellation(
      This : access Typ) return Standard.Boolean;
   procedure remove_DoWork(
      This : access Typ;
      value : access MSSyst.ComponentModel.DoWorkEventHandler.Typ'Class);
   procedure remove_ProgressChanged(
      This : access Typ;
      value : access MSSyst.ComponentModel.ProgressChangedEventHandler.Typ'Class);
   procedure remove_RunWorkerCompleted(
      This : access Typ;
      value : access MSSyst.ComponentModel.RunWorkerCompletedEventHandler.Typ'Class);
   procedure ReportProgress(
      This : access Typ;
      percentProgress : Integer;
      userState : access MSSyst.Object.Typ'Class);
   procedure ReportProgress(
      This : access Typ;
      percentProgress : Integer);
   procedure RunWorkerAsync(
      This : access Typ;
      argument : access MSSyst.Object.Typ'Class);
   procedure RunWorkerAsync(
      This : access Typ);
   procedure set_WorkerReportsProgress(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_WorkerSupportsCancellation(
      This : access Typ;
      value : Standard.Boolean);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_BackgroundWorker);
   pragma Import(MSIL,add_DoWork,"add_DoWork");
   pragma Import(MSIL,add_ProgressChanged,"add_ProgressChanged");
   pragma Import(MSIL,add_RunWorkerCompleted,"add_RunWorkerCompleted");
   pragma Import(MSIL,CancelAsync,"CancelAsync");
   pragma Import(MSIL,get_CancellationPending,"get_CancellationPending");
   pragma Import(MSIL,get_IsBusy,"get_IsBusy");
   pragma Import(MSIL,get_WorkerReportsProgress,"get_WorkerReportsProgress");
   pragma Import(MSIL,get_WorkerSupportsCancellation,"get_WorkerSupportsCancellation");
   pragma Import(MSIL,remove_DoWork,"remove_DoWork");
   pragma Import(MSIL,remove_ProgressChanged,"remove_ProgressChanged");
   pragma Import(MSIL,remove_RunWorkerCompleted,"remove_RunWorkerCompleted");
   pragma Import(MSIL,ReportProgress,"ReportProgress");
   pragma Import(MSIL,RunWorkerAsync,"RunWorkerAsync");
   pragma Import(MSIL,set_WorkerReportsProgress,"set_WorkerReportsProgress");
   pragma Import(MSIL,set_WorkerSupportsCancellation,"set_WorkerSupportsCancellation");
end MSSyst.ComponentModel.BackgroundWorker;
pragma Import(MSIL,MSSyst.ComponentModel.BackgroundWorker,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.BackgroundWorker");
