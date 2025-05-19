-- Martin Carlisle 08/22/05
-- purpose of this test is to ensure multiple "=" don't get the 
-- same name in the .IL file.  Simply compile .adb and check to make
-- sure names are disambiguated
with ada.finalization;
package test_oeq_overload is
   type String_Access is access all String;

   type Unbounded_String is new ada.finalization.controlled with record
   --  type unbounded_string is tagged record
      Reference : String_Access;
   end record;
   function "=" (Left, Right : in Unbounded_String) return Boolean;
   function "="
     (Left  : in Unbounded_String;
      Right : in String)
      return  Boolean;
   function "="
     (Left  : in String;
      Right : in Unbounded_String)
      return  Boolean;
end test_oeq_overload;
