/*--------------------------------------------------------------------------*/
/*                                                                          */
/*                         GNAT COMPILER COMPONENTS                         */
/*                                                                          */
/*                                S I N F O                                 */
/*                                                                          */
/*                              C Header File                               */
/*                                                                          */
/*          Copyright (C) 1992-2005, Free Software Foundation, Inc.         */
/*                                                                          */
/* GNAT is free software;  you can  redistribute it  and/or modify it under */
/* terms of the  GNU General Public License as published  by the Free Soft- */
/* ware  Foundation;  either version 2,  or (at your option) any later ver- */
/* sion.  GNAT is distributed in the hope that it will be useful, but WITH- */
/* OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY */
/* or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License */
/* for  more details.  You should have  received  a copy of the GNU General */
/* Public License  distributed with GNAT;  see file COPYING.  If not, write */
/* to  the  Free Software Foundation,  51  Franklin  Street,  Fifth  Floor, */
/* Boston, MA 02110-1301, USA.                                              */
/*                                                                          */
/* As a special exception,  if other files  instantiate  generics from this */
/* unit, or you link  this unit with other files  to produce an executable, */
/* this  unit  does not  by itself cause  the resulting  executable  to  be */
/* covered  by the  GNU  General  Public  License.  This exception does not */
/* however invalidate  any other reasons why  the executable file  might be */
/* covered by the  GNU Public License.                                      */
/*                                                                          */
/* GNAT was originally developed  by the GNAT team at  New York University. */
/* Extensive contributions were provided by Ada Core Technologies Inc.      */
/*                                                                          */
/*--------------------------------------------------------------------------*/

      #define N_Unused_At_Start 0
      #define N_At_Clause 1
      #define N_Component_Clause 2
      #define N_Enumeration_Representation_Clause 3
      #define N_Mod_Clause 4
      #define N_Record_Representation_Clause 5
      #define N_Attribute_Definition_Clause 6
      #define N_Empty 7
      #define N_Pragma 8
      #define N_Pragma_Argument_Association 9
      #define N_Error 10
      #define N_Defining_Character_Literal 11
      #define N_Defining_Identifier 12
      #define N_Defining_Operator_Symbol 13
      #define N_Expanded_Name 14
      #define N_Identifier 15
      #define N_Operator_Symbol 16
      #define N_Character_Literal 17
      #define N_Op_Add 18
      #define N_Op_Concat 19
      #define N_Op_Expon 20
      #define N_Op_Subtract 21
      #define N_Op_Divide 22
      #define N_Op_Mod 23
      #define N_Op_Multiply 24
      #define N_Op_Rem 25
      #define N_Op_And 26
      #define N_Op_Eq 27
      #define N_Op_Ge 28
      #define N_Op_Gt 29
      #define N_Op_Le 30
      #define N_Op_Lt 31
      #define N_Op_Ne 32
      #define N_Op_Or 33
      #define N_Op_Xor 34
      #define N_Op_Rotate_Left 35
      #define N_Op_Rotate_Right 36
      #define N_Op_Shift_Left 37
      #define N_Op_Shift_Right 38
      #define N_Op_Shift_Right_Arithmetic 39
      #define N_Op_Abs 40
      #define N_Op_Minus 41
      #define N_Op_Not 42
      #define N_Op_Plus 43
      #define N_Attribute_Reference 44
      #define N_And_Then 45
      #define N_Conditional_Expression 46
      #define N_Explicit_Dereference 47
      #define N_Function_Call 48
      #define N_In 49
      #define N_Indexed_Component 50
      #define N_Integer_Literal 51
      #define N_Not_In 52
      #define N_Null 53
      #define N_Or_Else 54
      #define N_Procedure_Call_Statement 55
      #define N_Qualified_Expression 56
      #define N_Raise_Constraint_Error 57
      #define N_Raise_Program_Error 58
      #define N_Raise_Storage_Error 59
      #define N_Aggregate 60
      #define N_Allocator 61
      #define N_Extension_Aggregate 62
      #define N_Range 63
      #define N_Real_Literal 64
      #define N_Reference 65
      #define N_Selected_Component 66
      #define N_Slice 67
      #define N_String_Literal 68
      #define N_Subprogram_Info 69
      #define N_Type_Conversion 70
      #define N_Unchecked_Expression 71
      #define N_Unchecked_Type_Conversion 72
      #define N_Subtype_Indication 73
      #define N_Component_Declaration 74
      #define N_Entry_Declaration 75
      #define N_Formal_Object_Declaration 76
      #define N_Formal_Type_Declaration 77
      #define N_Full_Type_Declaration 78
      #define N_Incomplete_Type_Declaration 79
      #define N_Loop_Parameter_Specification 80
      #define N_Object_Declaration 81
      #define N_Protected_Type_Declaration 82
      #define N_Private_Extension_Declaration 83
      #define N_Private_Type_Declaration 84
      #define N_Subtype_Declaration 85
      #define N_Function_Specification 86
      #define N_Procedure_Specification 87
      #define N_Access_Function_Definition 88
      #define N_Access_Procedure_Definition 89
      #define N_Task_Type_Declaration 90
      #define N_Package_Body_Stub 91
      #define N_Protected_Body_Stub 92
      #define N_Subprogram_Body_Stub 93
      #define N_Task_Body_Stub 94
      #define N_Function_Instantiation 95
      #define N_Procedure_Instantiation 96
      #define N_Package_Instantiation 97
      #define N_Package_Body 98
      #define N_Subprogram_Body 99
      #define N_Protected_Body 100
      #define N_Task_Body 101
      #define N_Implicit_Label_Declaration 102
      #define N_Package_Declaration 103
      #define N_Single_Task_Declaration 104
      #define N_Subprogram_Declaration 105
      #define N_Use_Package_Clause 106
      #define N_Generic_Package_Declaration 107
      #define N_Generic_Subprogram_Declaration 108
      #define N_Constrained_Array_Definition 109
      #define N_Unconstrained_Array_Definition 110
      #define N_Exception_Renaming_Declaration 111
      #define N_Object_Renaming_Declaration 112
      #define N_Package_Renaming_Declaration 113
      #define N_Subprogram_Renaming_Declaration 114
      #define N_Generic_Function_Renaming_Declaration 115
      #define N_Generic_Package_Renaming_Declaration 116
      #define N_Generic_Procedure_Renaming_Declaration 117
      #define N_Abort_Statement 118
      #define N_Accept_Statement 119
      #define N_Assignment_Statement 120
      #define N_Asynchronous_Select 121
      #define N_Block_Statement 122
      #define N_Case_Statement 123
      #define N_Code_Statement 124
      #define N_Conditional_Entry_Call 125
      #define N_Delay_Relative_Statement 126
      #define N_Delay_Until_Statement 127
      #define N_Entry_Call_Statement 128
      #define N_Free_Statement 129
      #define N_Goto_Statement 130
      #define N_Loop_Statement 131
      #define N_Null_Statement 132
      #define N_Raise_Statement 133
      #define N_Requeue_Statement 134
      #define N_Return_Statement 135
      #define N_Selective_Accept 136
      #define N_Timed_Entry_Call 137
      #define N_Exit_Statement 138
      #define N_If_Statement 139
      #define N_Accept_Alternative 140
      #define N_Delay_Alternative 141
      #define N_Elsif_Part 142
      #define N_Entry_Body_Formal_Part 143
      #define N_Iteration_Scheme 144
      #define N_Terminate_Alternative 145
      #define N_Formal_Abstract_Subprogram_Declaration 146
      #define N_Formal_Concrete_Subprogram_Declaration 147
      #define N_Abortable_Part 148
      #define N_Abstract_Subprogram_Declaration 149
      #define N_Access_Definition 150
      #define N_Access_To_Object_Definition 151
      #define N_Case_Statement_Alternative 152
      #define N_Compilation_Unit 153
      #define N_Compilation_Unit_Aux 154
      #define N_Component_Association 155
      #define N_Component_Definition 156
      #define N_Component_List 157
      #define N_Derived_Type_Definition 158
      #define N_Decimal_Fixed_Point_Definition 159
      #define N_Defining_Program_Unit_Name 160
      #define N_Delta_Constraint 161
      #define N_Designator 162
      #define N_Digits_Constraint 163
      #define N_Discriminant_Association 164
      #define N_Discriminant_Specification 165
      #define N_Enumeration_Type_Definition 166
      #define N_Entry_Body 167
      #define N_Entry_Call_Alternative 168
      #define N_Entry_Index_Specification 169
      #define N_Exception_Declaration 170
      #define N_Exception_Handler 171
      #define N_Floating_Point_Definition 172
      #define N_Formal_Decimal_Fixed_Point_Definition 173
      #define N_Formal_Derived_Type_Definition 174
      #define N_Formal_Discrete_Type_Definition 175
      #define N_Formal_Floating_Point_Definition 176
      #define N_Formal_Modular_Type_Definition 177
      #define N_Formal_Ordinary_Fixed_Point_Definition 178
      #define N_Formal_Package_Declaration 179
      #define N_Formal_Private_Type_Definition 180
      #define N_Formal_Signed_Integer_Type_Definition 181
      #define N_Freeze_Entity 182
      #define N_Generic_Association 183
      #define N_Handled_Sequence_Of_Statements 184
      #define N_Index_Or_Discriminant_Constraint 185
      #define N_Itype_Reference 186
      #define N_Label 187
      #define N_Modular_Type_Definition 188
      #define N_Number_Declaration 189
      #define N_Ordinary_Fixed_Point_Definition 190
      #define N_Others_Choice 191
      #define N_Package_Specification 192
      #define N_Parameter_Association 193
      #define N_Parameter_Specification 194
      #define N_Protected_Definition 195
      #define N_Range_Constraint 196
      #define N_Real_Range_Specification 197
      #define N_Record_Definition 198
      #define N_Signed_Integer_Type_Definition 199
      #define N_Single_Protected_Declaration 200
      #define N_Subunit 201
      #define N_Task_Definition 202
      #define N_Triggering_Alternative 203
      #define N_Use_Type_Clause 204
      #define N_Validate_Unchecked_Conversion 205
      #define N_Variant 206
      #define N_Variant_Part 207
      #define N_With_Clause 208
      #define N_With_Type_Clause 209
      #define N_Unused_At_End 210

      #define Number_Node_Kinds 211
   SUBTYPE (N_Access_To_Subprogram_Definition, Node_Kind, 
      N_Access_Function_Definition,
      N_Access_Procedure_Definition)
   SUBTYPE (N_Array_Type_Definition, Node_Kind, 
      N_Constrained_Array_Definition,
      N_Unconstrained_Array_Definition)
   SUBTYPE (N_Binary_Op, Node_Kind, 
      N_Op_Add,
      N_Op_Shift_Right_Arithmetic)
   SUBTYPE (N_Body_Stub, Node_Kind, 
      N_Package_Body_Stub,
      N_Task_Body_Stub)
   SUBTYPE (N_Declaration, Node_Kind, 
      N_Component_Declaration,
      N_Procedure_Specification)
   SUBTYPE (N_Delay_Statement, Node_Kind, 
      N_Delay_Relative_Statement,
      N_Delay_Until_Statement)
   SUBTYPE (N_Direct_Name, Node_Kind, 
      N_Identifier,
      N_Character_Literal)
   SUBTYPE (N_Entity, Node_Kind, 
      N_Defining_Character_Literal,
      N_Defining_Operator_Symbol)
   SUBTYPE (N_Formal_Subprogram_Declaration, Node_Kind, 
      N_Formal_Abstract_Subprogram_Declaration,
      N_Formal_Concrete_Subprogram_Declaration)
   SUBTYPE (N_Generic_Declaration, Node_Kind, 
      N_Generic_Package_Declaration,
      N_Generic_Subprogram_Declaration)
   SUBTYPE (N_Generic_Instantiation, Node_Kind, 
      N_Function_Instantiation,
      N_Package_Instantiation)
   SUBTYPE (N_Generic_Renaming_Declaration, Node_Kind, 
      N_Generic_Function_Renaming_Declaration,
      N_Generic_Procedure_Renaming_Declaration)
   SUBTYPE (N_Has_Chars, Node_Kind, 
      N_Attribute_Definition_Clause,
      N_Op_Plus)
   SUBTYPE (N_Has_Entity, Node_Kind, 
      N_Expanded_Name,
      N_Attribute_Reference)
   SUBTYPE (N_Has_Etype, Node_Kind, 
      N_Error,
      N_Subtype_Indication)
   SUBTYPE (N_Has_Treat_Fixed_As_Integer, Node_Kind, 
      N_Op_Divide,
      N_Op_Rem)
   SUBTYPE (N_Later_Decl_Item, Node_Kind, 
      N_Task_Type_Declaration,
      N_Generic_Subprogram_Declaration)
   SUBTYPE (N_Op, Node_Kind, 
      N_Op_Add,
      N_Op_Plus)
   SUBTYPE (N_Op_Boolean, Node_Kind, 
      N_Op_And,
      N_Op_Xor)
   SUBTYPE (N_Op_Compare, Node_Kind, 
      N_Op_Eq,
      N_Op_Ne)
   SUBTYPE (N_Op_Shift, Node_Kind, 
      N_Op_Rotate_Left,
      N_Op_Shift_Right_Arithmetic)
   SUBTYPE (N_Proper_Body, Node_Kind, 
      N_Package_Body,
      N_Task_Body)
   SUBTYPE (N_Raise_xxx_Error, Node_Kind, 
      N_Raise_Constraint_Error,
      N_Raise_Storage_Error)
   SUBTYPE (N_Renaming_Declaration, Node_Kind, 
      N_Exception_Renaming_Declaration,
      N_Generic_Procedure_Renaming_Declaration)
   SUBTYPE (N_Representation_Clause, Node_Kind, 
      N_At_Clause,
      N_Attribute_Definition_Clause)
   SUBTYPE (N_Statement_Other_Than_Procedure_Call, Node_Kind, 
      N_Abort_Statement,
      N_If_Statement)
   SUBTYPE (N_Subprogram_Instantiation, Node_Kind, 
      N_Function_Instantiation,
      N_Procedure_Instantiation)
   SUBTYPE (N_Has_Condition, Node_Kind, 
      N_Exit_Statement,
      N_Terminate_Alternative)
   SUBTYPE (N_Subexpr, Node_Kind, 
      N_Expanded_Name,
      N_Unchecked_Type_Conversion)
   SUBTYPE (N_Subprogram_Specification, Node_Kind, 
      N_Function_Specification,
      N_Procedure_Specification)
   SUBTYPE (N_Unary_Op, Node_Kind, 
      N_Op_Abs,
      N_Op_Plus)
   SUBTYPE (N_Unit_Body, Node_Kind, 
      N_Package_Body,
      N_Subprogram_Body)
   INLINE Boolean   ABE_Is_Certain                 (Node_Id N)
      { return Flag18 (N); }
   INLINE Boolean   Abort_Present                  (Node_Id N)
      { return Flag15 (N); }
   INLINE Node_Id   Abortable_Part                 (Node_Id N)
      { return Node2 (N); }
   INLINE Boolean   Abstract_Present               (Node_Id N)
      { return Flag4 (N); }
   INLINE List_Id   Accept_Handler_Records         (Node_Id N)
      { return List5 (N); }
   INLINE Node_Id   Accept_Statement               (Node_Id N)
      { return Node2 (N); }
   INLINE Node_Id   Access_Definition              (Node_Id N)
      { return Node3 (N); }
   INLINE Node_Id   Access_To_Subprogram_Definition (Node_Id N)
      { return Node3 (N); }
   INLINE Elist_Id  Access_Types_To_Process        (Node_Id N)
      { return Elist2 (N); }
   INLINE List_Id   Actions                        (Node_Id N)
      { return List1 (N); }
   INLINE Node_Id   Activation_Chain_Entity        (Node_Id N)
      { return Node3 (N); }
   INLINE Boolean   Acts_As_Spec                   (Node_Id N)
      { return Flag4 (N); }
   INLINE Node_Id   Actual_Designated_Subtype      (Node_Id N)
      { return Node2 (N); }
   INLINE Node_Id   Aggregate_Bounds               (Node_Id N)
      { return Node3 (N); }
   INLINE Boolean   Aliased_Present                (Node_Id N)
      { return Flag4 (N); }
   INLINE Boolean   All_Others                     (Node_Id N)
      { return Flag11 (N); }
   INLINE Boolean   All_Present                    (Node_Id N)
      { return Flag15 (N); }
   INLINE List_Id   Alternatives                   (Node_Id N)
      { return List4 (N); }
   INLINE Node_Id   Ancestor_Part                  (Node_Id N)
      { return Node3 (N); }
   INLINE Node_Id   Array_Aggregate                (Node_Id N)
      { return Node3 (N); }
   INLINE Boolean   Assignment_OK                  (Node_Id N)
      { return Flag15 (N); }
   INLINE Node_Id   Associated_Node                (Node_Id N)
      { return Node4 (N); }
   INLINE Node_Id   At_End_Proc                    (Node_Id N)
      { return Node1 (N); }
   INLINE Name_Id   Attribute_Name                 (Node_Id N)
      { return Name2 (N); }
   INLINE Node_Id   Aux_Decls_Node                 (Node_Id N)
      { return Node5 (N); }
   INLINE Boolean   Backwards_OK                   (Node_Id N)
      { return Flag6 (N); }
   INLINE Boolean   Bad_Is_Detected                (Node_Id N)
      { return Flag15 (N); }
   INLINE Boolean   By_Ref                         (Node_Id N)
      { return Flag5 (N); }
   INLINE Boolean   Body_Required                  (Node_Id N)
      { return Flag13 (N); }
   INLINE Node_Id   Body_To_Inline                 (Node_Id N)
      { return Node3 (N); }
   INLINE Boolean   Box_Present                    (Node_Id N)
      { return Flag15 (N); }
   INLINE Uint      Char_Literal_Value             (Node_Id N)
      { return Uint2 (N); }
   INLINE Name_Id   Chars                          (Node_Id N)
      { return Name1 (N); }
   INLINE Boolean   Check_Address_Alignment        (Node_Id N)
      { return Flag11 (N); }
   INLINE Node_Id   Choice_Parameter               (Node_Id N)
      { return Node2 (N); }
   INLINE List_Id   Choices                        (Node_Id N)
      { return List1 (N); }
   INLINE Boolean   Compile_Time_Known_Aggregate   (Node_Id N)
      { return Flag18 (N); }
   INLINE List_Id   Component_Associations         (Node_Id N)
      { return List2 (N); }
   INLINE List_Id   Component_Clauses              (Node_Id N)
      { return List3 (N); }
   INLINE Node_Id   Component_Definition           (Node_Id N)
      { return Node4 (N); }
   INLINE List_Id   Component_Items                (Node_Id N)
      { return List3 (N); }
   INLINE Node_Id   Component_List                 (Node_Id N)
      { return Node1 (N); }
   INLINE Node_Id   Component_Name                 (Node_Id N)
      { return Node1 (N); }
   INLINE Node_Id   Condition                      (Node_Id N)
      { return Node1 (N); }
   INLINE List_Id   Condition_Actions              (Node_Id N)
      { return List3 (N); }
   INLINE List_Id   Config_Pragmas                 (Node_Id N)
      { return List4 (N); }
   INLINE Boolean   Constant_Present               (Node_Id N)
      { return Flag17 (N); }
   INLINE Node_Id   Constraint                     (Node_Id N)
      { return Node3 (N); }
   INLINE List_Id   Constraints                    (Node_Id N)
      { return List1 (N); }
   INLINE Boolean   Context_Installed              (Node_Id N)
      { return Flag13 (N); }
   INLINE List_Id   Context_Items                  (Node_Id N)
      { return List1 (N); }
   INLINE Node_Id   Controlling_Argument           (Node_Id N)
      { return Node1 (N); }
   INLINE Boolean   Conversion_OK                  (Node_Id N)
      { return Flag14 (N); }
   INLINE Node_Id   Corresponding_Body             (Node_Id N)
      { return Node5 (N); }
   INLINE Node_Id   Corresponding_Formal_Spec      (Node_Id N)
      { return Node3 (N); }
   INLINE Node_Id   Corresponding_Generic_Association (Node_Id N)
      { return Node5 (N); }
   INLINE Uint      Corresponding_Integer_Value    (Node_Id N)
      { return Uint4 (N); }
   INLINE Node_Id   Corresponding_Spec             (Node_Id N)
      { return Node5 (N); }
   INLINE Node_Id   Corresponding_Stub             (Node_Id N)
      { return Node3 (N); }
   INLINE Entity_Id Dcheck_Function                (Node_Id N)
      { return Node5 (N); }
   INLINE Node_Id   Debug_Statement                (Node_Id N)
      { return Node3 (N); }
   INLINE List_Id   Declarations                   (Node_Id N)
      { return List2 (N); }
   INLINE Node_Id   Default_Expression             (Node_Id N)
      { return Node5 (N); }
   INLINE Node_Id   Default_Name                   (Node_Id N)
      { return Node2 (N); }
   INLINE Entity_Id Defining_Identifier            (Node_Id N)
      { return Node1 (N); }
   INLINE Node_Id   Defining_Unit_Name             (Node_Id N)
      { return Node1 (N); }
   INLINE Node_Id   Delay_Alternative              (Node_Id N)
      { return Node4 (N); }
   INLINE Boolean   Delay_Finalize_Attach          (Node_Id N)
      { return Flag14 (N); }
   INLINE Node_Id   Delay_Statement                (Node_Id N)
      { return Node2 (N); }
   INLINE Node_Id   Delta_Expression               (Node_Id N)
      { return Node3 (N); }
   INLINE Node_Id   Digits_Expression              (Node_Id N)
      { return Node2 (N); }
   INLINE Boolean   Discr_Check_Funcs_Built        (Node_Id N)
      { return Flag11 (N); }
   INLINE List_Id   Discrete_Choices               (Node_Id N)
      { return List4 (N); }
   INLINE Node_Id   Discrete_Range                 (Node_Id N)
      { return Node4 (N); }
   INLINE Node_Id   Discrete_Subtype_Definition    (Node_Id N)
      { return Node4 (N); }
   INLINE List_Id   Discrete_Subtype_Definitions   (Node_Id N)
      { return List2 (N); }
   INLINE List_Id   Discriminant_Specifications    (Node_Id N)
      { return List4 (N); }
   INLINE Node_Id   Discriminant_Type              (Node_Id N)
      { return Node5 (N); }
   INLINE Boolean   Do_Accessibility_Check         (Node_Id N)
      { return Flag13 (N); }
   INLINE Boolean   Do_Discriminant_Check          (Node_Id N)
      { return Flag13 (N); }
   INLINE Boolean   Do_Division_Check              (Node_Id N)
      { return Flag13 (N); }
   INLINE Boolean   Do_Length_Check                (Node_Id N)
      { return Flag4 (N); }
   INLINE Boolean   Do_Overflow_Check              (Node_Id N)
      { return Flag17 (N); }
   INLINE Boolean   Do_Range_Check                 (Node_Id N)
      { return Flag9 (N); }
   INLINE Boolean   Do_Storage_Check               (Node_Id N)
      { return Flag17 (N); }
   INLINE Boolean   Do_Tag_Check                   (Node_Id N)
      { return Flag13 (N); }
   INLINE Boolean   Elaborate_All_Desirable        (Node_Id N)
      { return Flag9 (N); }
   INLINE Boolean   Elaborate_All_Present          (Node_Id N)
      { return Flag14 (N); }
   INLINE Boolean   Elaborate_Desirable            (Node_Id N)
      { return Flag11 (N); }
   INLINE Boolean   Elaborate_Present              (Node_Id N)
      { return Flag4 (N); }
   INLINE Node_Id   Elaboration_Boolean            (Node_Id N)
      { return Node2 (N); }
   INLINE List_Id   Else_Actions                   (Node_Id N)
      { return List3 (N); }
   INLINE List_Id   Else_Statements                (Node_Id N)
      { return List4 (N); }
   INLINE List_Id   Elsif_Parts                    (Node_Id N)
      { return List3 (N); }
   INLINE Node_Id   Enclosing_Variant              (Node_Id N)
      { return Node2 (N); }
   INLINE Node_Id   End_Label                      (Node_Id N)
      { return Node4 (N); }
   INLINE Uint      End_Span                       (Node_Id N)
      { return Uint5 (N); }
   INLINE Node_Id   Entity                         (Node_Id N)
      { return Node4 (N); }
   INLINE Node_Id   Entity_Or_Associated_Node      (Node_Id N)
      { return Node4 (N); }
   INLINE Node_Id   Entry_Body_Formal_Part         (Node_Id N)
      { return Node5 (N); }
   INLINE Node_Id   Entry_Call_Alternative         (Node_Id N)
      { return Node1 (N); }
   INLINE Node_Id   Entry_Call_Statement           (Node_Id N)
      { return Node1 (N); }
   INLINE Node_Id   Entry_Direct_Name              (Node_Id N)
      { return Node1 (N); }
   INLINE Node_Id   Entry_Index                    (Node_Id N)
      { return Node5 (N); }
   INLINE Node_Id   Entry_Index_Specification      (Node_Id N)
      { return Node4 (N); }
   INLINE Node_Id   Etype                          (Node_Id N)
      { return Node5 (N); }
   INLINE List_Id   Exception_Choices              (Node_Id N)
      { return List4 (N); }
   INLINE List_Id   Exception_Handlers             (Node_Id N)
      { return List5 (N); }
   INLINE Boolean   Exception_Junk                 (Node_Id N)
      { return Flag7 (N); }
   INLINE Node_Id   Explicit_Actual_Parameter      (Node_Id N)
      { return Node3 (N); }
   INLINE Boolean   Expansion_Delayed              (Node_Id N)
      { return Flag11 (N); }
   INLINE Node_Id   Explicit_Generic_Actual_Parameter (Node_Id N)
      { return Node1 (N); }
   INLINE Node_Id   Expression                     (Node_Id N)
      { return Node3 (N); }
   INLINE List_Id   Expressions                    (Node_Id N)
      { return List1 (N); }
   INLINE Node_Id   First_Bit                      (Node_Id N)
      { return Node3 (N); }
   INLINE Entity_Id First_Inlined_Subprogram       (Node_Id N)
      { return Node3 (N); }
   INLINE Boolean   First_Name                     (Node_Id N)
      { return Flag5 (N); }
   INLINE Node_Id   First_Named_Actual             (Node_Id N)
      { return Node4 (N); }
   INLINE Node_Id   First_Real_Statement           (Node_Id N)
      { return Node2 (N); }
   INLINE Entity_Id First_Subtype_Link             (Node_Id N)
      { return Node5 (N); }
   INLINE Boolean   Float_Truncate                 (Node_Id N)
      { return Flag11 (N); }
   INLINE Node_Id   Formal_Type_Definition         (Node_Id N)
      { return Node3 (N); }
   INLINE Boolean   Forwards_OK                    (Node_Id N)
      { return Flag5 (N); }
   INLINE Boolean   From_At_Mod                    (Node_Id N)
      { return Flag4 (N); }
   INLINE Boolean   From_Default                   (Node_Id N)
      { return Flag6 (N); }
   INLINE List_Id   Generic_Associations           (Node_Id N)
      { return List3 (N); }
   INLINE List_Id   Generic_Formal_Declarations    (Node_Id N)
      { return List2 (N); }
   INLINE Node_Id   Generic_Parent                 (Node_Id N)
      { return Node5 (N); }
   INLINE Node_Id   Generic_Parent_Type            (Node_Id N)
      { return Node4 (N); }
   INLINE Node_Id   Handled_Statement_Sequence     (Node_Id N)
      { return Node4 (N); }
   INLINE Node_Id   Handler_List_Entry             (Node_Id N)
      { return Node2 (N); }
   INLINE Boolean   Has_Created_Identifier         (Node_Id N)
      { return Flag15 (N); }
   INLINE Boolean   Has_Dynamic_Length_Check       (Node_Id N)
      { return Flag10 (N); }
   INLINE Boolean   Has_Dynamic_Range_Check        (Node_Id N)
      { return Flag12 (N); }
   INLINE Boolean   Has_No_Elaboration_Code        (Node_Id N)
      { return Flag17 (N); }
   INLINE Boolean   Has_Priority_Pragma            (Node_Id N)
      { return Flag6 (N); }
   INLINE Boolean   Has_Private_View               (Node_Id N)
      { return Flag11 (N); }
   INLINE Boolean   Has_Storage_Size_Pragma        (Node_Id N)
      { return Flag5 (N); }
   INLINE Boolean   Has_Task_Info_Pragma           (Node_Id N)
      { return Flag7 (N); }
   INLINE Boolean   Has_Task_Name_Pragma           (Node_Id N)
      { return Flag8 (N); }
   INLINE Boolean   Has_Wide_Character             (Node_Id N)
      { return Flag11 (N); }
   INLINE Elist_Id  Hidden_By_Use_Clause           (Node_Id N)
      { return Elist4 (N); }
   INLINE Node_Id   High_Bound                     (Node_Id N)
      { return Node2 (N); }
   INLINE Node_Id   Identifier                     (Node_Id N)
      { return Node1 (N); }
   INLINE List_Id   Interface_List                 (Node_Id N)
      { return List2 (N); }
   INLINE Boolean   Interface_Present              (Node_Id N)
      { return Flag16 (N); }
   INLINE Boolean   Implicit_With                  (Node_Id N)
      { return Flag16 (N); }
   INLINE Boolean   In_Present                     (Node_Id N)
      { return Flag15 (N); }
   INLINE Boolean   Includes_Infinities            (Node_Id N)
      { return Flag11 (N); }
   INLINE Node_Id   Instance_Spec                  (Node_Id N)
      { return Node5 (N); }
   INLINE Uint      Intval                         (Node_Id N)
      { return Uint3 (N); }
   INLINE Boolean   Is_Asynchronous_Call_Block     (Node_Id N)
      { return Flag7 (N); }
   INLINE Boolean   Is_Component_Left_Opnd         (Node_Id N)
      { return Flag13 (N); }
   INLINE Boolean   Is_Component_Right_Opnd        (Node_Id N)
      { return Flag14 (N); }
   INLINE Boolean   Is_Controlling_Actual          (Node_Id N)
      { return Flag16 (N); }
   INLINE Boolean   Is_In_Discriminant_Check       (Node_Id N)
      { return Flag11 (N); }
   INLINE Boolean   Is_Machine_Number              (Node_Id N)
      { return Flag11 (N); }
   INLINE Boolean   Is_Null_Loop                   (Node_Id N)
      { return Flag16 (N); }
   INLINE Boolean   Is_Overloaded                  (Node_Id N)
      { return Flag5 (N); }
   INLINE Boolean   Is_Power_Of_2_For_Shift        (Node_Id N)
      { return Flag13 (N); }
   INLINE Boolean   Is_Protected_Subprogram_Body   (Node_Id N)
      { return Flag7 (N); }
   INLINE Boolean   Is_Static_Expression           (Node_Id N)
      { return Flag6 (N); }
   INLINE Boolean   Is_Subprogram_Descriptor       (Node_Id N)
      { return Flag16 (N); }
   INLINE Boolean   Is_Task_Allocation_Block       (Node_Id N)
      { return Flag6 (N); }
   INLINE Boolean   Is_Task_Master                 (Node_Id N)
      { return Flag5 (N); }
   INLINE Node_Id   Iteration_Scheme               (Node_Id N)
      { return Node2 (N); }
   INLINE Entity_Id Itype                          (Node_Id N)
      { return Node1 (N); }
   INLINE Boolean   Kill_Range_Check               (Node_Id N)
      { return Flag11 (N); }
   INLINE Node_Id   Label_Construct                (Node_Id N)
      { return Node2 (N); }
   INLINE Node_Id   Left_Opnd                      (Node_Id N)
      { return Node2 (N); }
   INLINE Node_Id   Last_Bit                       (Node_Id N)
      { return Node4 (N); }
   INLINE Boolean   Last_Name                      (Node_Id N)
      { return Flag6 (N); }
   INLINE Node_Id   Library_Unit                   (Node_Id N)
      { return Node4 (N); }
   INLINE Boolean   Limited_View_Installed         (Node_Id N)
      { return Flag18 (N); }
   INLINE Boolean   Limited_Present                (Node_Id N)
      { return Flag17 (N); }
   INLINE List_Id   Literals                       (Node_Id N)
      { return List1 (N); }
   INLINE List_Id   Loop_Actions                   (Node_Id N)
      { return List2 (N); }
   INLINE Node_Id   Loop_Parameter_Specification   (Node_Id N)
      { return Node4 (N); }
   INLINE Node_Id   Low_Bound                      (Node_Id N)
      { return Node1 (N); }
   INLINE Node_Id   Mod_Clause                     (Node_Id N)
      { return Node2 (N); }
   INLINE Boolean   More_Ids                       (Node_Id N)
      { return Flag5 (N); }
   INLINE Boolean   Must_Be_Byte_Aligned           (Node_Id N)
      { return Flag14 (N); }
   INLINE Boolean   Must_Not_Freeze                (Node_Id N)
      { return Flag8 (N); }
   INLINE Boolean   Must_Not_Override              (Node_Id N)
      { return Flag15 (N); }
   INLINE Boolean   Must_Override                  (Node_Id N)
      { return Flag14 (N); }
   INLINE Node_Id   Name                           (Node_Id N)
      { return Node2 (N); }
   INLINE List_Id   Names                          (Node_Id N)
      { return List2 (N); }
   INLINE Node_Id   Next_Entity                    (Node_Id N)
      { return Node2 (N); }
   INLINE Node_Id   Next_Named_Actual              (Node_Id N)
      { return Node4 (N); }
   INLINE Node_Id   Next_Rep_Item                  (Node_Id N)
      { return Node4 (N); }
   INLINE Node_Id   Next_Use_Clause                (Node_Id N)
      { return Node3 (N); }
   INLINE Boolean   No_Ctrl_Actions                (Node_Id N)
      { return Flag7 (N); }
   INLINE Boolean   No_Elaboration_Check           (Node_Id N)
      { return Flag14 (N); }
   INLINE Boolean   No_Entities_Ref_In_Spec        (Node_Id N)
      { return Flag8 (N); }
   INLINE Boolean   No_Initialization              (Node_Id N)
      { return Flag13 (N); }
   INLINE Boolean   No_Truncation                  (Node_Id N)
      { return Flag17 (N); }
   INLINE Boolean   Null_Present                   (Node_Id N)
      { return Flag13 (N); }
   INLINE Boolean   Null_Exclusion_Present         (Node_Id N)
      { return Flag11 (N); }
   INLINE Boolean   Null_Record_Present            (Node_Id N)
      { return Flag17 (N); }
   INLINE Node_Id   Object_Definition              (Node_Id N)
      { return Node4 (N); }
   INLINE Node_Id   Original_Discriminant          (Node_Id N)
      { return Node2 (N); }
   INLINE Entity_Id Original_Entity                (Node_Id N)
      { return Node2 (N); }
   INLINE List_Id   Others_Discrete_Choices        (Node_Id N)
      { return List1 (N); }
   INLINE Boolean   Out_Present                    (Node_Id N)
      { return Flag17 (N); }
   INLINE List_Id   Parameter_Associations         (Node_Id N)
      { return List3 (N); }
   INLINE Boolean   Parameter_List_Truncated       (Node_Id N)
      { return Flag17 (N); }
   INLINE List_Id   Parameter_Specifications       (Node_Id N)
      { return List3 (N); }
   INLINE Node_Id   Parameter_Type                 (Node_Id N)
      { return Node2 (N); }
   INLINE Node_Id   Parent_Spec                    (Node_Id N)
      { return Node4 (N); }
   INLINE Node_Id   Position                       (Node_Id N)
      { return Node2 (N); }
   INLINE List_Id   Pragma_Argument_Associations   (Node_Id N)
      { return List2 (N); }
   INLINE List_Id   Pragmas_After                  (Node_Id N)
      { return List5 (N); }
   INLINE List_Id   Pragmas_Before                 (Node_Id N)
      { return List4 (N); }
   INLINE Node_Id   Prefix                         (Node_Id N)
      { return Node3 (N); }
   INLINE Uint      Present_Expr                   (Node_Id N)
      { return Uint3 (N); }
   INLINE Boolean   Prev_Ids                       (Node_Id N)
      { return Flag6 (N); }
   INLINE Boolean   Print_In_Hex                   (Node_Id N)
      { return Flag13 (N); }
   INLINE List_Id   Private_Declarations           (Node_Id N)
      { return List3 (N); }
   INLINE Boolean   Private_Present                (Node_Id N)
      { return Flag15 (N); }
   INLINE Node_Id   Procedure_To_Call              (Node_Id N)
      { return Node4 (N); }
   INLINE Node_Id   Proper_Body                    (Node_Id N)
      { return Node1 (N); }
   INLINE Node_Id   Protected_Definition           (Node_Id N)
      { return Node3 (N); }
   INLINE Boolean   Protected_Present              (Node_Id N)
      { return Flag6 (N); }
   INLINE Boolean   Raises_Constraint_Error        (Node_Id N)
      { return Flag7 (N); }
   INLINE Node_Id   Range_Constraint               (Node_Id N)
      { return Node4 (N); }
   INLINE Node_Id   Range_Expression               (Node_Id N)
      { return Node4 (N); }
   INLINE Node_Id   Real_Range_Specification       (Node_Id N)
      { return Node4 (N); }
   INLINE Ureal     Realval                        (Node_Id N)
      { return Ureal3 (N); }
   INLINE Uint      Reason                         (Node_Id N)
      { return Uint3 (N); }
   INLINE Node_Id   Record_Extension_Part          (Node_Id N)
      { return Node3 (N); }
   INLINE Boolean   Redundant_Use                  (Node_Id N)
      { return Flag13 (N); }
   INLINE Node_Id   Result_Definition              (Node_Id N)
      { return Node4 (N); }
   INLINE Node_Id   Return_Type                    (Node_Id N)
      { return Node2 (N); }
   INLINE Boolean   Reverse_Present                (Node_Id N)
      { return Flag15 (N); }
   INLINE Node_Id   Right_Opnd                     (Node_Id N)
      { return Node3 (N); }
   INLINE Boolean   Rounded_Result                 (Node_Id N)
      { return Flag18 (N); }
   INLINE Node_Id   Scope                          (Node_Id N)
      { return Node3 (N); }
   INLINE List_Id   Select_Alternatives            (Node_Id N)
      { return List1 (N); }
   INLINE Node_Id   Selector_Name                  (Node_Id N)
      { return Node2 (N); }
   INLINE List_Id   Selector_Names                 (Node_Id N)
      { return List1 (N); }
   INLINE Boolean   Shift_Count_OK                 (Node_Id N)
      { return Flag4 (N); }
   INLINE Entity_Id Source_Type                    (Node_Id N)
      { return Node1 (N); }
   INLINE Node_Id   Specification                  (Node_Id N)
      { return Node1 (N); }
   INLINE List_Id   Statements                     (Node_Id N)
      { return List3 (N); }
   INLINE Boolean   Static_Processing_OK           (Node_Id N)
      { return Flag4 (N); }
   INLINE Node_Id   Storage_Pool                   (Node_Id N)
      { return Node1 (N); }
   INLINE String_Id Strval                         (Node_Id N)
      { return Str3 (N); }
   INLINE Node_Id   Subtype_Indication             (Node_Id N)
      { return Node5 (N); }
   INLINE Node_Id   Subtype_Mark                   (Node_Id N)
      { return Node4 (N); }
   INLINE List_Id   Subtype_Marks                  (Node_Id N)
      { return List2 (N); }
   INLINE Boolean   Synchronized_Present           (Node_Id N)
      { return Flag7 (N); }
   INLINE Boolean   Tagged_Present                 (Node_Id N)
      { return Flag15 (N); }
   INLINE Entity_Id Target_Type                    (Node_Id N)
      { return Node2 (N); }
   INLINE Node_Id   Task_Definition                (Node_Id N)
      { return Node3 (N); }
   INLINE Boolean   Task_Present                   (Node_Id N)
      { return Flag5 (N); }
   INLINE List_Id   Then_Actions                   (Node_Id N)
      { return List2 (N); }
   INLINE List_Id   Then_Statements                (Node_Id N)
      { return List2 (N); }
   INLINE Boolean   Treat_Fixed_As_Integer         (Node_Id N)
      { return Flag14 (N); }
   INLINE Node_Id   Triggering_Alternative         (Node_Id N)
      { return Node1 (N); }
   INLINE Node_Id   Triggering_Statement           (Node_Id N)
      { return Node1 (N); }
   INLINE Elist_Id  TSS_Elist                      (Node_Id N)
      { return Elist3 (N); }
   INLINE Node_Id   Type_Definition                (Node_Id N)
      { return Node3 (N); }
   INLINE Node_Id   Unit                           (Node_Id N)
      { return Node2 (N); }
   INLINE Boolean   Unknown_Discriminants_Present  (Node_Id N)
      { return Flag13 (N); }
   INLINE Boolean   Unreferenced_In_Spec           (Node_Id N)
      { return Flag7 (N); }
   INLINE Node_Id   Variant_Part                   (Node_Id N)
      { return Node4 (N); }
   INLINE List_Id   Variants                       (Node_Id N)
      { return List1 (N); }
   INLINE List_Id   Visible_Declarations           (Node_Id N)
      { return List2 (N); }
   INLINE Boolean   Was_Originally_Stub            (Node_Id N)
      { return Flag13 (N); }
   INLINE Boolean   Zero_Cost_Handling             (Node_Id N)
      { return Flag5 (N); }

