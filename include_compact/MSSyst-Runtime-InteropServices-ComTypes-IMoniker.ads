-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.Runtime.InteropServices.ComTypes.IBindCtx.Ref is access;
with MSSyst.Guid;
with type MSSyst.Object.Ref_addrof is access;
with type MSSyst.Runtime.InteropServices.ComTypes.IMoniker.Ref_addrof is access;
with type MSSyst.Runtime.InteropServices.ComTypes.IEnumMoniker.Ref_addrof is access;
with type MSSyst.String.Ref_addrof is access;
with MSSyst.Runtime.InteropServices.ComTypes.FILETIME;
with type MSSyst.Runtime.InteropServices.ComTypes.IStream.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Runtime.InteropServices.ComTypes.IMoniker is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is interface;
   procedure BindToObject(
      This : access Typ;
      pbc : MSSyst.Runtime.InteropServices.ComTypes.IBindCtx.Ref;
      pmkToLeft : MSSyst.Runtime.InteropServices.ComTypes.IMoniker.Ref;
      riidResult : MSSyst.Guid.Valuetype_addrof;
      ppvResult : MSSyst.Object.Ref_addrof) is abstract;
   procedure BindToStorage(
      This : access Typ;
      pbc : MSSyst.Runtime.InteropServices.ComTypes.IBindCtx.Ref;
      pmkToLeft : MSSyst.Runtime.InteropServices.ComTypes.IMoniker.Ref;
      riid : MSSyst.Guid.Valuetype_addrof;
      ppvObj : MSSyst.Object.Ref_addrof) is abstract;
   procedure CommonPrefixWith(
      This : access Typ;
      pmkOther : MSSyst.Runtime.InteropServices.ComTypes.IMoniker.Ref;
      ppmkPrefix : MSSyst.Runtime.InteropServices.ComTypes.IMoniker.Ref_addrof) is abstract;
   procedure ComposeWith(
      This : access Typ;
      pmkRight : MSSyst.Runtime.InteropServices.ComTypes.IMoniker.Ref;
      fOnlyIfNotGeneric : Standard.Boolean;
      ppmkComposite : MSSyst.Runtime.InteropServices.ComTypes.IMoniker.Ref_addrof) is abstract;
   procedure Enum(
      This : access Typ;
      fForward : Standard.Boolean;
      ppenumMoniker : MSSyst.Runtime.InteropServices.ComTypes.IEnumMoniker.Ref_addrof) is abstract;
   procedure GetClassID(
      This : access Typ;
      pClassID : MSSyst.Guid.Valuetype_addrof) is abstract;
   procedure GetDisplayName(
      This : access Typ;
      pbc : MSSyst.Runtime.InteropServices.ComTypes.IBindCtx.Ref;
      pmkToLeft : MSSyst.Runtime.InteropServices.ComTypes.IMoniker.Ref;
      ppszDisplayName : MSSyst.String.Ref_addrof) is abstract;
   procedure GetSizeMax(
      This : access Typ;
      pcbSize : MSIL_Types.Int64_addrof) is abstract;
   procedure GetTimeOfLastChange(
      This : access Typ;
      pbc : MSSyst.Runtime.InteropServices.ComTypes.IBindCtx.Ref;
      pmkToLeft : MSSyst.Runtime.InteropServices.ComTypes.IMoniker.Ref;
      pFileTime : MSSyst.Runtime.InteropServices.ComTypes.FILETIME.Valuetype_addrof) is abstract;
   procedure Hash(
      This : access Typ;
      pdwHash : MSIL_Types.Int32_addrof) is abstract;
   procedure Inverse(
      This : access Typ;
      ppmk : MSSyst.Runtime.InteropServices.ComTypes.IMoniker.Ref_addrof) is abstract;
   function IsDirty(
      This : access Typ) return Integer is abstract;
   function IsEqual(
      This : access Typ;
      pmkOtherMoniker : MSSyst.Runtime.InteropServices.ComTypes.IMoniker.Ref) return Integer is abstract;
   function IsRunning(
      This : access Typ;
      pbc : MSSyst.Runtime.InteropServices.ComTypes.IBindCtx.Ref;
      pmkToLeft : MSSyst.Runtime.InteropServices.ComTypes.IMoniker.Ref;
      pmkNewlyRunning : MSSyst.Runtime.InteropServices.ComTypes.IMoniker.Ref) return Integer is abstract;
   function IsSystemMoniker(
      This : access Typ;
      pdwMksys : MSIL_Types.Int32_addrof) return Integer is abstract;
   procedure Load(
      This : access Typ;
      pStm : MSSyst.Runtime.InteropServices.ComTypes.IStream.Ref) is abstract;
   procedure ParseDisplayName(
      This : access Typ;
      pbc : MSSyst.Runtime.InteropServices.ComTypes.IBindCtx.Ref;
      pmkToLeft : MSSyst.Runtime.InteropServices.ComTypes.IMoniker.Ref;
      pszDisplayName : MSSyst.String.Ref;
      pchEaten : MSIL_Types.Int32_addrof;
      ppmkOut : MSSyst.Runtime.InteropServices.ComTypes.IMoniker.Ref_addrof) is abstract;
   procedure Reduce(
      This : access Typ;
      pbc : MSSyst.Runtime.InteropServices.ComTypes.IBindCtx.Ref;
      dwReduceHowFar : Integer;
      ppmkToLeft : MSSyst.Runtime.InteropServices.ComTypes.IMoniker.Ref_addrof;
      ppmkReduced : MSSyst.Runtime.InteropServices.ComTypes.IMoniker.Ref_addrof) is abstract;
   procedure RelativePathTo(
      This : access Typ;
      pmkOther : MSSyst.Runtime.InteropServices.ComTypes.IMoniker.Ref;
      ppmkRelPath : MSSyst.Runtime.InteropServices.ComTypes.IMoniker.Ref_addrof) is abstract;
   procedure Save(
      This : access Typ;
      pStm : MSSyst.Runtime.InteropServices.ComTypes.IStream.Ref;
      fClearDirty : Standard.Boolean) is abstract;
private
   pragma Import(MSIL,BindToObject,"BindToObject");
   pragma Import(MSIL,BindToStorage,"BindToStorage");
   pragma Import(MSIL,CommonPrefixWith,"CommonPrefixWith");
   pragma Import(MSIL,ComposeWith,"ComposeWith");
   pragma Import(MSIL,Enum,"Enum");
   pragma Import(MSIL,GetClassID,"GetClassID");
   pragma Import(MSIL,GetDisplayName,"GetDisplayName");
   pragma Import(MSIL,GetSizeMax,"GetSizeMax");
   pragma Import(MSIL,GetTimeOfLastChange,"GetTimeOfLastChange");
   pragma Import(MSIL,Hash,"Hash");
   pragma Import(MSIL,Inverse,"Inverse");
   pragma Import(MSIL,IsDirty,"IsDirty");
   pragma Import(MSIL,IsEqual,"IsEqual");
   pragma Import(MSIL,IsRunning,"IsRunning");
   pragma Import(MSIL,IsSystemMoniker,"IsSystemMoniker");
   pragma Import(MSIL,Load,"Load");
   pragma Import(MSIL,ParseDisplayName,"ParseDisplayName");
   pragma Import(MSIL,Reduce,"Reduce");
   pragma Import(MSIL,RelativePathTo,"RelativePathTo");
   pragma Import(MSIL,Save,"Save");
end MSSyst.Runtime.InteropServices.ComTypes.IMoniker;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Runtime.InteropServices.ComTypes.IMoniker,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Runtime.InteropServices.ComTypes.IMoniker");
