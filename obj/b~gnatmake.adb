pragma Source_File_Name (ada_main, Spec_File_Name => "b~gnatmake.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~gnatmake.adb");

package body ada_main is
   pragma Warnings (Off);

   procedure Do_Finalize;
   pragma Import (C, Do_Finalize, "system__standard_library__adafinal");

   procedure adainit is
      E222 : Boolean; pragma Import (Ada, E222, "gnat__dynamic_htables_E");
      E147 : Boolean; pragma Import (Ada, E147, "gnat__utf_32_E");
      E192 : Boolean; pragma Import (Ada, E192, "system__restrictions_E");
      E008 : Boolean; pragma Import (Ada, E008, "system__secondary_stack_E");
      E013 : Boolean; pragma Import (Ada, E013, "system__soft_links_E");
      E022 : Boolean; pragma Import (Ada, E022, "system__exception_table_E");
      E195 : Boolean; pragma Import (Ada, E195, "ada__io_exceptions_E");
      E170 : Boolean; pragma Import (Ada, E170, "ada__strings_E");
      E188 : Boolean; pragma Import (Ada, E188, "ada__tags_E");
      E071 : Boolean; pragma Import (Ada, E071, "gnat__os_lib_E");
      E020 : Boolean; pragma Import (Ada, E020, "system__assertions_E");
      E186 : Boolean; pragma Import (Ada, E186, "ada__streams_E");
      E185 : Boolean; pragma Import (Ada, E185, "system__finalization_root_E");
      E172 : Boolean; pragma Import (Ada, E172, "ada__strings__maps_E");
      E175 : Boolean; pragma Import (Ada, E175, "ada__strings__maps__constants_E");
      E190 : Boolean; pragma Import (Ada, E190, "system__finalization_implementation_E");
      E183 : Boolean; pragma Import (Ada, E183, "ada__finalization_E");
      E181 : Boolean; pragma Import (Ada, E181, "ada__finalization__list_controller_E");
      E165 : Boolean; pragma Import (Ada, E165, "gnat__directory_operations_E");
      E002 : Boolean; pragma Import (Ada, E002, "gnatmake_E");
      E006 : Boolean; pragma Import (Ada, E006, "gnatvsn_E");
      E197 : Boolean; pragma Import (Ada, E197, "makeusg_E");
      E106 : Boolean; pragma Import (Ada, E106, "rident_E");
      E163 : Boolean; pragma Import (Ada, E163, "sfn_scan_E");
      E054 : Boolean; pragma Import (Ada, E054, "types_E");
      E110 : Boolean; pragma Import (Ada, E110, "binderr_E");
      E051 : Boolean; pragma Import (Ada, E051, "butil_E");
      E103 : Boolean; pragma Import (Ada, E103, "casing_E");
      E116 : Boolean; pragma Import (Ada, E116, "elists_E");
      E089 : Boolean; pragma Import (Ada, E089, "fmap_E");
      E085 : Boolean; pragma Import (Ada, E085, "fname_E");
      E157 : Boolean; pragma Import (Ada, E157, "fname__sf_E");
      E159 : Boolean; pragma Import (Ada, E159, "fname__uf_E");
      E052 : Boolean; pragma Import (Ada, E052, "hostparm_E");
      E118 : Boolean; pragma Import (Ada, E118, "nlists_E");
      E064 : Boolean; pragma Import (Ada, E064, "opt_E");
      E105 : Boolean; pragma Import (Ada, E105, "csets_E");
      E087 : Boolean; pragma Import (Ada, E087, "osint_E");
      E230 : Boolean; pragma Import (Ada, E230, "mlib_E");
      E234 : Boolean; pragma Import (Ada, E234, "mlib__fil_E");
      E232 : Boolean; pragma Import (Ada, E232, "mlib__utl_E");
      E246 : Boolean; pragma Import (Ada, E246, "osint__m_E");
      E093 : Boolean; pragma Import (Ada, E093, "sdefault_E");
      E134 : Boolean; pragma Import (Ada, E134, "snames_E");
      E138 : Boolean; pragma Import (Ada, E138, "stringt_E");
      E153 : Boolean; pragma Import (Ada, E153, "styleg_E");
      E144 : Boolean; pragma Import (Ada, E144, "scng_E");
      E149 : Boolean; pragma Import (Ada, E149, "stylesw_E");
      E244 : Boolean; pragma Import (Ada, E244, "switch_E");
      E264 : Boolean; pragma Import (Ada, E264, "switch__m_E");
      E220 : Boolean; pragma Import (Ada, E220, "targparm_E");
      E212 : Boolean; pragma Import (Ada, E212, "tempdir_E");
      E066 : Boolean; pragma Import (Ada, E066, "tree_io_E");
      E049 : Boolean; pragma Import (Ada, E049, "ali_E");
      E108 : Boolean; pragma Import (Ada, E108, "ali__util_E");
      E218 : Boolean; pragma Import (Ada, E218, "erroutc_E");
      E112 : Boolean; pragma Import (Ada, E112, "lib_E");
      E045 : Boolean; pragma Import (Ada, E045, "make_E");
      E060 : Boolean; pragma Import (Ada, E060, "namet_E");
      E126 : Boolean; pragma Import (Ada, E126, "sinput_E");
      E155 : Boolean; pragma Import (Ada, E155, "sinput__c_E");
      E122 : Boolean; pragma Import (Ada, E122, "uintp_E");
      E145 : Boolean; pragma Import (Ada, E145, "err_vars_E");
      E140 : Boolean; pragma Import (Ada, E140, "uname_E");
      E124 : Boolean; pragma Import (Ada, E124, "urealp_E");
      E130 : Boolean; pragma Import (Ada, E130, "einfo_E");
      E142 : Boolean; pragma Import (Ada, E142, "scans_E");
      E203 : Boolean; pragma Import (Ada, E203, "prj_E");
      E201 : Boolean; pragma Import (Ada, E201, "makeutl_E");
      E238 : Boolean; pragma Import (Ada, E238, "mlib__prj_E");
      E236 : Boolean; pragma Import (Ada, E236, "mlib__tgt_E");
      E205 : Boolean; pragma Import (Ada, E205, "prj__attr_E");
      E254 : Boolean; pragma Import (Ada, E254, "prj__attr__pm_E");
      E208 : Boolean; pragma Import (Ada, E208, "prj__env_E");
      E224 : Boolean; pragma Import (Ada, E224, "prj__ext_E");
      E262 : Boolean; pragma Import (Ada, E262, "prj__nmsc_E");
      E248 : Boolean; pragma Import (Ada, E248, "prj__pars_E");
      E258 : Boolean; pragma Import (Ada, E258, "prj__tree_E");
      E252 : Boolean; pragma Import (Ada, E252, "prj__dect_E");
      E250 : Boolean; pragma Import (Ada, E250, "prj__part_E");
      E260 : Boolean; pragma Import (Ada, E260, "prj__proc_E");
      E256 : Boolean; pragma Import (Ada, E256, "prj__strt_E");
      E228 : Boolean; pragma Import (Ada, E228, "prj__util_E");
      E120 : Boolean; pragma Import (Ada, E120, "sinfo_E");
      E114 : Boolean; pragma Import (Ada, E114, "atree_E");
      E242 : Boolean; pragma Import (Ada, E242, "sinput__p_E");
      E199 : Boolean; pragma Import (Ada, E199, "usage_E");
      E078 : Boolean; pragma Import (Ada, E078, "widechar_E");
      E216 : Boolean; pragma Import (Ada, E216, "errutil_E");
      E214 : Boolean; pragma Import (Ada, E214, "prj__err_E");
      E132 : Boolean; pragma Import (Ada, E132, "stand_E");

      Restrictions : constant String :=
        "nnvvnnnvvvnnvnnvnvnvvnvvvvnvnnnnvnnnvnvnnnnnnnvvvnnnvvnvvv" &
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

      E222 := True;
      Gnat.Utf_32'Elab_Body;
      E147 := True;
      System.Restrictions'Elab_Spec;
      System.Restrictions'Elab_Body;
      E192 := True;
      System.Soft_Links'Elab_Body;
      E013 := True;
      System.Secondary_Stack'Elab_Body;
      E008 := True;
      System.Exception_Table'Elab_Body;
      E022 := True;
      Ada.Io_Exceptions'Elab_Spec;
      E195 := True;
      Ada.Strings'Elab_Spec;
      E170 := True;
      Ada.Tags'Elab_Spec;
      Gnat.Os_Lib'Elab_Body;
      E071 := True;
      System.Assertions'Elab_Spec;
      E020 := True;
      Ada.Streams'Elab_Spec;
      E186 := True;
      System.Finalization_Root'Elab_Spec;
      E185 := True;
      Ada.Strings.Maps'Elab_Spec;
      E172 := True;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E175 := True;
      System.Finalization_Implementation'Elab_Spec;
      System.Finalization_Implementation'Elab_Body;
      E190 := True;
      Ada.Finalization'Elab_Spec;
      E183 := True;
      Ada.Finalization.List_Controller'Elab_Spec;
      E181 := True;
      Gnat.Directory_Operations'Elab_Spec;
      E165 := True;
      Ada.Tags'Elab_Body;
      E188 := True;
      E006 := True;
      Rident'Elab_Spec;
      E106 := True;
      Sfn_Scan'Elab_Spec;
      E163 := True;
      Types'Elab_Spec;
      E054 := True;
      Hostparm'Elab_Spec;
      E052 := True;
      Opt'Elab_Spec;
      Csets'Elab_Body;
      E105 := True;
      Osint'Elab_Spec;
      Sdefault'Elab_Body;
      E093 := True;
      E149 := True;
      E244 := True;
      Targparm'Elab_Spec;
      Tree_Io'Elab_Spec;
      E066 := True;
      E064 := True;
      Switch.M'Elab_Body;
      E264 := True;
      Elists'Elab_Body;
      E116 := True;
      ALI'ELAB_SPEC;
      ALI.UTIL'ELAB_SPEC;
      Erroutc'Elab_Spec;
      Lib'Elab_Spec;
      Make'Elab_Spec;
      E002 := True;
      Namet'Elab_Spec;
      ALI'ELAB_BODY;
      E049 := True;
      Tempdir'Elab_Body;
      E212 := True;
      Targparm'Elab_Body;
      E220 := True;
      Stringt'Elab_Body;
      E138 := True;
      Snames'Elab_Body;
      E134 := True;
      Mlib'Elab_Body;
      E230 := True;
      Osint'Elab_Body;
      E087 := True;
      E157 := True;
      Fname'Elab_Body;
      E085 := True;
      Fmap'Elab_Body;
      E089 := True;
      E051 := True;
      E110 := True;
      Sinput'Elab_Spec;
      E155 := True;
      Uintp'Elab_Spec;
      Uintp'Elab_Body;
      E122 := True;
      Err_Vars'Elab_Spec;
      E145 := True;
      E218 := True;
      Urealp'Elab_Body;
      E124 := True;
      Scans'Elab_Spec;
      E142 := True;
      E153 := True;
      Prj'Elab_Spec;
      E236 := True;
      E232 := True;
      E234 := True;
      Prj.Attr'Elab_Spec;
      E254 := True;
      E205 := True;
      Prj.Env'Elab_Body;
      E208 := True;
      Prj.Tree'Elab_Spec;
      E228 := True;
      Makeutl'Elab_Body;
      E201 := True;
      Atree'Elab_Spec;
      Atree'Elab_Body;
      E114 := True;
      E120 := True;
      E140 := True;
      Nlists'Elab_Body;
      E118 := True;
      Mlib.Prj'Elab_Body;
      E238 := True;
      E199 := True;
      E197 := True;
      E078 := True;
      E126 := True;
      E060 := True;
      Prj.Ext'Elab_Body;
      E224 := True;
      Make'Elab_Body;
      E045 := True;
      E144 := True;
      Osint.M'Elab_Body;
      E246 := True;
      Fname.Uf'Elab_Body;
      E159 := True;
      E103 := True;
      ALI.UTIL'ELAB_BODY;
      E108 := True;
      E216 := True;
      Prj.Err'Elab_Spec;
      E214 := True;
      E242 := True;
      Prj.Strt'Elab_Body;
      E256 := True;
      Prj.Proc'Elab_Body;
      E260 := True;
      Prj.Part'Elab_Body;
      E250 := True;
      E252 := True;
      Prj.Tree'Elab_Body;
      E258 := True;
      E248 := True;
      Prj.Nmsc'Elab_Body;
      E262 := True;
      Prj'Elab_Body;
      E203 := True;
      E132 := True;
      E130 := True;
      E112 := True;
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
      pragma Import (Ada, Ada_Main_Program, "_ada_gnatmake");

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
   --   .\a-charac.o
   --   .\a-chlat1.o
   --   .\gnat.o
   --   .\g-dynhta.o
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
   --   .\i-cstrea.o
   --   .\s-purexc.o
   --   .\s-restri.o
   --   .\s-stoele.o
   --   .\s-carun8.o
   --   .\s-imgint.o
   --   .\s-imgenu.o
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
   --   .\a-ioexce.o
   --   .\a-string.o
   --   .\g-os_lib.o
   --   .\s-assert.o
   --   .\a-stream.o
   --   .\s-finroo.o
   --   .\s-memory.o
   --   .\s-stalib.o
   --   .\s-unstyp.o
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
   --   .\g-dirope.o
   --   .\s-wchcon.o
   --   .\s-wchjis.o
   --   .\s-wchcnv.o
   --   .\s-wchstw.o
   --   .\a-tags.o
   --   .\a-except.o
   --   .\alloc.o
   --   .\debug.o
   --   .\gnatvsn.o
   --   .\rident.o
   --   .\sfn_scan.o
   --   .\types.o
   --   .\hostparm.o
   --   .\krunch.o
   --   .\csets.o
   --   .\output.o
   --   .\sdefault.o
   --   .\stylesw.o
   --   .\switch.o
   --   .\tree_io.o
   --   .\opt.o
   --   .\table.o
   --   .\switch-m.o
   --   .\elists.o
   --   .\gnatmake.o
   --   .\ali.o
   --   .\tempdir.o
   --   .\targparm.o
   --   .\stringt.o
   --   .\snames.o
   --   .\mlib.o
   --   .\osint.o
   --   .\fname-sf.o
   --   .\fname.o
   --   .\fmap.o
   --   .\butil.o
   --   .\binderr.o
   --   .\sinput-c.o
   --   .\uintp.o
   --   .\err_vars.o
   --   .\erroutc.o
   --   .\urealp.o
   --   .\scans.o
   --   .\styleg.o
   --   .\mlib-tgt.o
   --   .\mlib-utl.o
   --   .\mlib-fil.o
   --   .\prj-attr-pm.o
   --   .\prj-com.o
   --   .\prj-attr.o
   --   .\prj-env.o
   --   .\prj-util.o
   --   .\makeutl.o
   --   .\atree.o
   --   .\sinfo.o
   --   .\uname.o
   --   .\nlists.o
   --   .\mlib-prj.o
   --   .\usage.o
   --   .\makeusg.o
   --   .\widechar.o
   --   .\sinput.o
   --   .\namet.o
   --   .\prj-ext.o
   --   .\make.o
   --   .\scng.o
   --   .\osint-m.o
   --   .\fname-uf.o
   --   .\casing.o
   --   .\ali-util.o
   --   .\errutil.o
   --   .\prj-err.o
   --   .\sinput-p.o
   --   .\prj-strt.o
   --   .\prj-proc.o
   --   .\prj-part.o
   --   .\prj-dect.o
   --   .\prj-tree.o
   --   .\prj-pars.o
   --   .\prj-nmsc.o
   --   .\prj.o
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
