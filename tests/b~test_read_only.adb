pragma Source_File_Name (ada_test_read_only, Spec_File_Name => "b~test_read_only.ads");
pragma Source_File_Name (ada_test_read_only, Body_File_Name => "b~test_read_only.adb");

package body ada_test_read_only is
   pragma Warnings (Off);

   Elab_Done : Boolean := False;

   procedure adainit is
      E04 : Boolean;pragma Import (MSIL, E04, "ada_pkg._elabs_bool");
      E34 : Boolean;pragma Import (MSIL, E34, "ada.io_exceptions_pkg._elabs_bool");
      E23 : Boolean;pragma Import (MSIL, E23, "interfaces_pkg._elabs_bool");
      E12 : Boolean;pragma Import (MSIL, E12, "system_pkg._elabs_bool");
      E11 : Boolean;pragma Import (MSIL, E11, "ada.exceptions_pkg._elabs_bool");
      E18 : Boolean;pragma Import (MSIL, E18, "system.parameters_pkg._elabs_bool");
      E25 : Boolean;pragma Import (MSIL, E25, "interfaces.c_streams_pkg._elabs_bool");
      E14 : Boolean;pragma Import (MSIL, E14, "system.secondary_stack_pkg._elabs_bool");
      E03 : Boolean;pragma Import (MSIL, E03, "system.standard_library_pkg._elabs_bool");
      E22 : Boolean;pragma Import (MSIL, E22, "system.storage_elements_pkg._elabs_bool");
      E20 : Boolean;pragma Import (MSIL, E20, "system.stack_checking_pkg._elabs_bool");
      E16 : Boolean;pragma Import (MSIL, E16, "system.soft_links_pkg._elabs_bool");
      E09 : Boolean;pragma Import (MSIL, E09, "ada.tags_pkg._elabs_bool");
      E07 : Boolean;pragma Import (MSIL, E07, "ada.streams_pkg._elabs_bool");
      E44 : Boolean;pragma Import (MSIL, E44, "system.memory_pkg._elabs_bool");
      E42 : Boolean;pragma Import (MSIL, E42, "system.string_ops_pkg._elabs_bool");
      E35 : Boolean;pragma Import (MSIL, E35, "system.unsigned_types_pkg._elabs_bool");
      E33 : Boolean;pragma Import (MSIL, E33, "system.stream_attributes_pkg._elabs_bool");
      E31 : Boolean;pragma Import (MSIL, E31, "system.finalization_root_pkg._elabs_bool");
      E37 : Boolean;pragma Import (MSIL, E37, "system.finalization_implementation_pkg._elabs_bool");
      E29 : Boolean;pragma Import (MSIL, E29, "ada.finalization_pkg._elabs_bool");
      E40 : Boolean;pragma Import (MSIL, E40, "ada.finalization.list_controller_pkg._elabs_bool");
      E38 : Boolean;pragma Import (MSIL, E38, "system.file_control_block_pkg._elabs_bool");
      E27 : Boolean;pragma Import (MSIL, E27, "system.file_io_pkg._elabs_bool");
      E06 : Boolean;pragma Import (MSIL, E06, "ada.text_io_pkg._elabs_bool");

      Restrictions : constant String :=
        "nnvvnnnvvnnnnnnvnvvvvvvnnnnvnvnnvnnnvnvnnnnnnnvvvnnnvvnvvn" &
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
         Ada_Pkg'Elab_Spec;
         E04 := True;
      end if;
      if not E34 then
         Ada.Io_Exceptions_Pkg'Elab_Spec;
         E34 := True;
      end if;
      if not E23 then
         Interfaces_Pkg'Elab_Spec;
         E23 := True;
      end if;
      if not E12 then
         System_Pkg'Elab_Spec;
         E12 := True;
      end if;
      if not E11 then
         Ada.Exceptions_Pkg'Elab_Spec;
      end if;
      if not E18 then
         System.Parameters_Pkg'Elab_Spec;
      end if;
      if not E18 then
         System.Parameters_Pkg'Elab_Body;
         E18 := True;
      end if;
      if not E25 then
         Interfaces.C_Streams_Pkg'Elab_Spec;
      end if;
      if not E25 then
         Interfaces.C_Streams_Pkg'Elab_Body;
         E25 := True;
      end if;
      if not E14 then
         System.Secondary_Stack_Pkg'Elab_Spec;
      end if;
      if not E14 then
         System.Secondary_Stack_Pkg'Elab_Body;
         E14 := True;
      end if;
      if not E03 then
         System.Standard_Library_Pkg'Elab_Spec;
      end if;
      if not E22 then
         System.Storage_Elements_Pkg'Elab_Spec;
      end if;
      if not E22 then
         System.Storage_Elements_Pkg'Elab_Body;
         E22 := True;
      end if;
      if not E20 then
         System.Stack_Checking_Pkg'Elab_Spec;
      end if;
      if not E20 then
         System.Stack_Checking_Pkg'Elab_Body;
         E20 := True;
      end if;
      if not E16 then
         System.Soft_Links_Pkg'Elab_Spec;
      end if;
      if not E16 then
         System.Soft_Links_Pkg'Elab_Body;
         E16 := True;
      end if;
      if not E11 then
         Ada.Exceptions_Pkg'Elab_Body;
         E11 := True;
      end if;
      if not E09 then
         Ada.Tags_Pkg'Elab_Spec;
      end if;
      if not E09 then
         Ada.Tags_Pkg'Elab_Body;
         E09 := True;
      end if;
      if not E07 then
         Ada.Streams_Pkg'Elab_Spec;
         E07 := True;
      end if;
      if not E44 then
         System.Memory_Pkg'Elab_Spec;
      end if;
      if not E44 then
         System.Memory_Pkg'Elab_Body;
         E44 := True;
      end if;
      if not E03 then
         System.Standard_Library_Pkg'Elab_Body;
         E03 := True;
      end if;
      if not E42 then
         System.String_Ops_Pkg'Elab_Spec;
      end if;
      if not E42 then
         System.String_Ops_Pkg'Elab_Body;
         E42 := True;
      end if;
      if not E35 then
         System.Unsigned_Types_Pkg'Elab_Spec;
         E35 := True;
      end if;
      if not E33 then
         System.Stream_Attributes_Pkg'Elab_Spec;
      end if;
      if not E33 then
         System.Stream_Attributes_Pkg'Elab_Body;
         E33 := True;
      end if;
      if not E31 then
         System.Finalization_Root_Pkg'Elab_Spec;
      end if;
      if not E31 then
         System.Finalization_Root_Pkg'Elab_Body;
         E31 := True;
      end if;
      if not E37 then
         System.Finalization_Implementation_Pkg'Elab_Spec;
      end if;
      if not E37 then
         System.Finalization_Implementation_Pkg'Elab_Body;
         E37 := True;
      end if;
      if not E29 then
         Ada.Finalization_Pkg'Elab_Spec;
      end if;
      if not E29 then
         Ada.Finalization_Pkg'Elab_Body;
         E29 := True;
      end if;
      if not E40 then
         Ada.Finalization.List_Controller_Pkg'Elab_Spec;
      end if;
      if not E40 then
         Ada.Finalization.List_Controller_Pkg'Elab_Body;
         E40 := True;
      end if;
      if not E38 then
         System.File_Control_Block_Pkg'Elab_Spec;
         E38 := True;
      end if;
      if not E27 then
         System.File_Io_Pkg'Elab_Spec;
      end if;
      if not E27 then
         System.File_Io_Pkg'Elab_Body;
         E27 := True;
      end if;
      if not E06 then
         Ada.Text_Io_Pkg'Elab_Spec;
      end if;
      if not E06 then
         Ada.Text_Io_Pkg'Elab_Body;
         E06 := True;
      end if;
   end adainit;

   procedure adafinal is
   begin
      System.Standard_Library.Adafinal;
   end adafinal;

--  BEGIN Object file/option list
   --   ./test_read_only.il
   --   -L./
   --   -Lc:\d\rsrch\a#\mgnat\tests\
   --   -Lc:\d\rsrch\a#\mgnat\include\
   --   -Lc:\d\rsrch\a#\mgnat\lib\mgnat\adalib\
   --   
--  END Object file/option list   

end ada_test_read_only;
