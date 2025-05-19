with ada.tags;
package test_tag_pkg is
   type bob is tagged record
      my_tag : ada.tags.tag;
      bobby : integer;
   end record;
   type bob_ptr is access all bob'class;

end test_tag_pkg;