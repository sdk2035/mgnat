with System;
package ada_main is
   pragma Warnings (Off);

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: Pro 5.05w (20060218-34)";
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_gnatlink" & Ascii.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure Break_Start;
   pragma Import (C, Break_Start, "__gnat_break_start");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#ed7c2cfd#;
   u00002 : constant Version_32 := 16#c6ad6346#;
   u00003 : constant Version_32 := 16#7d78a8a4#;
   u00004 : constant Version_32 := 16#ad6baf6a#;
   u00005 : constant Version_32 := 16#9c7dd3ea#;
   u00006 : constant Version_32 := 16#875b8507#;
   u00007 : constant Version_32 := 16#a70c0a76#;
   u00008 : constant Version_32 := 16#9a1fe783#;
   u00009 : constant Version_32 := 16#93682d6b#;
   u00010 : constant Version_32 := 16#b6b021b1#;
   u00011 : constant Version_32 := 16#d4faec2d#;
   u00012 : constant Version_32 := 16#f1c85ff7#;
   u00013 : constant Version_32 := 16#ccb45172#;
   u00014 : constant Version_32 := 16#234b18dc#;
   u00015 : constant Version_32 := 16#5ab32cf6#;
   u00016 : constant Version_32 := 16#b4c45cc4#;
   u00017 : constant Version_32 := 16#0eb61a8b#;
   u00018 : constant Version_32 := 16#09d7ba6d#;
   u00019 : constant Version_32 := 16#b1a0fecf#;
   u00020 : constant Version_32 := 16#1f48dd71#;
   u00021 : constant Version_32 := 16#423fa2a0#;
   u00022 : constant Version_32 := 16#e2b957db#;
   u00023 : constant Version_32 := 16#726beeed#;
   u00024 : constant Version_32 := 16#0f872827#;
   u00025 : constant Version_32 := 16#60f858a1#;
   u00026 : constant Version_32 := 16#6df64cbd#;
   u00027 : constant Version_32 := 16#1e1b7442#;
   u00028 : constant Version_32 := 16#21f7e23d#;
   u00029 : constant Version_32 := 16#2986fe09#;
   u00030 : constant Version_32 := 16#19146261#;
   u00031 : constant Version_32 := 16#8d1a5e03#;
   u00032 : constant Version_32 := 16#5d0c7544#;
   u00033 : constant Version_32 := 16#e6627743#;
   u00034 : constant Version_32 := 16#60614971#;
   u00035 : constant Version_32 := 16#fe2dbe25#;
   u00036 : constant Version_32 := 16#279b6d6d#;
   u00037 : constant Version_32 := 16#ff5b1296#;
   u00038 : constant Version_32 := 16#c99c4714#;
   u00039 : constant Version_32 := 16#3bb75ae6#;
   u00040 : constant Version_32 := 16#264aa8fc#;
   u00041 : constant Version_32 := 16#034f20e8#;
   u00042 : constant Version_32 := 16#36281ef1#;
   u00043 : constant Version_32 := 16#6a1621b7#;
   u00044 : constant Version_32 := 16#e75038bb#;
   u00045 : constant Version_32 := 16#b567060e#;
   u00046 : constant Version_32 := 16#205292dd#;
   u00047 : constant Version_32 := 16#8af86432#;
   u00048 : constant Version_32 := 16#672474ed#;
   u00049 : constant Version_32 := 16#511bc233#;
   u00050 : constant Version_32 := 16#f61ca988#;
   u00051 : constant Version_32 := 16#f13848f3#;
   u00052 : constant Version_32 := 16#b54a36ec#;
   u00053 : constant Version_32 := 16#08b09684#;
   u00054 : constant Version_32 := 16#e21510ce#;
   u00055 : constant Version_32 := 16#3098dba8#;
   u00056 : constant Version_32 := 16#ddf14e3f#;
   u00057 : constant Version_32 := 16#ad188429#;
   u00058 : constant Version_32 := 16#f7a1e876#;
   u00059 : constant Version_32 := 16#d369e518#;
   u00060 : constant Version_32 := 16#3e868797#;
   u00061 : constant Version_32 := 16#e3b93c8a#;
   u00062 : constant Version_32 := 16#9f9b2af0#;
   u00063 : constant Version_32 := 16#3a510ddd#;
   u00064 : constant Version_32 := 16#76399ffe#;
   u00065 : constant Version_32 := 16#e279999f#;
   u00066 : constant Version_32 := 16#2232b364#;
   u00067 : constant Version_32 := 16#8b145ea9#;
   u00068 : constant Version_32 := 16#b7140ae3#;
   u00069 : constant Version_32 := 16#0da8cc78#;
   u00070 : constant Version_32 := 16#2686046a#;
   u00071 : constant Version_32 := 16#c5c1ddd4#;
   u00072 : constant Version_32 := 16#1060e054#;
   u00073 : constant Version_32 := 16#be5439c7#;
   u00074 : constant Version_32 := 16#aa3af9cd#;
   u00075 : constant Version_32 := 16#97739b1f#;
   u00076 : constant Version_32 := 16#5a7526eb#;
   u00077 : constant Version_32 := 16#baad0baa#;
   u00078 : constant Version_32 := 16#f34abfa5#;
   u00079 : constant Version_32 := 16#dd797cbe#;
   u00080 : constant Version_32 := 16#24a455e0#;
   u00081 : constant Version_32 := 16#a9a791ad#;
   u00082 : constant Version_32 := 16#8ee2df36#;
   u00083 : constant Version_32 := 16#70c34603#;
   u00084 : constant Version_32 := 16#5e814ca3#;
   u00085 : constant Version_32 := 16#0ab0fda7#;
   u00086 : constant Version_32 := 16#80cfff51#;
   u00087 : constant Version_32 := 16#bdf51894#;
   u00088 : constant Version_32 := 16#a1683194#;
   u00089 : constant Version_32 := 16#df06034d#;
   u00090 : constant Version_32 := 16#0db1ebfb#;
   u00091 : constant Version_32 := 16#4488d9c9#;
   u00092 : constant Version_32 := 16#ccd92b43#;
   u00093 : constant Version_32 := 16#085a8af0#;
   u00094 : constant Version_32 := 16#63c7c118#;
   u00095 : constant Version_32 := 16#08f87e97#;
   u00096 : constant Version_32 := 16#373bd87b#;
   u00097 : constant Version_32 := 16#8ed3bc75#;
   u00098 : constant Version_32 := 16#4c526528#;
   u00099 : constant Version_32 := 16#46b815f8#;
   u00100 : constant Version_32 := 16#7a4dbec6#;
   u00101 : constant Version_32 := 16#8ac50a58#;
   u00102 : constant Version_32 := 16#f7462fea#;
   u00103 : constant Version_32 := 16#a510609d#;
   u00104 : constant Version_32 := 16#265530fd#;
   u00105 : constant Version_32 := 16#2fd6dc36#;
   u00106 : constant Version_32 := 16#d4c16def#;
   u00107 : constant Version_32 := 16#59507545#;
   u00108 : constant Version_32 := 16#f072237b#;
   u00109 : constant Version_32 := 16#178e42cf#;
   u00110 : constant Version_32 := 16#7470dcb8#;
   u00111 : constant Version_32 := 16#0a3f4443#;
   u00112 : constant Version_32 := 16#75dd6b60#;
   u00113 : constant Version_32 := 16#b18fb2f3#;
   u00114 : constant Version_32 := 16#3557620d#;
   u00115 : constant Version_32 := 16#56af4987#;
   u00116 : constant Version_32 := 16#f9da4a9b#;

   pragma Export (C, u00001, "gnatlinkB");
   pragma Export (C, u00002, "gnatlinkS");
   pragma Export (C, u00003, "system__standard_libraryB");
   pragma Export (C, u00004, "system__standard_libraryS");
   pragma Export (C, u00005, "adaS");
   pragma Export (C, u00006, "ada__command_lineB");
   pragma Export (C, u00007, "ada__command_lineS");
   pragma Export (C, u00008, "systemS");
   pragma Export (C, u00009, "system__secondary_stackB");
   pragma Export (C, u00010, "system__secondary_stackS");
   pragma Export (C, u00011, "system__parametersB");
   pragma Export (C, u00012, "system__parametersS");
   pragma Export (C, u00013, "system__soft_linksB");
   pragma Export (C, u00014, "system__soft_linksS");
   pragma Export (C, u00015, "ada__exceptionsB");
   pragma Export (C, u00016, "ada__exceptionsS");
   pragma Export (C, u00017, "ada__exceptions__last_chance_handlerB");
   pragma Export (C, u00018, "ada__exceptions__last_chance_handlerS");
   pragma Export (C, u00019, "system__assertionsB");
   pragma Export (C, u00020, "system__assertionsS");
   pragma Export (C, u00021, "system__exception_tableB");
   pragma Export (C, u00022, "system__exception_tableS");
   pragma Export (C, u00023, "system__htableB");
   pragma Export (C, u00024, "system__htableS");
   pragma Export (C, u00025, "system__storage_elementsB");
   pragma Export (C, u00026, "system__storage_elementsS");
   pragma Export (C, u00027, "system__tracebackB");
   pragma Export (C, u00028, "system__tracebackS");
   pragma Export (C, u00029, "system__unsigned_typesS");
   pragma Export (C, u00030, "system__wch_conB");
   pragma Export (C, u00031, "system__wch_conS");
   pragma Export (C, u00032, "system__wch_stwB");
   pragma Export (C, u00033, "system__wch_stwS");
   pragma Export (C, u00034, "system__wch_cnvB");
   pragma Export (C, u00035, "system__wch_cnvS");
   pragma Export (C, u00036, "interfacesS");
   pragma Export (C, u00037, "system__wch_jisB");
   pragma Export (C, u00038, "system__wch_jisS");
   pragma Export (C, u00039, "system__pure_exceptionsS");
   pragma Export (C, u00040, "system__traceback_entriesB");
   pragma Export (C, u00041, "system__traceback_entriesS");
   pragma Export (C, u00042, "system__stack_checkingB");
   pragma Export (C, u00043, "system__stack_checkingS");
   pragma Export (C, u00044, "aliB");
   pragma Export (C, u00045, "aliS");
   pragma Export (C, u00046, "butilB");
   pragma Export (C, u00047, "butilS");
   pragma Export (C, u00048, "hostparmS");
   pragma Export (C, u00049, "typesB");
   pragma Export (C, u00050, "typesS");
   pragma Export (C, u00051, "system__compare_array_unsigned_8B");
   pragma Export (C, u00052, "system__compare_array_unsigned_8S");
   pragma Export (C, u00053, "system__address_operationsB");
   pragma Export (C, u00054, "system__address_operationsS");
   pragma Export (C, u00055, "nametB");
   pragma Export (C, u00056, "nametS");
   pragma Export (C, u00057, "debugB");
   pragma Export (C, u00058, "debugS");
   pragma Export (C, u00059, "optB");
   pragma Export (C, u00060, "optS");
   pragma Export (C, u00061, "tree_ioB");
   pragma Export (C, u00062, "tree_ioS");
   pragma Export (C, u00063, "outputB");
   pragma Export (C, u00064, "outputS");
   pragma Export (C, u00065, "gnatS");
   pragma Export (C, u00066, "gnat__os_libB");
   pragma Export (C, u00067, "gnat__os_libS");
   pragma Export (C, u00068, "system__case_utilB");
   pragma Export (C, u00069, "system__case_utilS");
   pragma Export (C, u00070, "system__crtlS");
   pragma Export (C, u00071, "gnat__stringsB");
   pragma Export (C, u00072, "gnat__stringsS");
   pragma Export (C, u00073, "gnatvsnB");
   pragma Export (C, u00074, "gnatvsnS");
   pragma Export (C, u00075, "widecharB");
   pragma Export (C, u00076, "widecharS");
   pragma Export (C, u00077, "allocS");
   pragma Export (C, u00078, "tableB");
   pragma Export (C, u00079, "tableS");
   pragma Export (C, u00080, "system__memoryB");
   pragma Export (C, u00081, "system__memoryS");
   pragma Export (C, u00082, "fnameB");
   pragma Export (C, u00083, "fnameS");
   pragma Export (C, u00084, "osintB");
   pragma Export (C, u00085, "osintS");
   pragma Export (C, u00086, "fmapB");
   pragma Export (C, u00087, "fmapS");
   pragma Export (C, u00088, "gnat__htableB");
   pragma Export (C, u00089, "gnat__htableS");
   pragma Export (C, u00090, "sdefaultB");
   pragma Export (C, u00091, "sdefaultS");
   pragma Export (C, u00092, "gnat__case_utilB");
   pragma Export (C, u00093, "gnat__case_utilS");
   pragma Export (C, u00094, "system__string_opsB");
   pragma Export (C, u00095, "system__string_opsS");
   pragma Export (C, u00096, "system__string_ops_concat_3B");
   pragma Export (C, u00097, "system__string_ops_concat_3S");
   pragma Export (C, u00098, "system__string_ops_concat_4B");
   pragma Export (C, u00099, "system__string_ops_concat_4S");
   pragma Export (C, u00100, "casingB");
   pragma Export (C, u00101, "casingS");
   pragma Export (C, u00102, "csetsB");
   pragma Export (C, u00103, "csetsS");
   pragma Export (C, u00104, "ridentS");
   pragma Export (C, u00105, "indepswB");
   pragma Export (C, u00106, "indepswS");
   pragma Export (C, u00107, "interfaces__cB");
   pragma Export (C, u00108, "interfaces__cS");
   pragma Export (C, u00109, "interfaces__c__stringsB");
   pragma Export (C, u00110, "interfaces__c__stringsS");
   pragma Export (C, u00111, "interfaces__c_streamsB");
   pragma Export (C, u00112, "interfaces__c_streamsS");
   pragma Export (C, u00113, "switchB");
   pragma Export (C, u00114, "switchS");
   pragma Export (C, u00115, "system__string_ops_concat_5B");
   pragma Export (C, u00116, "system__string_ops_concat_5S");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.command_line%s
   --  gnat%s
   --  gnat.strings%s
   --  gnat.strings%b
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.case_util%s
   --  system.case_util%b
   --  gnat.case_util%s
   --  gnat.case_util%b
   --  system.compare_array_unsigned_8%s
   --  system.htable%s
   --  system.htable%b
   --  gnat.htable%s
   --  gnat.htable%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.pure_exceptions%s
   --  system.standard_library%s
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.compare_array_unsigned_8%b
   --  system.secondary_stack%s
   --  ada.command_line%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_ops%s
   --  system.string_ops%b
   --  system.string_ops_concat_3%s
   --  system.string_ops_concat_3%b
   --  system.string_ops_concat_4%s
   --  system.string_ops_concat_4%b
   --  system.string_ops_concat_5%s
   --  system.string_ops_concat_5%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  ada.exceptions.last_chance_handler%s
   --  system.soft_links%s
   --  system.soft_links%b
   --  ada.exceptions.last_chance_handler%b
   --  system.secondary_stack%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  gnat.os_lib%s
   --  gnat.os_lib%b
   --  interfaces.c%s
   --  interfaces.c%b
   --  interfaces.c.strings%s
   --  interfaces.c.strings%b
   --  system.assertions%s
   --  system.assertions%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.unsigned_types%s
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions%b
   --  alloc%s
   --  debug%s
   --  debug%b
   --  gnatlink%s
   --  gnatvsn%s
   --  gnatvsn%b
   --  indepsw%s
   --  rident%s
   --  types%s
   --  types%b
   --  butil%s
   --  casing%s
   --  fmap%s
   --  fname%s
   --  hostparm%s
   --  opt%s
   --  csets%s
   --  csets%b
   --  osint%s
   --  output%s
   --  output%b
   --  indepsw%b
   --  sdefault%s
   --  sdefault%b
   --  switch%s
   --  switch%b
   --  tree_io%s
   --  tree_io%b
   --  opt%b
   --  table%s
   --  table%b
   --  ali%s
   --  namet%s
   --  ali%b
   --  osint%b
   --  fname%b
   --  fmap%b
   --  butil%b
   --  gnatlink%b
   --  widechar%s
   --  widechar%b
   --  namet%b
   --  casing%b
   --  END ELABORATION ORDER

end ada_main;
