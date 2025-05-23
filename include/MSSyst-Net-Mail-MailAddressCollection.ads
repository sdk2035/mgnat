-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Collections.ICollection;
with MSSyst.Collections.IEnumerable;
with MSSyst.Collections.IList;
with MSSyst.Collections.ObjectModel.Collection.Net.Mail.MailAddress, System, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]];
limited with MSSyst.Net.Mail.MailAddress;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Net.Mail.MailAddressCollection is
   type Typ is new MSSyst.Collections.ObjectModel.Collection.Net.Mail.MailAddress, System, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]].Typ
         and MSSyst.Collections.IEnumerable.Typ
         and MSSyst.Collections.IList.Typ
         and MSSyst.Collections.ICollection.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_MailAddressCollection(
      This : Ref := null) return Ref;
   procedure Add(
      This : access Typ;
      addresses : access MSSyst.String.Typ'Class);
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_MailAddressCollection);
   pragma Import(MSIL,Add,"Add");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Net.Mail.MailAddressCollection;
pragma Import(MSIL,MSSyst.Net.Mail.MailAddressCollection,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Net.Mail.MailAddressCollection");
