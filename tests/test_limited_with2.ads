with msil_types;
use msil_types;
limited with test_limited_with2;
package test_limited_with2 is
   type Typ is tagged null record;
   pragma Convention(MSIL,Typ);
   type Ref is access all Typ'Class;
end test_limited_with2;
