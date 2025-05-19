pragma Source_File_Name (ada_test_text_io_delete, Spec_File_Name => "b~test_text_io_delete.ads");
pragma Source_File_Name (ada_test_text_io_delete, Body_File_Name => "b~test_text_io_delete.adb");

package body ada_test_text_io_delete is
   pragma Warnings (Off);

   Elab_Done : Boolean := False;

   procedure adainit is
      E04 : Boolean;pragma Import (MSIL, E04, "ada_pkg._elabs_bool");
      E34 : Boolean;pragma Import (MSIL, E34, "ada.io_exceptions_pkg._elabs_bool");
      E23 : Boolean;pragma Import (MSIL, E23, "interfaces_pkg._elabs_bool");
      E07 : Boolean;pragma Import (MSIL, E07, "system_pkg._elabs_bool");
      E06 : Boolean;pragma Import (MSIL, E06, "ada.exceptions_pkg._elabs_bool");
      E13 : Boolean;pragma Import (MSIL, E13, "system.parameters_pkg._elabs_bool");
      E25 : Boolean;pragma Import (MSIL, E25, "interfaces.c_streams_pkg._elabs_bool");
      E09 : Boolean;pragma Import (MSIL, E09, "system.secondary_stack_pkg._elabs_bool");
      E03 : Boolean;pragma Import (MSIL, E03, "system.standard_library_pkg._elabs_bool");
      E17 : Boolean;pragma Import (MSIL, E17, "system.storage_elements_pkg._elabs_bool");
      E15 : Boolean;pragma Import (MSIL, E15, "system.stack_checking_pkg._elabs_bool");
      E11 : Boolean;pragma Import (MSIL, E11, "system.soft_links_pkg._elabs_bool");
      E22 : Boolean;pragma Import (MSIL, E22, "ada.tags_pkg._elabs_bool");
      E20 : Boolean;pragma Import (MSIL, E20, "ada.streams_pkg._elabs_bool");
      E46 : Boolean;pragma Import (MSIL, E46, "system.memory_pkg._elabs_bool");
      E44 : Boolean;pragma Import (MSIL, E44, "system.string_ops_pkg._elabs_bool");
      E42 : Boolean;pragma Import (MSIL, E42, "system.string_ops_concat_3_pkg._elabs_bool");
      E35 : Boolean;pragma Import (MSIL, E35, "system.unsigned_types_pkg._elabs_bool");
      E33 : Boolean;pragma Import (MSIL, E33, "system.stream_attributes_pkg._elabs_bool");
      E31 : Boolean;pragma Import (MSIL, E31, "system.finalization_root_pkg._elabs_bool");
      E37 : Boolean;pragma Import (MSIL, E37, "system.finalization_implementation_pkg._elabs_bool");
      E29 : Boolean;pragma Import (MSIL, E29, "ada.finalization_pkg._elabs_bool");
      E40 : Boolean;pragma Import (MSIL, E40, "ada.finalization.list_controller_pkg._elabs_bool");
      E38 : Boolean;pragma Import (MSIL, E38, "system.file_control_block_pkg._elabs_bool");
      E27 : Boolean;pragma Import (MSIL, E27, "system.file_io_pkg._elabs_bool");
      E19 : Boolean;pragma Import (MSIL, E19, "ada.text_io_pkg._elabs_bool");

      Restrictions : constant String :=
        "nnvvnnnvvnnnnnvnvvvvvvnnnnvnvnnnnnnvnvnnnnnnnvvvnnnnvvnvv" &
        "nnnnnnnnnnnnnn" & ASCII.Nul;

      Interrupt_States : constant String :=
        "";

      procedure Set_Globals
        (Main_Priority            : Integer;
         Time_Slice_Value         : Integer;
         WC_Encoding              : Character;
         Locking_Policy           : Character;
         Queuing_Policy           : Character;
         Task_Dispatching_Policy  : Character;
         Restrictions             : String;
         Interrupt_States         : String;
         Num_Interrupt_States     : Integer;
         Unreserve_All_Interrupts : Integer;
         Exception_Tracebacks     : Integer;
         Zero_Cost_Exceptions     : Integer;
         Detect_Blocking          : Integer);
      pragma Import (C, Set_Globals, "__gnat_set_globals");

      procedure Install_Handler;
      pragma Import (C, Install_Handler, "__gnat_install_handler");

      Handler_Installed : Integer;
      pragma Import (C, Handler_Installed, "__gnat_handler_installed");
   begin
      if Elab_Done then
         return;
      else
         Elab_Done := True;
      end if;

      Set_Globals
        (Main_Priority            => -1,
         Time_Slice_Value         => -1,
         WC_Encoding              => 'b',
         Locking_Policy           => ' ',
         Queuing_Policy           => ' ',
         Task_Dispatching_Policy  => ' ',
         Restrictions             => Restrictions,
         Interrupt_States         => Interrupt_States,
         Num_Interrupt_States     => 0,
         Unreserve_All_Interrupts => 0,
         Exception_Tracebacks     => 0,
         Zero_Cost_Exceptions     => 0,
         Detect_Blocking          => 0);

      if Handler_Installed = 0 then
         Install_Handler;
      end if;

      if not E04 then
         Ada'Elab_Spec;
         E04 := True;
      end if;
      if not E34 then
         Ada.Io_Exceptions'Elab_Spec;
         E34 := True;
      end if;
      if not E23 then
         Interfaces'Elab_Spec;
         E23 := True;
      end if;
      if not E07 then
         System'Elab_Spec;
         E07 := True;
      end if;
      if not E06 then
         Ada.Exceptions'Elab_Spec;
      end if;
      if not E13 then
         System.Parameters'Elab_Spec;
      end if;
      if not E13 then
         System.Parameters'Elab_Body;
         E13 := True;
      end if;
      if not E25 then
         Interfaces.C_Streams'Elab_Spec;
      end if;
      if not E25 then
         Interfaces.C_Streams'Elab_Body;
         E25 := True;
      end if;
      if not E09 then
         System.Secondary_Stack'Elab_Spec;
      end if;
      if not E09 then
         System.Secondary_Stack'Elab_Body;
         E09 := True;
      end if;
      if not E03 then
         System.Standard_Library'Elab_Spec;
      end if;
      if not E17 then
         System.Storage_Elements'Elab_Spec;
      end if;
      if not E17 then
         System.Storage_Elements'Elab_Body;
         E17 := True;
      end if;
      if not E15 then
         System.Stack_Checking'Elab_Spec;
      end if;
      if not E15 then
         System.Stack_Checking'Elab_Body;
         E15 := True;
      end if;
      if not E11 then
         System.Soft_Links'Elab_Spec;
      end if;
      if not E11 then
         System.Soft_Links'Elab_Body;
         E11 := True;
      end if;
      if not E06 then
         Ada.Exceptions'Elab_Body;
         E06 := True;
      end if;
      if not E22 then
         Ada.Tags'Elab_Spec;
      end if;
      if not E22 then
         Ada.Tags'Elab_Body;
         E22 := True;
      end if;
      if not E20 then
         Ada.Streams'Elab_Spec;
         E20 := True;
      end if;
      if not E46 then
         System.Memory'Elab_Spec;
      end if;
      if not E46 then
         System.Memory'Elab_Body;
         E46 := True;
      end if;
      if not E03 then
         System.Standard_Library'Elab_Body;
         E03 := True;
      end if;
      if not E44 then
         System.String_Ops'Elab_Spec;
      end if;
      if not E44 then
         System.String_Ops'Elab_Body;
         E44 := True;
      end if;
      if not E42 then
         System.String_Ops_Concat_3'Elab_Spec;
      end if;
      if not E42 then
         System.String_Ops_Concat_3'Elab_Body;
         E42 := True;
      end if;
      if not E35 then
         System.Unsigned_Types'Elab_Spec;
         E35 := True;
      end if;
      if not E33 then
         System.Stream_Attributes'Elab_Spec;
      end if;
      if not E33 then
         System.Stream_Attributes'Elab_Body;
         E33 := True;
      end if;
      if not E31 then
         System.Finalization_Root'Elab_Spec;
      end if;
      if not E31 then
         System.Finalization_Root'Elab_Body;
         E31 := True;
      end if;
      if not E37 then
         System.Finalization_Implementation'Elab_Spec;
      end if;
      if not E37 then
         System.Finalization_Implementation'Elab_Body;
         E37 := True;
      end if;
      if not E29 then
         Ada.Finalization'Elab_Spec;
      end if;
      if not E29 then
         Ada.Finalization'Elab_Body;
         E29 := True;
      end if;
      if not E40 then
         Ada.Finalization.List_Controller'Elab_Spec;
      end if;
      if not E40 then
         Ada.Finalization.List_Controller'Elab_Body;
         E40 := True;
      end if;
      if not E38 then
         System.File_Control_Block'Elab_Spec;
         E38 := True;
      end if;
      if not E27 then
         System.File_Io'Elab_Spec;
      end if;
      if not E27 then
         System.File_Io'Elab_Body;
         E27 := True;
      end if;
      if not E19 then
         Ada.Text_Io'Elab_Spec;
      end if;
      if not E19 then
         Ada.Text_Io'Elab_Body;
         E19 := True;
      end if;
   end adainit;

   procedure adafinal is
   begin
      System.Standard_Library.Adafinal;
   end adafinal;

--  BEGIN Object file/option list
   --   ./test_text_io_delete.il
   --   -L./
   --   -LC:\d\rsrch\a#\mgnat\tests\
   --   -Lc:\d\rsrch\a#\mgnat\include\
   --   -Lc:\d\rsrch\a#\mgnat\lib\mgnat\adalib\
   --   
--  END Object file/option list   

end ada_test_text_io_delete;
