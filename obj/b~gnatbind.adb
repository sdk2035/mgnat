pragma Source_File_Name (ada_main, Spec_File_Name => "b~gnatbind.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~gnatbind.adb");

package body ada_main is
   pragma Warnings (Off);

   procedure Do_Finalize;
   pragma Import (C, Do_Finalize, "system__standard_library__adafinal");

   procedure adainit is
      E143 : Boolean; pragma Import (Ada, E143, "gnat__utf_32_E");
      E016 : Boolean; pragma Import (Ada, E016, "system__secondary_stack_E");
      E012 : Boolean; pragma Import (Ada, E012, "system__soft_links_E");
      E024 : Boolean; pragma Import (Ada, E024, "system__exception_table_E");
      E065 : Boolean; pragma Import (Ada, E065, "gnat__os_lib_E");
      E022 : Boolean; pragma Import (Ada, E022, "system__assertions_E");
      E153 : Boolean; pragma Import (Ada, E153, "bcheck_E");
      E157 : Boolean; pragma Import (Ada, E157, "bindgen_E");
      E165 : Boolean; pragma Import (Ada, E165, "bindusg_E");
      E002 : Boolean; pragma Import (Ada, E002, "gnatbind_E");
      E072 : Boolean; pragma Import (Ada, E072, "gnatvsn_E");
      E102 : Boolean; pragma Import (Ada, E102, "rident_E");
      E048 : Boolean; pragma Import (Ada, E048, "types_E");
      E106 : Boolean; pragma Import (Ada, E106, "binderr_E");
      E045 : Boolean; pragma Import (Ada, E045, "butil_E");
      E099 : Boolean; pragma Import (Ada, E099, "casing_E");
      E112 : Boolean; pragma Import (Ada, E112, "elists_E");
      E085 : Boolean; pragma Import (Ada, E085, "fmap_E");
      E081 : Boolean; pragma Import (Ada, E081, "fname_E");
      E046 : Boolean; pragma Import (Ada, E046, "hostparm_E");
      E114 : Boolean; pragma Import (Ada, E114, "nlists_E");
      E058 : Boolean; pragma Import (Ada, E058, "opt_E");
      E101 : Boolean; pragma Import (Ada, E101, "csets_E");
      E083 : Boolean; pragma Import (Ada, E083, "osint_E");
      E159 : Boolean; pragma Import (Ada, E159, "osint__b_E");
      E089 : Boolean; pragma Import (Ada, E089, "sdefault_E");
      E130 : Boolean; pragma Import (Ada, E130, "snames_E");
      E134 : Boolean; pragma Import (Ada, E134, "stringt_E");
      E149 : Boolean; pragma Import (Ada, E149, "styleg_E");
      E140 : Boolean; pragma Import (Ada, E140, "scng_E");
      E145 : Boolean; pragma Import (Ada, E145, "stylesw_E");
      E167 : Boolean; pragma Import (Ada, E167, "switch_E");
      E169 : Boolean; pragma Import (Ada, E169, "switch__b_E");
      E163 : Boolean; pragma Import (Ada, E163, "targparm_E");
      E060 : Boolean; pragma Import (Ada, E060, "tree_io_E");
      E043 : Boolean; pragma Import (Ada, E043, "ali_E");
      E104 : Boolean; pragma Import (Ada, E104, "ali__util_E");
      E155 : Boolean; pragma Import (Ada, E155, "binde_E");
      E108 : Boolean; pragma Import (Ada, E108, "lib_E");
      E054 : Boolean; pragma Import (Ada, E054, "namet_E");
      E122 : Boolean; pragma Import (Ada, E122, "sinput_E");
      E151 : Boolean; pragma Import (Ada, E151, "sinput__c_E");
      E118 : Boolean; pragma Import (Ada, E118, "uintp_E");
      E141 : Boolean; pragma Import (Ada, E141, "err_vars_E");
      E136 : Boolean; pragma Import (Ada, E136, "uname_E");
      E120 : Boolean; pragma Import (Ada, E120, "urealp_E");
      E126 : Boolean; pragma Import (Ada, E126, "einfo_E");
      E138 : Boolean; pragma Import (Ada, E138, "scans_E");
      E116 : Boolean; pragma Import (Ada, E116, "sinfo_E");
      E110 : Boolean; pragma Import (Ada, E110, "atree_E");
      E074 : Boolean; pragma Import (Ada, E074, "widechar_E");
      E128 : Boolean; pragma Import (Ada, E128, "stand_E");

      Restrictions : constant String :=
        "nnvvnnnvnnnnvnnvnvnvvnvvvvnvnnnnvnnnvnvnnnnnnnvvvnnnvvnvvv" &
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

      Gnat.Utf_32'Elab_Body;
      E143 := True;
      System.Soft_Links'Elab_Body;
      E012 := True;
      System.Secondary_Stack'Elab_Body;
      E016 := True;
      System.Exception_Table'Elab_Body;
      E024 := True;
      Gnat.Os_Lib'Elab_Body;
      E065 := True;
      System.Assertions'Elab_Spec;
      E022 := True;
      E072 := True;
      Rident'Elab_Spec;
      E102 := True;
      Types'Elab_Spec;
      E048 := True;
      Hostparm'Elab_Spec;
      E046 := True;
      Opt'Elab_Spec;
      Csets'Elab_Body;
      E101 := True;
      Osint'Elab_Spec;
      E165 := True;
      Sdefault'Elab_Body;
      E089 := True;
      E145 := True;
      E167 := True;
      E169 := True;
      Targparm'Elab_Spec;
      Tree_Io'Elab_Spec;
      E060 := True;
      E058 := True;
      Elists'Elab_Body;
      E112 := True;
      ALI'ELAB_SPEC;
      ALI.UTIL'ELAB_SPEC;
      Binde'Elab_Spec;
      Lib'Elab_Spec;
      Namet'Elab_Spec;
      Binde'Elab_Body;
      E155 := True;
      ALI'ELAB_BODY;
      E043 := True;
      Targparm'Elab_Body;
      E163 := True;
      Stringt'Elab_Body;
      E134 := True;
      Snames'Elab_Body;
      E130 := True;
      Osint'Elab_Body;
      E083 := True;
      Fname'Elab_Body;
      E081 := True;
      Fmap'Elab_Body;
      E085 := True;
      E045 := True;
      E106 := True;
      E002 := True;
      Bindgen'Elab_Body;
      E157 := True;
      E153 := True;
      Sinput'Elab_Spec;
      E151 := True;
      Uintp'Elab_Spec;
      Uintp'Elab_Body;
      E118 := True;
      Err_Vars'Elab_Spec;
      E141 := True;
      Urealp'Elab_Body;
      E120 := True;
      Scans'Elab_Spec;
      E138 := True;
      E149 := True;
      Atree'Elab_Spec;
      Atree'Elab_Body;
      E110 := True;
      E116 := True;
      E136 := True;
      Nlists'Elab_Body;
      E114 := True;
      E074 := True;
      E122 := True;
      E054 := True;
      E140 := True;
      Osint.B'Elab_Body;
      E159 := True;
      E099 := True;
      ALI.UTIL'ELAB_BODY;
      E104 := True;
      E128 := True;
      E126 := True;
      E108 := True;
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
      pragma Import (Ada, Ada_Main_Program, "_ada_gnatbind");

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
   --   .\g-hesora.o
   --   .\g-string.o
   --   .\g-utf_32.o
   --   .\interfac.o
   --   .\system.o
   --   .\s-addope.o
   --   .\s-casuti.o
   --   .\g-casuti.o
   --   .\s-crc32.o
   --   .\s-htable.o
   --   .\g-htable.o
   --   .\s-parame.o
   --   .\s-crtl.o
   --   .\s-purexc.o
   --   .\s-stoele.o
   --   .\s-carun8.o
   --   .\s-imgenu.o
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
   --   .\bindusg.o
   --   .\sdefault.o
   --   .\stylesw.o
   --   .\switch.o
   --   .\switch-b.o
   --   .\tree_io.o
   --   .\opt.o
   --   .\table.o
   --   .\elists.o
   --   .\binde.o
   --   .\ali.o
   --   .\targparm.o
   --   .\stringt.o
   --   .\snames.o
   --   .\osint.o
   --   .\fname.o
   --   .\fmap.o
   --   .\butil.o
   --   .\binderr.o
   --   .\gnatbind.o
   --   .\bindgen.o
   --   .\bcheck.o
   --   .\sinput-c.o
   --   .\uintp.o
   --   .\err_vars.o
   --   .\urealp.o
   --   .\scans.o
   --   .\styleg.o
   --   .\atree.o
   --   .\sinfo.o
   --   .\uname.o
   --   .\nlists.o
   --   .\widechar.o
   --   .\sinput.o
   --   .\namet.o
   --   .\scng.o
   --   .\osint-b.o
   --   .\casing.o
   --   .\ali-util.o
   --   .\stand.o
   --   .\einfo.o
   --   .\lib.o
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
