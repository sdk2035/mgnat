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

   Ada_Main_Program_Name : constant String := "_ada_gnatbind" & Ascii.NUL;
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
   u00001 : constant Version_32 := 16#1f05c925#;
   u00002 : constant Version_32 := 16#f7fb450b#;
   u00003 : constant Version_32 := 16#7d78a8a4#;
   u00004 : constant Version_32 := 16#ad6baf6a#;
   u00005 : constant Version_32 := 16#5ab32cf6#;
   u00006 : constant Version_32 := 16#b4c45cc4#;
   u00007 : constant Version_32 := 16#9c7dd3ea#;
   u00008 : constant Version_32 := 16#0eb61a8b#;
   u00009 : constant Version_32 := 16#09d7ba6d#;
   u00010 : constant Version_32 := 16#9a1fe783#;
   u00011 : constant Version_32 := 16#ccb45172#;
   u00012 : constant Version_32 := 16#234b18dc#;
   u00013 : constant Version_32 := 16#d4faec2d#;
   u00014 : constant Version_32 := 16#f1c85ff7#;
   u00015 : constant Version_32 := 16#93682d6b#;
   u00016 : constant Version_32 := 16#b6b021b1#;
   u00017 : constant Version_32 := 16#60f858a1#;
   u00018 : constant Version_32 := 16#6df64cbd#;
   u00019 : constant Version_32 := 16#36281ef1#;
   u00020 : constant Version_32 := 16#6a1621b7#;
   u00021 : constant Version_32 := 16#b1a0fecf#;
   u00022 : constant Version_32 := 16#1f48dd71#;
   u00023 : constant Version_32 := 16#423fa2a0#;
   u00024 : constant Version_32 := 16#e2b957db#;
   u00025 : constant Version_32 := 16#726beeed#;
   u00026 : constant Version_32 := 16#0f872827#;
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
   u00042 : constant Version_32 := 16#e75038bb#;
   u00043 : constant Version_32 := 16#b567060e#;
   u00044 : constant Version_32 := 16#205292dd#;
   u00045 : constant Version_32 := 16#8af86432#;
   u00046 : constant Version_32 := 16#672474ed#;
   u00047 : constant Version_32 := 16#511bc233#;
   u00048 : constant Version_32 := 16#f61ca988#;
   u00049 : constant Version_32 := 16#f13848f3#;
   u00050 : constant Version_32 := 16#b54a36ec#;
   u00051 : constant Version_32 := 16#08b09684#;
   u00052 : constant Version_32 := 16#e21510ce#;
   u00053 : constant Version_32 := 16#3098dba8#;
   u00054 : constant Version_32 := 16#ddf14e3f#;
   u00055 : constant Version_32 := 16#ad188429#;
   u00056 : constant Version_32 := 16#f7a1e876#;
   u00057 : constant Version_32 := 16#d369e518#;
   u00058 : constant Version_32 := 16#3e868797#;
   u00059 : constant Version_32 := 16#e3b93c8a#;
   u00060 : constant Version_32 := 16#9f9b2af0#;
   u00061 : constant Version_32 := 16#3a510ddd#;
   u00062 : constant Version_32 := 16#76399ffe#;
   u00063 : constant Version_32 := 16#e279999f#;
   u00064 : constant Version_32 := 16#2232b364#;
   u00065 : constant Version_32 := 16#8b145ea9#;
   u00066 : constant Version_32 := 16#b7140ae3#;
   u00067 : constant Version_32 := 16#0da8cc78#;
   u00068 : constant Version_32 := 16#2686046a#;
   u00069 : constant Version_32 := 16#c5c1ddd4#;
   u00070 : constant Version_32 := 16#1060e054#;
   u00071 : constant Version_32 := 16#be5439c7#;
   u00072 : constant Version_32 := 16#aa3af9cd#;
   u00073 : constant Version_32 := 16#97739b1f#;
   u00074 : constant Version_32 := 16#5a7526eb#;
   u00075 : constant Version_32 := 16#baad0baa#;
   u00076 : constant Version_32 := 16#f34abfa5#;
   u00077 : constant Version_32 := 16#dd797cbe#;
   u00078 : constant Version_32 := 16#24a455e0#;
   u00079 : constant Version_32 := 16#a9a791ad#;
   u00080 : constant Version_32 := 16#8ee2df36#;
   u00081 : constant Version_32 := 16#70c34603#;
   u00082 : constant Version_32 := 16#5e814ca3#;
   u00083 : constant Version_32 := 16#0ab0fda7#;
   u00084 : constant Version_32 := 16#80cfff51#;
   u00085 : constant Version_32 := 16#bdf51894#;
   u00086 : constant Version_32 := 16#a1683194#;
   u00087 : constant Version_32 := 16#df06034d#;
   u00088 : constant Version_32 := 16#0db1ebfb#;
   u00089 : constant Version_32 := 16#4488d9c9#;
   u00090 : constant Version_32 := 16#ccd92b43#;
   u00091 : constant Version_32 := 16#085a8af0#;
   u00092 : constant Version_32 := 16#63c7c118#;
   u00093 : constant Version_32 := 16#08f87e97#;
   u00094 : constant Version_32 := 16#373bd87b#;
   u00095 : constant Version_32 := 16#8ed3bc75#;
   u00096 : constant Version_32 := 16#4c526528#;
   u00097 : constant Version_32 := 16#46b815f8#;
   u00098 : constant Version_32 := 16#7a4dbec6#;
   u00099 : constant Version_32 := 16#8ac50a58#;
   u00100 : constant Version_32 := 16#f7462fea#;
   u00101 : constant Version_32 := 16#a510609d#;
   u00102 : constant Version_32 := 16#265530fd#;
   u00103 : constant Version_32 := 16#adbd6f2e#;
   u00104 : constant Version_32 := 16#fd3a7187#;
   u00105 : constant Version_32 := 16#657219e5#;
   u00106 : constant Version_32 := 16#82bc48e0#;
   u00107 : constant Version_32 := 16#be216a7e#;
   u00108 : constant Version_32 := 16#90ad3add#;
   u00109 : constant Version_32 := 16#ea18203a#;
   u00110 : constant Version_32 := 16#6c4f1ff8#;
   u00111 : constant Version_32 := 16#bf52a607#;
   u00112 : constant Version_32 := 16#b9780be6#;
   u00113 : constant Version_32 := 16#1612aea2#;
   u00114 : constant Version_32 := 16#2be8eeae#;
   u00115 : constant Version_32 := 16#3e207ceb#;
   u00116 : constant Version_32 := 16#846b7374#;
   u00117 : constant Version_32 := 16#730b3bc4#;
   u00118 : constant Version_32 := 16#69e36cad#;
   u00119 : constant Version_32 := 16#7073741b#;
   u00120 : constant Version_32 := 16#f10c91e1#;
   u00121 : constant Version_32 := 16#17c28ba0#;
   u00122 : constant Version_32 := 16#80ee477b#;
   u00123 : constant Version_32 := 16#6b4b9336#;
   u00124 : constant Version_32 := 16#a6787f6a#;
   u00125 : constant Version_32 := 16#d4e80933#;
   u00126 : constant Version_32 := 16#00ff1e20#;
   u00127 : constant Version_32 := 16#d6bc0475#;
   u00128 : constant Version_32 := 16#9cbd0982#;
   u00129 : constant Version_32 := 16#83fd6b24#;
   u00130 : constant Version_32 := 16#c7643603#;
   u00131 : constant Version_32 := 16#370fa207#;
   u00132 : constant Version_32 := 16#5caec52a#;
   u00133 : constant Version_32 := 16#5b40561d#;
   u00134 : constant Version_32 := 16#9396f020#;
   u00135 : constant Version_32 := 16#3549faa8#;
   u00136 : constant Version_32 := 16#ba8732df#;
   u00137 : constant Version_32 := 16#b87e0446#;
   u00138 : constant Version_32 := 16#28b2a5e6#;
   u00139 : constant Version_32 := 16#f04ed6e3#;
   u00140 : constant Version_32 := 16#81680562#;
   u00141 : constant Version_32 := 16#6cb07f45#;
   u00142 : constant Version_32 := 16#b13a3599#;
   u00143 : constant Version_32 := 16#c6d566f9#;
   u00144 : constant Version_32 := 16#9373097b#;
   u00145 : constant Version_32 := 16#8d872683#;
   u00146 : constant Version_32 := 16#ddd77462#;
   u00147 : constant Version_32 := 16#93fb3597#;
   u00148 : constant Version_32 := 16#7551bb71#;
   u00149 : constant Version_32 := 16#a76533e0#;
   u00150 : constant Version_32 := 16#ddf52d87#;
   u00151 : constant Version_32 := 16#2c444a3c#;
   u00152 : constant Version_32 := 16#6f4cdbdc#;
   u00153 : constant Version_32 := 16#4de1bd3c#;
   u00154 : constant Version_32 := 16#848fbc27#;
   u00155 : constant Version_32 := 16#3f7a6c8f#;
   u00156 : constant Version_32 := 16#d6854668#;
   u00157 : constant Version_32 := 16#2ba68294#;
   u00158 : constant Version_32 := 16#1fdc12b8#;
   u00159 : constant Version_32 := 16#cb30edef#;
   u00160 : constant Version_32 := 16#56af4987#;
   u00161 : constant Version_32 := 16#f9da4a9b#;
   u00162 : constant Version_32 := 16#472cc1a7#;
   u00163 : constant Version_32 := 16#a897959c#;
   u00164 : constant Version_32 := 16#c3083f49#;
   u00165 : constant Version_32 := 16#73ece820#;
   u00166 : constant Version_32 := 16#b18fb2f3#;
   u00167 : constant Version_32 := 16#3557620d#;
   u00168 : constant Version_32 := 16#0c85e436#;
   u00169 : constant Version_32 := 16#0b4b67c7#;

   pragma Export (C, u00001, "gnatbindB");
   pragma Export (C, u00002, "gnatbindS");
   pragma Export (C, u00003, "system__standard_libraryB");
   pragma Export (C, u00004, "system__standard_libraryS");
   pragma Export (C, u00005, "ada__exceptionsB");
   pragma Export (C, u00006, "ada__exceptionsS");
   pragma Export (C, u00007, "adaS");
   pragma Export (C, u00008, "ada__exceptions__last_chance_handlerB");
   pragma Export (C, u00009, "ada__exceptions__last_chance_handlerS");
   pragma Export (C, u00010, "systemS");
   pragma Export (C, u00011, "system__soft_linksB");
   pragma Export (C, u00012, "system__soft_linksS");
   pragma Export (C, u00013, "system__parametersB");
   pragma Export (C, u00014, "system__parametersS");
   pragma Export (C, u00015, "system__secondary_stackB");
   pragma Export (C, u00016, "system__secondary_stackS");
   pragma Export (C, u00017, "system__storage_elementsB");
   pragma Export (C, u00018, "system__storage_elementsS");
   pragma Export (C, u00019, "system__stack_checkingB");
   pragma Export (C, u00020, "system__stack_checkingS");
   pragma Export (C, u00021, "system__assertionsB");
   pragma Export (C, u00022, "system__assertionsS");
   pragma Export (C, u00023, "system__exception_tableB");
   pragma Export (C, u00024, "system__exception_tableS");
   pragma Export (C, u00025, "system__htableB");
   pragma Export (C, u00026, "system__htableS");
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
   pragma Export (C, u00042, "aliB");
   pragma Export (C, u00043, "aliS");
   pragma Export (C, u00044, "butilB");
   pragma Export (C, u00045, "butilS");
   pragma Export (C, u00046, "hostparmS");
   pragma Export (C, u00047, "typesB");
   pragma Export (C, u00048, "typesS");
   pragma Export (C, u00049, "system__compare_array_unsigned_8B");
   pragma Export (C, u00050, "system__compare_array_unsigned_8S");
   pragma Export (C, u00051, "system__address_operationsB");
   pragma Export (C, u00052, "system__address_operationsS");
   pragma Export (C, u00053, "nametB");
   pragma Export (C, u00054, "nametS");
   pragma Export (C, u00055, "debugB");
   pragma Export (C, u00056, "debugS");
   pragma Export (C, u00057, "optB");
   pragma Export (C, u00058, "optS");
   pragma Export (C, u00059, "tree_ioB");
   pragma Export (C, u00060, "tree_ioS");
   pragma Export (C, u00061, "outputB");
   pragma Export (C, u00062, "outputS");
   pragma Export (C, u00063, "gnatS");
   pragma Export (C, u00064, "gnat__os_libB");
   pragma Export (C, u00065, "gnat__os_libS");
   pragma Export (C, u00066, "system__case_utilB");
   pragma Export (C, u00067, "system__case_utilS");
   pragma Export (C, u00068, "system__crtlS");
   pragma Export (C, u00069, "gnat__stringsB");
   pragma Export (C, u00070, "gnat__stringsS");
   pragma Export (C, u00071, "gnatvsnB");
   pragma Export (C, u00072, "gnatvsnS");
   pragma Export (C, u00073, "widecharB");
   pragma Export (C, u00074, "widecharS");
   pragma Export (C, u00075, "allocS");
   pragma Export (C, u00076, "tableB");
   pragma Export (C, u00077, "tableS");
   pragma Export (C, u00078, "system__memoryB");
   pragma Export (C, u00079, "system__memoryS");
   pragma Export (C, u00080, "fnameB");
   pragma Export (C, u00081, "fnameS");
   pragma Export (C, u00082, "osintB");
   pragma Export (C, u00083, "osintS");
   pragma Export (C, u00084, "fmapB");
   pragma Export (C, u00085, "fmapS");
   pragma Export (C, u00086, "gnat__htableB");
   pragma Export (C, u00087, "gnat__htableS");
   pragma Export (C, u00088, "sdefaultB");
   pragma Export (C, u00089, "sdefaultS");
   pragma Export (C, u00090, "gnat__case_utilB");
   pragma Export (C, u00091, "gnat__case_utilS");
   pragma Export (C, u00092, "system__string_opsB");
   pragma Export (C, u00093, "system__string_opsS");
   pragma Export (C, u00094, "system__string_ops_concat_3B");
   pragma Export (C, u00095, "system__string_ops_concat_3S");
   pragma Export (C, u00096, "system__string_ops_concat_4B");
   pragma Export (C, u00097, "system__string_ops_concat_4S");
   pragma Export (C, u00098, "casingB");
   pragma Export (C, u00099, "casingS");
   pragma Export (C, u00100, "csetsB");
   pragma Export (C, u00101, "csetsS");
   pragma Export (C, u00102, "ridentS");
   pragma Export (C, u00103, "ali__utilB");
   pragma Export (C, u00104, "ali__utilS");
   pragma Export (C, u00105, "binderrB");
   pragma Export (C, u00106, "binderrS");
   pragma Export (C, u00107, "libB");
   pragma Export (C, u00108, "libS");
   pragma Export (C, u00109, "atreeB");
   pragma Export (C, u00110, "atreeS");
   pragma Export (C, u00111, "elistsB");
   pragma Export (C, u00112, "elistsS");
   pragma Export (C, u00113, "nlistsB");
   pragma Export (C, u00114, "nlistsS");
   pragma Export (C, u00115, "sinfoB");
   pragma Export (C, u00116, "sinfoS");
   pragma Export (C, u00117, "uintpB");
   pragma Export (C, u00118, "uintpS");
   pragma Export (C, u00119, "urealpB");
   pragma Export (C, u00120, "urealpS");
   pragma Export (C, u00121, "sinputB");
   pragma Export (C, u00122, "sinputS");
   pragma Export (C, u00123, "system__img_enumB");
   pragma Export (C, u00124, "system__img_enumS");
   pragma Export (C, u00125, "einfoB");
   pragma Export (C, u00126, "einfoS");
   pragma Export (C, u00127, "standB");
   pragma Export (C, u00128, "standS");
   pragma Export (C, u00129, "snamesB");
   pragma Export (C, u00130, "snamesS");
   pragma Export (C, u00131, "gnat__heap_sort_aB");
   pragma Export (C, u00132, "gnat__heap_sort_aS");
   pragma Export (C, u00133, "stringtB");
   pragma Export (C, u00134, "stringtS");
   pragma Export (C, u00135, "unameB");
   pragma Export (C, u00136, "unameS");
   pragma Export (C, u00137, "scansB");
   pragma Export (C, u00138, "scansS");
   pragma Export (C, u00139, "scngB");
   pragma Export (C, u00140, "scngS");
   pragma Export (C, u00141, "err_varsS");
   pragma Export (C, u00142, "gnat__utf_32B");
   pragma Export (C, u00143, "gnat__utf_32S");
   pragma Export (C, u00144, "styleswB");
   pragma Export (C, u00145, "styleswS");
   pragma Export (C, u00146, "system__crc32B");
   pragma Export (C, u00147, "system__crc32S");
   pragma Export (C, u00148, "stylegB");
   pragma Export (C, u00149, "stylegS");
   pragma Export (C, u00150, "sinput__cB");
   pragma Export (C, u00151, "sinput__cS");
   pragma Export (C, u00152, "bcheckB");
   pragma Export (C, u00153, "bcheckS");
   pragma Export (C, u00154, "bindeB");
   pragma Export (C, u00155, "bindeS");
   pragma Export (C, u00156, "bindgenB");
   pragma Export (C, u00157, "bindgenS");
   pragma Export (C, u00158, "osint__bB");
   pragma Export (C, u00159, "osint__bS");
   pragma Export (C, u00160, "system__string_ops_concat_5B");
   pragma Export (C, u00161, "system__string_ops_concat_5S");
   pragma Export (C, u00162, "targparmB");
   pragma Export (C, u00163, "targparmS");
   pragma Export (C, u00164, "bindusgB");
   pragma Export (C, u00165, "bindusgS");
   pragma Export (C, u00166, "switchB");
   pragma Export (C, u00167, "switchS");
   pragma Export (C, u00168, "switch__bB");
   pragma Export (C, u00169, "switch__bS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  gnat%s
   --  gnat.heap_sort_a%s
   --  gnat.heap_sort_a%b
   --  gnat.strings%s
   --  gnat.strings%b
   --  gnat.utf_32%s
   --  gnat.utf_32%b
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.case_util%s
   --  system.case_util%b
   --  gnat.case_util%s
   --  gnat.case_util%b
   --  system.compare_array_unsigned_8%s
   --  system.crc32%s
   --  system.crc32%b
   --  system.htable%s
   --  system.htable%b
   --  gnat.htable%s
   --  gnat.htable%b
   --  system.img_enum%s
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  system.pure_exceptions%s
   --  system.standard_library%s
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.compare_array_unsigned_8%b
   --  system.secondary_stack%s
   --  system.img_enum%b
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
   --  bcheck%s
   --  bindgen%s
   --  bindusg%s
   --  debug%s
   --  debug%b
   --  gnatbind%s
   --  gnatvsn%s
   --  gnatvsn%b
   --  rident%s
   --  types%s
   --  types%b
   --  binderr%s
   --  butil%s
   --  casing%s
   --  elists%s
   --  fmap%s
   --  fname%s
   --  hostparm%s
   --  nlists%s
   --  opt%s
   --  csets%s
   --  csets%b
   --  osint%s
   --  osint.b%s
   --  output%s
   --  output%b
   --  bindusg%b
   --  sdefault%s
   --  sdefault%b
   --  snames%s
   --  stringt%s
   --  styleg%s
   --  scng%s
   --  stylesw%s
   --  stylesw%b
   --  switch%s
   --  switch%b
   --  switch.b%s
   --  switch.b%b
   --  targparm%s
   --  tree_io%s
   --  tree_io%b
   --  opt%b
   --  table%s
   --  table%b
   --  elists%b
   --  ali%s
   --  ali.util%s
   --  binde%s
   --  lib%s
   --  namet%s
   --  binde%b
   --  ali%b
   --  targparm%b
   --  stringt%b
   --  snames%b
   --  osint%b
   --  fname%b
   --  fmap%b
   --  butil%b
   --  binderr%b
   --  gnatbind%b
   --  bindgen%b
   --  bcheck%b
   --  sinput%s
   --  sinput.c%s
   --  sinput.c%b
   --  uintp%s
   --  uintp%b
   --  err_vars%s
   --  uname%s
   --  urealp%s
   --  urealp%b
   --  einfo%s
   --  scans%s
   --  scans%b
   --  styleg%b
   --  sinfo%s
   --  atree%s
   --  atree%b
   --  sinfo%b
   --  uname%b
   --  nlists%b
   --  widechar%s
   --  widechar%b
   --  sinput%b
   --  namet%b
   --  scng%b
   --  osint.b%b
   --  casing%b
   --  ali.util%b
   --  stand%s
   --  stand%b
   --  einfo%b
   --  lib%b
   --  END ELABORATION ORDER

end ada_main;
