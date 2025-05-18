pragma Source_File_Name (ada_main, Spec_File_Name => "b~gnatlink.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~gnatlink.adb");

package body ada_main is
   pragma Warnings (Off);

   procedure Do_Finalize;
   pragma Import (C, Do_Finalize, "system__standard_library__adafinal");

   procedure adainit is
      E010 : Boolean; pragma Import (Ada, E010, "system__secondary_stack_E");
      E014 : Boolean; pragma Import (Ada, E014, "system__soft_links_E");
      E022 : Boolean; pragma Import (Ada, E022, "system__exception_table_E");
      E067 : Boolean; pragma Import (Ada, E067, "gnat__os_lib_E");
      E108 : Boolean; pragma Import (Ada, E108, "interfaces__c_E");
      E110 : Boolean; pragma Import (Ada, E110, "interfaces__c__strings_E");
      E020 : Boolean; pragma Import (Ada, E020, "system__assertions_E");
      E002 : Boolean; pragma Import (Ada, E002, "gnatlink_E");
      E074 : Boolean; pragma Import (Ada, E074, "gnatvsn_E");
      E106 : Boolean; pragma Import (Ada, E106, "indepsw_E");
      E104 : Boolean; pragma Import (Ada, E104, "rident_E");
      E050 : Boolean; pragma Import (Ada, E050, "types_E");
      E047 : Boolean; pragma Import (Ada, E047, "butil_E");
      E101 : Boolean; pragma Import (Ada, E101, "casing_E");
      E087 : Boolean; pragma Import (Ada, E087, "fmap_E");
      E083 : Boolean; pragma Import (Ada, E083, "fname_E");
      E048 : Boolean; pragma Import (Ada, E048, "hostparm_E");
      E060 : Boolean; pragma Import (Ada, E060, "opt_E");
      E103 : Boolean; pragma Import (Ada, E103, "csets_E");
      E085 : Boolean; pragma Import (Ada, E085, "osint_E");
      E091 : Boolean; pragma Import (Ada, E091, "sdefault_E");
      E114 : Boolean; pragma Import (Ada, E114, "switch_E");
      E062 : Boolean; pragma Import (Ada, E062, "tree_io_E");
      E045 : Boolean; pragma Import (Ada, E045, "ali_E");
      E056 : Boolean; pragma Import (Ada, E056, "namet_E");
      E076 : Boolean; pragma Import (Ada, E076, "widechar_E");

      Restrictions : constant String :=
        "nnvvnnnvnnnnnnnvnvnvvnvnvvnvnnnnvnnnvnvnnnnnnnvvvnnnvvnvvv" &
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
         Restrictions             : System.Address;
         Interrupt_States         : System.Address;
         Num_Interrupt_States     : Integer;
         Unreserve_All_Interrupts : Integer;
         Exception_Tracebacks     : Integer;
         Zero_Cost_Exceptions     : Integer;
         Detect_Blocking          : Integer;
         Default_Stack_Size       : Integer);
      pragma Import (C, Set_Globals, "__gnat_set_globals");

      procedure Install_Handler;
      pragma Import (C, Install_Handler, "__gnat_install_handler");

      Handler_Installed : Integer;
      pragma Import (C, Handler_Installed, "__gnat_handler_installed");
   begin
      Set_Globals
        (Main_Priority            => -1,
         Time_Slice_Value         => -1,
         WC_Encoding              => 'b',
         Locking_Policy           => ' ',
         Queuing_Policy           => ' ',
         Task_Dispatching_Policy  => ' ',
         Restrictions             => Restrictions'Address,
         Interrupt_States         => Interrupt_States'Address,
         Num_Interrupt_States     => 0,
         Unreserve_All_Interrupts => 0,
         Exception_Tracebacks     => 0,
         Zero_Cost_Exceptions     => 1,
         Detect_Blocking          => 0,
         Default_Stack_Size       => -1);

      if Handler_Installed = 0 then
         Install_Handler;
      end if;

      System.Soft_Links'Elab_Body;
      E014 := True;
      System.Secondary_Stack'Elab_Body;
      E010 := True;
      System.Exception_Table'Elab_Body;
      E022 := True;
      Gnat.Os_Lib'Elab_Body;
      E067 := True;
      Interfaces.C'Elab_Spec;
      E108 := True;
      Interfaces.C.Strings'Elab_Spec;
      E110 := True;
      System.Assertions'Elab_Spec;
      E020 := True;
      E074 := True;
      Rident'Elab_Spec;
      E104 := True;
      Types'Elab_Spec;
      E050 := True;
      Hostparm'Elab_Spec;
      E048 := True;
      Opt'Elab_Spec;
      Csets'Elab_Body;
      E103 := True;
      Osint'Elab_Spec;
      E106 := True;
      Sdefault'Elab_Body;
      E091 := True;
      E114 := True;
      Tree_Io'Elab_Spec;
      E062 := True;
      E060 := True;
      ALI'ELAB_SPEC;
      Namet'Elab_Spec;
      ALI'ELAB_BODY;
      E045 := True;
      Osint'Elab_Body;
      E085 := True;
      Fname'Elab_Body;
      E083 := True;
      Fmap'Elab_Body;
      E087 := True;
      E047 := True;
      E002 := True;
      E076 := True;
      E056 := True;
      E101 := True;
   end adainit;

   procedure adafinal is
   begin
      Do_Finalize;
   end adafinal;

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure initialize (Addr : System.Address);
      pragma Import (C, initialize, "__gnat_initialize");

      procedure finalize;
      pragma Import (C, finalize, "__gnat_finalize");

      procedure Ada_Main_Program;
      pragma Import (Ada, Ada_Main_Program, "_ada_gnatlink");

      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Break_Start;
      Ada_Main_Program;
      Do_Finalize;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   .\ada.o
   --   .\gnat.o
   --   .\g-string.o
   --   .\interfac.o
   --   .\system.o
   --   .\s-addope.o
   --   .\s-casuti.o
   --   .\g-casuti.o
   --   .\s-htable.o
   --   .\g-htable.o
   --   .\s-parame.o
   --   .\s-crtl.o
   --   .\i-cstrea.o
   --   .\s-purexc.o
   --   .\s-stoele.o
   --   .\s-carun8.o
   --   .\a-comlin.o
   --   .\s-stache.o
   --   .\s-strops.o
   --   .\s-sopco3.o
   --   .\s-sopco4.o
   --   .\s-sopco5.o
   --   .\s-traceb.o
   --   .\s-traent.o
   --   .\s-soflin.o
   --   .\a-elchha.o
   --   .\s-secsta.o
   --   .\s-exctab.o
   --   .\g-os_lib.o
   --   .\i-c.o
   --   .\i-cstrin.o
   --   .\s-assert.o
   --   .\s-memory.o
   --   .\s-stalib.o
   --   .\s-unstyp.o
   --   .\s-wchcon.o
   --   .\s-wchjis.o
   --   .\s-wchcnv.o
   --   .\s-wchstw.o
   --   .\a-except.o
   --   .\alloc.o
   --   .\debug.o
   --   .\gnatvsn.o
   --   .\rident.o
   --   .\types.o
   --   .\hostparm.o
   --   .\csets.o
   --   .\output.o
   --   .\indepsw.o
   --   .\sdefault.o
   --   .\switch.o
   --   .\tree_io.o
   --   .\opt.o
   --   .\table.o
   --   .\ali.o
   --   .\osint.o
   --   .\fname.o
   --   .\fmap.o
   --   .\butil.o
   --   .\gnatlink.o
   --   .\widechar.o
   --   .\namet.o
   --   .\casing.o
   --   -L.\
   --   -LC:\gnatpro\bindings\GNATCOM\bindings\
   --   -LC:\gnat\adagraph\
   --   -LC:\Rapid\tash\
   --   -LC:\Rapid\Tcl_Peer\
   --   -LC:\Rapid\lib\
   --   -LC:\Rapid\mcc_gui\
   --   -LC:\gnatpro\aunit\
   --   -Lc:/GNATPRO/5D65F~1.05W/lib/gcc/pentium-mingw32msv/3.4.6/adalib/
   --   -static
   --   -lgnat
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
