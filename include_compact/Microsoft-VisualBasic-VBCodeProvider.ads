-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.CodeDom.Compiler.CodeDomProvider;
with MSSyst.ComponentModel.IComponent;
with type MSSyst.EventHandler.Ref is access;
with type MSSyst.CodeDom.Compiler.CompilerResults.Ref is access;
with type MSSyst.CodeDom.Compiler.CompilerParameters.Ref is access;
with type MSSyst.CodeDom.CodeCompileUnit.Ref_array is access;
with type MSSyst.String.Ref_array is access;
with type MSSyst.CodeDom.Compiler.ICodeCompiler.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.CodeDom.Compiler.ICodeGenerator.Ref is access;
with type MSSyst.IO.TextWriter.Ref is access;
with type MSSyst.Runtime.Remoting.ObjRef.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.CodeDom.Compiler.ICodeParser.Ref is access;
with type MSSyst.Object.Ref is access;
with type MSSyst.CodeDom.CodeCompileUnit.Ref is access;
with type MSSyst.CodeDom.Compiler.CodeGeneratorOptions.Ref is access;
with type MSSyst.CodeDom.CodeExpression.Ref is access;
with type MSSyst.CodeDom.CodeTypeMember.Ref is access;
with type MSSyst.CodeDom.CodeNamespace.Ref is access;
with type MSSyst.CodeDom.CodeStatement.Ref is access;
with type MSSyst.CodeDom.CodeTypeDeclaration.Ref is access;
with type MSSyst.ComponentModel.IContainer.Ref is access;
with MSSyst.CodeDom.Compiler.LanguageOptions;
with type MSSyst.ComponentModel.ISite.Ref is access;
with type MSSyst.ComponentModel.TypeConverter.Ref is access;
with type MSSyst.CodeDom.CodeTypeReference.Ref is access;
with type MSSyst.IO.TextReader.Ref is access;
with MSSyst.CodeDom.Compiler.GeneratorSupport;
package Microsoft.VisualBasic.VBCodeProvider is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.CodeDom.Compiler.CodeDomProvider.Typ
         and MSSyst.ComponentModel.IComponent.Typ
   with record
      null;
   end record;
   function new_VBCodeProvider(
      This : Ref := null) return Ref;
   function CreateCompiler(
      This : access Typ) return MSSyst.CodeDom.Compiler.ICodeCompiler.Ref;
   function CreateGenerator(
      This : access Typ) return MSSyst.CodeDom.Compiler.ICodeGenerator.Ref;
   procedure GenerateCodeFromMember(
      This : access Typ;
      member : MSSyst.CodeDom.CodeTypeMember.Ref;
      writer : MSSyst.IO.TextWriter.Ref;
      options : MSSyst.CodeDom.Compiler.CodeGeneratorOptions.Ref);
   function get_FileExtension(
      This : access Typ) return MSSyst.String.Ref;
   function get_LanguageOptions(
      This : access Typ) return MSSyst.CodeDom.Compiler.LanguageOptions.Valuetype;
   function GetConverter(
      This : access Typ;
      type_k : MSSyst.Type_k.Ref) return MSSyst.ComponentModel.TypeConverter.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_VBCodeProvider);
   pragma Import(MSIL,CreateCompiler,"CreateCompiler");
   pragma Import(MSIL,CreateGenerator,"CreateGenerator");
   pragma Import(MSIL,GenerateCodeFromMember,"GenerateCodeFromMember");
   pragma Import(MSIL,get_FileExtension,"get_FileExtension");
   pragma Import(MSIL,get_LanguageOptions,"get_LanguageOptions");
   pragma Import(MSIL,GetConverter,"GetConverter");
end Microsoft.VisualBasic.VBCodeProvider;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,Microsoft.VisualBasic.VBCodeProvider,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]Microsoft.VisualBasic.VBCodeProvider");
