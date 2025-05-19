with ada.finalization;
procedure test_finalize_assign is
   type fred is new ada.finalization.controlled with null record;
   x, y : fred;
begin
   x := y;
end test_finalize_assign;
