pragma Source_File_Name (ada_test_dll2, Spec_File_Name => "b~test_dll2.ads");
pragma Source_File_Name (ada_test_dll2, Body_File_Name => "b~test_dll2.adb");

package body ada_test_dll2 is
   pragma Warnings (Off);

   Elab_Done : Boolean := False;

   procedure adainit is
      E09 : Boolean;pragma Import (MSIL, E09, "ada_pkg._elabs_bool");
      E08 : Boolean;pragma Import (MSIL, E08, "ada.calendar_pkg._elabs_bool");
      E06 : Boolean;pragma Import (MSIL, E06, "ada.calendar.delays_pkg._elabs_bool");
      E26 : Boolean;pragma Import (MSIL, E26, "gnat_pkg._elabs_bool");
      E23 : Boolean;pragma Import (MSIL, E23, "interfaces_pkg._elabs_bool");
      E30 : Boolean;pragma Import (MSIL, E30, "interfaces.java_pkg._elabs_bool");
      E12 : Boolean;pragma Import (MSIL, E12, "system_pkg._elabs_bool");
      E11 : Boolean;pragma Import (MSIL, E11, "ada.exceptions_pkg._elabs_bool");
      E27 : Boolean;pragma Import (MSIL, E27, "gnat.exceptions_pkg._elabs_bool");
      E25 : Boolean;pragma Import (MSIL, E25, "system.arith_64_pkg._elabs_bool");
      E29 : Boolean;pragma Import (MSIL, E29, "system.os_primitives_pkg._elabs_bool");
      E18 : Boolean;pragma Import (MSIL, E18, "system.parameters_pkg._elabs_bool");
      E14 : Boolean;pragma Import (MSIL, E14, "system.secondary_stack_pkg._elabs_bool");
      E04 : Boolean;pragma Import (MSIL, E04, "system.standard_library_pkg._elabs_bool");
      E22 : Boolean;pragma Import (MSIL, E22, "system.storage_elements_pkg._elabs_bool");
      E20 : Boolean;pragma Import (MSIL, E20, "system.stack_checking_pkg._elabs_bool");
      E16 : Boolean;pragma Import (MSIL, E16, "system.soft_links_pkg._elabs_bool");
      E32 : Boolean;pragma Import (MSIL, E32, "system.memory_pkg._elabs_bool");
      E02 : Boolean;pragma Import (MSIL, E02, "test_dll2_pkg._elabs_bool");

      Restrictions : constant String :=
        "nnvvnvvvnnnnnnvnvnvvnnnnvnvnnnnnnvnnnvnnnnnnnvvnnnnnvvnvn" &
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

      if not E09 then
         Ada'Elab_Spec;
         E09 := True;
      end if;
      if not E08 then
         Ada.Calendar'Elab_Spec;
      end if;
      if not E06 then
         Ada.Calendar.Delays'Elab_Spec;
      end if;
      if not E26 then
         Gnat'Elab_Spec;
         E26 := True;
      end if;
      if not E23 then
         Interfaces'Elab_Spec;
         E23 := True;
      end if;
      if not E30 then
         Interfaces.Java'Elab_Spec;
         E30 := True;
      end if;
      if not E12 then
         System'Elab_Spec;
         E12 := True;
      end if;
      if not E11 then
         Ada.Exceptions'Elab_Spec;
      end if;
      if not E27 then
         Gnat.Exceptions'Elab_Spec;
         E27 := True;
      end if;
      if not E25 then
         System.Arith_64'Elab_Spec;
      end if;
      if not E25 then
         System.Arith_64'Elab_Body;
         E25 := True;
      end if;
      if not E29 then
         System.Os_Primitives'Elab_Spec;
      end if;
      if not E29 then
         System.Os_Primitives'Elab_Body;
         E29 := True;
      end if;
      if not E18 then
         System.Parameters'Elab_Spec;
      end if;
      if not E18 then
         System.Parameters'Elab_Body;
         E18 := True;
      end if;
      if not E14 then
         System.Secondary_Stack'Elab_Spec;
      end if;
      if not E14 then
         System.Secondary_Stack'Elab_Body;
         E14 := True;
      end if;
      if not E04 then
         System.Standard_Library'Elab_Spec;
      end if;
      if not E22 then
         System.Storage_Elements'Elab_Spec;
      end if;
      if not E22 then
         System.Storage_Elements'Elab_Body;
         E22 := True;
      end if;
      if not E20 then
         System.Stack_Checking'Elab_Spec;
      end if;
      if not E20 then
         System.Stack_Checking'Elab_Body;
         E20 := True;
      end if;
      if not E16 then
         System.Soft_Links'Elab_Spec;
      end if;
      if not E16 then
         System.Soft_Links'Elab_Body;
         E16 := True;
      end if;
      if not E11 then
         Ada.Exceptions'Elab_Body;
         E11 := True;
      end if;
      if not E06 then
         Ada.Calendar.Delays'Elab_Body;
         E06 := True;
      end if;
      if not E08 then
         Ada.Calendar'Elab_Body;
         E08 := True;
      end if;
      if not E32 then
         System.Memory'Elab_Spec;
      end if;
      if not E32 then
         System.Memory'Elab_Body;
         E32 := True;
      end if;
      if not E04 then
         System.Standard_Library'Elab_Body;
         E04 := True;
      end if;
      if not E02 then
         Test_Dll2'Elab_Spec;
      end if;
      if not E02 then
         Test_Dll2'Elab_Body;
         E02 := True;
      end if;
   end adainit;

   procedure adafinal is
   begin
      System.Standard_Library.Adafinal;
   end adafinal;

--  BEGIN Object file/option list
   --   ./test_dll2.il
   --   -L./
   --   -LC:\d\rsrch\a#\mgnat\tests\MULTI_~1\dll2\
   --   -Lc:\d\rsrch\a#\mgnat\include\
   --   -Lc:\d\rsrch\a#\mgnat\lib\mgnat\adalib\
   --   
--  END Object file/option list   

end ada_test_dll2;
