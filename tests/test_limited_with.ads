with msil_types;
use msil_types;
limited with test_limited_with2;
package test_limited_with is
   type Typ is tagged null record;
   function Bob(x : access Typ) return test_limited_with2.Ref;
end test_limited_with;
