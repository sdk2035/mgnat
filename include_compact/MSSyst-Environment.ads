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
with type MSSyst.String.Ref is access;
with type MSSyst.OperatingSystem.Ref is access;
with type MSSyst.Version.Ref is access;
with type MSSyst.String.Ref_array is access;
with MSSyst.EnvironmentVariableTarget;
with type MSSyst.Collections.IDictionary.Ref is access;
with MSSyst.Environment_Specialfolder;
with type MSSyst.Type_k.Ref is access;
package MSSyst.Environment is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is abstract new MSSyst.Object.Typ   with record
      null;
   end record;
   procedure Exit_k(
      exitCode : Integer);
   function ExpandEnvironmentVariables(
      name : MSSyst.String.Ref) return MSSyst.String.Ref;
   procedure FailFast(
      message : MSSyst.String.Ref);
   function get_CommandLine return MSSyst.String.Ref;
   function get_CurrentDirectory return MSSyst.String.Ref;
   function get_ExitCode return Integer;
   function get_HasShutdownStarted return Standard.Boolean;
   function get_MachineName return MSSyst.String.Ref;
   function get_NewLine return MSSyst.String.Ref;
   function get_OSVersion return MSSyst.OperatingSystem.Ref;
   function get_ProcessorCount return Integer;
   function get_StackTrace return MSSyst.String.Ref;
   function get_SystemDirectory return MSSyst.String.Ref;
   function get_TickCount return Integer;
   function get_UserDomainName return MSSyst.String.Ref;
   function get_UserInteractive return Standard.Boolean;
   function get_UserName return MSSyst.String.Ref;
   function get_Version return MSSyst.Version.Ref;
   function get_WorkingSet return Long_Long_Integer;
   function GetCommandLineArgs return MSSyst.String.Ref_array;
   function GetEnvironmentVariable(
      variable : MSSyst.String.Ref;
      target : MSSyst.EnvironmentVariableTarget.Valuetype) return MSSyst.String.Ref;
   function GetEnvironmentVariable(
      variable : MSSyst.String.Ref) return MSSyst.String.Ref;
   function GetEnvironmentVariables(
      target : MSSyst.EnvironmentVariableTarget.Valuetype) return MSSyst.Collections.IDictionary.Ref;
   function GetEnvironmentVariables return MSSyst.Collections.IDictionary.Ref;
   function GetFolderPath(
      folder : MSSyst.Environment_Specialfolder.Valuetype) return MSSyst.String.Ref;
   function GetLogicalDrives return MSSyst.String.Ref_array;
   procedure set_CurrentDirectory(
      value : MSSyst.String.Ref);
   procedure set_ExitCode(
      value : Integer);
   procedure SetEnvironmentVariable(
      variable : MSSyst.String.Ref;
      value : MSSyst.String.Ref);
   procedure SetEnvironmentVariable(
      variable : MSSyst.String.Ref;
      value : MSSyst.String.Ref;
      target : MSSyst.EnvironmentVariableTarget.Valuetype);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,Exit_k,"Exit");
   pragma Import(MSIL,ExpandEnvironmentVariables,"ExpandEnvironmentVariables");
   pragma Import(MSIL,FailFast,"FailFast");
   pragma Import(MSIL,get_CommandLine,"get_CommandLine");
   pragma Import(MSIL,get_CurrentDirectory,"get_CurrentDirectory");
   pragma Import(MSIL,get_ExitCode,"get_ExitCode");
   pragma Import(MSIL,get_HasShutdownStarted,"get_HasShutdownStarted");
   pragma Import(MSIL,get_MachineName,"get_MachineName");
   pragma Import(MSIL,get_NewLine,"get_NewLine");
   pragma Import(MSIL,get_OSVersion,"get_OSVersion");
   pragma Import(MSIL,get_ProcessorCount,"get_ProcessorCount");
   pragma Import(MSIL,get_StackTrace,"get_StackTrace");
   pragma Import(MSIL,get_SystemDirectory,"get_SystemDirectory");
   pragma Import(MSIL,get_TickCount,"get_TickCount");
   pragma Import(MSIL,get_UserDomainName,"get_UserDomainName");
   pragma Import(MSIL,get_UserInteractive,"get_UserInteractive");
   pragma Import(MSIL,get_UserName,"get_UserName");
   pragma Import(MSIL,get_Version,"get_Version");
   pragma Import(MSIL,get_WorkingSet,"get_WorkingSet");
   pragma Import(MSIL,GetCommandLineArgs,"GetCommandLineArgs");
   pragma Import(MSIL,GetEnvironmentVariable,"GetEnvironmentVariable");
   pragma Import(MSIL,GetEnvironmentVariables,"GetEnvironmentVariables");
   pragma Import(MSIL,GetFolderPath,"GetFolderPath");
   pragma Import(MSIL,GetLogicalDrives,"GetLogicalDrives");
   pragma Import(MSIL,set_CurrentDirectory,"set_CurrentDirectory");
   pragma Import(MSIL,set_ExitCode,"set_ExitCode");
   pragma Import(MSIL,SetEnvironmentVariable,"SetEnvironmentVariable");
end MSSyst.Environment;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Environment,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Environment");
