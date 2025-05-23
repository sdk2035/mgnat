-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Configuration.SettingsBase;
with MSSyst.ComponentModel.INotifyPropertyChanged;
with type MSSyst.ComponentModel.PropertyChangedEventHandler.Ref is access;
with type MSSyst.Configuration.SettingChangingEventHandler.Ref is access;
with type MSSyst.Configuration.SettingsLoadedEventHandler.Ref is access;
with type MSSyst.Configuration.SettingsSavingEventHandler.Ref is access;
with type MSSyst.Object.Ref is access;
with type MSSyst.Configuration.SettingsContext.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Configuration.SettingsPropertyCollection.Ref is access;
with type MSSyst.Configuration.SettingsPropertyValueCollection.Ref is access;
with type MSSyst.Configuration.SettingsProviderCollection.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.Configuration.ApplicationSettingsBase is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is abstract new MSSyst.Configuration.SettingsBase.Typ
         and MSSyst.ComponentModel.INotifyPropertyChanged.Typ
   with record
      null;
   end record;
   procedure add_PropertyChanged(
      This : access Typ;
      value : MSSyst.ComponentModel.PropertyChangedEventHandler.Ref);
   procedure add_SettingChanging(
      This : access Typ;
      value : MSSyst.Configuration.SettingChangingEventHandler.Ref);
   procedure add_SettingsLoaded(
      This : access Typ;
      value : MSSyst.Configuration.SettingsLoadedEventHandler.Ref);
   procedure add_SettingsSaving(
      This : access Typ;
      value : MSSyst.Configuration.SettingsSavingEventHandler.Ref);
   function get_Context(
      This : access Typ) return MSSyst.Configuration.SettingsContext.Ref;
   function get_Item(
      This : access Typ;
      propertyName : MSSyst.String.Ref) return MSSyst.Object.Ref;
   function get_Properties(
      This : access Typ) return MSSyst.Configuration.SettingsPropertyCollection.Ref;
   function get_PropertyValues(
      This : access Typ) return MSSyst.Configuration.SettingsPropertyValueCollection.Ref;
   function get_Providers(
      This : access Typ) return MSSyst.Configuration.SettingsProviderCollection.Ref;
   function get_SettingsKey(
      This : access Typ) return MSSyst.String.Ref;
   function GetPreviousVersion(
      This : access Typ;
      propertyName : MSSyst.String.Ref) return MSSyst.Object.Ref;
   procedure Reload(
      This : access Typ);
   procedure remove_PropertyChanged(
      This : access Typ;
      value : MSSyst.ComponentModel.PropertyChangedEventHandler.Ref);
   procedure remove_SettingChanging(
      This : access Typ;
      value : MSSyst.Configuration.SettingChangingEventHandler.Ref);
   procedure remove_SettingsLoaded(
      This : access Typ;
      value : MSSyst.Configuration.SettingsLoadedEventHandler.Ref);
   procedure remove_SettingsSaving(
      This : access Typ;
      value : MSSyst.Configuration.SettingsSavingEventHandler.Ref);
   procedure Reset(
      This : access Typ);
   procedure Save(
      This : access Typ);
   procedure set_Item(
      This : access Typ;
      propertyName : MSSyst.String.Ref;
      value : MSSyst.Object.Ref);
   procedure set_SettingsKey(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure Upgrade(
      This : access Typ);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,add_PropertyChanged,"add_PropertyChanged");
   pragma Import(MSIL,add_SettingChanging,"add_SettingChanging");
   pragma Import(MSIL,add_SettingsLoaded,"add_SettingsLoaded");
   pragma Import(MSIL,add_SettingsSaving,"add_SettingsSaving");
   pragma Import(MSIL,get_Context,"get_Context");
   pragma Import(MSIL,get_Item,"get_Item");
   pragma Import(MSIL,get_Properties,"get_Properties");
   pragma Import(MSIL,get_PropertyValues,"get_PropertyValues");
   pragma Import(MSIL,get_Providers,"get_Providers");
   pragma Import(MSIL,get_SettingsKey,"get_SettingsKey");
   pragma Import(MSIL,GetPreviousVersion,"GetPreviousVersion");
   pragma Import(MSIL,Reload,"Reload");
   pragma Import(MSIL,remove_PropertyChanged,"remove_PropertyChanged");
   pragma Import(MSIL,remove_SettingChanging,"remove_SettingChanging");
   pragma Import(MSIL,remove_SettingsLoaded,"remove_SettingsLoaded");
   pragma Import(MSIL,remove_SettingsSaving,"remove_SettingsSaving");
   pragma Import(MSIL,Reset,"Reset");
   pragma Import(MSIL,Save,"Save");
   pragma Import(MSIL,set_Item,"set_Item");
   pragma Import(MSIL,set_SettingsKey,"set_SettingsKey");
   pragma Import(MSIL,Upgrade,"Upgrade");
end MSSyst.Configuration.ApplicationSettingsBase;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Configuration.ApplicationSettingsBase,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Configuration.ApplicationSettingsBase");
