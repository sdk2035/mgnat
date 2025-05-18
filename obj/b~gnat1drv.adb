pragma Source_File_Name (ada_main, Spec_File_Name => "b~gnat1drv.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~gnat1drv.adb");

package body ada_main is
   pragma Warnings (Off);

   procedure Do_Finalize;
   pragma Import (C, Do_Finalize, "system__standard_library__adafinal");

   procedure adainit is
      E299 : Boolean; pragma Import (Ada, E299, "gnat__utf_32_E");
      E191 : Boolean; pragma Import (Ada, E191, "system__restrictions_E");
      E016 : Boolean; pragma Import (Ada, E016, "system__secondary_stack_E");
      E012 : Boolean; pragma Import (Ada, E012, "system__soft_links_E");
      E024 : Boolean; pragma Import (Ada, E024, "system__exception_table_E");
      E194 : Boolean; pragma Import (Ada, E194, "ada__io_exceptions_E");
      E165 : Boolean; pragma Import (Ada, E165, "ada__strings_E");
      E179 : Boolean; pragma Import (Ada, E179, "ada__tags_E");
      E053 : Boolean; pragma Import (Ada, E053, "gnat__os_lib_E");
      E022 : Boolean; pragma Import (Ada, E022, "system__assertions_E");
      E177 : Boolean; pragma Import (Ada, E177, "ada__streams_E");
      E187 : Boolean; pragma Import (Ada, E187, "system__finalization_root_E");
      E167 : Boolean; pragma Import (Ada, E167, "ada__strings__maps_E");
      E170 : Boolean; pragma Import (Ada, E170, "ada__strings__maps__constants_E");
      E189 : Boolean; pragma Import (Ada, E189, "system__finalization_implementation_E");
      E185 : Boolean; pragma Import (Ada, E185, "ada__finalization_E");
      E197 : Boolean; pragma Import (Ada, E197, "ada__finalization__list_controller_E");
      E247 : Boolean; pragma Import (Ada, E247, "ada__strings__unbounded_E");
      E195 : Boolean; pragma Import (Ada, E195, "system__file_control_block_E");
      E183 : Boolean; pragma Import (Ada, E183, "system__file_io_E");
      E176 : Boolean; pragma Import (Ada, E176, "ada__text_io_E");
      E105 : Boolean; pragma Import (Ada, E105, "back_end_E");
      E481 : Boolean; pragma Import (Ada, E481, "comperr_E");
      E486 : Boolean; pragma Import (Ada, E486, "frontend_E");
      E002 : Boolean; pragma Import (Ada, E002, "gnat1drv_E");
      E073 : Boolean; pragma Import (Ada, E073, "gnatvsn_E");
      E205 : Boolean; pragma Import (Ada, E205, "j_types_E");
      E203 : Boolean; pragma Import (Ada, E203, "j_basics_E");
      E488 : Boolean; pragma Import (Ada, E488, "live_E");
      E133 : Boolean; pragma Import (Ada, E133, "rident_E");
      E490 : Boolean; pragma Import (Ada, E490, "tree_gen_E");
      E061 : Boolean; pragma Import (Ada, E061, "types_E");
      E315 : Boolean; pragma Import (Ada, E315, "butil_E");
      E093 : Boolean; pragma Import (Ada, E093, "casing_E");
      E404 : Boolean; pragma Import (Ada, E404, "cstand_E");
      E111 : Boolean; pragma Import (Ada, E111, "debug_a_E");
      E047 : Boolean; pragma Import (Ada, E047, "elists_E");
      E325 : Boolean; pragma Import (Ada, E325, "exp_aggr_E");
      E433 : Boolean; pragma Import (Ada, E433, "exp_attr_E");
      E275 : Boolean; pragma Import (Ada, E275, "exp_ch11_E");
      E437 : Boolean; pragma Import (Ada, E437, "exp_ch12_E");
      E439 : Boolean; pragma Import (Ada, E439, "exp_ch13_E");
      E335 : Boolean; pragma Import (Ada, E335, "exp_ch2_E");
      E329 : Boolean; pragma Import (Ada, E329, "exp_ch4_E");
      E441 : Boolean; pragma Import (Ada, E441, "exp_ch5_E");
      E333 : Boolean; pragma Import (Ada, E333, "exp_ch6_E");
      E273 : Boolean; pragma Import (Ada, E273, "exp_ch7_E");
      E443 : Boolean; pragma Import (Ada, E443, "exp_ch8_E");
      E331 : Boolean; pragma Import (Ada, E331, "exp_ch9_E");
      E423 : Boolean; pragma Import (Ada, E423, "exp_code_E");
      E345 : Boolean; pragma Import (Ada, E345, "exp_disp_E");
      E371 : Boolean; pragma Import (Ada, E371, "exp_dist_E");
      E425 : Boolean; pragma Import (Ada, E425, "exp_fixd_E");
      E435 : Boolean; pragma Import (Ada, E435, "exp_imgv_E");
      E421 : Boolean; pragma Import (Ada, E421, "exp_intr_E");
      E427 : Boolean; pragma Import (Ada, E427, "exp_pakd_E");
      E445 : Boolean; pragma Import (Ada, E445, "exp_prag_E");
      E429 : Boolean; pragma Import (Ada, E429, "exp_sel_E");
      E337 : Boolean; pragma Import (Ada, E337, "exp_smem_E");
      E261 : Boolean; pragma Import (Ada, E261, "exp_tss_E");
      E373 : Boolean; pragma Import (Ada, E373, "exp_strm_E");
      E341 : Boolean; pragma Import (Ada, E341, "exp_vfpt_E");
      E323 : Boolean; pragma Import (Ada, E323, "expander_E");
      E122 : Boolean; pragma Import (Ada, E122, "fmap_E");
      E135 : Boolean; pragma Import (Ada, E135, "fname_E");
      E281 : Boolean; pragma Import (Ada, E281, "fname__uf_E");
      E271 : Boolean; pragma Import (Ada, E271, "freeze_E");
      E447 : Boolean; pragma Import (Ada, E447, "hlo_E");
      E059 : Boolean; pragma Import (Ada, E059, "hostparm_E");
      E359 : Boolean; pragma Import (Ada, E359, "impunit_E");
      E154 : Boolean; pragma Import (Ada, E154, "j_string_E");
      E471 : Boolean; pragma Import (Ada, E471, "jx_ch12_E");
      E469 : Boolean; pragma Import (Ada, E469, "jx_ch5_E");
      E467 : Boolean; pragma Import (Ada, E467, "jx_ch6_E");
      E473 : Boolean; pragma Import (Ada, E473, "jx_ch7_E");
      E475 : Boolean; pragma Import (Ada, E475, "jx_ch8_E");
      E109 : Boolean; pragma Import (Ada, E109, "jx_drive_E");
      E380 : Boolean; pragma Import (Ada, E380, "layout_E");
      E083 : Boolean; pragma Import (Ada, E083, "nlists_E");
      E069 : Boolean; pragma Import (Ada, E069, "opt_E");
      E095 : Boolean; pragma Import (Ada, E095, "csets_E");
      E120 : Boolean; pragma Import (Ada, E120, "osint_E");
      E289 : Boolean; pragma Import (Ada, E289, "osint__c_E");
      E291 : Boolean; pragma Import (Ada, E291, "par_E");
      E307 : Boolean; pragma Import (Ada, E307, "prep_E");
      E309 : Boolean; pragma Import (Ada, E309, "prepcomp_E");
      E285 : Boolean; pragma Import (Ada, E285, "rtsfind_E");
      E124 : Boolean; pragma Import (Ada, E124, "sdefault_E");
      E417 : Boolean; pragma Import (Ada, E417, "sem_aggr_E");
      E384 : Boolean; pragma Import (Ada, E384, "sem_case_E");
      E351 : Boolean; pragma Import (Ada, E351, "sem_cat_E");
      E357 : Boolean; pragma Import (Ada, E357, "sem_ch10_E");
      E431 : Boolean; pragma Import (Ada, E431, "sem_ch11_E");
      E449 : Boolean; pragma Import (Ada, E449, "sem_ch2_E");
      E369 : Boolean; pragma Import (Ada, E369, "sem_ch3_E");
      E411 : Boolean; pragma Import (Ada, E411, "sem_ch4_E");
      E415 : Boolean; pragma Import (Ada, E415, "sem_ch5_E");
      E353 : Boolean; pragma Import (Ada, E353, "sem_ch6_E");
      E388 : Boolean; pragma Import (Ada, E388, "sem_ch7_E");
      E367 : Boolean; pragma Import (Ada, E367, "sem_ch8_E");
      E451 : Boolean; pragma Import (Ada, E451, "sem_ch9_E");
      E392 : Boolean; pragma Import (Ada, E392, "sem_disp_E");
      E413 : Boolean; pragma Import (Ada, E413, "sem_elab_E");
      E394 : Boolean; pragma Import (Ada, E394, "sem_elim_E");
      E398 : Boolean; pragma Import (Ada, E398, "sem_intr_E");
      E400 : Boolean; pragma Import (Ada, E400, "sem_mech_E");
      E396 : Boolean; pragma Import (Ada, E396, "sem_prag_E");
      E343 : Boolean; pragma Import (Ada, E343, "sem_res_E");
      E409 : Boolean; pragma Import (Ada, E409, "sem_smem_E");
      E386 : Boolean; pragma Import (Ada, E386, "sem_type_E");
      E402 : Boolean; pragma Import (Ada, E402, "sem_vfpt_E");
      E390 : Boolean; pragma Import (Ada, E390, "sem_warn_E");
      E103 : Boolean; pragma Import (Ada, E103, "snames_E");
      E419 : Boolean; pragma Import (Ada, E419, "sem_attr_E");
      E378 : Boolean; pragma Import (Ada, E378, "sem_dist_E");
      E453 : Boolean; pragma Import (Ada, E453, "sprint_E");
      E141 : Boolean; pragma Import (Ada, E141, "stringt_E");
      E148 : Boolean; pragma Import (Ada, E148, "styleg_E");
      E297 : Boolean; pragma Import (Ada, E297, "scng_E");
      E152 : Boolean; pragma Import (Ada, E152, "styleg__c_E");
      E150 : Boolean; pragma Import (Ada, E150, "stylesw_E");
      E477 : Boolean; pragma Import (Ada, E477, "switch_E");
      E479 : Boolean; pragma Import (Ada, E479, "switch__c_E");
      E118 : Boolean; pragma Import (Ada, E118, "targparm_E");
      E339 : Boolean; pragma Import (Ada, E339, "tbuild_E");
      E071 : Boolean; pragma Import (Ada, E071, "tree_io_E");
      E313 : Boolean; pragma Import (Ada, E313, "ali_E");
      E115 : Boolean; pragma Import (Ada, E115, "erroutc_E");
      E361 : Boolean; pragma Import (Ada, E361, "inline_E");
      E137 : Boolean; pragma Import (Ada, E137, "lib_E");
      E287 : Boolean; pragma Import (Ada, E287, "lib__load_E");
      E317 : Boolean; pragma Import (Ada, E317, "lib__util_E");
      E311 : Boolean; pragma Import (Ada, E311, "lib__writ_E");
      E079 : Boolean; pragma Import (Ada, E079, "namet_E");
      E363 : Boolean; pragma Import (Ada, E363, "sem_ch12_E");
      E091 : Boolean; pragma Import (Ada, E091, "sinput_E");
      E455 : Boolean; pragma Import (Ada, E455, "sinput__d_E");
      E305 : Boolean; pragma Import (Ada, E305, "sinput__l_E");
      E483 : Boolean; pragma Import (Ada, E483, "treepr_E");
      E374 : Boolean; pragma Import (Ada, E374, "ttypes_E");
      E087 : Boolean; pragma Import (Ada, E087, "uintp_E");
      E265 : Boolean; pragma Import (Ada, E265, "checks_E");
      E116 : Boolean; pragma Import (Ada, E116, "err_vars_E");
      E113 : Boolean; pragma Import (Ada, E113, "errout_E");
      E327 : Boolean; pragma Import (Ada, E327, "exp_ch3_E");
      E347 : Boolean; pragma Import (Ada, E347, "exp_dbug_E");
      E382 : Boolean; pragma Import (Ada, E382, "repinfo_E");
      E279 : Boolean; pragma Import (Ada, E279, "restrict_E");
      E365 : Boolean; pragma Import (Ada, E365, "sem_ch13_E");
      E143 : Boolean; pragma Import (Ada, E143, "uname_E");
      E089 : Boolean; pragma Import (Ada, E089, "urealp_E");
      E099 : Boolean; pragma Import (Ada, E099, "einfo_E");
      E267 : Boolean; pragma Import (Ada, E267, "eval_fat_E");
      E156 : Boolean; pragma Import (Ada, E156, "jvm_E");
      E158 : Boolean; pragma Import (Ada, E158, "jvm__api_E");
      E160 : Boolean; pragma Import (Ada, E160, "jvm__code_E");
      E201 : Boolean; pragma Import (Ada, E201, "jvm__dbg_E");
      E255 : Boolean; pragma Import (Ada, E255, "jvm__map_E");
      E221 : Boolean; pragma Import (Ada, E221, "jvm__msil_emit_E");
      E257 : Boolean; pragma Import (Ada, E257, "jx_ch11_E");
      E457 : Boolean; pragma Import (Ada, E457, "jx_ch3_E");
      E259 : Boolean; pragma Import (Ada, E259, "jx_ch4_E");
      E459 : Boolean; pragma Import (Ada, E459, "jx_decl_E");
      E465 : Boolean; pragma Import (Ada, E465, "jx_swtch_E");
      E461 : Boolean; pragma Import (Ada, E461, "jx_uplev_E");
      E319 : Boolean; pragma Import (Ada, E319, "lib__xref_E");
      E277 : Boolean; pragma Import (Ada, E277, "nmake_E");
      E145 : Boolean; pragma Import (Ada, E145, "scans_E");
      E321 : Boolean; pragma Import (Ada, E321, "sem_E");
      E349 : Boolean; pragma Import (Ada, E349, "sem_eval_E");
      E269 : Boolean; pragma Import (Ada, E269, "sem_util_E");
      E355 : Boolean; pragma Import (Ada, E355, "itypes_E");
      E085 : Boolean; pragma Import (Ada, E085, "sinfo_E");
      E043 : Boolean; pragma Import (Ada, E043, "atree_E");
      E263 : Boolean; pragma Import (Ada, E263, "exp_util_E");
      E303 : Boolean; pragma Import (Ada, E303, "sinfo__cn_E");
      E492 : Boolean; pragma Import (Ada, E492, "usage_E");
      E407 : Boolean; pragma Import (Ada, E407, "validsw_E");
      E081 : Boolean; pragma Import (Ada, E081, "widechar_E");
      E217 : Boolean; pragma Import (Ada, E217, "jvm_file_E");
      E199 : Boolean; pragma Import (Ada, E199, "jvm__info_E");
      E215 : Boolean; pragma Import (Ada, E215, "jvm__pool_E");
      E101 : Boolean; pragma Import (Ada, E101, "stand_E");
      E295 : Boolean; pragma Import (Ada, E295, "scn_E");

      Restrictions : constant String :=
        "nnvvnnnvvvnnvnnvnvvvvvvvvvnvnvnnvnnnvnvnnnnnnnvvvnnnvvnvvv" &
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
      E299 := True;
      System.Restrictions'Elab_Spec;
      System.Restrictions'Elab_Body;
      E191 := True;
      System.Soft_Links'Elab_Body;
      E012 := True;
      System.Secondary_Stack'Elab_Body;
      E016 := True;
      System.Exception_Table'Elab_Body;
      E024 := True;
      Ada.Io_Exceptions'Elab_Spec;
      E194 := True;
      Ada.Strings'Elab_Spec;
      E165 := True;
      Ada.Tags'Elab_Spec;
      Gnat.Os_Lib'Elab_Body;
      E053 := True;
      System.Assertions'Elab_Spec;
      E022 := True;
      Ada.Streams'Elab_Spec;
      E177 := True;
      System.Finalization_Root'Elab_Spec;
      E187 := True;
      Ada.Strings.Maps'Elab_Spec;
      E167 := True;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E170 := True;
      System.Finalization_Implementation'Elab_Spec;
      System.Finalization_Implementation'Elab_Body;
      E189 := True;
      Ada.Finalization'Elab_Spec;
      E185 := True;
      Ada.Finalization.List_Controller'Elab_Spec;
      E197 := True;
      Ada.Strings.Unbounded'Elab_Spec;
      E247 := True;
      System.File_Control_Block'Elab_Spec;
      E195 := True;
      System.File_Io'Elab_Body;
      E183 := True;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E176 := True;
      Ada.Tags'Elab_Body;
      E179 := True;
      E073 := True;
      E205 := True;
      Rident'Elab_Spec;
      E133 := True;
      Types'Elab_Spec;
      E061 := True;
      Hostparm'Elab_Spec;
      E059 := True;
      Opt'Elab_Spec;
      Csets'Elab_Body;
      E095 := True;
      Osint'Elab_Spec;
      E447 := True;
      E203 := True;
      Prep'Elab_Spec;
      Rtsfind'Elab_Spec;
      Sdefault'Elab_Body;
      E124 := True;
      Sem_Attr'Elab_Spec;
      E150 := True;
      E477 := True;
      Targparm'Elab_Spec;
      Tree_Io'Elab_Spec;
      E071 := True;
      E069 := True;
      Elists'Elab_Body;
      E047 := True;
      ALI'ELAB_SPEC;
      Erroutc'Elab_Spec;
      Inline'Elab_Spec;
      Lib'Elab_Spec;
      E105 := True;
      Lib.Writ'Elab_Spec;
      Namet'Elab_Spec;
      E317 := True;
      ALI'ELAB_BODY;
      E313 := True;
      Targparm'Elab_Body;
      E118 := True;
      Stringt'Elab_Body;
      E141 := True;
      Snames'Elab_Body;
      E103 := True;
      Osint'Elab_Body;
      E120 := True;
      E359 := True;
      Fname'Elab_Body;
      E135 := True;
      Fmap'Elab_Body;
      E122 := True;
      E315 := True;
      Sinput'Elab_Spec;
      E154 := True;
      E455 := True;
      Ttypes'Elab_Spec;
      E374 := True;
      Uintp'Elab_Spec;
      Uintp'Elab_Body;
      E087 := True;
      Err_Vars'Elab_Spec;
      E116 := True;
      E115 := True;
      Errout'Elab_Spec;
      Restrict'Elab_Spec;
      Urealp'Elab_Body;
      E089 := True;
      E158 := True;
      Jx_Uplev'Elab_Spec;
      Scans'Elab_Spec;
      E145 := True;
      E148 := True;
      Prep'Elab_Body;
      E307 := True;
      Sem'Elab_Spec;
      E267 := True;
      Atree'Elab_Spec;
      Atree'Elab_Body;
      E043 := True;
      E085 := True;
      E461 := True;
      E465 := True;
      E457 := True;
      E257 := True;
      JVM.MAP'ELAB_BODY;
      E255 := True;
      E143 := True;
      E279 := True;
      E409 := True;
      Nlists'Elab_Body;
      E083 := True;
      E475 := True;
      E473 := True;
      E469 := True;
      Expander'Elab_Body;
      E323 := True;
      E423 := True;
      E111 := True;
      E488 := True;
      E481 := True;
      E261 := True;
      E335 := True;
      E303 := True;
      E492 := True;
      E002 := True;
      E407 := True;
      E479 := True;
      E081 := True;
      E091 := True;
      E079 := True;
      E297 := True;
      Osint.C'Elab_Body;
      E289 := True;
      Fname.Uf'Elab_Body;
      E281 := True;
      E093 := True;
      Jvm_File'Elab_Spec;
      E217 := True;
      E201 := True;
      JVM.CODE'ELAB_BODY;
      E160 := True;
      JVM.POOL'ELAB_BODY;
      E215 := True;
      JVM.INFO'ELAB_BODY;
      E199 := True;
      JVM.MSIL_EMIT'ELAB_BODY;
      E221 := True;
      JVM'ELAB_BODY;
      E156 := True;
      E101 := True;
      E263 := True;
      E355 := True;
      Sem_Eval'Elab_Body;
      E349 := True;
      E321 := True;
      E277 := True;
      Lib.Xref'Elab_Body;
      E319 := True;
      E459 := True;
      E259 := True;
      E099 := True;
      Sem_Ch13'Elab_Body;
      E365 := True;
      Repinfo'Elab_Body;
      E382 := True;
      Exp_Dbug'Elab_Body;
      E347 := True;
      E327 := True;
      E265 := True;
      E483 := True;
      Sem_Ch12'Elab_Body;
      E363 := True;
      E137 := True;
      Inline'Elab_Body;
      E361 := True;
      E339 := True;
      E152 := True;
      Sprint'Elab_Body;
      E453 := True;
      E378 := True;
      Sem_Attr'Elab_Body;
      E419 := True;
      Sem_Warn'Elab_Body;
      E390 := True;
      E402 := True;
      Sem_Type'Elab_Body;
      E386 := True;
      E343 := True;
      Sem_Prag'Elab_Body;
      E396 := True;
      E400 := True;
      E398 := True;
      Sem_Elim'Elab_Body;
      E394 := True;
      Sem_Elab'Elab_Body;
      E413 := True;
      E392 := True;
      E415 := True;
      E411 := True;
      E369 := True;
      E449 := True;
      E431 := True;
      E351 := True;
      E384 := True;
      E417 := True;
      E285 := True;
      E380 := True;
      E109 := True;
      E467 := True;
      E471 := True;
      E271 := True;
      E341 := True;
      E373 := True;
      E337 := True;
      E429 := True;
      E445 := True;
      E427 := True;
      E421 := True;
      E435 := True;
      E425 := True;
      Exp_Dist'Elab_Body;
      E371 := True;
      E345 := True;
      E331 := True;
      E443 := True;
      E273 := True;
      E333 := True;
      E441 := True;
      E329 := True;
      E439 := True;
      E437 := True;
      E275 := True;
      E433 := True;
      E325 := True;
      E490 := True;
      Errout'Elab_Body;
      E113 := True;
      E451 := True;
      Sem_Ch8'Elab_Body;
      E367 := True;
      E388 := True;
      E353 := True;
      E357 := True;
      Scn'Elab_Spec;
      E295 := True;
      E269 := True;
      E305 := True;
      E311 := True;
      E287 := True;
      Prepcomp'Elab_Body;
      E309 := True;
      E291 := True;
      E404 := True;
      E486 := True;
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
      pragma Import (Ada, Ada_Main_Program, "_ada_gnat1drv");

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
   --   .\g-hesora.o
   --   .\g-speche.o
   --   .\g-string.o
   --   .\g-utf_32.o
   --   .\interfac.o
   --   .\system.o
   --   .\s-addope.o
   --   .\s-casuti.o
   --   .\g-casuti.o
   --   .\s-crc32.o
   --   .\s-exnllf.o
   --   .\s-htable.o
   --   .\g-htable.o
   --   .\s-parame.o
   --   .\s-crtl.o
   --   .\i-cstrea.o
   --   .\s-purexc.o
   --   .\s-restri.o
   --   .\s-stoele.o
   --   .\s-carun8.o
   --   .\s-imglli.o
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
   --   .\s-imgbiu.o
   --   .\s-imgllb.o
   --   .\s-imgllu.o
   --   .\s-imgllw.o
   --   .\s-imguns.o
   --   .\s-imgwiu.o
   --   .\s-stratt.o
   --   .\s-finimp.o
   --   .\a-finali.o
   --   .\a-filico.o
   --   .\a-strunb.o
   --   .\s-ficobl.o
   --   .\s-fileio.o
   --   .\a-textio.o
   --   .\a-tigeau.o
   --   .\a-inteio.o
   --   .\a-tiinau.o
   --   .\a-timoau.o
   --   .\s-valuti.o
   --   .\s-valuns.o
   --   .\s-valllu.o
   --   .\s-vallli.o
   --   .\s-valint.o
   --   .\s-wchcon.o
   --   .\s-wchjis.o
   --   .\s-wchcnv.o
   --   .\s-wchstw.o
   --   .\a-tags.o
   --   .\a-except.o
   --   .\alloc.o
   --   .\debug.o
   --   .\gnatvsn.o
   --   .\j_stack.o
   --   .\j_types.o
   --   .\j_table.o
   --   .\rident.o
   --   .\ttypef.o
   --   .\types.o
   --   .\get_targ.o
   --   .\hostparm.o
   --   .\krunch.o
   --   .\csets.o
   --   .\output.o
   --   .\hlo.o
   --   .\j_basics.o
   --   .\sdefault.o
   --   .\stylesw.o
   --   .\switch.o
   --   .\tree_io.o
   --   .\opt.o
   --   .\table.o
   --   .\elists.o
   --   .\back_end.o
   --   .\lib-util.o
   --   .\ali.o
   --   .\targparm.o
   --   .\stringt.o
   --   .\snames.o
   --   .\osint.o
   --   .\impunit.o
   --   .\fname.o
   --   .\fmap.o
   --   .\butil.o
   --   .\j_string.o
   --   .\sinput-d.o
   --   .\ttypes.o
   --   .\uintp.o
   --   .\err_vars.o
   --   .\erroutc.o
   --   .\urealp.o
   --   .\jvm-api.o
   --   .\scans.o
   --   .\styleg.o
   --   .\prep.o
   --   .\eval_fat.o
   --   .\atree.o
   --   .\sinfo.o
   --   .\jx_uplev.o
   --   .\jx_swtch.o
   --   .\jx_ch3.o
   --   .\jx_ch11.o
   --   .\jvm-map.o
   --   .\uname.o
   --   .\restrict.o
   --   .\sem_smem.o
   --   .\nlists.o
   --   .\jx_ch8.o
   --   .\jx_ch7.o
   --   .\jx_ch5.o
   --   .\expander.o
   --   .\exp_code.o
   --   .\debug_a.o
   --   .\live.o
   --   .\comperr.o
   --   .\exp_tss.o
   --   .\exp_ch2.o
   --   .\sinfo-cn.o
   --   .\treeprs.o
   --   .\usage.o
   --   .\gnat1drv.o
   --   .\validsw.o
   --   .\switch-c.o
   --   .\widechar.o
   --   .\sinput.o
   --   .\namet.o
   --   .\scng.o
   --   .\osint-c.o
   --   .\fname-uf.o
   --   .\casing.o
   --   .\jvm_file.o
   --   .\jvm-dbg.o
   --   .\jvm-code.o
   --   .\jvm-pool.o
   --   .\jvm-info.o
   --   .\jvm-msil_emit.o
   --   .\jvm.o
   --   .\stand.o
   --   .\exp_util.o
   --   .\itypes.o
   --   .\sem_eval.o
   --   .\sem.o
   --   .\nmake.o
   --   .\lib-xref.o
   --   .\jx_decl.o
   --   .\jx_ch4.o
   --   .\einfo.o
   --   .\sem_ch13.o
   --   .\repinfo.o
   --   .\exp_dbug.o
   --   .\exp_ch3.o
   --   .\checks.o
   --   .\treepr.o
   --   .\sem_ch12.o
   --   .\lib.o
   --   .\inline.o
   --   .\tbuild.o
   --   .\styleg-c.o
   --   .\sprint.o
   --   .\sem_dist.o
   --   .\sem_attr.o
   --   .\sem_warn.o
   --   .\sem_vfpt.o
   --   .\sem_type.o
   --   .\sem_res.o
   --   .\sem_prag.o
   --   .\sem_mech.o
   --   .\sem_intr.o
   --   .\sem_elim.o
   --   .\sem_elab.o
   --   .\sem_disp.o
   --   .\sem_ch5.o
   --   .\sem_ch4.o
   --   .\sem_ch3.o
   --   .\sem_ch2.o
   --   .\sem_ch11.o
   --   .\sem_cat.o
   --   .\sem_case.o
   --   .\sem_aggr.o
   --   .\rtsfind.o
   --   .\layout.o
   --   .\jx_drive.o
   --   .\jx_ch6.o
   --   .\jx_ch12.o
   --   .\freeze.o
   --   .\exp_vfpt.o
   --   .\exp_strm.o
   --   .\exp_smem.o
   --   .\exp_sel.o
   --   .\exp_prag.o
   --   .\exp_pakd.o
   --   .\exp_intr.o
   --   .\exp_imgv.o
   --   .\exp_fixd.o
   --   .\exp_dist.o
   --   .\exp_disp.o
   --   .\exp_ch9.o
   --   .\exp_ch8.o
   --   .\exp_ch7.o
   --   .\exp_ch6.o
   --   .\exp_ch5.o
   --   .\exp_ch4.o
   --   .\exp_ch13.o
   --   .\exp_ch12.o
   --   .\exp_ch11.o
   --   .\exp_attr.o
   --   .\exp_aggr.o
   --   .\tree_gen.o
   --   .\style.o
   --   .\errout.o
   --   .\sem_ch9.o
   --   .\sem_ch8.o
   --   .\sem_ch7.o
   --   .\sem_ch6.o
   --   .\sem_ch10.o
   --   .\scn.o
   --   .\sem_util.o
   --   .\sinput-l.o
   --   .\lib-writ.o
   --   .\lib-load.o
   --   .\prepcomp.o
   --   .\par.o
   --   .\cstand.o
   --   .\frontend.o
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
