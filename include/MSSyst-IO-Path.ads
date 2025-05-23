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
package MSSyst.IO.Path is
   type Typ is abstract new MSSyst.Object.Typ   with record
      null;
   end record;
   DirectorySeparatorChar : Wide_Character;
   pragma Import(MSIL,DirectorySeparatorChar,"DirectorySeparatorChar");
   AltDirectorySeparatorChar : Wide_Character;
   pragma Import(MSIL,AltDirectorySeparatorChar,"AltDirectorySeparatorChar");
   VolumeSeparatorChar : Wide_Character;
   pragma Import(MSIL,VolumeSeparatorChar,"VolumeSeparatorChar");
   InvalidPathChars : MSIL_Types.Char_Array;
   pragma Import(MSIL,InvalidPathChars,"InvalidPathChars");
   PathSeparator : Wide_Character;
   pragma Import(MSIL,PathSeparator,"PathSeparator");
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function ChangeExtension(
      path : access MSSyst.String.Typ'Class;
      extension : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function Combine(
      path1 : access MSSyst.String.Typ'Class;
      path2 : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function GetDirectoryName(
      path : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function GetExtension(
      path : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function GetFileName(
      path : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function GetFileNameWithoutExtension(
      path : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function GetFullPath(
      path : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function GetInvalidFileNameChars return MSIL_Types.Char_Array;
   function GetInvalidPathChars return MSIL_Types.Char_Array;
   function GetPathRoot(
      path : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function GetRandomFileName return access MSSyst.String.Typ'Class;
   function GetTempFileName return access MSSyst.String.Typ'Class;
   function GetTempPath return access MSSyst.String.Typ'Class;
   function HasExtension(
      path : access MSSyst.String.Typ'Class) return Standard.Boolean;
   function IsPathRooted(
      path : access MSSyst.String.Typ'Class) return Standard.Boolean;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,ChangeExtension,"ChangeExtension");
   pragma Import(MSIL,Combine,"Combine");
   pragma Import(MSIL,GetDirectoryName,"GetDirectoryName");
   pragma Import(MSIL,GetExtension,"GetExtension");
   pragma Import(MSIL,GetFileName,"GetFileName");
   pragma Import(MSIL,GetFileNameWithoutExtension,"GetFileNameWithoutExtension");
   pragma Import(MSIL,GetFullPath,"GetFullPath");
   pragma Import(MSIL,GetInvalidFileNameChars,"GetInvalidFileNameChars");
   pragma Import(MSIL,GetInvalidPathChars,"GetInvalidPathChars");
   pragma Import(MSIL,GetPathRoot,"GetPathRoot");
   pragma Import(MSIL,GetRandomFileName,"GetRandomFileName");
   pragma Import(MSIL,GetTempFileName,"GetTempFileName");
   pragma Import(MSIL,GetTempPath,"GetTempPath");
   pragma Import(MSIL,HasExtension,"HasExtension");
   pragma Import(MSIL,IsPathRooted,"IsPathRooted");
end MSSyst.IO.Path;
pragma Import(MSIL,MSSyst.IO.Path,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.IO.Path");
