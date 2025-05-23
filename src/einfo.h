/*--------------------------------------------------------------------------*/
/*                                                                          */
/*                         GNAT COMPILER COMPONENTS                         */
/*                                                                          */
/*                                E I N F O                                 */
/*                                                                          */
/*                              C Header File                               */
/*                                                                          */
/*          Copyright (C) 1992-2006, Free Software Foundation, Inc.         */
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

   #define E_Void                           0
   #define E_Variable                       1
   #define E_Component                      2
   #define E_Constant                       3
   #define E_Discriminant                   4
   #define E_Loop_Parameter                 5
   #define E_In_Parameter                   6
   #define E_Out_Parameter                  7
   #define E_In_Out_Parameter               8
   #define E_Generic_In_Out_Parameter       9
   #define E_Generic_In_Parameter           10
   #define E_Named_Integer                  11
   #define E_Named_Real                     12
   #define E_Enumeration_Type               13
   #define E_Enumeration_Subtype            14
   #define E_Signed_Integer_Type            15
   #define E_Signed_Integer_Subtype         16
   #define E_Modular_Integer_Type           17
   #define E_Modular_Integer_Subtype        18
   #define E_Ordinary_Fixed_Point_Type      19
   #define E_Ordinary_Fixed_Point_Subtype   20
   #define E_Decimal_Fixed_Point_Type       21
   #define E_Decimal_Fixed_Point_Subtype    22
   #define E_Floating_Point_Type            23
   #define E_Floating_Point_Subtype         24
   #define E_Access_Type                    25
   #define E_Access_Subtype                 26
   #define E_Access_Attribute_Type          27
   #define E_Allocator_Type                 28
   #define E_General_Access_Type            29
   #define E_Access_Subprogram_Type         30
   #define E_Access_Protected_Subprogram_Type 31
   #define E_Anonymous_Access_Subprogram_Type 32
   #define E_Anonymous_Access_Protected_Subprogram_Type 33
   #define E_Anonymous_Access_Type          34
   #define E_Array_Type                     35
   #define E_Array_Subtype                  36
   #define E_String_Type                    37
   #define E_String_Subtype                 38
   #define E_String_Literal_Subtype         39
   #define E_Class_Wide_Type                40
   #define E_Class_Wide_Subtype             41
   #define E_Record_Type                    42
   #define E_Record_Subtype                 43
   #define E_Record_Type_With_Private       44
   #define E_Record_Subtype_With_Private    45
   #define E_Private_Type                   46
   #define E_Private_Subtype                47
   #define E_Limited_Private_Type           48
   #define E_Limited_Private_Subtype        49
   #define E_Incomplete_Type                50
   #define E_Task_Type                      51
   #define E_Task_Subtype                   52
   #define E_Protected_Type                 53
   #define E_Protected_Subtype              54
   #define E_Exception_Type                 55
   #define E_Subprogram_Type                56
   #define E_Enumeration_Literal            57
   #define E_Function                       58
   #define E_Operator                       59
   #define E_Procedure                      60
   #define E_Entry                          61
   #define E_Entry_Family                   62
   #define E_Block                          63
   #define E_Entry_Index_Parameter          64
   #define E_Exception                      65
   #define E_Generic_Function               66
   #define E_Generic_Procedure              67
   #define E_Generic_Package                68
   #define E_Label                          69
   #define E_Loop                           70
   #define E_Package                        71
   #define E_Package_Body                   72
   #define E_Protected_Object               73
   #define E_Protected_Body                 74
   #define E_Task_Body                      75
   #define E_Subprogram_Body                76

   SUBTYPE (Access_Kind, Entity_Kind, 
      E_Access_Type, E_Anonymous_Access_Type)

   SUBTYPE (Array_Kind, Entity_Kind, 
      E_Array_Type, E_String_Literal_Subtype)

   SUBTYPE (Class_Wide_Kind, Entity_Kind, 
      E_Class_Wide_Type, E_Class_Wide_Subtype)

   SUBTYPE (Composite_Kind, Entity_Kind, 
      E_Array_Type, E_Protected_Subtype)

   SUBTYPE (Concurrent_Kind, Entity_Kind, 
      E_Task_Type, E_Protected_Subtype)

   SUBTYPE (Concurrent_Body_Kind, Entity_Kind, 
      E_Protected_Body, E_Task_Body)

   SUBTYPE (Decimal_Fixed_Point_Kind, Entity_Kind, 
      E_Decimal_Fixed_Point_Type, E_Decimal_Fixed_Point_Subtype)

   SUBTYPE (Digits_Kind, Entity_Kind, 
      E_Decimal_Fixed_Point_Type, E_Floating_Point_Subtype)

   SUBTYPE (Discrete_Kind, Entity_Kind, 
      E_Enumeration_Type, E_Modular_Integer_Subtype)

   SUBTYPE (Discrete_Or_Fixed_Point_Kind, Entity_Kind, 
      E_Enumeration_Type, E_Decimal_Fixed_Point_Subtype)

   SUBTYPE (Elementary_Kind, Entity_Kind, 
      E_Enumeration_Type, E_Anonymous_Access_Type)

   SUBTYPE (Enumeration_Kind, Entity_Kind, 
      E_Enumeration_Type, E_Enumeration_Subtype)

   SUBTYPE (Entry_Kind, Entity_Kind, 
      E_Entry, E_Entry_Family)

   SUBTYPE (Fixed_Point_Kind, Entity_Kind, 
      E_Ordinary_Fixed_Point_Type, E_Decimal_Fixed_Point_Subtype)

   SUBTYPE (Float_Kind, Entity_Kind, 
      E_Floating_Point_Type, E_Floating_Point_Subtype)

   SUBTYPE (Formal_Kind, Entity_Kind, 
      E_In_Parameter, E_In_Out_Parameter)

   SUBTYPE (Generic_Subprogram_Kind, Entity_Kind, 
      E_Generic_Function, E_Generic_Procedure)

   SUBTYPE (Generic_Unit_Kind, Entity_Kind, 
      E_Generic_Function, E_Generic_Package)

   SUBTYPE (Incomplete_Or_Private_Kind, Entity_Kind, 
      E_Record_Type_With_Private, E_Incomplete_Type)

   SUBTYPE (Integer_Kind, Entity_Kind, 
      E_Signed_Integer_Type, E_Modular_Integer_Subtype)

   SUBTYPE (Modular_Integer_Kind, Entity_Kind, 
      E_Modular_Integer_Type, E_Modular_Integer_Subtype)

   SUBTYPE (Named_Kind, Entity_Kind, 
      E_Named_Integer, E_Named_Real)

   SUBTYPE (Numeric_Kind, Entity_Kind, 
      E_Signed_Integer_Type, E_Floating_Point_Subtype)

   SUBTYPE (Object_Kind, Entity_Kind, 
      E_Variable, E_Generic_In_Parameter)

   SUBTYPE (Ordinary_Fixed_Point_Kind, Entity_Kind, 
      E_Ordinary_Fixed_Point_Type, E_Ordinary_Fixed_Point_Subtype)

   SUBTYPE (Overloadable_Kind, Entity_Kind, 
      E_Enumeration_Literal, E_Entry)

   SUBTYPE (Private_Kind, Entity_Kind, 
      E_Record_Type_With_Private, E_Limited_Private_Subtype)

   SUBTYPE (Protected_Kind, Entity_Kind, 
      E_Protected_Type, E_Protected_Subtype)

   SUBTYPE (Real_Kind, Entity_Kind, 
      E_Ordinary_Fixed_Point_Type, E_Floating_Point_Subtype)

   SUBTYPE (Record_Kind, Entity_Kind, 
      E_Class_Wide_Type, E_Record_Subtype_With_Private)

   SUBTYPE (Scalar_Kind, Entity_Kind, 
      E_Enumeration_Type, E_Floating_Point_Subtype)

   SUBTYPE (String_Kind, Entity_Kind, 
      E_String_Type, E_String_Literal_Subtype)

   SUBTYPE (Subprogram_Kind, Entity_Kind, 
      E_Function, E_Procedure)

   SUBTYPE (Signed_Integer_Kind, Entity_Kind, 
      E_Signed_Integer_Type, E_Signed_Integer_Subtype)

   SUBTYPE (Task_Kind, Entity_Kind, 
      E_Task_Type, E_Task_Subtype)

   SUBTYPE (Type_Kind, Entity_Kind, 
      E_Enumeration_Type, E_Subprogram_Type)

   typedef char Component_Alignment_Kind;
      #define Calign_Default           0
      #define Calign_Component_Size    1
      #define Calign_Component_Size_4  2
      #define Calign_Storage_Unit      3

   typedef Boolean B;
   typedef Component_Alignment_Kind C;
   typedef Entity_Id E;
   typedef Mechanism_Type M;
   typedef Node_Id N;
   typedef Uint U;
   typedef Ureal R;
   typedef Elist_Id L;
   typedef List_Id S;

   INLINE L Abstract_Interfaces                (E Id);
   INLINE L Accept_Address                     (E Id);
   INLINE L Access_Disp_Table                  (E Id);
   INLINE E Actual_Subtype                     (E Id);
   INLINE B Address_Taken                      (E Id);
   INLINE E Alias                              (E Id);
   INLINE E Abstract_Interface_Alias           (E Id);
   INLINE U Alignment                          (E Id);
   INLINE E Associated_Final_Chain             (E Id);
   INLINE E Associated_Formal_Package          (E Id);
   INLINE N Associated_Node_For_Itype          (E Id);
   INLINE E Associated_Storage_Pool            (E Id);
   INLINE N Barrier_Function                   (E Id);
   INLINE N Block_Node                         (E Id);
   INLINE E Body_Entity                        (E Id);
   INLINE B Body_Needed_For_SAL                (E Id);
   INLINE E CR_Discriminant                    (E Id);
   INLINE B C_Pass_By_Copy                     (E Id);
   INLINE B Can_Never_Be_Null                  (E Id);
   INLINE B Checks_May_Be_Suppressed           (E Id);
   INLINE E Class_Wide_Type                    (E Id);
   INLINE E Cloned_Subtype                     (E Id);

   #define Component_Alignment einfo__component_alignment
   C Component_Alignment                (E Id);

   INLINE N Component_Clause                   (E Id);
   INLINE U Component_Bit_Offset               (E Id);
   INLINE U Component_Size                     (E Id);
   INLINE E Component_Type                     (E Id);
   INLINE E Corresponding_Concurrent_Type      (E Id);
   INLINE E Corresponding_Discriminant         (E Id);
   INLINE E Corresponding_Equality             (E Id);
   INLINE E Corresponding_Record_Type          (E Id);
   INLINE E Corresponding_Remote_Type          (E Id);
   INLINE E Current_Use_Clause                 (E Id);
   INLINE N Current_Value                      (E Id);
   INLINE B Debug_Info_Off                     (E Id);
   INLINE E Debug_Renaming_Link                (E Id);
   INLINE E DTC_Entity                         (E Id);
   INLINE U DT_Entry_Count                     (E Id);
   INLINE E DT_Offset_To_Top_Func              (E Id);
   INLINE U DT_Position                        (E Id);
   INLINE E Default_Expr_Function              (E Id);
   INLINE B Default_Expressions_Processed      (E Id);
   INLINE N Default_Value                      (E Id);
   INLINE B Delay_Cleanups                     (E Id);
   INLINE B Delay_Subprogram_Descriptors       (E Id);
   INLINE R Delta_Value                        (E Id);
   INLINE L Dependent_Instances                (E Id);
   INLINE B Depends_On_Private                 (E Id);
   INLINE U Digits_Value                       (E Id);
   INLINE E Directly_Designated_Type           (E Id);
   INLINE B Discard_Names                      (E Id);
   INLINE E Discriminal                        (E Id);
   INLINE E Discriminal_Link                   (E Id);
   INLINE E Discriminant_Checking_Func         (E Id);
   INLINE L Discriminant_Constraint            (E Id);
   INLINE N Discriminant_Default_Value         (E Id);
   INLINE U Discriminant_Number                (E Id);
   INLINE E Elaboration_Entity                 (E Id);
   INLINE B Elaboration_Entity_Required        (E Id);
   INLINE E Enclosing_Scope                    (E Id);
   INLINE B Entry_Accepted                     (E Id);
   INLINE E Entry_Bodies_Array                 (E Id);
   INLINE E Entry_Cancel_Parameter             (E Id);
   INLINE E Entry_Component                    (E Id);
   INLINE E Entry_Formal                       (E Id);
   INLINE E Entry_Index_Constant               (E Id);
   INLINE E Entry_Index_Type                   (E Id);
   INLINE E Entry_Parameters_Type              (E Id);
   INLINE E Enum_Pos_To_Rep                    (E Id);
   INLINE U Enumeration_Pos                    (E Id);
   INLINE U Enumeration_Rep                    (E Id);
   INLINE N Enumeration_Rep_Expr               (E Id);
   INLINE E Equivalent_Type                    (E Id);
   INLINE U Esize                              (E Id);
   INLINE U Exception_Code                     (E Id);
   INLINE E Extra_Accessibility                (E Id);
   INLINE E Extra_Constrained                  (E Id);
   INLINE E Extra_Formal                       (E Id);
   INLINE E Finalization_Chain_Entity          (E Id);

   #define Finalize_Storage_Only einfo__finalize_storage_only
   B Finalize_Storage_Only              (E Id);

   INLINE E First_Entity                       (E Id);
   INLINE N First_Index                        (E Id);
   INLINE E First_Literal                      (E Id);
   INLINE E First_Optional_Parameter           (E Id);
   INLINE E First_Private_Entity               (E Id);
   INLINE N First_Rep_Item                     (E Id);
   INLINE N Freeze_Node                        (E Id);
   INLINE B From_With_Type                     (E Id);
   INLINE E Full_View                          (E Id);
   INLINE B Function_Returns_With_DSP          (E Id);
   INLINE E Generic_Homonym                    (E Id);
   INLINE L Generic_Renamings                  (E Id);
   INLINE S Handler_Records                    (E Id);
   INLINE B Has_Aliased_Components             (E Id);
   INLINE B Has_Alignment_Clause               (E Id);
   INLINE B Has_All_Calls_Remote               (E Id);
   INLINE B Has_Anon_Block_Suffix              (E Id);
   INLINE B Has_Atomic_Components              (E Id);
   INLINE B Has_Biased_Representation          (E Id);
   INLINE B Has_Completion                     (E Id);
   INLINE B Has_Completion_In_Body             (E Id);
   INLINE B Has_Complex_Representation         (E Id);
   INLINE B Has_Component_Size_Clause          (E Id);
   INLINE B Has_Constrained_Partial_View       (E Id);
   INLINE B Has_Contiguous_Rep                 (E Id);
   INLINE B Has_Controlled_Component           (E Id);
   INLINE B Has_Controlling_Result             (E Id);
   INLINE B Has_Convention_Pragma              (E Id);
   INLINE B Has_Delayed_Freeze                 (E Id);
   INLINE B Has_Discriminants                  (E Id);
   INLINE B Has_Enumeration_Rep_Clause         (E Id);
   INLINE B Has_Exit                           (E Id);
   INLINE B Has_External_Tag_Rep_Clause        (E Id);
   INLINE B Has_Fully_Qualified_Name           (E Id);
   INLINE B Has_Gigi_Rep_Item                  (E Id);
   INLINE B Has_Homonym                        (E Id);

   #define Has_Interrupt_Handler einfo__has_interrupt_handler
   B Has_Interrupt_Handler              (E Id);

   INLINE B Has_Machine_Radix_Clause           (E Id);
   INLINE B Has_Master_Entity                  (E Id);
   INLINE B Has_Missing_Return                 (E Id);
   INLINE B Has_Nested_Block_With_Handler      (E Id);
   INLINE B Has_Forward_Instantiation          (E Id);
   INLINE B Has_Non_Standard_Rep               (E Id);
   INLINE B Has_Object_Size_Clause             (E Id);
   INLINE B Has_Per_Object_Constraint          (E Id);
   INLINE B Has_Persistent_BSS                 (E Id);
   INLINE B Has_Pragma_Controlled              (E Id);
   INLINE B Has_Pragma_Elaborate_Body          (E Id);
   INLINE B Has_Pragma_Inline                  (E Id);
   INLINE B Has_Pragma_Pack                    (E Id);
   INLINE B Has_Pragma_Pure_Function           (E Id);
   INLINE B Has_Pragma_Unreferenced            (E Id);
   INLINE B Has_Primitive_Operations           (E Id);
   INLINE B Has_Qualified_Name                 (E Id);
   INLINE B Has_Record_Rep_Clause              (E Id);
   INLINE B Has_Recursive_Call                 (E Id);
   INLINE B Has_Size_Clause                    (E Id);
   INLINE B Has_Small_Clause                   (E Id);
   INLINE B Has_Specified_Layout               (E Id);
   INLINE B Has_Specified_Stream_Input         (E Id);
   INLINE B Has_Specified_Stream_Output        (E Id);
   INLINE B Has_Specified_Stream_Read          (E Id);
   INLINE B Has_Specified_Stream_Write         (E Id);
   INLINE B Has_Storage_Size_Clause            (E Id);
   INLINE B Has_Stream_Size_Clause             (E Id);
   INLINE B Has_Subprogram_Descriptor          (E Id);
   INLINE B Has_Task                           (E Id);
   INLINE B Has_Unchecked_Union                (E Id);
   INLINE B Has_Unknown_Discriminants          (E Id);
   INLINE B Has_Volatile_Components            (E Id);
   INLINE B Has_Xref_Entry                     (E Id);
   INLINE E Hiding_Loop_Variable               (E Id);
   INLINE E Homonym                            (E Id);
   INLINE B In_Package_Body                    (E Id);
   INLINE B In_Private_Part                    (E Id);
   INLINE B In_Use                             (E Id);
   INLINE L Inner_Instances                    (E Id);
   INLINE N Interface_Name                     (E Id);
   INLINE B Is_AST_Entry                       (E Id);
   INLINE B Is_Abstract                        (E Id);
   INLINE B Is_Local_Anonymous_Access          (E Id);
   INLINE B Is_Access_Constant                 (E Id);
   INLINE B Is_Ada_2005                        (E Id);
   INLINE B Is_Aliased                         (E Id);
   INLINE B Is_Asynchronous                    (E Id);
   INLINE B Is_Atomic                          (E Id);
   INLINE B Is_Bit_Packed_Array                (E Id);
   INLINE B Is_CPP_Class                       (E Id);
   INLINE B Is_Called                          (E Id);
   INLINE B Is_Character_Type                  (E Id);
   INLINE B Is_Child_Unit                      (E Id);
   INLINE B Is_Class_Wide_Equivalent_Type      (E Id);
   INLINE B Is_Compilation_Unit                (E Id);
   INLINE B Is_Completely_Hidden               (E Id);
   INLINE B Is_Constr_Subt_For_UN_Aliased      (E Id);
   INLINE B Is_Constr_Subt_For_U_Nominal       (E Id);
   INLINE B Is_Constrained                     (E Id);
   INLINE B Is_Constructor                     (E Id);
   INLINE B Is_Controlled                      (E Id);
   INLINE B Is_Controlling_Formal              (E Id);
   INLINE B Is_Discrim_SO_Function             (E Id);
   INLINE B Is_Dispatching_Operation           (E Id);
   INLINE B Is_Eliminated                      (E Id);
   INLINE B Is_Entry_Formal                    (E Id);
   INLINE B Is_Exported                        (E Id);
   INLINE B Is_First_Subtype                   (E Id);
   INLINE B Is_For_Access_Subtype              (E Id);
   INLINE B Is_Frozen                          (E Id);
   INLINE B Is_Generic_Instance                (E Id);
   INLINE B Is_Hidden                          (E Id);
   INLINE B Is_Hidden_Open_Scope               (E Id);
   INLINE B Is_Immediately_Visible             (E Id);
   INLINE B Is_Imported                        (E Id);
   INLINE B Is_Inlined                         (E Id);
   INLINE B Is_Interface                       (E Id);
   INLINE B Is_Instantiated                    (E Id);
   INLINE B Is_Internal                        (E Id);
   INLINE B Is_Interrupt_Handler               (E Id);
   INLINE B Is_Intrinsic_Subprogram            (E Id);
   INLINE B Is_Itype                           (E Id);
   INLINE B Is_Known_Non_Null                  (E Id);
   INLINE B Is_Known_Null                      (E Id);
   INLINE B Is_Known_Valid                     (E Id);
   INLINE B Is_Limited_Composite               (E Id);
   INLINE B Is_Limited_Interface               (E Id);
   INLINE B Is_Machine_Code_Subprogram         (E Id);
   INLINE B Is_Non_Static_Subtype              (E Id);
   INLINE B Is_Null_Init_Proc                  (E Id);
   INLINE B Is_Obsolescent                     (E Id);
   INLINE B Is_Optional_Parameter              (E Id);
   INLINE B Is_Package_Body_Entity             (E Id);
   INLINE B Is_Packed                          (E Id);
   INLINE B Is_Packed_Array_Type               (E Id);
   INLINE B Is_Potentially_Use_Visible         (E Id);
   INLINE B Is_Preelaborated                   (E Id);
   INLINE B Is_Primitive_Wrapper               (E Id);
   INLINE B Is_Private_Composite               (E Id);
   INLINE B Is_Private_Descendant              (E Id);
   INLINE B Is_Protected_Interface             (E Id);
   INLINE B Is_Public                          (E Id);
   INLINE B Is_Pure                            (E Id);
   INLINE B Is_Pure_Unit_Access_Type           (E Id);
   INLINE B Is_Remote_Call_Interface           (E Id);
   INLINE B Is_Remote_Types                    (E Id);
   INLINE B Is_Renaming_Of_Object              (E Id);
   INLINE B Is_Shared_Passive                  (E Id);
   INLINE B Is_Statically_Allocated            (E Id);
   INLINE B Is_Synchronized_Interface          (E Id);
   INLINE B Is_Tag                             (E Id);
   INLINE B Is_Tagged_Type                     (E Id);
   INLINE B Is_Task_Interface                  (E Id);
   INLINE B Is_Thread_Body                     (E Id);
   INLINE B Is_True_Constant                   (E Id);
   INLINE B Is_Unchecked_Union                 (E Id);
   INLINE B Is_Unsigned_Type                   (E Id);
   INLINE B Is_VMS_Exception                   (E Id);
   INLINE B Is_Valued_Procedure                (E Id);
   INLINE B Is_Visible_Child_Unit              (E Id);

   #define Is_Volatile einfo__is_volatile
   B Is_Volatile                        (E Id);

   INLINE B Itype_Printed                      (E Id);
   INLINE B Kill_Elaboration_Checks            (E Id);
   INLINE B Kill_Range_Checks                  (E Id);
   INLINE B Kill_Tag_Checks                    (E Id);
   INLINE E Last_Entity                        (E Id);
   INLINE E Limited_View                       (E Id);
   INLINE E Lit_Indexes                        (E Id);
   INLINE E Lit_Strings                        (E Id);
   INLINE B Machine_Radix_10                   (E Id);
   INLINE E Master_Id                          (E Id);
   INLINE B Materialize_Entity                 (E Id);
   INLINE M Mechanism                          (E Id);
   INLINE U Modulus                            (E Id);
   INLINE B Must_Be_On_Byte_Boundary           (E Id);
   INLINE B Needs_Debug_Info                   (E Id);
   INLINE B Needs_No_Actuals                   (E Id);
   INLINE B Never_Set_In_Source                (E Id);
   INLINE E Next_Inlined_Subprogram            (E Id);
   INLINE B No_Pool_Assigned                   (E Id);
   INLINE B No_Return                          (E Id);
   INLINE B No_Strict_Aliasing                 (E Id);
   INLINE B Non_Binary_Modulus                 (E Id);
   INLINE E Non_Limited_View                   (E Id);
   INLINE B Nonzero_Is_True                    (E Id);
   INLINE U Normalized_First_Bit               (E Id);
   INLINE U Normalized_Position                (E Id);
   INLINE U Normalized_Position_Max            (E Id);
   INLINE E Object_Ref                         (E Id);
   INLINE N Obsolescent_Warning                (E Id);
   INLINE E Original_Access_Type               (E Id);
   INLINE E Original_Array_Type                (E Id);
   INLINE E Original_Record_Component          (E Id);
   INLINE E Overridden_Operation               (E Id);
   INLINE N Package_Instantiation              (E Id);
   INLINE E Packed_Array_Type                  (E Id);
   INLINE E Parent_Subtype                     (E Id);
   INLINE L Primitive_Operations               (E Id);
   INLINE E Prival                             (E Id);
   INLINE L Privals_Chain                      (E Id);
   INLINE L Private_Dependents                 (E Id);
   INLINE N Private_View                       (E Id);
   INLINE E Protected_Body_Subprogram          (E Id);
   INLINE E Protected_Formal                   (E Id);
   INLINE E Protected_Operation                (E Id);
   INLINE U RM_Size                            (E Id);
   INLINE B Reachable                          (E Id);
   INLINE B Referenced                         (E Id);
   INLINE B Referenced_As_LHS                  (E Id);
   INLINE N Referenced_Object                  (E Id);
   INLINE N Register_Exception_Call            (E Id);
   INLINE E Related_Array_Object               (E Id);
   INLINE E Related_Instance                   (E Id);
   INLINE N Renamed_Entity                     (E Id);
   INLINE N Renamed_Object                     (E Id);
   INLINE U Renaming_Map                       (E Id);
   INLINE B Return_Present                     (E Id);
   INLINE B Returns_By_Ref                     (E Id);
   INLINE B Reverse_Bit_Order                  (E Id);
   INLINE N Scalar_Range                       (E Id);
   INLINE U Scale_Value                        (E Id);
   INLINE U Scope_Depth_Value                  (E Id);
   INLINE B Sec_Stack_Needed_For_Return        (E Id);
   INLINE S Shadow_Entities                    (E Id);
   INLINE E Shared_Var_Assign_Proc             (E Id);
   INLINE E Shared_Var_Read_Proc               (E Id);
   INLINE N Size_Check_Code                    (E Id);
   INLINE B Size_Known_At_Compile_Time         (E Id);
   INLINE B Size_Depends_On_Discriminant       (E Id);
   INLINE R Small_Value                        (E Id);
   INLINE E Spec_Entity                        (E Id);
   INLINE E Storage_Size_Variable              (E Id);
   INLINE L Stored_Constraint                  (E Id);
   INLINE B Strict_Alignment                   (E Id);
   INLINE U String_Literal_Length              (E Id);
   INLINE N String_Literal_Low_Bound           (E Id);
   INLINE B Suppress_Elaboration_Warnings      (E Id);
   INLINE B Suppress_Init_Proc                 (E Id);
   INLINE B Suppress_Style_Checks              (E Id);
   INLINE N Task_Body_Procedure                (E Id);
   INLINE B Treat_As_Volatile                  (E Id);
   INLINE E Underlying_Full_View               (E Id);
   INLINE N Unset_Reference                    (E Id);
   INLINE B Uses_Sec_Stack                     (E Id);
   INLINE B Vax_Float                          (E Id);
   INLINE B Warnings_Off                       (E Id);
   INLINE B Was_Hidden                         (E Id);
   INLINE E Wrapped_Entity                     (E Id);
   INLINE B Is_Access_Type                     (E Id);
   INLINE B Is_Array_Type                      (E Id);
   INLINE B Is_Class_Wide_Type                 (E Id);
   INLINE B Is_Composite_Type                  (E Id);
   INLINE B Is_Concurrent_Body                 (E Id);
   INLINE B Is_Concurrent_Record_Type          (E Id);
   INLINE B Is_Concurrent_Type                 (E Id);
   INLINE B Is_Decimal_Fixed_Point_Type        (E Id);
   INLINE B Is_Digits_Type                     (E Id);
   INLINE B Is_Discrete_Or_Fixed_Point_Type    (E Id);
   INLINE B Is_Discrete_Type                   (E Id);
   INLINE B Is_Elementary_Type                 (E Id);
   INLINE B Is_Entry                           (E Id);
   INLINE B Is_Enumeration_Type                (E Id);
   INLINE B Is_Fixed_Point_Type                (E Id);
   INLINE B Is_Floating_Point_Type             (E Id);
   INLINE B Is_Formal                          (E Id);
   INLINE B Is_Formal_Subprogram               (E Id);
   INLINE B Is_Generic_Actual_Type             (E Id);
   INLINE B Is_Generic_Unit                    (E Id);
   INLINE B Is_Generic_Type                    (E Id);
   INLINE B Is_Generic_Subprogram              (E Id);
   INLINE B Is_Incomplete_Or_Private_Type      (E Id);
   INLINE B Is_Integer_Type                    (E Id);
   INLINE B Is_Limited_Record                  (E Id);
   INLINE B Is_Modular_Integer_Type            (E Id);
   INLINE B Is_Named_Number                    (E Id);
   INLINE B Is_Numeric_Type                    (E Id);
   INLINE B Is_Object                          (E Id);
   INLINE B Is_Ordinary_Fixed_Point_Type       (E Id);
   INLINE B Is_Overloadable                    (E Id);
   INLINE B Is_Overriding_Operation            (E Id);
   INLINE B Is_Private_Type                    (E Id);
   INLINE B Is_Protected_Type                  (E Id);
   INLINE B Is_Real_Type                       (E Id);
   INLINE B Is_Record_Type                     (E Id);
   INLINE B Is_Scalar_Type                     (E Id);
   INLINE B Is_Signed_Integer_Type             (E Id);
   INLINE B Is_Subprogram                      (E Id);
   INLINE B Is_Task_Type                       (E Id);
   INLINE B Is_Type                            (E Id);

   #define Address_Clause einfo__address_clause
   N Address_Clause                     (E Id);

   #define Alignment_Clause einfo__alignment_clause
   N Alignment_Clause                   (E Id);

   #define Ancestor_Subtype einfo__ancestor_subtype
   E Ancestor_Subtype                   (E Id);

   #define Base_Type einfo__base_type
   E Base_Type                          (E Id);

   #define Constant_Value einfo__constant_value
   N Constant_Value                     (E Id);

   #define Declaration_Node einfo__declaration_node
   N Declaration_Node                   (E Id);

   #define Designated_Type einfo__designated_type
   E Designated_Type                    (E Id);

   #define Enclosing_Dynamic_Scope einfo__enclosing_dynamic_scope
   E Enclosing_Dynamic_Scope            (E Id);

   #define First_Component einfo__first_component
   E First_Component                    (E Id);

   #define First_Discriminant einfo__first_discriminant
   E First_Discriminant                 (E Id);

   #define First_Formal einfo__first_formal
   E First_Formal                       (E Id);

   #define First_Stored_Discriminant einfo__first_stored_discriminant
   E First_Stored_Discriminant          (E Id);

   #define First_Subtype einfo__first_subtype
   E First_Subtype                      (E Id);

   #define Has_Attach_Handler einfo__has_attach_handler
   B Has_Attach_Handler                 (E Id);

   #define Has_Entries einfo__has_entries
   B Has_Entries                        (E Id);

   #define Has_Foreign_Convention einfo__has_foreign_convention
   B Has_Foreign_Convention             (E Id);

   #define Has_Private_Ancestor einfo__has_private_ancestor
   B Has_Private_Ancestor               (E Id);

   INLINE B Has_Private_Declaration            (E Id);

   #define Implementation_Base_Type einfo__implementation_base_type
   E Implementation_Base_Type           (E Id);

   #define Is_Always_Inlined einfo__is_always_inlined
   B Is_Always_Inlined                  (E Id);

   #define Is_Boolean_Type einfo__is_boolean_type
   B Is_Boolean_Type                    (E Id);

   #define Is_By_Copy_Type einfo__is_by_copy_type
   B Is_By_Copy_Type                    (E Id);

   #define Is_By_Reference_Type einfo__is_by_reference_type
   B Is_By_Reference_Type               (E Id);

   #define Is_Derived_Type einfo__is_derived_type
   B Is_Derived_Type                    (E Id);

   #define Is_Dynamic_Scope einfo__is_dynamic_scope
   B Is_Dynamic_Scope                   (E Id);

   #define Is_Indefinite_Subtype einfo__is_indefinite_subtype
   B Is_Indefinite_Subtype              (E Id);

   #define Is_Limited_Type einfo__is_limited_type
   B Is_Limited_Type                    (E Id);

   #define Is_Package_Or_Generic_Package einfo__is_package_or_generic_package
   B Is_Package_Or_Generic_Package      (E Id);

   #define Is_Protected_Private einfo__is_protected_private
   B Is_Protected_Private               (E Id);

   #define Is_Protected_Record_Type einfo__is_protected_record_type
   B Is_Protected_Record_Type           (E Id);

   #define Is_Return_By_Reference_Type einfo__is_return_by_reference_type
   B Is_Return_By_Reference_Type        (E Id);

   #define Is_String_Type einfo__is_string_type
   B Is_String_Type                     (E Id);

   #define Is_Task_Record_Type einfo__is_task_record_type
   B Is_Task_Record_Type                (E Id);

   #define Is_Wrapper_Package einfo__is_wrapper_package
   B Is_Wrapper_Package                 (E Id);

   #define Next_Component einfo__next_component
   E Next_Component                     (E Id);

   #define Next_Discriminant einfo__next_discriminant
   E Next_Discriminant                  (E Id);

   #define Next_Formal einfo__next_formal
   E Next_Formal                        (E Id);

   #define Next_Formal_With_Extras einfo__next_formal_with_extras
   E Next_Formal_With_Extras            (E Id);

   INLINE E Next_Literal                       (E Id);

   #define Next_Stored_Discriminant einfo__next_stored_discriminant
   E Next_Stored_Discriminant           (E Id);

   #define Number_Dimensions einfo__number_dimensions
   Pos Number_Dimensions                  (E Id);

   #define Number_Discriminants einfo__number_discriminants
   Pos Number_Discriminants               (E Id);

   #define Number_Entries einfo__number_entries
   Nat Number_Entries                     (E Id);

   #define Number_Formals einfo__number_formals
   Pos Number_Formals                     (E Id);

   INLINE Formal_Kind Parameter_Mode                     (E Id);

   #define Root_Type einfo__root_type
   E Root_Type                          (E Id);

   #define Scope_Depth_Set einfo__scope_depth_set
   B Scope_Depth_Set                    (E Id);

   #define Size_Clause einfo__size_clause
   N Size_Clause                        (E Id);

   #define Stream_Size_Clause einfo__stream_size_clause
   N Stream_Size_Clause                 (E Id);

   #define First_Tag_Component einfo__first_tag_component
   E First_Tag_Component                (E Id);

   #define Next_Tag_Component einfo__next_tag_component
   E Next_Tag_Component                 (E Id);

   #define Type_High_Bound einfo__type_high_bound
   N Type_High_Bound                    (E Id);

   #define Type_Low_Bound einfo__type_low_bound
   N Type_Low_Bound                     (E Id);

   #define Underlying_Type einfo__underlying_type
   E Underlying_Type                    (E Id);

   #define Known_Alignment einfo__known_alignment
   B Known_Alignment                       (Entity_Id E);

   #define Known_Component_Bit_Offset einfo__known_component_bit_offset
   B Known_Component_Bit_Offset            (Entity_Id E);

   #define Known_Component_Size einfo__known_component_size
   B Known_Component_Size                  (Entity_Id E);

   #define Known_Esize einfo__known_esize
   B Known_Esize                           (Entity_Id E);

   #define Known_Normalized_First_Bit einfo__known_normalized_first_bit
   B Known_Normalized_First_Bit            (Entity_Id E);

   #define Known_Normalized_Position einfo__known_normalized_position
   B Known_Normalized_Position             (Entity_Id E);

   #define Known_Normalized_Position_Max einfo__known_normalized_position_max
   B Known_Normalized_Position_Max         (Entity_Id E);

   #define Known_RM_Size einfo__known_rm_size
   B Known_RM_Size                         (Entity_Id E);

   #define Known_Static_Component_Bit_Offset einfo__known_static_component_bit_offset
   B Known_Static_Component_Bit_Offset     (Entity_Id E);

   #define Known_Static_Component_Size einfo__known_static_component_size
   B Known_Static_Component_Size           (Entity_Id E);

   #define Known_Static_Esize einfo__known_static_esize
   B Known_Static_Esize                    (Entity_Id E);

   #define Known_Static_Normalized_First_Bit einfo__known_static_normalized_first_bit
   B Known_Static_Normalized_First_Bit     (Entity_Id E);

   #define Known_Static_Normalized_Position einfo__known_static_normalized_position
   B Known_Static_Normalized_Position      (Entity_Id E);

   #define Known_Static_Normalized_Position_Max einfo__known_static_normalized_position_max
   B Known_Static_Normalized_Position_Max  (Entity_Id E);

   #define Known_Static_RM_Size einfo__known_static_rm_size
   B Known_Static_RM_Size                  (Entity_Id E);

   #define Unknown_Alignment einfo__unknown_alignment
   B Unknown_Alignment                     (Entity_Id E);

   #define Unknown_Component_Bit_Offset einfo__unknown_component_bit_offset
   B Unknown_Component_Bit_Offset          (Entity_Id E);

   #define Unknown_Component_Size einfo__unknown_component_size
   B Unknown_Component_Size                (Entity_Id E);

   #define Unknown_Esize einfo__unknown_esize
   B Unknown_Esize                         (Entity_Id E);

   #define Unknown_Normalized_First_Bit einfo__unknown_normalized_first_bit
   B Unknown_Normalized_First_Bit          (Entity_Id E);

   #define Unknown_Normalized_Position einfo__unknown_normalized_position
   B Unknown_Normalized_Position           (Entity_Id E);

   #define Unknown_Normalized_Position_Max einfo__unknown_normalized_position_max
   B Unknown_Normalized_Position_Max       (Entity_Id E);

   #define Unknown_RM_Size einfo__unknown_rm_size
   B Unknown_RM_Size                       (Entity_Id E);


   INLINE L Abstract_Interfaces (E Id)
      { return Elist24 (Id); }

   INLINE E Abstract_Interface_Alias (E Id)
      { return Node25 (Id); }

   INLINE L Accept_Address (E Id)
      { return Elist21 (Id); }

   INLINE L Access_Disp_Table (E Id)
      { return Elist16 (Implementation_Base_Type (Id)); }

   INLINE E Actual_Subtype (E Id)
      { return Node17 (Id); }

   INLINE B Address_Taken (E Id)
      { return Flag104 (Id); }

   INLINE E Alias (E Id)
      { return Node18 (Id); }

   INLINE U Alignment (E Id)
      { return Uint14 (Id); }

   INLINE E Associated_Final_Chain (E Id)
      { return Node23 (Id); }

   INLINE E Associated_Formal_Package (E Id)
      { return Node12 (Id); }

   INLINE N Associated_Node_For_Itype (E Id)
      { return Node8 (Id); }

   INLINE E Associated_Storage_Pool (E Id)
      { return Node22 (Root_Type (Id)); }

   INLINE N Barrier_Function (E Id)
      { return Node12 (Id); }

   INLINE N Block_Node (E Id)
      { return Node11 (Id); }

   INLINE E Body_Entity (E Id)
      { return Node19 (Id); }

   INLINE B Body_Needed_For_SAL (E Id)
      { return Flag40 (Id); }

   INLINE B C_Pass_By_Copy (E Id)
      { return Flag125 (Implementation_Base_Type (Id)); }

   INLINE B Can_Never_Be_Null (E Id)
      { return Flag38 (Id); }

   INLINE B Checks_May_Be_Suppressed (E Id)
      { return Flag31 (Id); }

   INLINE E Class_Wide_Type (E Id)
      { return Node9 (Id); }

   INLINE E Cloned_Subtype (E Id)
      { return Node16 (Id); }

   INLINE U Component_Bit_Offset (E Id)
      { return Uint11 (Id); }

   INLINE N Component_Clause (E Id)
      { return Node13 (Id); }

   INLINE U Component_Size (E Id)
      { return Uint22 (Implementation_Base_Type (Id)); }

   INLINE E Component_Type (E Id)
      { return Node20 (Implementation_Base_Type (Id)); }

   INLINE E Corresponding_Concurrent_Type (E Id)
      { return Node18 (Id); }

   INLINE E Corresponding_Discriminant (E Id)
      { return Node19 (Id); }

   INLINE E Corresponding_Equality (E Id)
      { return Node13 (Id); }

   INLINE E Corresponding_Record_Type (E Id)
      { return Node18 (Id); }

   INLINE E Corresponding_Remote_Type (E Id)
      { return Node22 (Id); }

   INLINE E Current_Use_Clause (E Id)
      { return Node25 (Id); }

   INLINE N Current_Value (E Id)
      { return Node9 (Id); }

   INLINE E CR_Discriminant (E Id)
      { return Node23 (Id); }

   INLINE B Debug_Info_Off (E Id)
      { return Flag166 (Id); }

   INLINE E Debug_Renaming_Link (E Id)
      { return Node13 (Id); }

   INLINE E Default_Expr_Function (E Id)
      { return Node21 (Id); }

   INLINE B Default_Expressions_Processed (E Id)
      { return Flag108 (Id); }

   INLINE N Default_Value (E Id)
      { return Node20 (Id); }

   INLINE B Delay_Cleanups (E Id)
      { return Flag114 (Id); }

   INLINE B Delay_Subprogram_Descriptors (E Id)
      { return Flag50 (Id); }

   INLINE R Delta_Value (E Id)
      { return Ureal18 (Id); }

   INLINE L Dependent_Instances (E Id)
      { return Elist8 (Id); }

   INLINE B Depends_On_Private (E Id)
      { return Flag14 (Id); }

   INLINE U Digits_Value (E Id)
      { return Uint17 (Id); }

   INLINE E Directly_Designated_Type (E Id)
      { return Node20 (Id); }

   INLINE B Discard_Names (E Id)
      { return Flag88 (Id); }

   INLINE E Discriminal (E Id)
      { return Node17 (Id); }

   INLINE N Discriminal_Link (E Id)
      { return Node10 (Id); }

   INLINE E Discriminant_Checking_Func (E Id)
      { return Node20 (Id); }

   INLINE L Discriminant_Constraint (E Id)
      { return Elist21 (Id); }

   INLINE N Discriminant_Default_Value (E Id)
      { return Node20 (Id); }

   INLINE U Discriminant_Number (E Id)
      { return Uint15 (Id); }

   INLINE U DT_Entry_Count (E Id)
      { return Uint15 (Id); }

   INLINE E DT_Offset_To_Top_Func (E Id)
      { return Node24 (Id); }

   INLINE U DT_Position (E Id)
      { return Uint15 (Id); }

   INLINE E DTC_Entity (E Id)
      { return Node16 (Id); }

   INLINE E Elaboration_Entity (E Id)
      { return Node13 (Id); }

   INLINE B Elaboration_Entity_Required (E Id)
      { return Flag174 (Id); }

   INLINE E Enclosing_Scope (E Id)
      { return Node18 (Id); }

   INLINE B Entry_Accepted (E Id)
      { return Flag152 (Id); }

   INLINE E Entry_Bodies_Array (E Id)
      { return Node15 (Id); }

   INLINE E Entry_Cancel_Parameter (E Id)
      { return Node23 (Id); }

   INLINE E Entry_Component (E Id)
      { return Node11 (Id); }

   INLINE E Entry_Formal (E Id)
      { return Node16 (Id); }

   INLINE N Entry_Index_Constant (E Id)
      { return Node18 (Id); }

   INLINE E Entry_Parameters_Type (E Id)
      { return Node15 (Id); }

   INLINE E Enum_Pos_To_Rep (E Id)
      { return Node23 (Id); }

   INLINE Uint Enumeration_Pos (E Id)
      { return Uint11 (Id); }

   INLINE U Enumeration_Rep (E Id)
      { return Uint12 (Id); }

   INLINE N Enumeration_Rep_Expr (E Id)
      { return Node22 (Id); }

   INLINE E Equivalent_Type (E Id)
      { return Node18 (Id); }

   INLINE Uint Esize (E Id)
      { return Uint12 (Id); }

   INLINE Uint Exception_Code (E Id)
      { return Uint22 (Id); }

   INLINE E Extra_Accessibility (E Id)
      { return Node13 (Id); }

   INLINE E Extra_Constrained (E Id)
      { return Node23 (Id); }

   INLINE E Extra_Formal (E Id)
      { return Node15 (Id); }

   INLINE E Finalization_Chain_Entity (E Id)
      { return Node19 (Id); }

   INLINE E First_Entity (E Id)
      { return Node17 (Id); }

   INLINE N First_Index (E Id)
      { return Node17 (Id); }

   INLINE E First_Literal (E Id)
      { return Node17 (Id); }

   INLINE E First_Optional_Parameter (E Id)
      { return Node14 (Id); }

   INLINE E First_Private_Entity (E Id)
      { return Node16 (Id); }

   INLINE E First_Rep_Item (E Id)
      { return Node6 (Id); }

   INLINE N Freeze_Node (E Id)
      { return Node7 (Id); }

   INLINE B From_With_Type (E Id)
      { return Flag159 (Id); }

   INLINE E Full_View (E Id)
      { return Node11 (Id); }

   INLINE B Function_Returns_With_DSP (E Id)
      { return Flag169 (Id); }

   INLINE E Generic_Homonym (E Id)
      { return Node11 (Id); }

   INLINE L Generic_Renamings (E Id)
      { return Elist23 (Id); }

   INLINE S Handler_Records (E Id)
      { return List10 (Id); }

   INLINE B Has_Aliased_Components (E Id)
      { return Flag135 (Implementation_Base_Type (Id)); }

   INLINE B Has_Alignment_Clause (E Id)
      { return Flag46 (Id); }

   INLINE B Has_All_Calls_Remote (E Id)
      { return Flag79 (Id); }

   INLINE B Has_Anon_Block_Suffix (E Id)
      { return Flag201 (Id); }

   INLINE B Has_Atomic_Components (E Id)
      { return Flag86 (Implementation_Base_Type (Id)); }

   INLINE B Has_Biased_Representation (E Id)
      { return Flag139 (Id); }

   INLINE B Has_Completion (E Id)
      { return Flag26 (Id); }

   INLINE B Has_Completion_In_Body (E Id)
      { return Flag71 (Id); }

   INLINE B Has_Complex_Representation (E Id)
      { return Flag140 (Implementation_Base_Type (Id)); }

   INLINE B Has_Component_Size_Clause (E Id)
      { return Flag68 (Implementation_Base_Type (Id)); }

   INLINE B Has_Constrained_Partial_View (E Id)
      { return Flag187 (Id); }

   INLINE B Has_Controlled_Component (E Id)
      { return Flag43 (Base_Type (Id)); }

   INLINE B Has_Contiguous_Rep (E Id)
      { return Flag181 (Id); }

   INLINE B Has_Controlling_Result (E Id)
      { return Flag98 (Id); }

   INLINE B Has_Convention_Pragma (E Id)
      { return Flag119 (Id); }

   INLINE B Has_Delayed_Freeze (E Id)
      { return Flag18 (Id); }

   INLINE B Has_Discriminants (E Id)
      { return Flag5 (Id); }

   INLINE B Has_Enumeration_Rep_Clause (E Id)
      { return Flag66 (Id); }

   INLINE B Has_Exit (E Id)
      { return Flag47 (Id); }

   INLINE B Has_External_Tag_Rep_Clause (E Id)
      { return Flag110 (Id); }

   INLINE B Has_Forward_Instantiation (E Id)
      { return Flag175 (Id); }

   INLINE B Has_Fully_Qualified_Name (E Id)
      { return Flag173 (Id); }

   INLINE B Has_Gigi_Rep_Item (E Id)
      { return Flag82 (Id); }

   INLINE B Has_Homonym (E Id)
      { return Flag56 (Id); }

   INLINE B Has_Machine_Radix_Clause (E Id)
      { return Flag83 (Id); }

   INLINE B Has_Master_Entity (E Id)
      { return Flag21 (Id); }

   INLINE B Has_Missing_Return (E Id)
      { return Flag142 (Id); }

   INLINE B Has_Nested_Block_With_Handler (E Id)
      { return Flag101 (Id); }

   INLINE B Has_Non_Standard_Rep (E Id)
      { return Flag75 (Implementation_Base_Type (Id)); }

   INLINE B Has_Object_Size_Clause (E Id)
      { return Flag172 (Id); }

   INLINE B Has_Per_Object_Constraint (E Id)
      { return Flag154 (Id); }

   INLINE B Has_Persistent_BSS (E Id)
      { return Flag188 (Id); }

   INLINE B Has_Pragma_Controlled (E Id)
      { return Flag27 (Implementation_Base_Type (Id)); }

   INLINE B Has_Pragma_Elaborate_Body (E Id)
      { return Flag150 (Id); }

   INLINE B Has_Pragma_Inline (E Id)
      { return Flag157 (Id); }

   INLINE B Has_Pragma_Pack (E Id)
      { return Flag121 (Implementation_Base_Type (Id)); }

   INLINE B Has_Pragma_Pure_Function (E Id)
      { return Flag179 (Id); }

   INLINE B Has_Pragma_Unreferenced (E Id)
      { return Flag180 (Id); }

   INLINE B Has_Primitive_Operations (E Id)
      { return Flag120 (Base_Type (Id)); }

   INLINE B Has_Private_Declaration (E Id)
      { return Flag155 (Id); }

   INLINE B Has_Qualified_Name (E Id)
      { return Flag161 (Id); }

   INLINE B Has_Record_Rep_Clause (E Id)
      { return Flag65 (Implementation_Base_Type (Id)); }

   INLINE B Has_Recursive_Call (E Id)
      { return Flag143 (Id); }

   INLINE B Has_Size_Clause (E Id)
      { return Flag29 (Id); }

   INLINE B Has_Small_Clause (E Id)
      { return Flag67 (Id); }

   INLINE B Has_Specified_Layout (E Id)
      { return Flag100 (Implementation_Base_Type (Id)); }

   INLINE B Has_Specified_Stream_Input (E Id)
      { return Flag190 (Id); }

   INLINE B Has_Specified_Stream_Output (E Id)
      { return Flag191 (Id); }

   INLINE B Has_Specified_Stream_Read (E Id)
      { return Flag192 (Id); }

   INLINE B Has_Specified_Stream_Write (E Id)
      { return Flag193 (Id); }

   INLINE B Has_Storage_Size_Clause (E Id)
      { return Flag23 (Implementation_Base_Type (Id)); }

   INLINE B Has_Stream_Size_Clause (E Id)
      { return Flag184 (Id); }

   INLINE B Has_Subprogram_Descriptor (E Id)
      { return Flag93 (Id); }

   INLINE B Has_Task (E Id)
      { return Flag30 (Base_Type (Id)); }

   INLINE B Has_Unchecked_Union (E Id)
      { return Flag123 (Base_Type (Id)); }

   INLINE B Has_Unknown_Discriminants (E Id)
      { return Flag72 (Id); }

   INLINE B Has_Volatile_Components (E Id)
      { return Flag87 (Implementation_Base_Type (Id)); }

   INLINE B Has_Xref_Entry (E Id)
      { return Flag182 (Implementation_Base_Type (Id)); }

   INLINE E Hiding_Loop_Variable (E Id)
      { return Node8 (Id); }

   INLINE E Homonym (E Id)
      { return Node4 (Id); }

   INLINE B In_Package_Body (E Id)
      { return Flag48 (Id); }

   INLINE B In_Private_Part (E Id)
      { return Flag45 (Id); }

   INLINE B In_Use (E Id)
      { return Flag8 (Id); }

   INLINE L Inner_Instances (E Id)
      { return Elist23 (Id); }

   INLINE N Interface_Name (E Id)
      { return Node21 (Id); }

   INLINE B Is_Abstract (E Id)
      { return Flag19 (Id); }

   INLINE B Is_Local_Anonymous_Access (E Id)
      { return Flag194 (Id); }

   INLINE B Is_Access_Constant (E Id)
      { return Flag69 (Id); }

   INLINE B Is_Ada_2005 (E Id)
      { return Flag185 (Id); }

   INLINE B Is_Aliased (E Id)
      { return Flag15 (Id); }

   INLINE B Is_AST_Entry (E Id)
      { return Flag132 (Id); }

   INLINE B Is_Asynchronous (E Id)
      { return Flag81 (Id); }

   INLINE B Is_Atomic (E Id)
      { return Flag85 (Id); }

   INLINE B Is_Bit_Packed_Array (E Id)
      { return Flag122 (Implementation_Base_Type (Id)); }

   INLINE B Is_Called (E Id)
      { return Flag102 (Id); }

   INLINE B Is_Character_Type (E Id)
      { return Flag63 (Id); }

   INLINE B Is_Child_Unit (E Id)
      { return Flag73 (Id); }

   INLINE B Is_Class_Wide_Equivalent_Type (E Id)
      { return Flag35 (Id); }

   INLINE B Is_Compilation_Unit (E Id)
      { return Flag149 (Id); }

   INLINE B Is_Completely_Hidden (E Id)
      { return Flag103 (Id); }

   INLINE B Is_Constr_Subt_For_U_Nominal (E Id)
      { return Flag80 (Id); }

   INLINE B Is_Constr_Subt_For_UN_Aliased (E Id)
      { return Flag141 (Id); }

   INLINE B Is_Constrained (E Id)
      { return Flag12 (Id); }

   INLINE B Is_Constructor (E Id)
      { return Flag76 (Id); }

   INLINE B Is_Controlled (E Id)
      { return Flag42 (Base_Type (Id)); }

   INLINE B Is_Controlling_Formal (E Id)
      { return Flag97 (Id); }

   INLINE B Is_CPP_Class (E Id)
      { return Flag74 (Id); }

   INLINE B Is_Discrim_SO_Function (E Id)
      { return Flag176 (Id); }

   INLINE B Is_Dispatching_Operation (E Id)
      { return Flag6 (Id); }

   INLINE B Is_Eliminated (E Id)
      { return Flag124 (Id); }

   INLINE B Is_Entry_Formal (E Id)
      { return Flag52 (Id); }

   INLINE B Is_Exported (E Id)
      { return Flag99 (Id); }

   INLINE B Is_First_Subtype (E Id)
      { return Flag70 (Id); }

   INLINE B Is_For_Access_Subtype (E Id)
      { return Flag118 (Id); }

   INLINE B Is_Formal_Subprogram (E Id)
      { return Flag111 (Id); }

   INLINE B Is_Frozen (E Id)
      { return Flag4 (Id); }

   INLINE B Is_Generic_Actual_Type (E Id)
      { return Flag94 (Id); }

   INLINE B Is_Generic_Instance (E Id)
      { return Flag130 (Id); }

   INLINE B Is_Generic_Type (E Id)
      { return Flag13 (Id); }

   INLINE B Is_Hidden (E Id)
      { return Flag57 (Id); }

   INLINE B Is_Hidden_Open_Scope (E Id)
      { return Flag171 (Id); }

   INLINE B Is_Immediately_Visible (E Id)
      { return Flag7 (Id); }

   INLINE B Is_Imported (E Id)
      { return Flag24 (Id); }

   INLINE B Is_Inlined (E Id)
      { return Flag11 (Id); }

   INLINE B Is_Interface (E Id)
      { return Flag186 (Id); }

   INLINE B Is_Instantiated (E Id)
      { return Flag126 (Id); }

   INLINE B Is_Internal (E Id)
      { return Flag17 (Id); }

   INLINE B Is_Interrupt_Handler (E Id)
      { return Flag89 (Id); }

   INLINE B Is_Intrinsic_Subprogram (E Id)
      { return Flag64 (Id); }

   INLINE B Is_Itype (E Id)
      { return Flag91 (Id); }

   INLINE B Is_Known_Non_Null (E Id)
      { return Flag37 (Id); }

   INLINE B Is_Known_Null (E Id)
      { return Flag204 (Id); }

   INLINE B Is_Known_Valid (E Id)
      { return Flag170 (Id); }

   INLINE B Is_Limited_Composite (E Id)
      { return Flag106 (Id); }

   INLINE B Is_Limited_Interface (E Id)
      { return Flag197 (Id); }

   INLINE B Is_Limited_Record (E Id)
      { return Flag25 (Id); }

   INLINE B Is_Machine_Code_Subprogram (E Id)
      { return Flag137 (Id); }

   INLINE B Is_Non_Static_Subtype (E Id)
      { return Flag109 (Id); }

   INLINE B Is_Null_Init_Proc (E Id)
      { return Flag178 (Id); }

   INLINE B Is_Obsolescent (E Id)
      { return Flag153 (Id); }

   INLINE B Is_Optional_Parameter (E Id)
      { return Flag134 (Id); }

   INLINE B Is_Overriding_Operation (E Id)
      { return Flag39 (Id); }

   INLINE B Is_Package_Body_Entity (E Id)
      { return Flag160 (Id); }

   INLINE B Is_Packed (E Id)
      { return Flag51 (Implementation_Base_Type (Id)); }

   INLINE B Is_Packed_Array_Type (E Id)
      { return Flag138 (Id); }

   INLINE B Is_Potentially_Use_Visible (E Id)
      { return Flag9 (Id); }

   INLINE B Is_Preelaborated (E Id)
      { return Flag59 (Id); }

   INLINE B Is_Primitive_Wrapper (E Id)
      { return Flag195 (Id); }

   INLINE B Is_Private_Composite (E Id)
      { return Flag107 (Id); }

   INLINE B Is_Private_Descendant (E Id)
      { return Flag53 (Id); }

   INLINE B Is_Protected_Interface (E Id)
      { return Flag198 (Id); }

   INLINE B Is_Public (E Id)
      { return Flag10 (Id); }

   INLINE B Is_Pure (E Id)
      { return Flag44 (Id); }

   INLINE B Is_Pure_Unit_Access_Type (E Id)
      { return Flag189 (Id); }

   INLINE B Is_Remote_Call_Interface (E Id)
      { return Flag62 (Id); }

   INLINE B Is_Remote_Types (E Id)
      { return Flag61 (Id); }

   INLINE B Is_Renaming_Of_Object (E Id)
      { return Flag112 (Id); }

   INLINE B Is_Shared_Passive (E Id)
      { return Flag60 (Id); }

   INLINE B Is_Statically_Allocated (E Id)
      { return Flag28 (Id); }

   INLINE B Is_Synchronized_Interface (E Id)
      { return Flag199 (Id); }

   INLINE B Is_Tag (E Id)
      { return Flag78 (Id); }

   INLINE B Is_Tagged_Type (E Id)
      { return Flag55 (Id); }

   INLINE B Is_Task_Interface (E Id)
      { return Flag200 (Id); }

   INLINE B Is_Thread_Body (E Id)
      { return Flag77 (Id); }

   INLINE B Is_True_Constant (E Id)
      { return Flag163 (Id); }

   INLINE B Is_Unchecked_Union (E Id)
      { return Flag117 (Id); }

   INLINE B Is_Unsigned_Type (E Id)
      { return Flag144 (Id); }

   INLINE B Is_Valued_Procedure (E Id)
      { return Flag127 (Id); }

   INLINE B Is_Visible_Child_Unit (E Id)
      { return Flag116 (Id); }

   INLINE B Is_VMS_Exception (E Id)
      { return Flag133 (Id); }

   INLINE B Itype_Printed (E Id)
      { return Flag202 (Id); }

   INLINE B Kill_Elaboration_Checks (E Id)
      { return Flag32 (Id); }

   INLINE B Kill_Range_Checks (E Id)
      { return Flag33 (Id); }

   INLINE B Kill_Tag_Checks (E Id)
      { return Flag34 (Id); }

   INLINE E Last_Entity (E Id)
      { return Node20 (Id); }

   INLINE E Limited_View (E Id)
      { return Node23 (Id); }

   INLINE E Lit_Indexes (E Id)
      { return Node15 (Id); }

   INLINE E Lit_Strings (E Id)
      { return Node16 (Id); }

   INLINE B Machine_Radix_10 (E Id)
      { return Flag84 (Id); }

   INLINE E Master_Id (E Id)
      { return Node17 (Id); }

   INLINE B Materialize_Entity (E Id)
      { return Flag168 (Id); }

   INLINE M Mechanism (E Id)
      { return UI_To_Int (Uint8 (Id)); }

   INLINE Uint Modulus (E Id)
      { return Uint17 (Base_Type (Id)); }

   INLINE B Must_Be_On_Byte_Boundary (E Id)
      { return Flag183 (Id); }

   INLINE B Needs_Debug_Info (E Id)
      { return Flag147 (Id); }

   INLINE B Needs_No_Actuals (E Id)
      { return Flag22 (Id); }

   INLINE B Never_Set_In_Source (E Id)
      { return Flag115 (Id); }

   INLINE E Next_Inlined_Subprogram (E Id)
      { return Node12 (Id); }

   INLINE B No_Pool_Assigned (E Id)
      { return Flag131 (Root_Type (Id)); }

   INLINE B No_Return (E Id)
      { return Flag113 (Id); }

   INLINE B No_Strict_Aliasing (E Id)
      { return Flag136 (Base_Type (Id)); }

   INLINE B Non_Binary_Modulus (E Id)
      { return Flag58 (Base_Type (Id)); }

   INLINE E Non_Limited_View (E Id)
      { return Node17 (Id); }

   INLINE B Nonzero_Is_True (E Id)
      { return Flag162 (Base_Type (Id)); }

   INLINE U Normalized_First_Bit (E Id)
      { return Uint8 (Id); }

   INLINE U Normalized_Position (E Id)
      { return Uint14 (Id); }

   INLINE U Normalized_Position_Max (E Id)
      { return Uint10 (Id); }

   INLINE E Object_Ref (E Id)
      { return Node17 (Id); }

   INLINE N Obsolescent_Warning (E Id)
      { return Node24 (Id); }

   INLINE E Original_Access_Type (E Id)
      { return Node21 (Id); }

   INLINE E Original_Array_Type (E Id)
      { return Node21 (Id); }

   INLINE E Original_Record_Component (E Id)
      { return Node22 (Id); }

   INLINE E Overridden_Operation (E Id)
      { return Node26 (Id); }

   INLINE N Package_Instantiation (E Id)
      { return Node26 (Id); }

   INLINE E Packed_Array_Type (E Id)
      { return Node23 (Id); }

   INLINE E Parent_Subtype (E Id)
      { return Node19 (Id); }

   INLINE L Primitive_Operations (E Id)
      { return Elist15 (Id); }

   INLINE E Prival (E Id)
      { return Node17 (Id); }

   INLINE L Privals_Chain (E Id)
      { return Elist23 (Id); }

   INLINE L Private_Dependents (E Id)
      { return Elist18 (Id); }

   INLINE N Private_View (E Id)
      { return Node22 (Id); }

   INLINE E Protected_Body_Subprogram (E Id)
      { return Node11 (Id); }

   INLINE E Protected_Formal (E Id)
      { return Node22 (Id); }

   INLINE N Protected_Operation (E Id)
      { return Node23 (Id); }

   INLINE B Reachable (E Id)
      { return Flag49 (Id); }

   INLINE B Referenced (E Id)
      { return Flag156 (Id); }

   INLINE B Referenced_As_LHS (E Id)
      { return Flag36 (Id); }

   INLINE N Referenced_Object (E Id)
      { return Node10 (Id); }

   INLINE N Register_Exception_Call (E Id)
      { return Node20 (Id); }

   INLINE E Related_Array_Object (E Id)
      { return Node19 (Id); }

   INLINE E Related_Instance (E Id)
      { return Node15 (Id); }

   INLINE N Renamed_Entity (E Id)
      { return Node18 (Id); }

   INLINE N Renamed_Object (E Id)
      { return Node18 (Id); }

   INLINE U Renaming_Map (E Id)
      { return Uint9 (Id); }

   INLINE B Return_Present (E Id)
      { return Flag54 (Id); }

   INLINE B Returns_By_Ref (E Id)
      { return Flag90 (Id); }

   INLINE B Reverse_Bit_Order (E Id)
      { return Flag164 (Base_Type (Id)); }

   INLINE U RM_Size (E Id)
      { return Uint13 (Id); }

   INLINE N Scalar_Range (E Id)
      { return Node20 (Id); }

   INLINE U Scale_Value (E Id)
      { return Uint15 (Id); }

   INLINE U Scope_Depth_Value (E Id)
      { return Uint22 (Id); }

   INLINE B Sec_Stack_Needed_For_Return (E Id)
      { return Flag167 (Id); }

   INLINE S Shadow_Entities (E Id)
      { return List14 (Id); }

   INLINE E Shared_Var_Assign_Proc (E Id)
      { return Node22 (Id); }

   INLINE E Shared_Var_Read_Proc (E Id)
      { return Node15 (Id); }

   INLINE N Size_Check_Code (E Id)
      { return Node19 (Id); }

   INLINE B Size_Depends_On_Discriminant (E Id)
      { return Flag177 (Id); }

   INLINE B Size_Known_At_Compile_Time (E Id)
      { return Flag92 (Id); }

   INLINE R Small_Value (E Id)
      { return Ureal21 (Id); }

   INLINE E Spec_Entity (E Id)
      { return Node19 (Id); }

   INLINE E Storage_Size_Variable (E Id)
      { return Node15 (Implementation_Base_Type (Id)); }

   INLINE L Stored_Constraint (E Id)
      { return Elist23 (Id); }

   INLINE B Strict_Alignment (E Id)
      { return Flag145 (Implementation_Base_Type (Id)); }

   INLINE U String_Literal_Length (E Id)
      { return Uint16 (Id); }

   INLINE N String_Literal_Low_Bound (E Id)
      { return Node15 (Id); }

   INLINE B Suppress_Elaboration_Warnings (E Id)
      { return Flag148 (Id); }

   INLINE B Suppress_Init_Proc (E Id)
      { return Flag105 (Base_Type (Id)); }

   INLINE B Suppress_Style_Checks (E Id)
      { return Flag165 (Id); }

   INLINE N Task_Body_Procedure (E Id)
      { return Node24 (Id); }

   INLINE B Treat_As_Volatile (E Id)
      { return Flag41 (Id); }

   INLINE E Underlying_Full_View (E Id)
      { return Node19 (Id); }

   INLINE N Unset_Reference (E Id)
      { return Node16 (Id); }

   INLINE B Uses_Sec_Stack (E Id)
      { return Flag95 (Id); }

   INLINE B Vax_Float (E Id)
      { return Flag151 (Base_Type (Id)); }

   INLINE B Warnings_Off (E Id)
      { return Flag96 (Id); }

   INLINE E Wrapped_Entity (E Id)
      { return Node27 (Id); }

   INLINE B Was_Hidden (E Id)
      { return Flag196 (Id); }

   INLINE B Is_Access_Type                      (E Id)
      { return IN (Ekind (Id), Access_Kind); }

   INLINE B Is_Array_Type                       (E Id)
      { return IN (Ekind (Id), Array_Kind); }

   INLINE B Is_Class_Wide_Type                  (E Id)
      { return IN (Ekind (Id), Class_Wide_Kind); }

   INLINE B Is_Composite_Type                   (E Id)
      { return IN (Ekind (Id), Composite_Kind); }

   INLINE B Is_Concurrent_Body                  (E Id)
      { return IN (Ekind (Id), Concurrent_Body_Kind); }

   INLINE B Is_Concurrent_Record_Type           (E Id)
      { return Flag20 (Id); }

   INLINE B Is_Concurrent_Type                  (E Id)
      { return IN (Ekind (Id), Concurrent_Kind); }

   INLINE B Is_Decimal_Fixed_Point_Type         (E Id)
      { return IN (Ekind (Id), Decimal_Fixed_Point_Kind); }

   INLINE B Is_Digits_Type                      (E Id)
      { return IN (Ekind (Id), Digits_Kind); }

   INLINE B Is_Discrete_Or_Fixed_Point_Type     (E Id)
      { return IN (Ekind (Id), Discrete_Or_Fixed_Point_Kind); }

   INLINE B Is_Discrete_Type                    (E Id)
      { return IN (Ekind (Id), Discrete_Kind); }

   INLINE B Is_Elementary_Type                  (E Id)
      { return IN (Ekind (Id), Elementary_Kind); }

   INLINE B Is_Entry                            (E Id)
      { return IN (Ekind (Id), Entry_Kind); }

   INLINE B Is_Enumeration_Type                 (E Id)
      { return IN (Ekind (Id), Enumeration_Kind); }

   INLINE B Is_Fixed_Point_Type                 (E Id)
      { return IN (Ekind (Id), Fixed_Point_Kind); }

   INLINE B Is_Floating_Point_Type              (E Id)
      { return IN (Ekind (Id), Float_Kind); }

   INLINE B Is_Formal                           (E Id)
      { return IN (Ekind (Id), Formal_Kind); }

   INLINE B Is_Generic_Subprogram               (E Id)
      { return IN (Ekind (Id), Generic_Subprogram_Kind); }

   INLINE B Is_Generic_Unit                     (E Id)
      { return IN (Ekind (Id), Generic_Unit_Kind); }

   INLINE B Is_Incomplete_Or_Private_Type       (E Id)
      { return IN (Ekind (Id), Incomplete_Or_Private_Kind); }

   INLINE B Is_Integer_Type                     (E Id)
      { return IN (Ekind (Id), Integer_Kind); }

   INLINE B Is_Modular_Integer_Type             (E Id)
      { return IN (Ekind (Id), Modular_Integer_Kind); }

   INLINE B Is_Named_Number                     (E Id)
      { return IN (Ekind (Id), Named_Kind); }

   INLINE B Is_Numeric_Type                     (E Id)
      { return IN (Ekind (Id), Numeric_Kind); }

   INLINE B Is_Object                           (E Id)
      { return IN (Ekind (Id), Object_Kind); }

   INLINE B Is_Ordinary_Fixed_Point_Type        (E Id)
      { return IN (Ekind (Id), Ordinary_Fixed_Point_Kind); }

   INLINE B Is_Overloadable                     (E Id)
      { return IN (Ekind (Id), Overloadable_Kind); }

   INLINE B Is_Private_Type                     (E Id)
      { return IN (Ekind (Id), Private_Kind); }

   INLINE B Is_Protected_Type                   (E Id)
      { return IN (Ekind (Id), Protected_Kind); }

   INLINE B Is_Real_Type                        (E Id)
      { return IN (Ekind (Id), Real_Kind); }

   INLINE B Is_Record_Type                      (E Id)
      { return IN (Ekind (Id), Record_Kind); }

   INLINE B Is_Scalar_Type                      (E Id)
      { return IN (Ekind (Id), Scalar_Kind); }

   INLINE B Is_Signed_Integer_Type              (E Id)
      { return IN (Ekind (Id), Signed_Integer_Kind); }

   INLINE B Is_Subprogram                       (E Id)
      { return IN (Ekind (Id), Subprogram_Kind); }

   INLINE B Is_Task_Type                        (E Id)
      { return IN (Ekind (Id), Task_Kind); }

   INLINE B Is_Type                             (E Id)
      { return IN (Ekind (Id), Type_Kind); }

   INLINE N Entry_Index_Type (E Id)
      { return Etype (Discrete_Subtype_Definition (Parent (Id))); }

   INLINE Node_Id Next_Index (Node_Id Id)
      { return Next (Id); }

   INLINE E Next_Literal (E Id)
      { return Next (Id); }

   INLINE Formal_Kind Parameter_Mode (E Id)
      { return Ekind (Id); }

/* End of einfo.h (C version of Einfo package specification) */
