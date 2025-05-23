-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Net.Mime.MediaTypeNames;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Net.Mime.MediaTypeNames.Text is
   type Typ is abstract new MSSyst.Object.Typ   with record
      null;
   end record;
   Plain : access MSSyst.String.Typ'Class;
   pragma Import(MSIL,Plain,"Plain");
   Html : access MSSyst.String.Typ'Class;
   pragma Import(MSIL,Html,"Html");
   Xml : access MSSyst.String.Typ'Class;
   pragma Import(MSIL,Xml,"Xml");
   RichText : access MSSyst.String.Typ'Class;
   pragma Import(MSIL,RichText,"RichText");
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
private
   pragma Convention(MSIL,Typ);
end MSSyst.Net.Mime.MediaTypeNames.Text;
pragma Import(MSIL,MSSyst.Net.Mime.MediaTypeNames.Text,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Net.Mime.MediaTypeNames/Text");
