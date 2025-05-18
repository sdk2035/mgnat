pragma Source_File_Name (ada_main, Spec_File_Name => "b~gnatfind.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~gnatfind.adb");

package body ada_main is
   pragma Warnings (Off);

   procedure Do_Finalize;
   pragma Import (C, Do_Finalize, "system__standard_library__adafinal");

   procedure adainit is
      E086 : Boolean; pragma Import (Ada, E086, "gnat__strings_E");
      E003 : Boolean; pragma Import (Ada, E003, "system__standard_library_E");
      E030 : Boolean; pragma Import (Ada, E030, "system__secondary_stack_E");
      E006 : Boolean; pragma Import (Ada, E006, "ada__exceptions_E");
      E026 : Boolean; pragma Import (Ada, E026, "system__exceptions_E");
      E018 : Boolean; pragma Import (Ada, E018, "system__soft_links_E");
      E014 : Boolean; pragma Import (Ada, E014, "system__exception_table_E");
      E072 : Boolean; pragma Import (Ada, E072, "ada__io_exceptions_E");
      E038 : Boolean; pragma Import (Ada, E038, "ada__strings_E");
      E054 : Boolean; pragma Import (Ada, E054, "ada__tags_E");
      E052 : Boolean; pragma Import (Ada, E052, "ada__streams_E");
      E012 : Boolean; pragma Import (Ada, E012, "system__assertions_E");
      E063 : Boolean; pragma Import (Ada, E063, "system__finalization_root_E");
      E042 : Boolean; pragma Import (Ada, E042, "ada__strings__maps_E");
      E091 : Boolean; pragma Import (Ada, E091, "ada__strings__maps__constants_E");
      E065 : Boolean; pragma Import (Ada, E065, "system__finalization_implementation_E");
      E061 : Boolean; pragma Import (Ada, E061, "ada__finalization_E");
      E075 : Boolean; pragma Import (Ada, E075, "ada__finalization__list_controller_E");
      E140 : Boolean; pragma Import (Ada, E140, "ada__strings__unbounded_E");
      E088 : Boolean; pragma Import (Ada, E088, "gnat__directory_operations_E");
      E093 : Boolean; pragma Import (Ada, E093, "gnat__regexp_E");
      E078 : Boolean; pragma Import (Ada, E078, "gnat__command_line_E");
      E073 : Boolean; pragma Import (Ada, E073, "system__file_control_block_E");
      E059 : Boolean; pragma Import (Ada, E059, "system__file_io_E");
      E051 : Boolean; pragma Import (Ada, E051, "ada__text_io_E");
      E144 : Boolean; pragma Import (Ada, E144, "gnat__io_aux_E");
      E099 : Boolean; pragma Import (Ada, E099, "gnatvsn_E");
      E113 : Boolean; pragma Import (Ada, E113, "types_E");
      E103 : Boolean; pragma Import (Ada, E103, "fmap_E");
      E123 : Boolean; pragma Import (Ada, E123, "opt_E");
      E101 : Boolean; pragma Import (Ada, E101, "osint_E");
      E134 : Boolean; pragma Import (Ada, E134, "sdefault_E");
      E119 : Boolean; pragma Import (Ada, E119, "tree_io_E");
      E107 : Boolean; pragma Import (Ada, E107, "namet_E");
      E121 : Boolean; pragma Import (Ada, E121, "widechar_E");
      E138 : Boolean; pragma Import (Ada, E138, "xr_tabls_E");
      E142 : Boolean; pragma Import (Ada, E142, "xref_lib_E");

      Restrictions : constant String :=
        "nnvvnnnvvnnnnnvnvvvvvvnvvnvnvnnvnnnvnvnnnnnnnvvvvnnnvvnv" &
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
         Detect_Blocking          : Integer);
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
         Zero_Cost_Exceptions     => 0,
         Detect_Blocking          => 0);

      if Handler_Installed = 0 then
         Install_Handler;
      end if;

      E086 := True;
      System.Standard_Library'Elab_Spec;
      Ada.Exceptions'Elab_Spec;
      System.Exceptions'Elab_Spec;
      E026 := True;
      System.Soft_Links'Elab_Body;
      E018 := True;
      System.Secondary_Stack'Elab_Body;
      E030 := True;
      System.Exception_Table'Elab_Body;
      E014 := True;
      Ada.Io_Exceptions'Elab_Spec;
      E072 := True;
      Ada.Strings'Elab_Spec;
      E038 := True;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E054 := True;
      Ada.Streams'Elab_Spec;
      E052 := True;
      System.Assertions'Elab_Spec;
      E012 := True;
      System.Finalization_Root'Elab_Spec;
      E063 := True;
      E003 := True;
      Ada.Exceptions'Elab_Body;
      E006 := True;
      Ada.Strings.Maps'Elab_Spec;
      E042 := True;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E091 := True;
      System.Finalization_Implementation'Elab_Spec;
      System.Finalization_Implementation'Elab_Body;
      E065 := True;
      Ada.Finalization'Elab_Spec;
      E061 := True;
      Ada.Finalization.List_Controller'Elab_Spec;
      E075 := True;
      Ada.Strings.Unbounded'Elab_Spec;
      E140 := True;
      Gnat.Directory_Operations'Elab_Spec;
      E088 := True;
      Gnat.Regexp'Elab_Spec;
      E093 := True;
      Gnat.Command_Line'Elab_Spec;
      Gnat.Command_Line'Elab_Body;
      E078 := True;
      System.File_Control_Block'Elab_Spec;
      E073 := True;
      System.File_Io'Elab_Body;
      E059 := True;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E051 := True;
      E144 := True;
      E099 := True;
      Types'Elab_Spec;
      E113 := True;
      Opt'Elab_Spec;
      Osint'Elab_Spec;
      Sdefault'Elab_Body;
      E134 := True;
      Tree_Io'Elab_Spec;
      E119 := True;
      E123 := True;
      Namet'Elab_Spec;
      Osint'Elab_Body;
      E101 := True;
      Fmap'Elab_Body;
      E103 := True;
      E121 := True;
      E107 := True;
      Xr_Tabls'Elab_Spec;
      Xr_Tabls'Elab_Body;
      E138 := True;
      Xref_Lib'Elab_Spec;
      Xref_Lib'Elab_Body;
      E142 := True;
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
      procedure initialize;
      pragma Import (C, initialize, "__gnat_initialize");

      procedure finalize;
      pragma Import (C, finalize, "__gnat_finalize");


      procedure Ada_Main_Program;
      pragma Import (Ada, Ada_Main_Program, "_ada_gnatfind");

      Ensure_Reference : System.Address := Ada_Main_Program_Name'Address;

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize;
      adainit;
      Break_Start;
      Ada_Main_Program;
      Do_Finalize;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   .\ada.o
   --   .\a-charac.o
   --   .\a-chlat1.o
   --   .\gnat.o
   --   .\g-string.o
   --   .\interfac.o
   --   .\system.o
   --   .\s-addope.o
   --   .\s-casuti.o
   --   .\g-casuti.o
   --   .\s-htable.o
   --   .\g-htable.o
   --   .\s-maccod.o
   --   .\s-parame.o
   --   .\s-crtl.o
   --   .\i-cstrea.o
   --   .\s-purexc.o
   --   .\s-stoele.o
   --   .\s-carun8.o
   --   .\s-imgint.o
   --   .\a-comlin.o
   --   .\s-stache.o
   --   .\s-strops.o
   --   .\s-sopco3.o
   --   .\s-sopco4.o
   --   .\s-sopco5.o
   --   .\s-traceb.o
   --   .\s-traent.o
   --   .\a-elchha.o
   --   .\s-except.o
   --   .\s-soflin.o
   --   .\s-secsta.o
   --   .\s-exctab.o
   --   .\a-ioexce.o
   --   .\a-string.o
   --   .\a-tags.o
   --   .\a-stream.o
   --   .\g-os_lib.o
   --   .\s-assert.o
   --   .\s-finroo.o
   --   .\s-memory.o
   --   .\s-mastop.o
   --   .\s-stalib.o
   --   .\s-unstyp.o
   --   .\a-except.o
   --   .\s-bitops.o
   --   .\a-strmap.o
   --   .\a-stmaco.o
   --   .\a-chahan.o
   --   .\a-strsea.o
   --   .\a-strfix.o
   --   .\s-stratt.o
   --   .\s-finimp.o
   --   .\a-finali.o
   --   .\a-filico.o
   --   .\a-strunb.o
   --   .\g-dirope.o
   --   .\g-regexp.o
   --   .\g-comlin.o
   --   .\s-ficobl.o
   --   .\s-fileio.o
   --   .\a-textio.o
   --   .\g-io_aux.o
   --   .\s-valuti.o
   --   .\s-valuns.o
   --   .\s-valint.o
   --   .\s-wchcon.o
   --   .\s-wchjis.o
   --   .\s-wchcnv.o
   --   .\alloc.o
   --   .\debug.o
   --   .\gnatvsn.o
   --   .\hostparm.o
   --   .\types.o
   --   .\output.o
   --   .\sdefault.o
   --   .\tree_io.o
   --   .\opt.o
   --   .\table.o
   --   .\osint.o
   --   .\fmap.o
   --   .\widechar.o
   --   .\namet.o
   --   .\xr_tabls.o
   --   .\xref_lib.o
   --   .\gnatfind.o
   --   -L.\
   --   -LC:\gnatpro\bindings\GNATCOM\bindings\
   --   -LC:\gnat\adagraph\
   --   -LC:\Rapid\tash\
   --   -LC:\Rapid\Tcl_Peer\
   --   -LC:\Rapid\lib\
   --   -LC:\Rapid\mcc_gui\
   --   -LC:\gnatpro\aunit\
   --   -LC:\GNAT\GAP_1.1.0\bin\..\lib\gcc-lib\pentium-mingw32msv\3.2.3\adalib\
   --   -LC:\gnat\adagraph\
   --   -LC:\Rapid\tash\
   --   -static
   --   -lgnat
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
