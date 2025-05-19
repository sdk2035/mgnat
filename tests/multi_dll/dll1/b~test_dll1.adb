pragma Source_File_Name (ada_test_dll1, Spec_File_Name => "b~test_dll1.ads");
pragma Source_File_Name (ada_test_dll1, Body_File_Name => "b~test_dll1.adb");

package body ada_test_dll1 is
   pragma Warnings (Off);

   Elab_Done : Boolean := False;

   procedure adainit is
      E07 : Boolean;pragma Import (MSIL, E07, "ada_pkg._elabs_bool");
      E74 : Boolean;pragma Import (MSIL, E74, "ada.io_exceptions_pkg._elabs_bool");
      E42 : Boolean;pragma Import (MSIL, E42, "interfaces_pkg._elabs_bool");
      E43 : Boolean;pragma Import (MSIL, E43, "interfaces.java_pkg._elabs_bool");
      E44 : Boolean;pragma Import (MSIL, E44, "interfaces.java.lang_pkg._elabs_bool");
      E08 : Boolean;pragma Import (MSIL, E08, "system_pkg._elabs_bool");
      E06 : Boolean;pragma Import (MSIL, E06, "ada.exceptions_pkg._elabs_bool");
      E92 : Boolean;pragma Import (MSIL, E92, "system.address_image._elabs_bool");
      E52 : Boolean;pragma Import (MSIL, E52, "system.os_primitives_pkg._elabs_bool");
      E14 : Boolean;pragma Import (MSIL, E14, "system.parameters_pkg._elabs_bool");
      E60 : Boolean;pragma Import (MSIL, E60, "interfaces.c_pkg._elabs_bool");
      E10 : Boolean;pragma Import (MSIL, E10, "system.secondary_stack_pkg._elabs_bool");
      E04 : Boolean;pragma Import (MSIL, E04, "system.standard_library_pkg._elabs_bool");
      E18 : Boolean;pragma Import (MSIL, E18, "system.storage_elements_pkg._elabs_bool");
      E16 : Boolean;pragma Import (MSIL, E16, "system.stack_checking_pkg._elabs_bool");
      E12 : Boolean;pragma Import (MSIL, E12, "system.soft_links_pkg._elabs_bool");
      E22 : Boolean;pragma Import (MSIL, E22, "ada.tags_pkg._elabs_bool");
      E71 : Boolean;pragma Import (MSIL, E71, "ada.streams_pkg._elabs_bool");
      E94 : Boolean;pragma Import (MSIL, E94, "system.memory_pkg._elabs_bool");
      E56 : Boolean;pragma Import (MSIL, E56, "system.task_info_pkg._elabs_bool");
      E41 : Boolean;pragma Import (MSIL, E41, "system.task_primitives_pkg._elabs_bool");
      E54 : Boolean;pragma Import (MSIL, E54, "system.tasking_pkg._elabs_bool");
      E58 : Boolean;pragma Import (MSIL, E58, "system.tasking.debug_pkg._elabs_bool");
      E47 : Boolean;pragma Import (MSIL, E47, "system.task_primitives.operations_pkg._elabs_bool");
      E62 : Boolean;pragma Import (MSIL, E62, "system.tasking.entry_calls_pkg._elabs_bool");
      E64 : Boolean;pragma Import (MSIL, E64, "system.tasking.initialization_pkg._elabs_bool");
      E80 : Boolean;pragma Import (MSIL, E80, "system.tasking.protected_objects_pkg._elabs_bool");
      E88 : Boolean;pragma Import (MSIL, E88, "system.tasking.utilities_pkg._elabs_bool");
      E29 : Boolean;pragma Import (MSIL, E29, "system.unsigned_types_pkg._elabs_bool");
      E73 : Boolean;pragma Import (MSIL, E73, "system.stream_attributes_pkg._elabs_bool");
      E70 : Boolean;pragma Import (MSIL, E70, "system.finalization_root_pkg._elabs_bool");
      E76 : Boolean;pragma Import (MSIL, E76, "system.finalization_implementation_pkg._elabs_bool");
      E68 : Boolean;pragma Import (MSIL, E68, "ada.finalization_pkg._elabs_bool");
      E78 : Boolean;pragma Import (MSIL, E78, "ada.finalization.list_controller_pkg._elabs_bool");
      E66 : Boolean;pragma Import (MSIL, E66, "system.tasking.task_attributes_pkg._elabs_bool");
      E82 : Boolean;pragma Import (MSIL, E82, "system.tasking.protected_objects.entries_pkg._elabs_bool");
      E86 : Boolean;pragma Import (MSIL, E86, "system.tasking.queuing_pkg._elabs_bool");
      E40 : Boolean;pragma Import (MSIL, E40, "system.tasking.rendezvous_pkg._elabs_bool");
      E84 : Boolean;pragma Import (MSIL, E84, "system.tasking.protected_objects.operations_pkg._elabs_bool");
      E90 : Boolean;pragma Import (MSIL, E90, "system.tasking.stages_pkg._elabs_bool");
      E23 : Boolean;pragma Import (MSIL, E23, "msil_types_pkg._elabs_bool");
      E19 : Boolean;pragma Import (MSIL, E19, "mssyst_pkg._elabs_bool");
      E26 : Boolean;pragma Import (MSIL, E26, "mssyst.globalization_pkg._elabs_bool");
      E31 : Boolean;pragma Import (MSIL, E31, "mssyst.windows_pkg._elabs_bool");
      E32 : Boolean;pragma Import (MSIL, E32, "mssyst.windows.forms_pkg._elabs_bool");
      E02 : Boolean;pragma Import (MSIL, E02, "test_dll1_pkg._elabs_bool");

      Restrictions : constant String :=
        "nnvvnnnvvnnnnnvnvvvvnvnnvnvnnnnvnnnvnvnnnvnvnvvvvnnnvvnvv" &
        "nnnnnv1nv1+nnnnnn" & ASCII.Nul;

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
         WC_Encoding              => '8',
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

      if not E07 then
         Ada'Elab_Spec;
         E07 := True;
      end if;
      if not E74 then
         Ada.Io_Exceptions'Elab_Spec;
         E74 := True;
      end if;
      if not E42 then
         Interfaces'Elab_Spec;
         E42 := True;
      end if;
      if not E43 then
         Interfaces.Java'Elab_Spec;
         E43 := True;
      end if;
      if not E44 then
         Interfaces.Java.Lang'Elab_Spec;
         E44 := True;
      end if;
      if not E08 then
         System'Elab_Spec;
         E08 := True;
      end if;
      if not E06 then
         Ada.Exceptions'Elab_Spec;
      end if;
      if not E92 then
         System.Address_Image'Elab_Spec;
      end if;
      if not E52 then
         System.Os_Primitives'Elab_Spec;
      end if;
      if not E52 then
         System.Os_Primitives'Elab_Body;
         E52 := True;
      end if;
      if not E14 then
         System.Parameters'Elab_Spec;
      end if;
      if not E14 then
         System.Parameters'Elab_Body;
         E14 := True;
      end if;
      if not E60 then
         Interfaces.C'Elab_Spec;
      end if;
      if not E10 then
         System.Secondary_Stack'Elab_Spec;
      end if;
      if not E10 then
         System.Secondary_Stack'Elab_Body;
         E10 := True;
      end if;
      if not E60 then
         Interfaces.C'Elab_Body;
         E60 := True;
      end if;
      E92 := True;
      if not E04 then
         System.Standard_Library'Elab_Spec;
      end if;
      if not E18 then
         System.Storage_Elements'Elab_Spec;
      end if;
      if not E18 then
         System.Storage_Elements'Elab_Body;
         E18 := True;
      end if;
      if not E16 then
         System.Stack_Checking'Elab_Spec;
      end if;
      if not E16 then
         System.Stack_Checking'Elab_Body;
         E16 := True;
      end if;
      if not E12 then
         System.Soft_Links'Elab_Spec;
      end if;
      if not E12 then
         System.Soft_Links'Elab_Body;
         E12 := True;
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
      if not E71 then
         Ada.Streams'Elab_Spec;
         E71 := True;
      end if;
      if not E94 then
         System.Memory'Elab_Spec;
      end if;
      if not E94 then
         System.Memory'Elab_Body;
         E94 := True;
      end if;
      if not E04 then
         System.Standard_Library'Elab_Body;
         E04 := True;
      end if;
      if not E56 then
         System.Task_Info'Elab_Spec;
      end if;
      if not E56 then
         System.Task_Info'Elab_Body;
         E56 := True;
      end if;
      if not E41 then
         System.Task_Primitives'Elab_Spec;
         E41 := True;
      end if;
      if not E54 then
         System.Tasking'Elab_Spec;
      end if;
      if not E58 then
         System.Tasking.Debug'Elab_Spec;
      end if;
      if not E47 then
         System.Task_Primitives.Operations'Elab_Spec;
      end if;
      if not E47 then
         System.Task_Primitives.Operations'Elab_Body;
         E47 := True;
      end if;
      if not E58 then
         System.Tasking.Debug'Elab_Body;
         E58 := True;
      end if;
      if not E54 then
         System.Tasking'Elab_Body;
         E54 := True;
      end if;
      if not E62 then
         System.Tasking.Entry_Calls'Elab_Spec;
      end if;
      if not E64 then
         System.Tasking.Initialization'Elab_Spec;
      end if;
      if not E80 then
         System.Tasking.Protected_Objects'Elab_Spec;
      end if;
      if not E80 then
         System.Tasking.Protected_Objects'Elab_Body;
         E80 := True;
      end if;
      if not E88 then
         System.Tasking.Utilities'Elab_Spec;
      end if;
      if not E29 then
         System.Unsigned_Types'Elab_Spec;
         E29 := True;
      end if;
      if not E73 then
         System.Stream_Attributes'Elab_Spec;
      end if;
      if not E73 then
         System.Stream_Attributes'Elab_Body;
         E73 := True;
      end if;
      if not E70 then
         System.Finalization_Root'Elab_Spec;
      end if;
      if not E70 then
         System.Finalization_Root'Elab_Body;
         E70 := True;
      end if;
      if not E76 then
         System.Finalization_Implementation'Elab_Spec;
      end if;
      if not E76 then
         System.Finalization_Implementation'Elab_Body;
         E76 := True;
      end if;
      if not E68 then
         Ada.Finalization'Elab_Spec;
      end if;
      if not E68 then
         Ada.Finalization'Elab_Body;
         E68 := True;
      end if;
      if not E78 then
         Ada.Finalization.List_Controller'Elab_Spec;
      end if;
      if not E78 then
         Ada.Finalization.List_Controller'Elab_Body;
         E78 := True;
      end if;
      if not E66 then
         System.Tasking.Task_Attributes'Elab_Spec;
      end if;
      if not E66 then
         System.Tasking.Task_Attributes'Elab_Body;
         E66 := True;
      end if;
      if not E64 then
         System.Tasking.Initialization'Elab_Body;
         E64 := True;
      end if;
      if not E82 then
         System.Tasking.Protected_Objects.Entries'Elab_Spec;
      end if;
      if not E82 then
         System.Tasking.Protected_Objects.Entries'Elab_Body;
         E82 := True;
      end if;
      if not E86 then
         System.Tasking.Queuing'Elab_Spec;
      end if;
      if not E86 then
         System.Tasking.Queuing'Elab_Body;
         E86 := True;
      end if;
      if not E88 then
         System.Tasking.Utilities'Elab_Body;
         E88 := True;
      end if;
      if not E40 then
         System.Tasking.Rendezvous'Elab_Spec;
      end if;
      if not E84 then
         System.Tasking.Protected_Objects.Operations'Elab_Spec;
      end if;
      if not E84 then
         System.Tasking.Protected_Objects.Operations'Elab_Body;
         E84 := True;
      end if;
      if not E40 then
         System.Tasking.Rendezvous'Elab_Body;
         E40 := True;
      end if;
      if not E62 then
         System.Tasking.Entry_Calls'Elab_Body;
         E62 := True;
      end if;
      if not E90 then
         System.Tasking.Stages'Elab_Spec;
      end if;
      if not E90 then
         System.Tasking.Stages'Elab_Body;
         E90 := True;
      end if;
      if not E23 then
         Msil_Types'Elab_Spec;
         E23 := True;
      end if;
      if not E19 then
         Mssyst'Elab_Spec;
         E19 := True;
      end if;
      if not E26 then
         Mssyst.Globalization'Elab_Spec;
         E26 := True;
      end if;
      if not E31 then
         Mssyst.Windows'Elab_Spec;
         E31 := True;
      end if;
      if not E32 then
         Mssyst.Windows.Forms'Elab_Spec;
         E32 := True;
      end if;
      if not E02 then
         Test_Dll1'Elab_Spec;
      end if;
      if not E02 then
         Test_Dll1'Elab_Body;
         E02 := True;
      end if;
   end adainit;

   procedure adafinal is
   begin
      System.Standard_Library.Adafinal;
   end adafinal;

--  BEGIN Object file/option list
   --   c:\d\rsrch\a#\mgnat\include\msil_types.il
   --   c:\d\rsrch\a#\mgnat\include\mssyst.il
   --   c:\d\rsrch\a#\mgnat\include\mssyst-globalization.il
   --   c:\d\rsrch\a#\mgnat\include\mssyst-windows.il
   --   c:\d\rsrch\a#\mgnat\include\mssyst-windows-forms.il
   --   ./test_dll1.il
   --   -L./
   --   -LC:\d\rsrch\a#\mgnat\tests\MULTI_~1\dll1\
   --   -Lc:\d\rsrch\a#\mgnat\include\
   --   -Lc:\d\rsrch\a#\mgnat\lib\mgnat\adalib\
   --   
--  END Object file/option list   

end ada_test_dll1;
