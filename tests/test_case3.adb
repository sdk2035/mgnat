procedure test_case3 is
   type Token_Type is (Plus, Minus, Times, Divide, Exponent, Left_Paren,
      Right_Paren, And_T, Or_T, Mod_T, Rem_T, Id, Number, Equal, Greater,
      Less, Greater_Equal, Less_Equal, String_T, Proc_Id, Comma,
      Sin,Cos,Tan,Cot,Arcsin,Arccos,
      Arctan,Arccot,
      Sinh,Tanh,Cosh,Arccosh,Arcsinh,Arctanh,
      Coth,Arccoth,Sqrt,Log,Floor,Ceiling,Abs_F,
      E,Pi,
      Semicolon, Colon_Equal, Left_Bracket, Right_Bracket, End_Of_Input);

   subtype Func_Id1 is Token_Type range Sinh..Abs_F;
   subtype Func_Id0 is Token_Type range E..Pi;
   subtype Func_Id1or2 is Token_Type range Sin..Arccos;
   subtype Func_Id1or2or3 is Token_Type range Arctan..Arccot;
   subtype Func_Token_Types is Token_Type range Sin..Pi;
   subtype Func_Id2 is Token_Type range Pi..E;
   Func_Kind : func_token_types := sin;
   x : integer;
begin
            case Func_Kind is
               when Func_Id0 =>
                  x := 1;
               when Func_Id1 =>
                  x := 1;
               when Func_Id1or2 =>
                  x := 1;
               when Func_Id1or2or3 =>
                  x := 1;
            end case;
end test_case3;