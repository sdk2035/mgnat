pragma Source_File_Name (ada_main, Spec_File_Name => "b~gnatls.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~gnatls.adb");

package body ada_main is
   pragma Warnings (Off);

   procedure Do_Finalize;
   pragma Import (C, Do_Finalize, "system__standard_library__adafinal");

   procedure adainit is
      E057 : Boolean; pragma Import (Ada, E057, "gnat__strings_E");
      E004 : Boolean; pragma Import (Ada, E004, "system__standard_library_E");
      E031 : Boolean; pragma Import (Ada, E031, "system__secondary_stack_E");
      E006 : Boolean; pragma Import (Ada, E006, "ada__exceptions_E");
      E027 : Boolean; pragma Import (Ada, E027, "system__exceptions_E");
      E019 : Boolean; pragma Import (Ada, E019, "system__soft_links_E");
      E015 : Boolean; pragma Import (Ada, E015, "system__exception_table_E");
      E013 : Boolean; pragma Import (Ada, E013, "system__assertions_E");
      E002 : Boolean; pragma Import (Ada, E002, "gnatls_E");
      E071 : Boolean; pragma Import (Ada, E071, "gnatvsn_E");
      E102 : Boolean; pragma Import (Ada, E102, "rident_E");
      E059 : Boolean; pragma Import (Ada, E059, "types_E");
      E106 : Boolean; pragma Import (Ada, E106, "binderr_E");
      E042 : Boolean; pragma Import (Ada, E042, "butil_E");
      E099 : Boolean; pragma Import (Ada, E099, "casing_E");
      E112 : Boolean; pragma Import (Ada, E112, "elists_E");
      E085 : Boolean; pragma Import (Ada, E085, "fmap_E");
      E081 : Boolean; pragma Import (Ada, E081, "fname_E");
      E114 : Boolean; pragma Import (Ada, E114, "nlists_E");
      E069 : Boolean; pragma Import (Ada, E069, "opt_E");
      E101 : Boolean; pragma Import (Ada, E101, "csets_E");
      E083 : Boolean; pragma Import (Ada, E083, "osint_E");
      E151 : Boolean; pragma Import (Ada, E151, "osint__l_E");
      E089 : Boolean; pragma Import (Ada, E089, "sdefault_E");
      E130 : Boolean; pragma Import (Ada, E130, "snames_E");
      E134 : Boolean; pragma Import (Ada, E134, "stringt_E");
      E147 : Boolean; pragma Import (Ada, E147, "styleg_E");
      E140 : Boolean; pragma Import (Ada, E140, "scng_E");
      E143 : Boolean; pragma Import (Ada, E143, "stylesw_E");
      E155 : Boolean; pragma Import (Ada, E155, "targparm_E");
      E065 : Boolean; pragma Import (Ada, E065, "tree_io_E");
      E040 : Boolean; pragma Import (Ada, E040, "ali_E");
      E104 : Boolean; pragma Import (Ada, E104, "ali__util_E");
      E108 : Boolean; pragma Import (Ada, E108, "lib_E");
      E045 : Boolean; pragma Import (Ada, E045, "namet_E");
      E122 : Boolean; pragma Import (Ada, E122, "sinput_E");
      E149 : Boolean; pragma Import (Ada, E149, "sinput__c_E");
      E118 : Boolean; pragma Import (Ada, E118, "uintp_E");
      E141 : Boolean; pragma Import (Ada, E141, "err_vars_E");
      E136 : Boolean; pragma Import (Ada, E136, "uname_E");
      E120 : Boolean; pragma Import (Ada, E120, "urealp_E");
      E126 : Boolean; pragma Import (Ada, E126, "einfo_E");
      E138 : Boolean; pragma Import (Ada, E138, "scans_E");
      E116 : Boolean; pragma Import (Ada, E116, "sinfo_E");
      E110 : Boolean; pragma Import (Ada, E110, "atree_E");
      E067 : Boolean; pragma Import (Ada, E067, "widechar_E");
      E128 : Boolean; pragma Import (Ada, E128, "stand_E");

      Restrictions : constant String :=
        "nnvvnnnvnnnvnnvnvnvvnvvvvnvnnnnvnnnvnvnnnnnnnvvvvnnnvvnv" &
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

      E057 := True;
      System.Standard_Library'Elab_Spec;
      Ada.Exceptions'Elab_Spec;
      System.Exceptions'Elab_Spec;
      E027 := True;
      System.Soft_Links'Elab_Body;
      E019 := True;
      System.Secondary_Stack'Elab_Body;
      E031 := True;
      System.Exception_Table'Elab_Body;
      E015 := True;
      System.Assertions'Elab_Spec;
      E013 := True;
      E004 := True;
      Ada.Exceptions'Elab_Body;
      E006 := True;
      E071 := True;
      Rident'Elab_Spec;
      E102 := True;
      Types'Elab_Spec;
      E059 := True;
      Opt'Elab_Spec;
      Csets'Elab_Body;
      E101 := True;
      Osint'Elab_Spec;
      Osint.L'Elab_Body;
      E151 := True;
      Sdefault'Elab_Body;
      E089 := True;
      E143 := True;
      Targparm'Elab_Spec;
      Tree_Io'Elab_Spec;
      E065 := True;
      E069 := True;
      Elists'Elab_Body;
      E112 := True;
      ALI'ELAB_SPEC;
      ALI.UTIL'ELAB_SPEC;
      Lib'Elab_Spec;
      Namet'Elab_Spec;
      ALI'ELAB_BODY;
      E040 := True;
      Targparm'Elab_Body;
      E155 := True;
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
      E042 := True;
      E106 := True;
      E002 := True;
      Sinput'Elab_Spec;
      E122 := True;
      E149 := True;
      Uintp'Elab_Spec;
      Uintp'Elab_Body;
      E118 := True;
      Err_Vars'Elab_Spec;
      E141 := True;
      Urealp'Elab_Body;
      E120 := True;
      Scans'Elab_Spec;
      E138 := True;
      ALI.UTIL'ELAB_BODY;
      E104 := True;
      E147 := True;
      Atree'Elab_Spec;
      Atree'Elab_Body;
      E110 := True;
      E116 := True;
      E136 := True;
      Nlists'Elab_Body;
      E114 := True;
      E067 := True;
      E045 := True;
      E140 := True;
      E099 := True;
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
      procedure initialize;
      pragma Import (C, initialize, "__gnat_initialize");

      procedure finalize;
      pragma Import (C, finalize, "__gnat_finalize");


      procedure Ada_Main_Program;
      pragma Import (Ada, Ada_Main_Program, "_ada_gnatls");

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
   --   .\gnat.o
   --   .\g-hesora.o
   --   .\g-string.o
   --   .\interfac.o
   --   .\system.o
   --   .\s-addope.o
   --   .\s-casuti.o
   --   .\g-casuti.o
   --   .\s-crc32.o
   --   .\s-htable.o
   --   .\g-htable.o
   --   .\s-maccod.o
   --   .\s-parame.o
   --   .\s-crtl.o
   --   .\s-stoele.o
   --   .\s-carun8.o
   --   .\s-imgint.o
   --   .\s-imgenu.o
   --   .\s-stache.o
   --   .\s-strops.o
   --   .\s-sopco3.o
   --   .\s-sopco4.o
   --   .\s-traceb.o
   --   .\s-traent.o
   --   .\a-elchha.o
   --   .\s-except.o
   --   .\s-soflin.o
   --   .\s-secsta.o
   --   .\s-exctab.o
   --   .\g-os_lib.o
   --   .\s-assert.o
   --   .\s-memory.o
   --   .\s-mastop.o
   --   .\s-stalib.o
   --   .\s-unstyp.o
   --   .\a-except.o
   --   .\s-wchcon.o
   --   .\s-wchjis.o
   --   .\s-wchcnv.o
   --   .\alloc.o
   --   .\debug.o
   --   .\gnatvsn.o
   --   .\hostparm.o
   --   .\rident.o
   --   .\types.o
   --   .\csets.o
   --   .\osint-l.o
   --   .\output.o
   --   .\sdefault.o
   --   .\stylesw.o
   --   .\tree_io.o
   --   .\opt.o
   --   .\table.o
   --   .\elists.o
   --   .\ali.o
   --   .\targparm.o
   --   .\stringt.o
   --   .\snames.o
   --   .\osint.o
   --   .\fname.o
   --   .\fmap.o
   --   .\butil.o
   --   .\binderr.o
   --   .\gnatls.o
   --   .\sinput.o
   --   .\sinput-c.o
   --   .\uintp.o
   --   .\err_vars.o
   --   .\urealp.o
   --   .\scans.o
   --   .\ali-util.o
   --   .\styleg.o
   --   .\atree.o
   --   .\sinfo.o
   --   .\uname.o
   --   .\nlists.o
   --   .\widechar.o
   --   .\namet.o
   --   .\scng.o
   --   .\casing.o
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
   --   -LC:\GNAT\GAP_1.1.0\bin\..\lib\gcc-lib\pentium-mingw32msv\3.2.3\adalib\
   --   -LC:\gnat\adagraph\
   --   -LC:\Rapid\tash\
   --   -static
   --   -lgnat
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
