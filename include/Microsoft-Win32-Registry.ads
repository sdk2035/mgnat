-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with Microsoft.Win32.RegistryKey;
limited with Microsoft.Win32.RegistryValueKind;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package Microsoft.Win32.Registry is
   type Typ is abstract new MSSyst.Object.Typ   with record
      null;
   end record;
   CurrentUser : access Microsoft.Win32.RegistryKey.Typ'Class;
   pragma Import(MSIL,CurrentUser,"CurrentUser");
   LocalMachine : access Microsoft.Win32.RegistryKey.Typ'Class;
   pragma Import(MSIL,LocalMachine,"LocalMachine");
   ClassesRoot : access Microsoft.Win32.RegistryKey.Typ'Class;
   pragma Import(MSIL,ClassesRoot,"ClassesRoot");
   Users : access Microsoft.Win32.RegistryKey.Typ'Class;
   pragma Import(MSIL,Users,"Users");
   PerformanceData : access Microsoft.Win32.RegistryKey.Typ'Class;
   pragma Import(MSIL,PerformanceData,"PerformanceData");
   CurrentConfig : access Microsoft.Win32.RegistryKey.Typ'Class;
   pragma Import(MSIL,CurrentConfig,"CurrentConfig");
   DynData : access Microsoft.Win32.RegistryKey.Typ'Class;
   pragma Import(MSIL,DynData,"DynData");
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function GetValue(
      keyName : access MSSyst.String.Typ'Class;
      valueName : access MSSyst.String.Typ'Class;
      defaultValue : access MSSyst.Object.Typ'Class) return access MSSyst.Object.Typ'Class;
   procedure SetValue(
      keyName : access MSSyst.String.Typ'Class;
      valueName : access MSSyst.String.Typ'Class;
      value : access MSSyst.Object.Typ'Class);
   procedure SetValue(
      keyName : access MSSyst.String.Typ'Class;
      valueName : access MSSyst.String.Typ'Class;
      value : access MSSyst.Object.Typ'Class;
      valueKind : Microsoft.Win32.RegistryValueKind.Valuetype);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,GetValue,"GetValue");
   pragma Import(MSIL,SetValue,"SetValue");
end Microsoft.Win32.Registry;
pragma Import(MSIL,Microsoft.Win32.Registry,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]Microsoft.Win32.Registry");
