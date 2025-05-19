with ada.text_io;
use ada.text_io;
with test_tag_pkg;
with ada.tags;
procedure tag_pkg_main is
   z : test_tag_pkg.bob_ptr;
begin
   z := new test_tag_pkg.bob;
   z.my_tag := z'tag;
   put_line(ada.tags.external_tag(z.my_tag));
end tag_pkg_main;
