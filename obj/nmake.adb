------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                                N M A K E                                 --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--          Copyright (C) 1992-2005 Free Software Foundation, Inc.          --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 2,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with GNAT;  see file COPYING.  If not, write --
-- to  the Free Software Foundation,  59 Temple Place - Suite 330,  Boston, --
-- MA 02111-1307, USA.                                                      --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

pragma Style_Checks (All_Checks);
--  Turn off subprogram order checking, since the routines here are
--  generated automatically in order.

with Atree;  use Atree;
with Sinfo;  use Sinfo;
with Snames; use Snames;
with Stand;  use Stand;

package body Nmake is

   function Make_Unused_At_Start (Sloc : Source_Ptr)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Unused_At_Start, Sloc);
   begin
      return N;
   end Make_Unused_At_Start;

   function Make_Unused_At_End (Sloc : Source_Ptr)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Unused_At_End, Sloc);
   begin
      return N;
   end Make_Unused_At_End;

   function Make_Identifier (Sloc : Source_Ptr;
      Chars                        : Name_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Identifier, Sloc);
   begin
      Set_Chars (N, Chars);
      return N;
   end Make_Identifier;

   function Make_Integer_Literal (Sloc : Source_Ptr;
      Intval                       : Uint)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Integer_Literal, Sloc);
   begin
      Set_Intval (N, Intval);
      return N;
   end Make_Integer_Literal;

   function Make_Real_Literal (Sloc : Source_Ptr;
      Realval                      : Ureal)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Real_Literal, Sloc);
   begin
      Set_Realval (N, Realval);
      return N;
   end Make_Real_Literal;

   function Make_Character_Literal (Sloc : Source_Ptr;
      Chars                        : Name_Id;
      Char_Literal_Value           : Uint)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Character_Literal, Sloc);
   begin
      Set_Chars (N, Chars);
      Set_Char_Literal_Value (N, Char_Literal_Value);
      return N;
   end Make_Character_Literal;

   function Make_String_Literal (Sloc : Source_Ptr;
      Strval                       : String_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_String_Literal, Sloc);
   begin
      Set_Strval (N, Strval);
      return N;
   end Make_String_Literal;

   function Make_Pragma (Sloc : Source_Ptr;
      Chars                        : Name_Id;
      Pragma_Argument_Associations : List_Id := No_List;
      Debug_Statement              : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Pragma, Sloc);
   begin
      Set_Chars (N, Chars);
      Set_Pragma_Argument_Associations
        (N, Pragma_Argument_Associations);
      Set_Debug_Statement (N, Debug_Statement);
      return N;
   end Make_Pragma;

   function Make_Pragma_Argument_Association (Sloc : Source_Ptr;
      Chars                        : Name_Id := No_Name;
      Expression                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Pragma_Argument_Association, Sloc);
   begin
      Set_Chars (N, Chars);
      Set_Expression (N, Expression);
      return N;
   end Make_Pragma_Argument_Association;

   function Make_Defining_Identifier (Sloc : Source_Ptr;
      Chars                        : Name_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Entity (N_Defining_Identifier, Sloc);
   begin
      Set_Chars (N, Chars);
      return N;
   end Make_Defining_Identifier;

   function Make_Full_Type_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Discriminant_Specifications  : List_Id := No_List;
      Type_Definition              : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Full_Type_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Discriminant_Specifications (N, Discriminant_Specifications);
      Set_Type_Definition (N, Type_Definition);
      return N;
   end Make_Full_Type_Declaration;

   function Make_Subtype_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Null_Exclusion_Present       : Boolean := False;
      Subtype_Indication           : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Subtype_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Null_Exclusion_Present (N, Null_Exclusion_Present);
      Set_Subtype_Indication (N, Subtype_Indication);
      return N;
   end Make_Subtype_Declaration;

   function Make_Subtype_Indication (Sloc : Source_Ptr;
      Subtype_Mark                 : Node_Id;
      Constraint                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Subtype_Indication, Sloc);
   begin
      Set_Subtype_Mark (N, Subtype_Mark);
      Set_Constraint (N, Constraint);
      return N;
   end Make_Subtype_Indication;

   function Make_Object_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Aliased_Present              : Boolean := False;
      Constant_Present             : Boolean := False;
      Null_Exclusion_Present       : Boolean := False;
      Object_Definition            : Node_Id;
      Expression                   : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Object_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Aliased_Present (N, Aliased_Present);
      Set_Constant_Present (N, Constant_Present);
      Set_Null_Exclusion_Present (N, Null_Exclusion_Present);
      Set_Object_Definition (N, Object_Definition);
      Set_Expression (N, Expression);
      return N;
   end Make_Object_Declaration;

   function Make_Number_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Expression                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Number_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Expression (N, Expression);
      return N;
   end Make_Number_Declaration;

   function Make_Derived_Type_Definition (Sloc : Source_Ptr;
      Abstract_Present             : Boolean := False;
      Null_Exclusion_Present       : Boolean := False;
      Subtype_Indication           : Node_Id;
      Record_Extension_Part        : Node_Id := Empty;
      Limited_Present              : Boolean := False;
      Task_Present                 : Boolean := False;
      Protected_Present            : Boolean := False;
      Synchronized_Present         : Boolean := False;
      Interface_List               : List_Id := No_List;
      Interface_Present            : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Derived_Type_Definition, Sloc);
   begin
      Set_Abstract_Present (N, Abstract_Present);
      Set_Null_Exclusion_Present (N, Null_Exclusion_Present);
      Set_Subtype_Indication (N, Subtype_Indication);
      Set_Record_Extension_Part (N, Record_Extension_Part);
      Set_Limited_Present (N, Limited_Present);
      Set_Task_Present (N, Task_Present);
      Set_Protected_Present (N, Protected_Present);
      Set_Synchronized_Present (N, Synchronized_Present);
      Set_Interface_List (N, Interface_List);
      Set_Interface_Present (N, Interface_Present);
      return N;
   end Make_Derived_Type_Definition;

   function Make_Range_Constraint (Sloc : Source_Ptr;
      Range_Expression             : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Range_Constraint, Sloc);
   begin
      Set_Range_Expression (N, Range_Expression);
      return N;
   end Make_Range_Constraint;

   function Make_Range (Sloc : Source_Ptr;
      Low_Bound                    : Node_Id;
      High_Bound                   : Node_Id;
      Includes_Infinities          : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Range, Sloc);
   begin
      Set_Low_Bound (N, Low_Bound);
      Set_High_Bound (N, High_Bound);
      Set_Includes_Infinities (N, Includes_Infinities);
      return N;
   end Make_Range;

   function Make_Enumeration_Type_Definition (Sloc : Source_Ptr;
      Literals                     : List_Id;
      End_Label                    : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Enumeration_Type_Definition, Sloc);
   begin
      Set_Literals (N, Literals);
      Set_End_Label (N, End_Label);
      return N;
   end Make_Enumeration_Type_Definition;

   function Make_Defining_Character_Literal (Sloc : Source_Ptr;
      Chars                        : Name_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Entity (N_Defining_Character_Literal, Sloc);
   begin
      Set_Chars (N, Chars);
      return N;
   end Make_Defining_Character_Literal;

   function Make_Signed_Integer_Type_Definition (Sloc : Source_Ptr;
      Low_Bound                    : Node_Id;
      High_Bound                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Signed_Integer_Type_Definition, Sloc);
   begin
      Set_Low_Bound (N, Low_Bound);
      Set_High_Bound (N, High_Bound);
      return N;
   end Make_Signed_Integer_Type_Definition;

   function Make_Modular_Type_Definition (Sloc : Source_Ptr;
      Expression                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Modular_Type_Definition, Sloc);
   begin
      Set_Expression (N, Expression);
      return N;
   end Make_Modular_Type_Definition;

   function Make_Floating_Point_Definition (Sloc : Source_Ptr;
      Digits_Expression            : Node_Id;
      Real_Range_Specification     : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Floating_Point_Definition, Sloc);
   begin
      Set_Digits_Expression (N, Digits_Expression);
      Set_Real_Range_Specification (N, Real_Range_Specification);
      return N;
   end Make_Floating_Point_Definition;

   function Make_Real_Range_Specification (Sloc : Source_Ptr;
      Low_Bound                    : Node_Id;
      High_Bound                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Real_Range_Specification, Sloc);
   begin
      Set_Low_Bound (N, Low_Bound);
      Set_High_Bound (N, High_Bound);
      return N;
   end Make_Real_Range_Specification;

   function Make_Ordinary_Fixed_Point_Definition (Sloc : Source_Ptr;
      Delta_Expression             : Node_Id;
      Real_Range_Specification     : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Ordinary_Fixed_Point_Definition, Sloc);
   begin
      Set_Delta_Expression (N, Delta_Expression);
      Set_Real_Range_Specification (N, Real_Range_Specification);
      return N;
   end Make_Ordinary_Fixed_Point_Definition;

   function Make_Decimal_Fixed_Point_Definition (Sloc : Source_Ptr;
      Delta_Expression             : Node_Id;
      Digits_Expression            : Node_Id;
      Real_Range_Specification     : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Decimal_Fixed_Point_Definition, Sloc);
   begin
      Set_Delta_Expression (N, Delta_Expression);
      Set_Digits_Expression (N, Digits_Expression);
      Set_Real_Range_Specification (N, Real_Range_Specification);
      return N;
   end Make_Decimal_Fixed_Point_Definition;

   function Make_Digits_Constraint (Sloc : Source_Ptr;
      Digits_Expression            : Node_Id;
      Range_Constraint             : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Digits_Constraint, Sloc);
   begin
      Set_Digits_Expression (N, Digits_Expression);
      Set_Range_Constraint (N, Range_Constraint);
      return N;
   end Make_Digits_Constraint;

   function Make_Unconstrained_Array_Definition (Sloc : Source_Ptr;
      Subtype_Marks                : List_Id;
      Component_Definition         : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Unconstrained_Array_Definition, Sloc);
   begin
      Set_Subtype_Marks (N, Subtype_Marks);
      Set_Component_Definition (N, Component_Definition);
      return N;
   end Make_Unconstrained_Array_Definition;

   function Make_Constrained_Array_Definition (Sloc : Source_Ptr;
      Discrete_Subtype_Definitions : List_Id;
      Component_Definition         : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Constrained_Array_Definition, Sloc);
   begin
      Set_Discrete_Subtype_Definitions
        (N, Discrete_Subtype_Definitions);
      Set_Component_Definition (N, Component_Definition);
      return N;
   end Make_Constrained_Array_Definition;

   function Make_Component_Definition (Sloc : Source_Ptr;
      Aliased_Present              : Boolean := False;
      Null_Exclusion_Present       : Boolean := False;
      Subtype_Indication           : Node_Id := Empty;
      Access_Definition            : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Component_Definition, Sloc);
   begin
      Set_Aliased_Present (N, Aliased_Present);
      Set_Null_Exclusion_Present (N, Null_Exclusion_Present);
      Set_Subtype_Indication (N, Subtype_Indication);
      Set_Access_Definition (N, Access_Definition);
      return N;
   end Make_Component_Definition;

   function Make_Discriminant_Specification (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Null_Exclusion_Present       : Boolean := False;
      Discriminant_Type            : Node_Id;
      Expression                   : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Discriminant_Specification, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Null_Exclusion_Present (N, Null_Exclusion_Present);
      Set_Discriminant_Type (N, Discriminant_Type);
      Set_Expression (N, Expression);
      return N;
   end Make_Discriminant_Specification;

   function Make_Index_Or_Discriminant_Constraint (Sloc : Source_Ptr;
      Constraints                  : List_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Index_Or_Discriminant_Constraint, Sloc);
   begin
      Set_Constraints (N, Constraints);
      return N;
   end Make_Index_Or_Discriminant_Constraint;

   function Make_Discriminant_Association (Sloc : Source_Ptr;
      Selector_Names               : List_Id;
      Expression                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Discriminant_Association, Sloc);
   begin
      Set_Selector_Names (N, Selector_Names);
      Set_Expression (N, Expression);
      return N;
   end Make_Discriminant_Association;

   function Make_Record_Definition (Sloc : Source_Ptr;
      End_Label                    : Node_Id := Empty;
      Abstract_Present             : Boolean := False;
      Tagged_Present               : Boolean := False;
      Limited_Present              : Boolean := False;
      Component_List               : Node_Id;
      Null_Present                 : Boolean := False;
      Task_Present                 : Boolean := False;
      Protected_Present            : Boolean := False;
      Synchronized_Present         : Boolean := False;
      Interface_Present            : Boolean := False;
      Interface_List               : List_Id := No_List)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Record_Definition, Sloc);
   begin
      Set_End_Label (N, End_Label);
      Set_Abstract_Present (N, Abstract_Present);
      Set_Tagged_Present (N, Tagged_Present);
      Set_Limited_Present (N, Limited_Present);
      Set_Component_List (N, Component_List);
      Set_Null_Present (N, Null_Present);
      Set_Task_Present (N, Task_Present);
      Set_Protected_Present (N, Protected_Present);
      Set_Synchronized_Present (N, Synchronized_Present);
      Set_Interface_Present (N, Interface_Present);
      Set_Interface_List (N, Interface_List);
      return N;
   end Make_Record_Definition;

   function Make_Component_List (Sloc : Source_Ptr;
      Component_Items              : List_Id;
      Variant_Part                 : Node_Id := Empty;
      Null_Present                 : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Component_List, Sloc);
   begin
      Set_Component_Items (N, Component_Items);
      Set_Variant_Part (N, Variant_Part);
      Set_Null_Present (N, Null_Present);
      return N;
   end Make_Component_List;

   function Make_Component_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Component_Definition         : Node_Id;
      Expression                   : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Component_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Component_Definition (N, Component_Definition);
      Set_Expression (N, Expression);
      return N;
   end Make_Component_Declaration;

   function Make_Variant_Part (Sloc : Source_Ptr;
      Name                         : Node_Id;
      Variants                     : List_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Variant_Part, Sloc);
   begin
      Set_Name (N, Name);
      Set_Variants (N, Variants);
      return N;
   end Make_Variant_Part;

   function Make_Variant (Sloc : Source_Ptr;
      Discrete_Choices             : List_Id;
      Component_List               : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Variant, Sloc);
   begin
      Set_Discrete_Choices (N, Discrete_Choices);
      Set_Component_List (N, Component_List);
      return N;
   end Make_Variant;

   function Make_Others_Choice (Sloc : Source_Ptr)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Others_Choice, Sloc);
   begin
      return N;
   end Make_Others_Choice;

   function Make_Access_To_Object_Definition (Sloc : Source_Ptr;
      All_Present                  : Boolean := False;
      Null_Exclusion_Present       : Boolean := False;
      Subtype_Indication           : Node_Id;
      Constant_Present             : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Access_To_Object_Definition, Sloc);
   begin
      Set_All_Present (N, All_Present);
      Set_Null_Exclusion_Present (N, Null_Exclusion_Present);
      Set_Subtype_Indication (N, Subtype_Indication);
      Set_Constant_Present (N, Constant_Present);
      return N;
   end Make_Access_To_Object_Definition;

   function Make_Access_Function_Definition (Sloc : Source_Ptr;
      Null_Exclusion_Present       : Boolean := False;
      Protected_Present            : Boolean := False;
      Parameter_Specifications     : List_Id := No_List;
      Result_Definition            : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Access_Function_Definition, Sloc);
   begin
      Set_Null_Exclusion_Present (N, Null_Exclusion_Present);
      Set_Protected_Present (N, Protected_Present);
      Set_Parameter_Specifications (N, Parameter_Specifications);
      Set_Result_Definition (N, Result_Definition);
      return N;
   end Make_Access_Function_Definition;

   function Make_Access_Procedure_Definition (Sloc : Source_Ptr;
      Null_Exclusion_Present       : Boolean := False;
      Protected_Present            : Boolean := False;
      Parameter_Specifications     : List_Id := No_List)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Access_Procedure_Definition, Sloc);
   begin
      Set_Null_Exclusion_Present (N, Null_Exclusion_Present);
      Set_Protected_Present (N, Protected_Present);
      Set_Parameter_Specifications (N, Parameter_Specifications);
      return N;
   end Make_Access_Procedure_Definition;

   function Make_Access_Definition (Sloc : Source_Ptr;
      Null_Exclusion_Present       : Boolean := False;
      All_Present                  : Boolean := False;
      Constant_Present             : Boolean := False;
      Subtype_Mark                 : Node_Id;
      Access_To_Subprogram_Definition : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Access_Definition, Sloc);
   begin
      Set_Null_Exclusion_Present (N, Null_Exclusion_Present);
      Set_All_Present (N, All_Present);
      Set_Constant_Present (N, Constant_Present);
      Set_Subtype_Mark (N, Subtype_Mark);
      Set_Access_To_Subprogram_Definition
        (N, Access_To_Subprogram_Definition);
      return N;
   end Make_Access_Definition;

   function Make_Incomplete_Type_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Discriminant_Specifications  : List_Id := No_List;
      Unknown_Discriminants_Present : Boolean := False;
      Tagged_Present               : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Incomplete_Type_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Discriminant_Specifications (N, Discriminant_Specifications);
      Set_Unknown_Discriminants_Present
        (N, Unknown_Discriminants_Present);
      Set_Tagged_Present (N, Tagged_Present);
      return N;
   end Make_Incomplete_Type_Declaration;

   function Make_Explicit_Dereference (Sloc : Source_Ptr;
      Prefix                       : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Explicit_Dereference, Sloc);
   begin
      Set_Prefix (N, Prefix);
      return N;
   end Make_Explicit_Dereference;

   function Make_Indexed_Component (Sloc : Source_Ptr;
      Prefix                       : Node_Id;
      Expressions                  : List_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Indexed_Component, Sloc);
   begin
      Set_Prefix (N, Prefix);
      Set_Expressions (N, Expressions);
      return N;
   end Make_Indexed_Component;

   function Make_Slice (Sloc : Source_Ptr;
      Prefix                       : Node_Id;
      Discrete_Range               : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Slice, Sloc);
   begin
      Set_Prefix (N, Prefix);
      Set_Discrete_Range (N, Discrete_Range);
      return N;
   end Make_Slice;

   function Make_Selected_Component (Sloc : Source_Ptr;
      Prefix                       : Node_Id;
      Selector_Name                : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Selected_Component, Sloc);
   begin
      Set_Prefix (N, Prefix);
      Set_Selector_Name (N, Selector_Name);
      return N;
   end Make_Selected_Component;

   function Make_Attribute_Reference (Sloc : Source_Ptr;
      Prefix                       : Node_Id;
      Attribute_Name               : Name_Id;
      Expressions                  : List_Id := No_List;
      Must_Be_Byte_Aligned         : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Attribute_Reference, Sloc);
   begin
      Set_Prefix (N, Prefix);
      Set_Attribute_Name (N, Attribute_Name);
      Set_Expressions (N, Expressions);
      Set_Must_Be_Byte_Aligned (N, Must_Be_Byte_Aligned);
      return N;
   end Make_Attribute_Reference;

   function Make_Aggregate (Sloc : Source_Ptr;
      Expressions                  : List_Id := No_List;
      Component_Associations       : List_Id := No_List;
      Null_Record_Present          : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Aggregate, Sloc);
   begin
      Set_Expressions (N, Expressions);
      Set_Component_Associations (N, Component_Associations);
      Set_Null_Record_Present (N, Null_Record_Present);
      return N;
   end Make_Aggregate;

   function Make_Component_Association (Sloc : Source_Ptr;
      Choices                      : List_Id;
      Expression                   : Node_Id;
      Box_Present                  : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Component_Association, Sloc);
   begin
      Set_Choices (N, Choices);
      Set_Expression (N, Expression);
      Set_Box_Present (N, Box_Present);
      return N;
   end Make_Component_Association;

   function Make_Extension_Aggregate (Sloc : Source_Ptr;
      Ancestor_Part                : Node_Id;
      Expressions                  : List_Id := No_List;
      Component_Associations       : List_Id := No_List;
      Null_Record_Present          : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Extension_Aggregate, Sloc);
   begin
      Set_Ancestor_Part (N, Ancestor_Part);
      Set_Expressions (N, Expressions);
      Set_Component_Associations (N, Component_Associations);
      Set_Null_Record_Present (N, Null_Record_Present);
      return N;
   end Make_Extension_Aggregate;

   function Make_Null (Sloc : Source_Ptr)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Null, Sloc);
   begin
      return N;
   end Make_Null;

   function Make_And_Then (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_And_Then, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      return N;
   end Make_And_Then;

   function Make_Or_Else (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Or_Else, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      return N;
   end Make_Or_Else;

   function Make_In (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_In, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      return N;
   end Make_In;

   function Make_Not_In (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Not_In, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      return N;
   end Make_Not_In;

   function Make_Op_And (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_And, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_And);
      Set_Entity (N, Standard_Op_And);
      return N;
   end Make_Op_And;

   function Make_Op_Or (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Or, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Or);
      Set_Entity (N, Standard_Op_Or);
      return N;
   end Make_Op_Or;

   function Make_Op_Xor (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Xor, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Xor);
      Set_Entity (N, Standard_Op_Xor);
      return N;
   end Make_Op_Xor;

   function Make_Op_Eq (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Eq, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Eq);
      Set_Entity (N, Standard_Op_Eq);
      return N;
   end Make_Op_Eq;

   function Make_Op_Ne (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Ne, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Ne);
      Set_Entity (N, Standard_Op_Ne);
      return N;
   end Make_Op_Ne;

   function Make_Op_Lt (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Lt, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Lt);
      Set_Entity (N, Standard_Op_Lt);
      return N;
   end Make_Op_Lt;

   function Make_Op_Le (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Le, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Le);
      Set_Entity (N, Standard_Op_Le);
      return N;
   end Make_Op_Le;

   function Make_Op_Gt (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Gt, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Gt);
      Set_Entity (N, Standard_Op_Gt);
      return N;
   end Make_Op_Gt;

   function Make_Op_Ge (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Ge, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Ge);
      Set_Entity (N, Standard_Op_Ge);
      return N;
   end Make_Op_Ge;

   function Make_Op_Add (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Add, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Add);
      Set_Entity (N, Standard_Op_Add);
      return N;
   end Make_Op_Add;

   function Make_Op_Subtract (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Subtract, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Subtract);
      Set_Entity (N, Standard_Op_Subtract);
      return N;
   end Make_Op_Subtract;

   function Make_Op_Concat (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Concat, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Concat);
      Set_Entity (N, Standard_Op_Concat);
      return N;
   end Make_Op_Concat;

   function Make_Op_Multiply (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Multiply, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Multiply);
      Set_Entity (N, Standard_Op_Multiply);
      return N;
   end Make_Op_Multiply;

   function Make_Op_Divide (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Divide, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Divide);
      Set_Entity (N, Standard_Op_Divide);
      return N;
   end Make_Op_Divide;

   function Make_Op_Mod (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Mod, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Mod);
      Set_Entity (N, Standard_Op_Mod);
      return N;
   end Make_Op_Mod;

   function Make_Op_Rem (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Rem, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Rem);
      Set_Entity (N, Standard_Op_Rem);
      return N;
   end Make_Op_Rem;

   function Make_Op_Expon (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Expon, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Expon);
      Set_Entity (N, Standard_Op_Expon);
      return N;
   end Make_Op_Expon;

   function Make_Op_Plus (Sloc : Source_Ptr;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Plus, Sloc);
   begin
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Add);
      Set_Entity (N, Standard_Op_Plus);
      return N;
   end Make_Op_Plus;

   function Make_Op_Minus (Sloc : Source_Ptr;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Minus, Sloc);
   begin
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Subtract);
      Set_Entity (N, Standard_Op_Minus);
      return N;
   end Make_Op_Minus;

   function Make_Op_Abs (Sloc : Source_Ptr;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Abs, Sloc);
   begin
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Abs);
      Set_Entity (N, Standard_Op_Abs);
      return N;
   end Make_Op_Abs;

   function Make_Op_Not (Sloc : Source_Ptr;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Not, Sloc);
   begin
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Op_Not);
      Set_Entity (N, Standard_Op_Not);
      return N;
   end Make_Op_Not;

   function Make_Type_Conversion (Sloc : Source_Ptr;
      Subtype_Mark                 : Node_Id;
      Expression                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Type_Conversion, Sloc);
   begin
      Set_Subtype_Mark (N, Subtype_Mark);
      Set_Expression (N, Expression);
      return N;
   end Make_Type_Conversion;

   function Make_Qualified_Expression (Sloc : Source_Ptr;
      Subtype_Mark                 : Node_Id;
      Expression                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Qualified_Expression, Sloc);
   begin
      Set_Subtype_Mark (N, Subtype_Mark);
      Set_Expression (N, Expression);
      return N;
   end Make_Qualified_Expression;

   function Make_Allocator (Sloc : Source_Ptr;
      Expression                   : Node_Id;
      Null_Exclusion_Present       : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Allocator, Sloc);
   begin
      Set_Expression (N, Expression);
      Set_Null_Exclusion_Present (N, Null_Exclusion_Present);
      return N;
   end Make_Allocator;

   function Make_Null_Statement (Sloc : Source_Ptr)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Null_Statement, Sloc);
   begin
      return N;
   end Make_Null_Statement;

   function Make_Label (Sloc : Source_Ptr;
      Identifier                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Label, Sloc);
   begin
      Set_Identifier (N, Identifier);
      return N;
   end Make_Label;

   function Make_Assignment_Statement (Sloc : Source_Ptr;
      Name                         : Node_Id;
      Expression                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Assignment_Statement, Sloc);
   begin
      Set_Name (N, Name);
      Set_Expression (N, Expression);
      return N;
   end Make_Assignment_Statement;

   function Make_If_Statement (Sloc : Source_Ptr;
      Condition                    : Node_Id;
      Then_Statements              : List_Id;
      Elsif_Parts                  : List_Id := No_List;
      Else_Statements              : List_Id := No_List;
      End_Span                     : Uint := No_Uint)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_If_Statement, Sloc);
   begin
      Set_Condition (N, Condition);
      Set_Then_Statements (N, Then_Statements);
      Set_Elsif_Parts (N, Elsif_Parts);
      Set_Else_Statements (N, Else_Statements);
      Set_End_Span (N, End_Span);
      return N;
   end Make_If_Statement;

   function Make_Elsif_Part (Sloc : Source_Ptr;
      Condition                    : Node_Id;
      Then_Statements              : List_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Elsif_Part, Sloc);
   begin
      Set_Condition (N, Condition);
      Set_Then_Statements (N, Then_Statements);
      return N;
   end Make_Elsif_Part;

   function Make_Case_Statement (Sloc : Source_Ptr;
      Expression                   : Node_Id;
      Alternatives                 : List_Id;
      End_Span                     : Uint := No_Uint)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Case_Statement, Sloc);
   begin
      Set_Expression (N, Expression);
      Set_Alternatives (N, Alternatives);
      Set_End_Span (N, End_Span);
      return N;
   end Make_Case_Statement;

   function Make_Case_Statement_Alternative (Sloc : Source_Ptr;
      Discrete_Choices             : List_Id;
      Statements                   : List_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Case_Statement_Alternative, Sloc);
   begin
      Set_Discrete_Choices (N, Discrete_Choices);
      Set_Statements (N, Statements);
      return N;
   end Make_Case_Statement_Alternative;

   function Make_Loop_Statement (Sloc : Source_Ptr;
      Identifier                   : Node_Id := Empty;
      Iteration_Scheme             : Node_Id := Empty;
      Statements                   : List_Id;
      End_Label                    : Node_Id;
      Has_Created_Identifier       : Boolean := False;
      Is_Null_Loop                 : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Loop_Statement, Sloc);
   begin
      Set_Identifier (N, Identifier);
      Set_Iteration_Scheme (N, Iteration_Scheme);
      Set_Statements (N, Statements);
      Set_End_Label (N, End_Label);
      Set_Has_Created_Identifier (N, Has_Created_Identifier);
      Set_Is_Null_Loop (N, Is_Null_Loop);
      return N;
   end Make_Loop_Statement;

   function Make_Iteration_Scheme (Sloc : Source_Ptr;
      Condition                    : Node_Id := Empty;
      Loop_Parameter_Specification : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Iteration_Scheme, Sloc);
   begin
      Set_Condition (N, Condition);
      Set_Loop_Parameter_Specification
        (N, Loop_Parameter_Specification);
      return N;
   end Make_Iteration_Scheme;

   function Make_Loop_Parameter_Specification (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Reverse_Present              : Boolean := False;
      Discrete_Subtype_Definition  : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Loop_Parameter_Specification, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Reverse_Present (N, Reverse_Present);
      Set_Discrete_Subtype_Definition (N, Discrete_Subtype_Definition);
      return N;
   end Make_Loop_Parameter_Specification;

   function Make_Block_Statement (Sloc : Source_Ptr;
      Identifier                   : Node_Id := Empty;
      Declarations                 : List_Id := No_List;
      Handled_Statement_Sequence   : Node_Id;
      Has_Created_Identifier       : Boolean := False;
      Is_Task_Allocation_Block     : Boolean := False;
      Is_Asynchronous_Call_Block   : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Block_Statement, Sloc);
   begin
      Set_Identifier (N, Identifier);
      Set_Declarations (N, Declarations);
      Set_Handled_Statement_Sequence (N, Handled_Statement_Sequence);
      Set_Has_Created_Identifier (N, Has_Created_Identifier);
      Set_Is_Task_Allocation_Block (N, Is_Task_Allocation_Block);
      Set_Is_Asynchronous_Call_Block (N, Is_Asynchronous_Call_Block);
      return N;
   end Make_Block_Statement;

   function Make_Exit_Statement (Sloc : Source_Ptr;
      Name                         : Node_Id := Empty;
      Condition                    : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Exit_Statement, Sloc);
   begin
      Set_Name (N, Name);
      Set_Condition (N, Condition);
      return N;
   end Make_Exit_Statement;

   function Make_Goto_Statement (Sloc : Source_Ptr;
      Name                         : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Goto_Statement, Sloc);
   begin
      Set_Name (N, Name);
      return N;
   end Make_Goto_Statement;

   function Make_Subprogram_Declaration (Sloc : Source_Ptr;
      Specification                : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Subprogram_Declaration, Sloc);
   begin
      Set_Specification (N, Specification);
      return N;
   end Make_Subprogram_Declaration;

   function Make_Abstract_Subprogram_Declaration (Sloc : Source_Ptr;
      Specification                : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Abstract_Subprogram_Declaration, Sloc);
   begin
      Set_Specification (N, Specification);
      return N;
   end Make_Abstract_Subprogram_Declaration;

   function Make_Function_Specification (Sloc : Source_Ptr;
      Defining_Unit_Name           : Node_Id;
      Parameter_Specifications     : List_Id := No_List;
      Null_Exclusion_Present       : Boolean := False;
      Result_Definition            : Node_Id;
      Must_Override                : Boolean := False;
      Must_Not_Override            : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Function_Specification, Sloc);
   begin
      Set_Defining_Unit_Name (N, Defining_Unit_Name);
      Set_Parameter_Specifications (N, Parameter_Specifications);
      Set_Null_Exclusion_Present (N, Null_Exclusion_Present);
      Set_Result_Definition (N, Result_Definition);
      Set_Must_Override (N, Must_Override);
      Set_Must_Not_Override (N, Must_Not_Override);
      return N;
   end Make_Function_Specification;

   function Make_Procedure_Specification (Sloc : Source_Ptr;
      Defining_Unit_Name           : Node_Id;
      Parameter_Specifications     : List_Id := No_List;
      Null_Present                 : Boolean := False;
      Must_Override                : Boolean := False;
      Must_Not_Override            : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Procedure_Specification, Sloc);
   begin
      Set_Defining_Unit_Name (N, Defining_Unit_Name);
      Set_Parameter_Specifications (N, Parameter_Specifications);
      Set_Null_Present (N, Null_Present);
      Set_Must_Override (N, Must_Override);
      Set_Must_Not_Override (N, Must_Not_Override);
      return N;
   end Make_Procedure_Specification;

   function Make_Designator (Sloc : Source_Ptr;
      Name                         : Node_Id;
      Identifier                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Designator, Sloc);
   begin
      Set_Name (N, Name);
      Set_Identifier (N, Identifier);
      return N;
   end Make_Designator;

   function Make_Defining_Program_Unit_Name (Sloc : Source_Ptr;
      Name                         : Node_Id;
      Defining_Identifier          : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Defining_Program_Unit_Name, Sloc);
   begin
      Set_Name (N, Name);
      Set_Defining_Identifier (N, Defining_Identifier);
      return N;
   end Make_Defining_Program_Unit_Name;

   function Make_Operator_Symbol (Sloc : Source_Ptr;
      Chars                        : Name_Id;
      Strval                       : String_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Operator_Symbol, Sloc);
   begin
      Set_Chars (N, Chars);
      Set_Strval (N, Strval);
      return N;
   end Make_Operator_Symbol;

   function Make_Defining_Operator_Symbol (Sloc : Source_Ptr;
      Chars                        : Name_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Entity (N_Defining_Operator_Symbol, Sloc);
   begin
      Set_Chars (N, Chars);
      return N;
   end Make_Defining_Operator_Symbol;

   function Make_Parameter_Specification (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      In_Present                   : Boolean := False;
      Out_Present                  : Boolean := False;
      Null_Exclusion_Present       : Boolean := False;
      Parameter_Type               : Node_Id;
      Expression                   : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Parameter_Specification, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_In_Present (N, In_Present);
      Set_Out_Present (N, Out_Present);
      Set_Null_Exclusion_Present (N, Null_Exclusion_Present);
      Set_Parameter_Type (N, Parameter_Type);
      Set_Expression (N, Expression);
      return N;
   end Make_Parameter_Specification;

   function Make_Subprogram_Body (Sloc : Source_Ptr;
      Specification                : Node_Id;
      Declarations                 : List_Id;
      Handled_Statement_Sequence   : Node_Id;
      Bad_Is_Detected              : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Subprogram_Body, Sloc);
   begin
      Set_Specification (N, Specification);
      Set_Declarations (N, Declarations);
      Set_Handled_Statement_Sequence (N, Handled_Statement_Sequence);
      Set_Bad_Is_Detected (N, Bad_Is_Detected);
      return N;
   end Make_Subprogram_Body;

   function Make_Procedure_Call_Statement (Sloc : Source_Ptr;
      Name                         : Node_Id;
      Parameter_Associations       : List_Id := No_List)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Procedure_Call_Statement, Sloc);
   begin
      Set_Name (N, Name);
      Set_Parameter_Associations (N, Parameter_Associations);
      return N;
   end Make_Procedure_Call_Statement;

   function Make_Function_Call (Sloc : Source_Ptr;
      Name                         : Node_Id;
      Parameter_Associations       : List_Id := No_List)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Function_Call, Sloc);
   begin
      Set_Name (N, Name);
      Set_Parameter_Associations (N, Parameter_Associations);
      return N;
   end Make_Function_Call;

   function Make_Parameter_Association (Sloc : Source_Ptr;
      Selector_Name                : Node_Id;
      Explicit_Actual_Parameter    : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Parameter_Association, Sloc);
   begin
      Set_Selector_Name (N, Selector_Name);
      Set_Explicit_Actual_Parameter (N, Explicit_Actual_Parameter);
      return N;
   end Make_Parameter_Association;

   function Make_Return_Statement (Sloc : Source_Ptr;
      Expression                   : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Return_Statement, Sloc);
   begin
      Set_Expression (N, Expression);
      return N;
   end Make_Return_Statement;

   function Make_Package_Declaration (Sloc : Source_Ptr;
      Specification                : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Package_Declaration, Sloc);
   begin
      Set_Specification (N, Specification);
      return N;
   end Make_Package_Declaration;

   function Make_Package_Specification (Sloc : Source_Ptr;
      Defining_Unit_Name           : Node_Id;
      Visible_Declarations         : List_Id;
      Private_Declarations         : List_Id := No_List;
      End_Label                    : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Package_Specification, Sloc);
   begin
      Set_Defining_Unit_Name (N, Defining_Unit_Name);
      Set_Visible_Declarations (N, Visible_Declarations);
      Set_Private_Declarations (N, Private_Declarations);
      Set_End_Label (N, End_Label);
      return N;
   end Make_Package_Specification;

   function Make_Package_Body (Sloc : Source_Ptr;
      Defining_Unit_Name           : Node_Id;
      Declarations                 : List_Id;
      Handled_Statement_Sequence   : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Package_Body, Sloc);
   begin
      Set_Defining_Unit_Name (N, Defining_Unit_Name);
      Set_Declarations (N, Declarations);
      Set_Handled_Statement_Sequence (N, Handled_Statement_Sequence);
      return N;
   end Make_Package_Body;

   function Make_Private_Type_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Discriminant_Specifications  : List_Id := No_List;
      Unknown_Discriminants_Present : Boolean := False;
      Abstract_Present             : Boolean := False;
      Tagged_Present               : Boolean := False;
      Limited_Present              : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Private_Type_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Discriminant_Specifications (N, Discriminant_Specifications);
      Set_Unknown_Discriminants_Present
        (N, Unknown_Discriminants_Present);
      Set_Abstract_Present (N, Abstract_Present);
      Set_Tagged_Present (N, Tagged_Present);
      Set_Limited_Present (N, Limited_Present);
      return N;
   end Make_Private_Type_Declaration;

   function Make_Private_Extension_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Discriminant_Specifications  : List_Id := No_List;
      Unknown_Discriminants_Present : Boolean := False;
      Abstract_Present             : Boolean := False;
      Limited_Present              : Boolean := False;
      Subtype_Indication           : Node_Id;
      Interface_List               : List_Id := No_List)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Private_Extension_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Discriminant_Specifications (N, Discriminant_Specifications);
      Set_Unknown_Discriminants_Present
        (N, Unknown_Discriminants_Present);
      Set_Abstract_Present (N, Abstract_Present);
      Set_Limited_Present (N, Limited_Present);
      Set_Subtype_Indication (N, Subtype_Indication);
      Set_Interface_List (N, Interface_List);
      return N;
   end Make_Private_Extension_Declaration;

   function Make_Use_Package_Clause (Sloc : Source_Ptr;
      Names                        : List_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Use_Package_Clause, Sloc);
   begin
      Set_Names (N, Names);
      return N;
   end Make_Use_Package_Clause;

   function Make_Use_Type_Clause (Sloc : Source_Ptr;
      Subtype_Marks                : List_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Use_Type_Clause, Sloc);
   begin
      Set_Subtype_Marks (N, Subtype_Marks);
      return N;
   end Make_Use_Type_Clause;

   function Make_Object_Renaming_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Subtype_Mark                 : Node_Id := Empty;
      Access_Definition            : Node_Id := Empty;
      Name                         : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Object_Renaming_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Subtype_Mark (N, Subtype_Mark);
      Set_Access_Definition (N, Access_Definition);
      Set_Name (N, Name);
      return N;
   end Make_Object_Renaming_Declaration;

   function Make_Exception_Renaming_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Name                         : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Exception_Renaming_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Name (N, Name);
      return N;
   end Make_Exception_Renaming_Declaration;

   function Make_Package_Renaming_Declaration (Sloc : Source_Ptr;
      Defining_Unit_Name           : Node_Id;
      Name                         : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Package_Renaming_Declaration, Sloc);
   begin
      Set_Defining_Unit_Name (N, Defining_Unit_Name);
      Set_Name (N, Name);
      return N;
   end Make_Package_Renaming_Declaration;

   function Make_Subprogram_Renaming_Declaration (Sloc : Source_Ptr;
      Specification                : Node_Id;
      Name                         : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Subprogram_Renaming_Declaration, Sloc);
   begin
      Set_Specification (N, Specification);
      Set_Name (N, Name);
      return N;
   end Make_Subprogram_Renaming_Declaration;

   function Make_Generic_Package_Renaming_Declaration (Sloc : Source_Ptr;
      Defining_Unit_Name           : Node_Id;
      Name                         : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Generic_Package_Renaming_Declaration, Sloc);
   begin
      Set_Defining_Unit_Name (N, Defining_Unit_Name);
      Set_Name (N, Name);
      return N;
   end Make_Generic_Package_Renaming_Declaration;

   function Make_Generic_Procedure_Renaming_Declaration (Sloc : Source_Ptr;
      Defining_Unit_Name           : Node_Id;
      Name                         : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Generic_Procedure_Renaming_Declaration, Sloc);
   begin
      Set_Defining_Unit_Name (N, Defining_Unit_Name);
      Set_Name (N, Name);
      return N;
   end Make_Generic_Procedure_Renaming_Declaration;

   function Make_Generic_Function_Renaming_Declaration (Sloc : Source_Ptr;
      Defining_Unit_Name           : Node_Id;
      Name                         : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Generic_Function_Renaming_Declaration, Sloc);
   begin
      Set_Defining_Unit_Name (N, Defining_Unit_Name);
      Set_Name (N, Name);
      return N;
   end Make_Generic_Function_Renaming_Declaration;

   function Make_Task_Type_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Discriminant_Specifications  : List_Id := No_List;
      Interface_List               : List_Id := No_List;
      Task_Definition              : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Task_Type_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Discriminant_Specifications (N, Discriminant_Specifications);
      Set_Interface_List (N, Interface_List);
      Set_Task_Definition (N, Task_Definition);
      return N;
   end Make_Task_Type_Declaration;

   function Make_Single_Task_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Interface_List               : List_Id := No_List;
      Task_Definition              : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Single_Task_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Interface_List (N, Interface_List);
      Set_Task_Definition (N, Task_Definition);
      return N;
   end Make_Single_Task_Declaration;

   function Make_Task_Definition (Sloc : Source_Ptr;
      Visible_Declarations         : List_Id;
      Private_Declarations         : List_Id := No_List;
      End_Label                    : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Task_Definition, Sloc);
   begin
      Set_Visible_Declarations (N, Visible_Declarations);
      Set_Private_Declarations (N, Private_Declarations);
      Set_End_Label (N, End_Label);
      return N;
   end Make_Task_Definition;

   function Make_Task_Body (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Declarations                 : List_Id;
      Handled_Statement_Sequence   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Task_Body, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Declarations (N, Declarations);
      Set_Handled_Statement_Sequence (N, Handled_Statement_Sequence);
      return N;
   end Make_Task_Body;

   function Make_Protected_Type_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Discriminant_Specifications  : List_Id := No_List;
      Interface_List               : List_Id := No_List;
      Protected_Definition         : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Protected_Type_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Discriminant_Specifications (N, Discriminant_Specifications);
      Set_Interface_List (N, Interface_List);
      Set_Protected_Definition (N, Protected_Definition);
      return N;
   end Make_Protected_Type_Declaration;

   function Make_Single_Protected_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Interface_List               : List_Id := No_List;
      Protected_Definition         : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Single_Protected_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Interface_List (N, Interface_List);
      Set_Protected_Definition (N, Protected_Definition);
      return N;
   end Make_Single_Protected_Declaration;

   function Make_Protected_Definition (Sloc : Source_Ptr;
      Visible_Declarations         : List_Id;
      Private_Declarations         : List_Id := No_List;
      End_Label                    : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Protected_Definition, Sloc);
   begin
      Set_Visible_Declarations (N, Visible_Declarations);
      Set_Private_Declarations (N, Private_Declarations);
      Set_End_Label (N, End_Label);
      return N;
   end Make_Protected_Definition;

   function Make_Protected_Body (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Declarations                 : List_Id;
      End_Label                    : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Protected_Body, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Declarations (N, Declarations);
      Set_End_Label (N, End_Label);
      return N;
   end Make_Protected_Body;

   function Make_Entry_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Discrete_Subtype_Definition  : Node_Id := Empty;
      Parameter_Specifications     : List_Id := No_List;
      Must_Override                : Boolean := False;
      Must_Not_Override            : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Entry_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Discrete_Subtype_Definition (N, Discrete_Subtype_Definition);
      Set_Parameter_Specifications (N, Parameter_Specifications);
      Set_Must_Override (N, Must_Override);
      Set_Must_Not_Override (N, Must_Not_Override);
      return N;
   end Make_Entry_Declaration;

   function Make_Accept_Statement (Sloc : Source_Ptr;
      Entry_Direct_Name            : Node_Id;
      Entry_Index                  : Node_Id := Empty;
      Parameter_Specifications     : List_Id := No_List;
      Handled_Statement_Sequence   : Node_Id;
      Declarations                 : List_Id := No_List)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Accept_Statement, Sloc);
   begin
      Set_Entry_Direct_Name (N, Entry_Direct_Name);
      Set_Entry_Index (N, Entry_Index);
      Set_Parameter_Specifications (N, Parameter_Specifications);
      Set_Handled_Statement_Sequence (N, Handled_Statement_Sequence);
      Set_Declarations (N, Declarations);
      return N;
   end Make_Accept_Statement;

   function Make_Entry_Body (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Entry_Body_Formal_Part       : Node_Id;
      Declarations                 : List_Id;
      Handled_Statement_Sequence   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Entry_Body, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Entry_Body_Formal_Part (N, Entry_Body_Formal_Part);
      Set_Declarations (N, Declarations);
      Set_Handled_Statement_Sequence (N, Handled_Statement_Sequence);
      return N;
   end Make_Entry_Body;

   function Make_Entry_Body_Formal_Part (Sloc : Source_Ptr;
      Entry_Index_Specification    : Node_Id := Empty;
      Parameter_Specifications     : List_Id := No_List;
      Condition                    : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Entry_Body_Formal_Part, Sloc);
   begin
      Set_Entry_Index_Specification (N, Entry_Index_Specification);
      Set_Parameter_Specifications (N, Parameter_Specifications);
      Set_Condition (N, Condition);
      return N;
   end Make_Entry_Body_Formal_Part;

   function Make_Entry_Index_Specification (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Discrete_Subtype_Definition  : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Entry_Index_Specification, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Discrete_Subtype_Definition (N, Discrete_Subtype_Definition);
      return N;
   end Make_Entry_Index_Specification;

   function Make_Entry_Call_Statement (Sloc : Source_Ptr;
      Name                         : Node_Id;
      Parameter_Associations       : List_Id := No_List)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Entry_Call_Statement, Sloc);
   begin
      Set_Name (N, Name);
      Set_Parameter_Associations (N, Parameter_Associations);
      return N;
   end Make_Entry_Call_Statement;

   function Make_Requeue_Statement (Sloc : Source_Ptr;
      Name                         : Node_Id;
      Abort_Present                : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Requeue_Statement, Sloc);
   begin
      Set_Name (N, Name);
      Set_Abort_Present (N, Abort_Present);
      return N;
   end Make_Requeue_Statement;

   function Make_Delay_Until_Statement (Sloc : Source_Ptr;
      Expression                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Delay_Until_Statement, Sloc);
   begin
      Set_Expression (N, Expression);
      return N;
   end Make_Delay_Until_Statement;

   function Make_Delay_Relative_Statement (Sloc : Source_Ptr;
      Expression                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Delay_Relative_Statement, Sloc);
   begin
      Set_Expression (N, Expression);
      return N;
   end Make_Delay_Relative_Statement;

   function Make_Selective_Accept (Sloc : Source_Ptr;
      Select_Alternatives          : List_Id;
      Else_Statements              : List_Id := No_List)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Selective_Accept, Sloc);
   begin
      Set_Select_Alternatives (N, Select_Alternatives);
      Set_Else_Statements (N, Else_Statements);
      return N;
   end Make_Selective_Accept;

   function Make_Accept_Alternative (Sloc : Source_Ptr;
      Accept_Statement             : Node_Id;
      Condition                    : Node_Id := Empty;
      Statements                   : List_Id := Empty_List;
      Pragmas_Before               : List_Id := No_List)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Accept_Alternative, Sloc);
   begin
      Set_Accept_Statement (N, Accept_Statement);
      Set_Condition (N, Condition);
      Set_Statements (N, Statements);
      Set_Pragmas_Before (N, Pragmas_Before);
      return N;
   end Make_Accept_Alternative;

   function Make_Delay_Alternative (Sloc : Source_Ptr;
      Delay_Statement              : Node_Id;
      Condition                    : Node_Id := Empty;
      Statements                   : List_Id := Empty_List;
      Pragmas_Before               : List_Id := No_List)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Delay_Alternative, Sloc);
   begin
      Set_Delay_Statement (N, Delay_Statement);
      Set_Condition (N, Condition);
      Set_Statements (N, Statements);
      Set_Pragmas_Before (N, Pragmas_Before);
      return N;
   end Make_Delay_Alternative;

   function Make_Terminate_Alternative (Sloc : Source_Ptr;
      Condition                    : Node_Id := Empty;
      Pragmas_Before               : List_Id := No_List;
      Pragmas_After                : List_Id := No_List)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Terminate_Alternative, Sloc);
   begin
      Set_Condition (N, Condition);
      Set_Pragmas_Before (N, Pragmas_Before);
      Set_Pragmas_After (N, Pragmas_After);
      return N;
   end Make_Terminate_Alternative;

   function Make_Timed_Entry_Call (Sloc : Source_Ptr;
      Entry_Call_Alternative       : Node_Id;
      Delay_Alternative            : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Timed_Entry_Call, Sloc);
   begin
      Set_Entry_Call_Alternative (N, Entry_Call_Alternative);
      Set_Delay_Alternative (N, Delay_Alternative);
      return N;
   end Make_Timed_Entry_Call;

   function Make_Entry_Call_Alternative (Sloc : Source_Ptr;
      Entry_Call_Statement         : Node_Id;
      Statements                   : List_Id := Empty_List;
      Pragmas_Before               : List_Id := No_List)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Entry_Call_Alternative, Sloc);
   begin
      Set_Entry_Call_Statement (N, Entry_Call_Statement);
      Set_Statements (N, Statements);
      Set_Pragmas_Before (N, Pragmas_Before);
      return N;
   end Make_Entry_Call_Alternative;

   function Make_Conditional_Entry_Call (Sloc : Source_Ptr;
      Entry_Call_Alternative       : Node_Id;
      Else_Statements              : List_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Conditional_Entry_Call, Sloc);
   begin
      Set_Entry_Call_Alternative (N, Entry_Call_Alternative);
      Set_Else_Statements (N, Else_Statements);
      return N;
   end Make_Conditional_Entry_Call;

   function Make_Asynchronous_Select (Sloc : Source_Ptr;
      Triggering_Alternative       : Node_Id;
      Abortable_Part               : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Asynchronous_Select, Sloc);
   begin
      Set_Triggering_Alternative (N, Triggering_Alternative);
      Set_Abortable_Part (N, Abortable_Part);
      return N;
   end Make_Asynchronous_Select;

   function Make_Triggering_Alternative (Sloc : Source_Ptr;
      Triggering_Statement         : Node_Id;
      Statements                   : List_Id := Empty_List;
      Pragmas_Before               : List_Id := No_List)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Triggering_Alternative, Sloc);
   begin
      Set_Triggering_Statement (N, Triggering_Statement);
      Set_Statements (N, Statements);
      Set_Pragmas_Before (N, Pragmas_Before);
      return N;
   end Make_Triggering_Alternative;

   function Make_Abortable_Part (Sloc : Source_Ptr;
      Statements                   : List_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Abortable_Part, Sloc);
   begin
      Set_Statements (N, Statements);
      return N;
   end Make_Abortable_Part;

   function Make_Abort_Statement (Sloc : Source_Ptr;
      Names                        : List_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Abort_Statement, Sloc);
   begin
      Set_Names (N, Names);
      return N;
   end Make_Abort_Statement;

   function Make_Compilation_Unit (Sloc : Source_Ptr;
      Context_Items                : List_Id;
      Private_Present              : Boolean := False;
      Unit                         : Node_Id;
      Aux_Decls_Node               : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Compilation_Unit, Sloc);
   begin
      Set_Context_Items (N, Context_Items);
      Set_Private_Present (N, Private_Present);
      Set_Unit (N, Unit);
      Set_Aux_Decls_Node (N, Aux_Decls_Node);
      return N;
   end Make_Compilation_Unit;

   function Make_Compilation_Unit_Aux (Sloc : Source_Ptr;
      Declarations                 : List_Id := No_List;
      Actions                      : List_Id := No_List;
      Pragmas_After                : List_Id := No_List;
      Config_Pragmas               : List_Id := Empty_List)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Compilation_Unit_Aux, Sloc);
   begin
      Set_Declarations (N, Declarations);
      Set_Actions (N, Actions);
      Set_Pragmas_After (N, Pragmas_After);
      Set_Config_Pragmas (N, Config_Pragmas);
      return N;
   end Make_Compilation_Unit_Aux;

   function Make_With_Clause (Sloc : Source_Ptr;
      Name                         : Node_Id;
      First_Name                   : Boolean := True;
      Last_Name                    : Boolean := True;
      Private_Present              : Boolean := False;
      Limited_Present              : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_With_Clause, Sloc);
   begin
      Set_Name (N, Name);
      Set_First_Name (N, First_Name);
      Set_Last_Name (N, Last_Name);
      Set_Private_Present (N, Private_Present);
      Set_Limited_Present (N, Limited_Present);
      return N;
   end Make_With_Clause;

   function Make_With_Type_Clause (Sloc : Source_Ptr;
      Name                         : Node_Id;
      Tagged_Present               : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_With_Type_Clause, Sloc);
   begin
      Set_Name (N, Name);
      Set_Tagged_Present (N, Tagged_Present);
      return N;
   end Make_With_Type_Clause;

   function Make_Subprogram_Body_Stub (Sloc : Source_Ptr;
      Specification                : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Subprogram_Body_Stub, Sloc);
   begin
      Set_Specification (N, Specification);
      return N;
   end Make_Subprogram_Body_Stub;

   function Make_Package_Body_Stub (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Package_Body_Stub, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      return N;
   end Make_Package_Body_Stub;

   function Make_Task_Body_Stub (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Task_Body_Stub, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      return N;
   end Make_Task_Body_Stub;

   function Make_Protected_Body_Stub (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Protected_Body_Stub, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      return N;
   end Make_Protected_Body_Stub;

   function Make_Subunit (Sloc : Source_Ptr;
      Name                         : Node_Id;
      Proper_Body                  : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Subunit, Sloc);
   begin
      Set_Name (N, Name);
      Set_Proper_Body (N, Proper_Body);
      return N;
   end Make_Subunit;

   function Make_Exception_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Exception_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      return N;
   end Make_Exception_Declaration;

   function Make_Handled_Sequence_Of_Statements (Sloc : Source_Ptr;
      Statements                   : List_Id;
      End_Label                    : Node_Id := Empty;
      Exception_Handlers           : List_Id := No_List;
      At_End_Proc                  : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Handled_Sequence_Of_Statements, Sloc);
   begin
      Set_Statements (N, Statements);
      Set_End_Label (N, End_Label);
      Set_Exception_Handlers (N, Exception_Handlers);
      Set_At_End_Proc (N, At_End_Proc);
      return N;
   end Make_Handled_Sequence_Of_Statements;

   function Make_Exception_Handler (Sloc : Source_Ptr;
      Choice_Parameter             : Node_Id := Empty;
      Exception_Choices            : List_Id;
      Statements                   : List_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Exception_Handler, Sloc);
   begin
      Set_Choice_Parameter (N, Choice_Parameter);
      Set_Exception_Choices (N, Exception_Choices);
      Set_Statements (N, Statements);
      return N;
   end Make_Exception_Handler;

   function Make_Raise_Statement (Sloc : Source_Ptr;
      Name                         : Node_Id := Empty;
      Expression                   : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Raise_Statement, Sloc);
   begin
      Set_Name (N, Name);
      Set_Expression (N, Expression);
      return N;
   end Make_Raise_Statement;

   function Make_Generic_Subprogram_Declaration (Sloc : Source_Ptr;
      Specification                : Node_Id;
      Generic_Formal_Declarations  : List_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Generic_Subprogram_Declaration, Sloc);
   begin
      Set_Specification (N, Specification);
      Set_Generic_Formal_Declarations (N, Generic_Formal_Declarations);
      return N;
   end Make_Generic_Subprogram_Declaration;

   function Make_Generic_Package_Declaration (Sloc : Source_Ptr;
      Specification                : Node_Id;
      Generic_Formal_Declarations  : List_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Generic_Package_Declaration, Sloc);
   begin
      Set_Specification (N, Specification);
      Set_Generic_Formal_Declarations (N, Generic_Formal_Declarations);
      return N;
   end Make_Generic_Package_Declaration;

   function Make_Package_Instantiation (Sloc : Source_Ptr;
      Defining_Unit_Name           : Node_Id;
      Name                         : Node_Id;
      Generic_Associations         : List_Id := No_List)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Package_Instantiation, Sloc);
   begin
      Set_Defining_Unit_Name (N, Defining_Unit_Name);
      Set_Name (N, Name);
      Set_Generic_Associations (N, Generic_Associations);
      return N;
   end Make_Package_Instantiation;

   function Make_Procedure_Instantiation (Sloc : Source_Ptr;
      Defining_Unit_Name           : Node_Id;
      Name                         : Node_Id;
      Generic_Associations         : List_Id := No_List;
      Must_Override                : Boolean := False;
      Must_Not_Override            : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Procedure_Instantiation, Sloc);
   begin
      Set_Defining_Unit_Name (N, Defining_Unit_Name);
      Set_Name (N, Name);
      Set_Generic_Associations (N, Generic_Associations);
      Set_Must_Override (N, Must_Override);
      Set_Must_Not_Override (N, Must_Not_Override);
      return N;
   end Make_Procedure_Instantiation;

   function Make_Function_Instantiation (Sloc : Source_Ptr;
      Defining_Unit_Name           : Node_Id;
      Name                         : Node_Id;
      Generic_Associations         : List_Id := No_List;
      Must_Override                : Boolean := False;
      Must_Not_Override            : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Function_Instantiation, Sloc);
   begin
      Set_Defining_Unit_Name (N, Defining_Unit_Name);
      Set_Name (N, Name);
      Set_Generic_Associations (N, Generic_Associations);
      Set_Must_Override (N, Must_Override);
      Set_Must_Not_Override (N, Must_Not_Override);
      return N;
   end Make_Function_Instantiation;

   function Make_Generic_Association (Sloc : Source_Ptr;
      Selector_Name                : Node_Id := Empty;
      Explicit_Generic_Actual_Parameter : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Generic_Association, Sloc);
   begin
      Set_Selector_Name (N, Selector_Name);
      Set_Explicit_Generic_Actual_Parameter
        (N, Explicit_Generic_Actual_Parameter);
      return N;
   end Make_Generic_Association;

   function Make_Formal_Object_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      In_Present                   : Boolean := False;
      Out_Present                  : Boolean := False;
      Subtype_Mark                 : Node_Id;
      Expression                   : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Formal_Object_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_In_Present (N, In_Present);
      Set_Out_Present (N, Out_Present);
      Set_Subtype_Mark (N, Subtype_Mark);
      Set_Expression (N, Expression);
      return N;
   end Make_Formal_Object_Declaration;

   function Make_Formal_Type_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Formal_Type_Definition       : Node_Id;
      Discriminant_Specifications  : List_Id := No_List;
      Unknown_Discriminants_Present : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Formal_Type_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Formal_Type_Definition (N, Formal_Type_Definition);
      Set_Discriminant_Specifications (N, Discriminant_Specifications);
      Set_Unknown_Discriminants_Present
        (N, Unknown_Discriminants_Present);
      return N;
   end Make_Formal_Type_Declaration;

   function Make_Formal_Private_Type_Definition (Sloc : Source_Ptr;
      Abstract_Present             : Boolean := False;
      Tagged_Present               : Boolean := False;
      Limited_Present              : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Formal_Private_Type_Definition, Sloc);
   begin
      Set_Abstract_Present (N, Abstract_Present);
      Set_Tagged_Present (N, Tagged_Present);
      Set_Limited_Present (N, Limited_Present);
      return N;
   end Make_Formal_Private_Type_Definition;

   function Make_Formal_Derived_Type_Definition (Sloc : Source_Ptr;
      Subtype_Mark                 : Node_Id;
      Private_Present              : Boolean := False;
      Abstract_Present             : Boolean := False;
      Limited_Present              : Boolean := False;
      Interface_List               : List_Id := No_List)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Formal_Derived_Type_Definition, Sloc);
   begin
      Set_Subtype_Mark (N, Subtype_Mark);
      Set_Private_Present (N, Private_Present);
      Set_Abstract_Present (N, Abstract_Present);
      Set_Limited_Present (N, Limited_Present);
      Set_Interface_List (N, Interface_List);
      return N;
   end Make_Formal_Derived_Type_Definition;

   function Make_Formal_Discrete_Type_Definition (Sloc : Source_Ptr)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Formal_Discrete_Type_Definition, Sloc);
   begin
      return N;
   end Make_Formal_Discrete_Type_Definition;

   function Make_Formal_Signed_Integer_Type_Definition (Sloc : Source_Ptr)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Formal_Signed_Integer_Type_Definition, Sloc);
   begin
      return N;
   end Make_Formal_Signed_Integer_Type_Definition;

   function Make_Formal_Modular_Type_Definition (Sloc : Source_Ptr)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Formal_Modular_Type_Definition, Sloc);
   begin
      return N;
   end Make_Formal_Modular_Type_Definition;

   function Make_Formal_Floating_Point_Definition (Sloc : Source_Ptr)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Formal_Floating_Point_Definition, Sloc);
   begin
      return N;
   end Make_Formal_Floating_Point_Definition;

   function Make_Formal_Ordinary_Fixed_Point_Definition (Sloc : Source_Ptr)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Formal_Ordinary_Fixed_Point_Definition, Sloc);
   begin
      return N;
   end Make_Formal_Ordinary_Fixed_Point_Definition;

   function Make_Formal_Decimal_Fixed_Point_Definition (Sloc : Source_Ptr)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Formal_Decimal_Fixed_Point_Definition, Sloc);
   begin
      return N;
   end Make_Formal_Decimal_Fixed_Point_Definition;

   function Make_Formal_Concrete_Subprogram_Declaration (Sloc : Source_Ptr;
      Specification                : Node_Id;
      Default_Name                 : Node_Id := Empty;
      Box_Present                  : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Formal_Concrete_Subprogram_Declaration, Sloc);
   begin
      Set_Specification (N, Specification);
      Set_Default_Name (N, Default_Name);
      Set_Box_Present (N, Box_Present);
      return N;
   end Make_Formal_Concrete_Subprogram_Declaration;

   function Make_Formal_Abstract_Subprogram_Declaration (Sloc : Source_Ptr;
      Specification                : Node_Id;
      Default_Name                 : Node_Id := Empty;
      Box_Present                  : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Formal_Abstract_Subprogram_Declaration, Sloc);
   begin
      Set_Specification (N, Specification);
      Set_Default_Name (N, Default_Name);
      Set_Box_Present (N, Box_Present);
      return N;
   end Make_Formal_Abstract_Subprogram_Declaration;

   function Make_Formal_Package_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id;
      Name                         : Node_Id;
      Generic_Associations         : List_Id := No_List;
      Box_Present                  : Boolean := False)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Formal_Package_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      Set_Name (N, Name);
      Set_Generic_Associations (N, Generic_Associations);
      Set_Box_Present (N, Box_Present);
      return N;
   end Make_Formal_Package_Declaration;

   function Make_Attribute_Definition_Clause (Sloc : Source_Ptr;
      Name                         : Node_Id;
      Chars                        : Name_Id;
      Expression                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Attribute_Definition_Clause, Sloc);
   begin
      Set_Name (N, Name);
      Set_Chars (N, Chars);
      Set_Expression (N, Expression);
      return N;
   end Make_Attribute_Definition_Clause;

   function Make_Enumeration_Representation_Clause (Sloc : Source_Ptr;
      Identifier                   : Node_Id;
      Array_Aggregate              : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Enumeration_Representation_Clause, Sloc);
   begin
      Set_Identifier (N, Identifier);
      Set_Array_Aggregate (N, Array_Aggregate);
      return N;
   end Make_Enumeration_Representation_Clause;

   function Make_Record_Representation_Clause (Sloc : Source_Ptr;
      Identifier                   : Node_Id;
      Mod_Clause                   : Node_Id := Empty;
      Component_Clauses            : List_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Record_Representation_Clause, Sloc);
   begin
      Set_Identifier (N, Identifier);
      Set_Mod_Clause (N, Mod_Clause);
      Set_Component_Clauses (N, Component_Clauses);
      return N;
   end Make_Record_Representation_Clause;

   function Make_Component_Clause (Sloc : Source_Ptr;
      Component_Name               : Node_Id;
      Position                     : Node_Id;
      First_Bit                    : Node_Id;
      Last_Bit                     : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Component_Clause, Sloc);
   begin
      Set_Component_Name (N, Component_Name);
      Set_Position (N, Position);
      Set_First_Bit (N, First_Bit);
      Set_Last_Bit (N, Last_Bit);
      return N;
   end Make_Component_Clause;

   function Make_Code_Statement (Sloc : Source_Ptr;
      Expression                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Code_Statement, Sloc);
   begin
      Set_Expression (N, Expression);
      return N;
   end Make_Code_Statement;

   function Make_Op_Rotate_Left (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Rotate_Left, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Rotate_Left);
      Set_Entity (N, Standard_Op_Rotate_Left);
      return N;
   end Make_Op_Rotate_Left;

   function Make_Op_Rotate_Right (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Rotate_Right, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Rotate_Right);
      Set_Entity (N, Standard_Op_Rotate_Right);
      return N;
   end Make_Op_Rotate_Right;

   function Make_Op_Shift_Left (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Shift_Left, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Shift_Left);
      Set_Entity (N, Standard_Op_Shift_Left);
      return N;
   end Make_Op_Shift_Left;

   function Make_Op_Shift_Right_Arithmetic (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Shift_Right_Arithmetic, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Shift_Right_Arithmetic);
      Set_Entity (N, Standard_Op_Shift_Right_Arithmetic);
      return N;
   end Make_Op_Shift_Right_Arithmetic;

   function Make_Op_Shift_Right (Sloc : Source_Ptr;
      Left_Opnd                    : Node_Id;
      Right_Opnd                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Op_Shift_Right, Sloc);
   begin
      Set_Left_Opnd (N, Left_Opnd);
      Set_Right_Opnd (N, Right_Opnd);
      Set_Chars (N, Name_Shift_Right);
      Set_Entity (N, Standard_Op_Shift_Right);
      return N;
   end Make_Op_Shift_Right;

   function Make_Delta_Constraint (Sloc : Source_Ptr;
      Delta_Expression             : Node_Id;
      Range_Constraint             : Node_Id := Empty)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Delta_Constraint, Sloc);
   begin
      Set_Delta_Expression (N, Delta_Expression);
      Set_Range_Constraint (N, Range_Constraint);
      return N;
   end Make_Delta_Constraint;

   function Make_At_Clause (Sloc : Source_Ptr;
      Identifier                   : Node_Id;
      Expression                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_At_Clause, Sloc);
   begin
      Set_Identifier (N, Identifier);
      Set_Expression (N, Expression);
      return N;
   end Make_At_Clause;

   function Make_Mod_Clause (Sloc : Source_Ptr;
      Expression                   : Node_Id;
      Pragmas_Before               : List_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Mod_Clause, Sloc);
   begin
      Set_Expression (N, Expression);
      Set_Pragmas_Before (N, Pragmas_Before);
      return N;
   end Make_Mod_Clause;

   function Make_Conditional_Expression (Sloc : Source_Ptr;
      Expressions                  : List_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Conditional_Expression, Sloc);
   begin
      Set_Expressions (N, Expressions);
      return N;
   end Make_Conditional_Expression;

   function Make_Expanded_Name (Sloc : Source_Ptr;
      Chars                        : Name_Id;
      Prefix                       : Node_Id;
      Selector_Name                : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Expanded_Name, Sloc);
   begin
      Set_Chars (N, Chars);
      Set_Prefix (N, Prefix);
      Set_Selector_Name (N, Selector_Name);
      return N;
   end Make_Expanded_Name;

   function Make_Free_Statement (Sloc : Source_Ptr;
      Expression                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Free_Statement, Sloc);
   begin
      Set_Expression (N, Expression);
      return N;
   end Make_Free_Statement;

   function Make_Freeze_Entity (Sloc : Source_Ptr;
      Actions                      : List_Id := No_List)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Freeze_Entity, Sloc);
   begin
      Set_Actions (N, Actions);
      return N;
   end Make_Freeze_Entity;

   function Make_Implicit_Label_Declaration (Sloc : Source_Ptr;
      Defining_Identifier          : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Implicit_Label_Declaration, Sloc);
   begin
      Set_Defining_Identifier (N, Defining_Identifier);
      return N;
   end Make_Implicit_Label_Declaration;

   function Make_Itype_Reference (Sloc : Source_Ptr)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Itype_Reference, Sloc);
   begin
      return N;
   end Make_Itype_Reference;

   function Make_Raise_Constraint_Error (Sloc : Source_Ptr;
      Condition                    : Node_Id := Empty;
      Reason                       : Uint)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Raise_Constraint_Error, Sloc);
   begin
      Set_Condition (N, Condition);
      Set_Reason (N, Reason);
      return N;
   end Make_Raise_Constraint_Error;

   function Make_Raise_Program_Error (Sloc : Source_Ptr;
      Condition                    : Node_Id := Empty;
      Reason                       : Uint)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Raise_Program_Error, Sloc);
   begin
      Set_Condition (N, Condition);
      Set_Reason (N, Reason);
      return N;
   end Make_Raise_Program_Error;

   function Make_Raise_Storage_Error (Sloc : Source_Ptr;
      Condition                    : Node_Id := Empty;
      Reason                       : Uint)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Raise_Storage_Error, Sloc);
   begin
      Set_Condition (N, Condition);
      Set_Reason (N, Reason);
      return N;
   end Make_Raise_Storage_Error;

   function Make_Reference (Sloc : Source_Ptr;
      Prefix                       : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Reference, Sloc);
   begin
      Set_Prefix (N, Prefix);
      return N;
   end Make_Reference;

   function Make_Subprogram_Info (Sloc : Source_Ptr;
      Identifier                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Subprogram_Info, Sloc);
   begin
      Set_Identifier (N, Identifier);
      return N;
   end Make_Subprogram_Info;

   function Make_Unchecked_Expression (Sloc : Source_Ptr;
      Expression                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Unchecked_Expression, Sloc);
   begin
      Set_Expression (N, Expression);
      return N;
   end Make_Unchecked_Expression;

   function Make_Unchecked_Type_Conversion (Sloc : Source_Ptr;
      Subtype_Mark                 : Node_Id;
      Expression                   : Node_Id)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Unchecked_Type_Conversion, Sloc);
   begin
      Set_Subtype_Mark (N, Subtype_Mark);
      Set_Expression (N, Expression);
      return N;
   end Make_Unchecked_Type_Conversion;

   function Make_Validate_Unchecked_Conversion (Sloc : Source_Ptr)
      return Node_Id
   is
      N : constant Node_Id :=
            New_Node (N_Validate_Unchecked_Conversion, Sloc);
   begin
      return N;
   end Make_Validate_Unchecked_Conversion;

end Nmake;
