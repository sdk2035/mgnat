------------------------------------------------------------------------------
--                                                                          --
--                        JGNAT COMPILER COMPONENTS                         --
--                                                                          --
--                              J X _ C H 1 1                               --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                             $Revision: 1.15 $
--                                                                          --
--           Copyright (C) 1998-2000 Ada Core Technologies, Inc.            --
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
-- JGNAT -  The GNAT Ada 95 tool chain for the Java (TM) Virtual Machine is --
--          maintained by Ada Core Technologies, Inc. - http://www.gnat.com --
--                                                                          --
------------------------------------------------------------------------------

with Atree;    use Atree;
with JVM.API;  use JVM.API;
with JVM.Map;  use JVM.Map;
with Jx_Ch4;   use Jx_Ch4;
with Jx_Ch5;   use Jx_Ch5;
with Jx_Decl;  use Jx_Decl;
with J_String; use J_String;
with Nlists;   use Nlists;
with Sem_Util; use Sem_Util;
with Sinfo;    use Sinfo;
with Sinput;   use Sinput;
with Stringt;  use Stringt;
with Uintp;    use Uintp;

package body Jx_Ch11 is

   Current_Exception : Local_Var_Id := Null_Local_Var;
   --  This variable holds the identity of a local variable containing
   --  the current active exception occurrence during the translation
   --  of an exception handler part. See Translate_Exception_Handlers
   --  and Gen_Load_Current_Exception.

   ----------------------------------
   -- Generate_Exception_And_Throw --
   ----------------------------------

   procedure Generate_Exception_And_Throw
     (Exc_Class : Class_Id;
      Raise_Loc : Source_Ptr;
      Gen_Call  : Boolean := False)
   is
   begin

      --  Push a string literal parameter containing the source location

      Build_Location_String (Raise_Loc);
      Gen_Push_String_Const (New_String_Constant (String_From_Name_Buffer));

      --  Generate a call to the exception's string-parameterized constructor

      Gen_New_Object
        (Exc_Class, Method (Exc_Class,
                 ".ctor",
                 Result  => Void_Type,
                 Param_0 => Type_Of (Exc_Class),
                 Param_1 => Type_Of (API_Class (Lang_String))));

      if Gen_Call then
         Gen_Invoke_API_Method (Reraise_No_Defer);
      else
         Gen_Exception_Throw;
      end if;
   end Generate_Exception_And_Throw;

   -------------------------------------
   -- Translate_Exception_Declaration --
   -------------------------------------

   procedure Translate_Exception_Declaration (Exc_Decl : Node_Id) is
      Exc_Entity : constant Entity_Id := Defining_Entity (Exc_Decl);
      Exc_Class  : Class_Id;

   begin
      Declare_Exception_Class (Exc_Entity);
      Exc_Class := Class_Of_Type (JVM_Entity (Exc_Entity));

      Class_Stack.Push (Exc_Class);
      Begin_Class_File (Exc_Class);

      --  For now we just generate trivial versions of
      --  the class's <clinit> and <init> methods.

      Generate_Class_Init_Method   (Exc_Class);
      Generate_Default_Constructor (Exc_Class);

      --  Generate the exception constructor which takes a message string

      declare
         Exc_Constr : constant Method_Id
           := Method (Exc_Class,
                      Name (".ctor"),
                      Result  => Void_Type,
                      Param_0 => Type_Of (Exc_Class),
                      Param_1 => Type_Of (API_Class (Lang_String)));

         Str_Param  : constant Local_Var_Id
           := Next_Local_Var (First_Local_Var (Exc_Constr));

      begin
         Open_Method (Exc_Constr);
         Set_Current_Method (Exc_Constr);
         Method_Stack.Push (Exc_Constr);
         Gen_Load_Local (This_Local (Exc_Constr));

         --  Pass the exception message parameter to the superclass constructor

         Gen_Load_Local (Str_Param);

         Gen_Invoke_Special
           (Method (Superclass (Exc_Class),
                    ".ctor",
                    Result  => Void_Type,
                    Param_0 => Type_Of (Superclass (Exc_Class)),
                    Param_1 => Type_Of (API_Class (Lang_String))));

         Gen_Method_Return;
         Method_Stack.Pop;
         Close_Method (Exc_Constr);

         if not Method_Stack.Empty then
            Set_Current_Method (Method_Stack.Top);
         end if;
      end;

      End_Class_File (Exc_Class);

      pragma Assert (Class_Stack.Top = Exc_Class);
      Class_Stack.Pop;
   end Translate_Exception_Declaration;

   -------------------------------
   -- Translate_Raise_Statement --
   -------------------------------

   procedure Translate_Raise_Statement (Raise_Stmt : Node_Id) is
      Exc_Id : constant Entity_Id := Entity (Name (Raise_Stmt));

   begin
      Generate_Exception_And_Throw (JVM_Class (Exc_Id), Sloc (Raise_Stmt));
   end Translate_Raise_Statement;

   --------------------------------
   -- Translate_Predefined_Raise --
   --------------------------------

   procedure Translate_Predefined_Raise (Raise_Node : Node_Id) is
      False_Label : constant Label_Id := New_Label;
      Save_Label  : Label_Id := False_Label;
      Exc_Class   : Class_Id;

   begin
      case Nkind (Raise_Node) is
         when N_Raise_Constraint_Error =>
            Exc_Class := API_Class (Ada_Constraint_Error);
         when N_Raise_Program_Error =>
            Exc_Class := API_Class (Ada_Program_Error);
         when N_Raise_Storage_Error =>
            Exc_Class := API_Class (Ada_Storage_Error);
         when others =>
            pragma Assert (False);
            raise Program_Error;
      end case;

      if No (Condition (Raise_Node)) then
         --  We request a call to be generated rather than a direct
         --  throw, to work around a JVM behavior (dare we say bug?)
         --  that causes it to associate an unconditionally raised
         --  exception with the wrong handler part in certain cases.
         --  This shows up commonly in ACVC tests, typically in the
         --  context of a block statement whose declarative part
         --  raises exceptions detected statically by the GNAT
         --  front end (the exceptions should be propagated out
         --  of the block, but were incorrectly being handled
         --  the handler part of the block).

         Generate_Exception_And_Throw
           (Exc_Class, Sloc (Raise_Node), Gen_Call => True);

      else
         Evaluate_Expr (Condition (Raise_Node), Save_Label, False);

         --  If Save_Label was unused during the condition evaluation,
         --  then generate a branch to it now based on the Boolean
         --  top-of-stack value.

         if Save_Label /= Null_Label then
            Gen_Branch_Equal (False_Label);
         end if;

         Generate_Exception_And_Throw (Exc_Class, Sloc (Raise_Node));

         Gen_Label (False_Label);
      end if;
   end Translate_Predefined_Raise;

   ----------------------------------
   -- Translate_Exception_Handlers --
   ----------------------------------

   procedure Translate_Exception_Handlers
     (Handlers  : List_Id;
      Start_Lbl : Label_Id;
      End_Lbl   : Label_Id;
      Exit_Lbl  : Label_Id)
   is
      procedure Translate_Filter (
            This_Exc_Class : in Class_Id);
      Handler              : Node_Id;
      Handler_Lbl          : Label_Id;
      End_Of_Handler_Lbl   : Label_Id;
      Filter_Lbl           : Label_Id;
      Exc_Choice           : Node_Id;
      Exc_Class            : Class_Id;
      Save_Curr_Exc        : Local_Var_Id;
      Handled_Exc          : constant Local_Var_Id
        := New_Local_Var ("_exc_var", Type_Of (API_Class (Lang_Throwable)));
      Kind                 : Handler_Kind;

      --  In the JVM, you can have a single block handle multiple
      --  exceptions.  In MSIL, this is not allowed.  This is an
      --  inefficient strategy whereby we generate the same code over
      --  and over again for the handler that does multiple things.
      procedure Translate_Filter (
            This_Exc_Class : in Class_Id) is
      begin
