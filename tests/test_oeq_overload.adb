package body test_oeq_overload is

   ---------
   -- "=" --
   ---------

   function "=" (Left, Right : in Unbounded_String) return Boolean is
      pragma Warnings (Off, Left);
      pragma Warnings (Off, Right);
   begin
      return True;
      --  return Left.Reference.all = Right.Reference.all;
   end "=";

   function "="
     (Left  : in Unbounded_String;
      Right : in String)
      return  Boolean
   is
   begin
      return Left.Reference.all = Right;
   end "=";

   function "="
     (Left  : in String;
      Right : in Unbounded_String)
      return  Boolean
   is
      pragma Warnings (Off, Left);
      pragma Warnings (Off, Right);
   begin
      --  mcc: avoid duplication??
      --  return Right.Reference.all = Left;
      return True;
   end "=";

begin
   null;
end test_oeq_overload;
