with test_exports;
procedure test_exports_main is
   y : integer;
begin
   y := test_exports.open_graph_window(1);
   delay 1.0;
end test_exports_main;