--         Gen_New_Object
--           (This_Exc_Class, Default_Constructor (This_Exc_Class));
--         Pop_Type;
         Gen_Load_Local (Handled_Exc);
         Gen_Instance_Of (This_Exc_Class);
         Gen_Or;
      end Translate_Filter;
   begin
      --  Save the value of Current_Exception, which must be "stacked"
      --  in order to handle nested exception handlers properly.

      Save_Curr_Exc := Current_Exception;

      End_Of_Handler_Lbl := New_Label;
      --  mcc: 10/14/05 peverify likes to have the filters
      --  come before the non-filters, so we loop through twice
      --  doing filters when Kinds=1 and non when 2
      for Kinds in 1 .. 2 loop
         Handler := First (Handlers);
         while Present (Handler) loop
            --  Create exception handler entries for each choice that will
            --  cover the range of instructions to which the handler applies.

            Exc_Choice := First (Exception_Choices (Handler));

            --  Check to see if there's only one exception being handled
            if not Present (Next (Exc_Choice)) then
               if Nkind (Exc_Choice) = N_Others_Choice then
                  if All_Others (Exc_Choice) then
                     Exc_Class := Null_Class;
                  else
                     Exc_Class := API_Class (Lang_RuntimeException);
                  end if;
               else
                  Exc_Class := JVM_Class (Entity (Exc_Choice));
               end if;
               if Exc_Class = API_Class (Ada_Constraint_Error) or
                  Exc_Class = API_Class (Ada_Storage_Error) then
                  Kind := Filter;
               else
                  Kind := Non_Filter;
               end if;
            else
               Kind := Filter;
            end if;

            if (Kind = Filter and Kinds = 1) or
               (Kind /= Filter and Kinds = 2) then
               Handler_Lbl := End_Of_Handler_Lbl;
               End_Of_Handler_Lbl := New_Label;

               --  mark the location of the filter, if needed
               if Kind = Filter then
                  Filter_Lbl := New_Label;
                  Gen_Label (Filter_Lbl);
                  Push_Type (Type_Of (Handled_Exc));
                  --  mcc: 10/13/05 conversion not really needed, but makes
                  --  verifier happy as not all languages
                  --  use children of system.exception
                  Gen_Conversion (Type_Of (API_Class (Lang_RuntimeException)));
                  Gen_Store_Local (Handled_Exc);
                  Gen_Push_Int (Uint_0);
               else
                  Filter_Lbl := Null_Label;
               end if;

               --  loop through and add things to the filter (if needed)
               while Present (Exc_Choice) loop

                  if Nkind (Exc_Choice) = N_Others_Choice then
                     if All_Others (Exc_Choice) then
                        Exc_Class := Null_Class;
                     else
                        Exc_Class := API_Class (Lang_RuntimeException);
                     end if;
                  else
                     Exc_Class := JVM_Class (Entity (Exc_Choice));
                  end if;

                  --  In the case of a handler for Constraint_Error,
                  --  we also enter handler entries for the
                  --  predefined Java run-time exceptions
                  --  that should be mapped to Constraint_Error.

                  if Exc_Class = API_Class (Ada_Constraint_Error) then
                     Translate_Filter (Exc_Class);

                     Translate_Filter
                       (API_Class (IndexOutOfBoundsException));
                     Translate_Filter
                       (API_Class (NullPointerException));
                     --  Any others???

                  --  For a Storage_Error handler, we also enter handler
                  --  entries for OutOfMemoryError and StackOverflowError.

                  elsif Exc_Class = API_Class (Ada_Storage_Error) then
                     Translate_Filter (Exc_Class);

                     Translate_Filter
                       (API_Class (Lang_OutOfMemoryError));
                     Translate_Filter
                       (API_Class (Lang_StackOverflowError));
                  elsif Kind = Filter then
                     Translate_Filter (Exc_Class);
                  end if;

                  Exc_Choice := Next (Exc_Choice);
               end loop;

               if Kind = Filter then
                  Gen_End_Filter;
               end if;

               --  in MSIL, the exception is on the top of the stack
               Gen_Label (Handler_Lbl);

               Push_Type (Type_Of (Handled_Exc));
               --  mcc: 10/13/05 conversion not really needed, but makes
               --  verifier happy as not all languages
               --  use children of system.exception
               Gen_Conversion (Type_Of (API_Class (Lang_RuntimeException)));
               Gen_Store_Local (Handled_Exc);

               --  Set Current_Exception so that calls to
               --  Gen_Load_Current_Exception
               --  will pick up the active exception occurrence.

               Current_Exception := Handled_Exc;
               --  now generate the exception handler code

               Translate_Statements (Statements (Handler));
               --  mcc: 10/14/05
               --  verifier likes nested exceptions try
               --  blocks (as will be generated
               --  in translate_statements recursively)
               --  to appear first
               Gen_Exc_Handler_Entry (Exc_Class, Start_Lbl, End_Lbl,
                  Handler_Lbl, End_Of_Handler_Lbl, Kind, Filter_Lbl);

               Gen_Leave (Exit_Lbl);

            end if;
            Handler := Next (Handler);
         end loop;
      end loop;  --  mcc: for loop
      Gen_Label (End_Of_Handler_Lbl);

      --  Restore Current_Exception so it's value will reflect
      --  the current active exception occurrence associated
      --  with any enclosing handler.

      Current_Exception := Save_Curr_Exc;
   end Translate_Exception_Handlers;

   --------------------------------
   -- Gen_Load_Current_Exception --
   --------------------------------

   procedure Gen_Load_Current_Exception is
   begin
      Gen_Load_Local (Current_Exception);
   end Gen_Load_Current_Exception;

end Jx_Ch11;
