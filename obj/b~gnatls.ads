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
                    "GNAT Version: GAP 1.1.0 (20041209-323)";
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_gnatls" & Ascii.NUL;
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
   u00001 : constant Version_32 := 16#f7ff2533#;
   u00002 : constant Version_32 := 16#48ca9d1f#;
   u00003 : constant Version_32 := 16#a308e142#;
   u00004 : constant Version_32 := 16#6e012854#;
   u00005 : constant Version_32 := 16#19a4e6ea#;
   u00006 : constant Version_32 := 16#ee26bd47#;
   u00007 : constant Version_32 := 16#0ff28bf9#;
   u00008 : constant Version_32 := 16#3857f861#;
   u00009 : constant Version_32 := 16#4f3683fd#;
   u00010 : constant Version_32 := 16#53464f1d#;
   u00011 : constant Version_32 := 16#fb6a1d0b#;
   u00012 : constant Version_32 := 16#1358e1f4#;
   u00013 : constant Version_32 := 16#e4b4feab#;
   u00014 : constant Version_32 := 16#0d3bfcc1#;
   u00015 : constant Version_32 := 16#ff85b522#;
   u00016 : constant Version_32 := 16#d0257763#;
   u00017 : constant Version_32 := 16#c4a0767d#;
   u00018 : constant Version_32 := 16#d902a4c7#;
   u00019 : constant Version_32 := 16#61b18a32#;
   u00020 : constant Version_32 := 16#05ea3447#;
   u00021 : constant Version_32 := 16#af6a42b4#;
   u00022 : constant Version_32 := 16#19d30970#;
   u00023 : constant Version_32 := 16#f855ef71#;
   u00024 : constant Version_32 := 16#c6257f04#;
   u00025 : constant Version_32 := 16#d2a2fed0#;
   u00026 : constant Version_32 := 16#897e16f3#;
   u00027 : constant Version_32 := 16#7298b6e3#;
   u00028 : constant Version_32 := 16#eb5d6aab#;
   u00029 : constant Version_32 := 16#e1200a5a#;
   u00030 : constant Version_32 := 16#ddc55f72#;
   u00031 : constant Version_32 := 16#d4e0aa19#;
   u00032 : constant Version_32 := 16#f0868a3f#;
   u00033 : constant Version_32 := 16#69beeae9#;
   u00034 : constant Version_32 := 16#3d920894#;
   u00035 : constant Version_32 := 16#6cf8d70a#;
   u00036 : constant Version_32 := 16#d5a40aac#;
   u00037 : constant Version_32 := 16#6e527eac#;
   u00038 : constant Version_32 := 16#0b858398#;
   u00039 : constant Version_32 := 16#62031732#;
   u00040 : constant Version_32 := 16#5509ef1c#;
   u00041 : constant Version_32 := 16#8520b354#;
   u00042 : constant Version_32 := 16#ece92546#;
   u00043 : constant Version_32 := 16#e902ed3d#;
   u00044 : constant Version_32 := 16#7b2d0447#;
   u00045 : constant Version_32 := 16#875a7f39#;
   u00046 : constant Version_32 := 16#2c158170#;
   u00047 : constant Version_32 := 16#03e857a5#;
   u00048 : constant Version_32 := 16#231161ce#;
   u00049 : constant Version_32 := 16#0723ed27#;
   u00050 : constant Version_32 := 16#74808519#;
   u00051 : constant Version_32 := 16#ec7cf95c#;
   u00052 : constant Version_32 := 16#7a2cf9b8#;
   u00053 : constant Version_32 := 16#b94cfe7c#;
   u00054 : constant Version_32 := 16#b18036bf#;
   u00055 : constant Version_32 := 16#1a01974e#;
   u00056 : constant Version_32 := 16#9d3004a0#;
   u00057 : constant Version_32 := 16#cda47026#;
   u00058 : constant Version_32 := 16#08493c74#;
   u00059 : constant Version_32 := 16#02c629f5#;
   u00060 : constant Version_32 := 16#7fcfc8a9#;
   u00061 : constant Version_32 := 16#a211af66#;
   u00062 : constant Version_32 := 16#5da87136#;
   u00063 : constant Version_32 := 16#92f0f240#;
   u00064 : constant Version_32 := 16#a27be464#;
   u00065 : constant Version_32 := 16#30e5d7e0#;
   u00066 : constant Version_32 := 16#43088a1b#;
   u00067 : constant Version_32 := 16#4932cebc#;
   u00068 : constant Version_32 := 16#55e83b4d#;
   u00069 : constant Version_32 := 16#2551d57f#;
   u00070 : constant Version_32 := 16#a31588eb#;
   u00071 : constant Version_32 := 16#92eb3f56#;
   u00072 : constant Version_32 := 16#324a1caf#;
   u00073 : constant Version_32 := 16#513204d2#;
   u00074 : constant Version_32 := 16#0c900cc3#;
   u00075 : constant Version_32 := 16#a09803be#;
   u00076 : constant Version_32 := 16#0c8a2dde#;
   u00077 : constant Version_32 := 16#98e37eca#;
   u00078 : constant Version_32 := 16#efe7e686#;
   u00079 : constant Version_32 := 16#f25a52b7#;
   u00080 : constant Version_32 := 16#9c4c4f30#;
   u00081 : constant Version_32 := 16#398ad485#;
   u00082 : constant Version_32 := 16#6c3434af#;
   u00083 : constant Version_32 := 16#c9edef99#;
   u00084 : constant Version_32 := 16#9ce932b3#;
   u00085 : constant Version_32 := 16#b151fa83#;
   u00086 : constant Version_32 := 16#1c1b159b#;
   u00087 : constant Version_32 := 16#cd99f476#;
   u00088 : constant Version_32 := 16#4aac86c9#;
   u00089 : constant Version_32 := 16#28c880d5#;
   u00090 : constant Version_32 := 16#6769a6c9#;
   u00091 : constant Version_32 := 16#874601e7#;
   u00092 : constant Version_32 := 16#875a76d7#;
   u00093 : constant Version_32 := 16#ab5215ac#;
   u00094 : constant Version_32 := 16#a48e089f#;
   u00095 : constant Version_32 := 16#6dac9aa6#;
   u00096 : constant Version_32 := 16#41276113#;
   u00097 : constant Version_32 := 16#33ae58df#;
   u00098 : constant Version_32 := 16#ccd9ad9b#;
   u00099 : constant Version_32 := 16#ba1750d6#;
   u00100 : constant Version_32 := 16#a949e3f2#;
   u00101 : constant Version_32 := 16#b6667fe6#;
   u00102 : constant Version_32 := 16#60beb71d#;
   u00103 : constant Version_32 := 16#2defd827#;
   u00104 : constant Version_32 := 16#809b0b08#;
   u00105 : constant Version_32 := 16#ef1cdad6#;
   u00106 : constant Version_32 := 16#28e31423#;
   u00107 : constant Version_32 := 16#4a5d11f4#;
   u00108 : constant Version_32 := 16#2ef59995#;
   u00109 : constant Version_32 := 16#36ba99d8#;
   u00110 : constant Version_32 := 16#1bb9f3fc#;
   u00111 : constant Version_32 := 16#95b8ab89#;
   u00112 : constant Version_32 := 16#557326f7#;
   u00113 : constant Version_32 := 16#4957ad55#;
   u00114 : constant Version_32 := 16#d7e3159b#;
   u00115 : constant Version_32 := 16#ee4006c2#;
   u00116 : constant Version_32 := 16#3202854d#;
   u00117 : constant Version_32 := 16#f8381cab#;
   u00118 : constant Version_32 := 16#908e4fee#;
   u00119 : constant Version_32 := 16#6d980fe2#;
   u00120 : constant Version_32 := 16#4a92a481#;
   u00121 : constant Version_32 := 16#39245b23#;
   u00122 : constant Version_32 := 16#25397eae#;
   u00123 : constant Version_32 := 16#4f8c274a#;
   u00124 : constant Version_32 := 16#c5f1c792#;
   u00125 : constant Version_32 := 16#6c916c9c#;
   u00126 : constant Version_32 := 16#a1e1f387#;
   u00127 : constant Version_32 := 16#20c21dd4#;
   u00128 : constant Version_32 := 16#29862b70#;
   u00129 : constant Version_32 := 16#07144387#;
   u00130 : constant Version_32 := 16#5872d126#;
   u00131 : constant Version_32 := 16#46455c38#;
   u00132 : constant Version_32 := 16#3aeb17cd#;
   u00133 : constant Version_32 := 16#09ca1903#;
   u00134 : constant Version_32 := 16#454f829c#;
   u00135 : constant Version_32 := 16#49d7406a#;
   u00136 : constant Version_32 := 16#7f7dd88c#;
   u00137 : constant Version_32 := 16#20f00bdd#;
   u00138 : constant Version_32 := 16#deb54647#;
   u00139 : constant Version_32 := 16#9e35616f#;
   u00140 : constant Version_32 := 16#02426c1e#;
   u00141 : constant Version_32 := 16#2e7674ae#;
   u00142 : constant Version_32 := 16#a73e2e02#;
   u00143 : constant Version_32 := 16#5ad3d7de#;
   u00144 : constant Version_32 := 16#d5414136#;
   u00145 : constant Version_32 := 16#34f0f3c0#;
   u00146 : constant Version_32 := 16#af06f0ba#;
   u00147 : constant Version_32 := 16#ac931291#;
   u00148 : constant Version_32 := 16#4d06be66#;
   u00149 : constant Version_32 := 16#72224219#;
   u00150 : constant Version_32 := 16#21dd74aa#;
   u00151 : constant Version_32 := 16#467ebb5f#;
   u00152 : constant Version_32 := 16#a601405c#;
   u00153 : constant Version_32 := 16#eb99d65b#;
   u00154 : constant Version_32 := 16#d3728c28#;
   u00155 : constant Version_32 := 16#d4f78e65#;

   pragma Export (C, u00001, "gnatlsB");
   pragma Export (C, u00002, "gnatlsS");
   pragma Export (C, u00003, "system__standard_libraryB");
   pragma Export (C, u00004, "system__standard_libraryS");
   pragma Export (C, u00005, "ada__exceptionsB");
   pragma Export (C, u00006, "ada__exceptionsS");
   pragma Export (C, u00007, "adaS");
   pragma Export (C, u00008, "ada__exceptions__last_chance_handlerB");
   pragma Export (C, u00009, "ada__exceptions__last_chance_handlerS");
   pragma Export (C, u00010, "interfacesS");
   pragma Export (C, u00011, "systemS");
   pragma Export (C, u00012, "system__assertionsB");
   pragma Export (C, u00013, "system__assertionsS");
   pragma Export (C, u00014, "system__exception_tableB");
   pragma Export (C, u00015, "system__exception_tableS");
   pragma Export (C, u00016, "system__htableB");
   pragma Export (C, u00017, "system__htableS");
   pragma Export (C, u00018, "system__soft_linksB");
   pragma Export (C, u00019, "system__soft_linksS");
   pragma Export (C, u00020, "system__machine_state_operationsB");
   pragma Export (C, u00021, "system__machine_state_operationsS");
   pragma Export (C, u00022, "system__machine_codeS");
   pragma Export (C, u00023, "system__memoryB");
   pragma Export (C, u00024, "system__memoryS");
   pragma Export (C, u00025, "system__storage_elementsB");
   pragma Export (C, u00026, "system__storage_elementsS");
   pragma Export (C, u00027, "system__exceptionsS");
   pragma Export (C, u00028, "system__parametersB");
   pragma Export (C, u00029, "system__parametersS");
   pragma Export (C, u00030, "system__secondary_stackB");
   pragma Export (C, u00031, "system__secondary_stackS");
   pragma Export (C, u00032, "system__stack_checkingB");
   pragma Export (C, u00033, "system__stack_checkingS");
   pragma Export (C, u00034, "system__tracebackB");
   pragma Export (C, u00035, "system__tracebackS");
   pragma Export (C, u00036, "system__unsigned_typesS");
   pragma Export (C, u00037, "system__traceback_entriesB");
   pragma Export (C, u00038, "system__traceback_entriesS");
   pragma Export (C, u00039, "aliB");
   pragma Export (C, u00040, "aliS");
   pragma Export (C, u00041, "butilB");
   pragma Export (C, u00042, "butilS");
   pragma Export (C, u00043, "hostparmS");
   pragma Export (C, u00044, "nametB");
   pragma Export (C, u00045, "nametS");
   pragma Export (C, u00046, "debugB");
   pragma Export (C, u00047, "debugS");
   pragma Export (C, u00048, "outputB");
   pragma Export (C, u00049, "outputS");
   pragma Export (C, u00050, "gnatS");
   pragma Export (C, u00051, "gnat__os_libB");
   pragma Export (C, u00052, "gnat__os_libS");
   pragma Export (C, u00053, "system__case_utilB");
   pragma Export (C, u00054, "system__case_utilS");
   pragma Export (C, u00055, "system__crtlS");
   pragma Export (C, u00056, "gnat__stringsB");
   pragma Export (C, u00057, "gnat__stringsS");
   pragma Export (C, u00058, "typesB");
   pragma Export (C, u00059, "typesS");
   pragma Export (C, u00060, "system__compare_array_unsigned_8B");
   pragma Export (C, u00061, "system__compare_array_unsigned_8S");
   pragma Export (C, u00062, "system__address_operationsB");
   pragma Export (C, u00063, "system__address_operationsS");
   pragma Export (C, u00064, "tree_ioB");
   pragma Export (C, u00065, "tree_ioS");
   pragma Export (C, u00066, "widecharB");
   pragma Export (C, u00067, "widecharS");
   pragma Export (C, u00068, "optB");
   pragma Export (C, u00069, "optS");
   pragma Export (C, u00070, "gnatvsnB");
   pragma Export (C, u00071, "gnatvsnS");
   pragma Export (C, u00072, "system__wch_conS");
   pragma Export (C, u00073, "system__wch_cnvB");
   pragma Export (C, u00074, "system__wch_cnvS");
   pragma Export (C, u00075, "system__wch_jisB");
   pragma Export (C, u00076, "system__wch_jisS");
   pragma Export (C, u00077, "allocS");
   pragma Export (C, u00078, "tableB");
   pragma Export (C, u00079, "tableS");
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
   pragma Export (C, u00142, "styleswB");
   pragma Export (C, u00143, "styleswS");
   pragma Export (C, u00144, "system__crc32B");
   pragma Export (C, u00145, "system__crc32S");
   pragma Export (C, u00146, "stylegB");
   pragma Export (C, u00147, "stylegS");
   pragma Export (C, u00148, "sinput__cB");
   pragma Export (C, u00149, "sinput__cS");
   pragma Export (C, u00150, "osint__lB");
   pragma Export (C, u00151, "osint__lS");
   pragma Export (C, u00152, "system__img_intB");
   pragma Export (C, u00153, "system__img_intS");
   pragma Export (C, u00154, "targparmB");
   pragma Export (C, u00155, "targparmS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  gnat%s
   --  gnat.heap_sort_a%s
   --  gnat.heap_sort_a%b
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
   --  system.crc32%s
   --  system.crc32%b
   --  system.htable%s
   --  system.htable%b
   --  gnat.htable%s
   --  gnat.htable%b
   --  system.img_enum%s
   --  system.img_int%s
   --  system.machine_code%s
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  system.standard_library%s
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.compare_array_unsigned_8%b
   --  system.secondary_stack%s
   --  system.img_int%b
   --  system.img_enum%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_ops%s
   --  system.string_ops%b
   --  system.string_ops_concat_3%s
   --  system.string_ops_concat_3%b
   --  system.string_ops_concat_4%s
   --  system.string_ops_concat_4%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  system.exceptions%s
   --  system.machine_state_operations%s
   --  system.soft_links%s
   --  system.soft_links%b
   --  system.secondary_stack%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  gnat.os_lib%s
   --  gnat.os_lib%b
   --  system.assertions%s
   --  system.assertions%b
   --  system.memory%s
   --  system.memory%b
   --  system.machine_state_operations%b
   --  system.standard_library%b
   --  system.unsigned_types%s
   --  ada.exceptions%b
   --  system.wch_con%s
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  alloc%s
   --  debug%s
   --  debug%b
   --  gnatls%s
   --  gnatvsn%s
   --  gnatvsn%b
   --  hostparm%s
   --  rident%s
   --  types%s
   --  types%b
   --  binderr%s
   --  butil%s
   --  casing%s
   --  elists%s
   --  fmap%s
   --  fname%s
   --  nlists%s
   --  opt%s
   --  csets%s
   --  csets%b
   --  osint%s
   --  osint.l%s
   --  osint.l%b
   --  output%s
   --  output%b
   --  sdefault%s
   --  sdefault%b
   --  snames%s
   --  stringt%s
   --  styleg%s
   --  scng%s
   --  stylesw%s
   --  stylesw%b
   --  targparm%s
   --  tree_io%s
   --  tree_io%b
   --  opt%b
   --  table%s
   --  table%b
   --  elists%b
   --  ali%s
   --  ali.util%s
   --  lib%s
   --  namet%s
   --  ali%b
   --  targparm%b
   --  stringt%b
   --  snames%b
   --  osint%b
   --  fname%b
   --  fmap%b
   --  butil%b
   --  binderr%b
   --  gnatls%b
   --  sinput%s
   --  sinput%b
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
   --  ali.util%b
   --  styleg%b
   --  sinfo%s
   --  atree%s
   --  atree%b
   --  sinfo%b
   --  uname%b
   --  nlists%b
   --  widechar%s
   --  widechar%b
   --  namet%b
   --  scng%b
   --  casing%b
   --  stand%s
   --  stand%b
   --  einfo%b
   --  lib%b
   --  END ELABORATION ORDER

end ada_main;
