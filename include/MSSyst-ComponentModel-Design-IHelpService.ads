-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.ComponentModel.Design.HelpContextType;
limited with MSSyst.ComponentModel.Design.HelpKeywordType;
limited with MSSyst.String;
package MSSyst.ComponentModel.Design.IHelpService is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure AddContextAttribute(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : access MSSyst.String.Typ'Class;
      keywordType : MSSyst.ComponentModel.Design.HelpKeywordType.Valuetype) is abstract;
   procedure ClearContextAttributes(
      This : access Typ) is abstract;
   function CreateLocalContext(
      This : access Typ;
      contextType : MSSyst.ComponentModel.Design.HelpContextType.Valuetype) return access MSSyst.ComponentModel.Design.IHelpService.Typ'Class is abstract;
   procedure RemoveContextAttribute(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      value : access MSSyst.String.Typ'Class) is abstract;
   procedure RemoveLocalContext(
      This : access Typ;
      localContext : access MSSyst.ComponentModel.Design.IHelpService.Typ'Class) is abstract;
   procedure ShowHelpFromKeyword(
      This : access Typ;
      helpKeyword : access MSSyst.String.Typ'Class) is abstract;
   procedure ShowHelpFromUrl(
      This : access Typ;
      helpUrl : access MSSyst.String.Typ'Class) is abstract;
private
   pragma Import(MSIL,AddContextAttribute,"AddContextAttribute");
   pragma Import(MSIL,ClearContextAttributes,"ClearContextAttributes");
   pragma Import(MSIL,CreateLocalContext,"CreateLocalContext");
   pragma Import(MSIL,RemoveContextAttribute,"RemoveContextAttribute");
   pragma Import(MSIL,RemoveLocalContext,"RemoveLocalContext");
   pragma Import(MSIL,ShowHelpFromKeyword,"ShowHelpFromKeyword");
   pragma Import(MSIL,ShowHelpFromUrl,"ShowHelpFromUrl");
end MSSyst.ComponentModel.Design.IHelpService;
pragma Import(MSIL,MSSyst.ComponentModel.Design.IHelpService,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.Design.IHelpService");
