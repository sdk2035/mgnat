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

   Ada_Main_Program_Name : constant String := "_ada_gnatfind" & Ascii.NUL;
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
   u00001 : constant Version_32 := 16#ae08b908#;
   u00002 : constant Version_32 := 16#a308e142#;
   u00003 : constant Version_32 := 16#6e012854#;
   u00004 : constant Version_32 := 16#0ff28bf9#;
   u00005 : constant Version_32 := 16#19a4e6ea#;
   u00006 : constant Version_32 := 16#ee26bd47#;
   u00007 : constant Version_32 := 16#3857f861#;
   u00008 : constant Version_32 := 16#4f3683fd#;
   u00009 : constant Version_32 := 16#53464f1d#;
   u00010 : constant Version_32 := 16#fb6a1d0b#;
   u00011 : constant Version_32 := 16#1358e1f4#;
   u00012 : constant Version_32 := 16#e4b4feab#;
   u00013 : constant Version_32 := 16#0d3bfcc1#;
   u00014 : constant Version_32 := 16#ff85b522#;
   u00015 : constant Version_32 := 16#d0257763#;
   u00016 : constant Version_32 := 16#c4a0767d#;
   u00017 : constant Version_32 := 16#d902a4c7#;
   u00018 : constant Version_32 := 16#61b18a32#;
   u00019 : constant Version_32 := 16#05ea3447#;
   u00020 : constant Version_32 := 16#af6a42b4#;
   u00021 : constant Version_32 := 16#19d30970#;
   u00022 : constant Version_32 := 16#f855ef71#;
   u00023 : constant Version_32 := 16#c6257f04#;
   u00024 : constant Version_32 := 16#d2a2fed0#;
   u00025 : constant Version_32 := 16#897e16f3#;
   u00026 : constant Version_32 := 16#7298b6e3#;
   u00027 : constant Version_32 := 16#eb5d6aab#;
   u00028 : constant Version_32 := 16#e1200a5a#;
   u00029 : constant Version_32 := 16#ddc55f72#;
   u00030 : constant Version_32 := 16#d4e0aa19#;
   u00031 : constant Version_32 := 16#f0868a3f#;
   u00032 : constant Version_32 := 16#69beeae9#;
   u00033 : constant Version_32 := 16#3d920894#;
   u00034 : constant Version_32 := 16#6cf8d70a#;
   u00035 : constant Version_32 := 16#d5a40aac#;
   u00036 : constant Version_32 := 16#6e527eac#;
   u00037 : constant Version_32 := 16#0b858398#;
   u00038 : constant Version_32 := 16#5d733959#;
   u00039 : constant Version_32 := 16#66eeb353#;
   u00040 : constant Version_32 := 16#f7e341ac#;
   u00041 : constant Version_32 := 16#4f109561#;
   u00042 : constant Version_32 := 16#11d14bf9#;
   u00043 : constant Version_32 := 16#8d97c770#;
   u00044 : constant Version_32 := 16#cd205ee3#;
   u00045 : constant Version_32 := 16#2c0ed6db#;
   u00046 : constant Version_32 := 16#c26dee2d#;
   u00047 : constant Version_32 := 16#62233804#;
   u00048 : constant Version_32 := 16#9b945774#;
   u00049 : constant Version_32 := 16#7dd638f6#;
   u00050 : constant Version_32 := 16#c455be65#;
   u00051 : constant Version_32 := 16#fa68b144#;
   u00052 : constant Version_32 := 16#0cbcaece#;
   u00053 : constant Version_32 := 16#f3711379#;
   u00054 : constant Version_32 := 16#8e363eb3#;
   u00055 : constant Version_32 := 16#c68538e8#;
   u00056 : constant Version_32 := 16#e40fa725#;
   u00057 : constant Version_32 := 16#1a01974e#;
   u00058 : constant Version_32 := 16#c07f890e#;
   u00059 : constant Version_32 := 16#7bc84ef9#;
   u00060 : constant Version_32 := 16#c710f4b0#;
   u00061 : constant Version_32 := 16#7f390210#;
   u00062 : constant Version_32 := 16#781d9865#;
   u00063 : constant Version_32 := 16#740c385a#;
   u00064 : constant Version_32 := 16#6f93a09f#;
   u00065 : constant Version_32 := 16#95be9156#;
   u00066 : constant Version_32 := 16#a48e089f#;
   u00067 : constant Version_32 := 16#6dac9aa6#;
   u00068 : constant Version_32 := 16#875a76d7#;
   u00069 : constant Version_32 := 16#ab5215ac#;
   u00070 : constant Version_32 := 16#7f777e01#;
   u00071 : constant Version_32 := 16#5678ad60#;
   u00072 : constant Version_32 := 16#e4e642eb#;
   u00073 : constant Version_32 := 16#4bb9c607#;
   u00074 : constant Version_32 := 16#77cfcb46#;
   u00075 : constant Version_32 := 16#99b2d4ce#;
   u00076 : constant Version_32 := 16#74808519#;
   u00077 : constant Version_32 := 16#53e8e450#;
   u00078 : constant Version_32 := 16#1f248439#;
   u00079 : constant Version_32 := 16#007e41b8#;
   u00080 : constant Version_32 := 16#459bdc73#;
   u00081 : constant Version_32 := 16#ec7cf95c#;
   u00082 : constant Version_32 := 16#7a2cf9b8#;
   u00083 : constant Version_32 := 16#b94cfe7c#;
   u00084 : constant Version_32 := 16#b18036bf#;
   u00085 : constant Version_32 := 16#9d3004a0#;
   u00086 : constant Version_32 := 16#cda47026#;
   u00087 : constant Version_32 := 16#e518e4a0#;
   u00088 : constant Version_32 := 16#3b7fbee1#;
   u00089 : constant Version_32 := 16#de541916#;
   u00090 : constant Version_32 := 16#7bd1e555#;
   u00091 : constant Version_32 := 16#850cd738#;
   u00092 : constant Version_32 := 16#138576b2#;
   u00093 : constant Version_32 := 16#23bc10e8#;
   u00094 : constant Version_32 := 16#6769a6c9#;
   u00095 : constant Version_32 := 16#874601e7#;
   u00096 : constant Version_32 := 16#a601405c#;
   u00097 : constant Version_32 := 16#eb99d65b#;
   u00098 : constant Version_32 := 16#a31588eb#;
   u00099 : constant Version_32 := 16#92eb3f56#;
   u00100 : constant Version_32 := 16#6c3434af#;
   u00101 : constant Version_32 := 16#c9edef99#;
   u00102 : constant Version_32 := 16#9ce932b3#;
   u00103 : constant Version_32 := 16#b151fa83#;
   u00104 : constant Version_32 := 16#1c1b159b#;
   u00105 : constant Version_32 := 16#cd99f476#;
   u00106 : constant Version_32 := 16#7b2d0447#;
   u00107 : constant Version_32 := 16#875a7f39#;
   u00108 : constant Version_32 := 16#2c158170#;
   u00109 : constant Version_32 := 16#03e857a5#;
   u00110 : constant Version_32 := 16#231161ce#;
   u00111 : constant Version_32 := 16#0723ed27#;
   u00112 : constant Version_32 := 16#08493c74#;
   u00113 : constant Version_32 := 16#02c629f5#;
   u00114 : constant Version_32 := 16#7fcfc8a9#;
   u00115 : constant Version_32 := 16#a211af66#;
   u00116 : constant Version_32 := 16#5da87136#;
   u00117 : constant Version_32 := 16#92f0f240#;
   u00118 : constant Version_32 := 16#a27be464#;
   u00119 : constant Version_32 := 16#30e5d7e0#;
   u00120 : constant Version_32 := 16#43088a1b#;
   u00121 : constant Version_32 := 16#4932cebc#;
   u00122 : constant Version_32 := 16#55e83b4d#;
   u00123 : constant Version_32 := 16#2551d57f#;
   u00124 : constant Version_32 := 16#e902ed3d#;
   u00125 : constant Version_32 := 16#324a1caf#;
   u00126 : constant Version_32 := 16#513204d2#;
   u00127 : constant Version_32 := 16#0c900cc3#;
   u00128 : constant Version_32 := 16#a09803be#;
   u00129 : constant Version_32 := 16#0c8a2dde#;
   u00130 : constant Version_32 := 16#98e37eca#;
   u00131 : constant Version_32 := 16#efe7e686#;
   u00132 : constant Version_32 := 16#f25a52b7#;
   u00133 : constant Version_32 := 16#4aac86c9#;
   u00134 : constant Version_32 := 16#28c880d5#;
   u00135 : constant Version_32 := 16#41276113#;
   u00136 : constant Version_32 := 16#33ae58df#;
   u00137 : constant Version_32 := 16#91475fc4#;
   u00138 : constant Version_32 := 16#67f4b716#;
   u00139 : constant Version_32 := 16#3198c1b5#;
   u00140 : constant Version_32 := 16#60efbb07#;
   u00141 : constant Version_32 := 16#d6f971ff#;
   u00142 : constant Version_32 := 16#cebb94f7#;
   u00143 : constant Version_32 := 16#12be65e1#;
   u00144 : constant Version_32 := 16#3c2c14e3#;
   u00145 : constant Version_32 := 16#f77be749#;
   u00146 : constant Version_32 := 16#7c45057d#;
   u00147 : constant Version_32 := 16#ef2b01f3#;
   u00148 : constant Version_32 := 16#9c076042#;
   u00149 : constant Version_32 := 16#e65b5339#;
   u00150 : constant Version_32 := 16#71a1234b#;
   u00151 : constant Version_32 := 16#fb9d88fd#;
   u00152 : constant Version_32 := 16#7fd42330#;

   pragma Export (C, u00001, "gnatfindB");
   pragma Export (C, u00002, "system__standard_libraryB");
   pragma Export (C, u00003, "system__standard_libraryS");
   pragma Export (C, u00004, "adaS");
   pragma Export (C, u00005, "ada__exceptionsB");
   pragma Export (C, u00006, "ada__exceptionsS");
   pragma Export (C, u00007, "ada__exceptions__last_chance_handlerB");
   pragma Export (C, u00008, "ada__exceptions__last_chance_handlerS");
   pragma Export (C, u00009, "interfacesS");
   pragma Export (C, u00010, "systemS");
   pragma Export (C, u00011, "system__assertionsB");
   pragma Export (C, u00012, "system__assertionsS");
   pragma Export (C, u00013, "system__exception_tableB");
   pragma Export (C, u00014, "system__exception_tableS");
   pragma Export (C, u00015, "system__htableB");
   pragma Export (C, u00016, "system__htableS");
   pragma Export (C, u00017, "system__soft_linksB");
   pragma Export (C, u00018, "system__soft_linksS");
   pragma Export (C, u00019, "system__machine_state_operationsB");
   pragma Export (C, u00020, "system__machine_state_operationsS");
   pragma Export (C, u00021, "system__machine_codeS");
   pragma Export (C, u00022, "system__memoryB");
   pragma Export (C, u00023, "system__memoryS");
   pragma Export (C, u00024, "system__storage_elementsB");
   pragma Export (C, u00025, "system__storage_elementsS");
   pragma Export (C, u00026, "system__exceptionsS");
   pragma Export (C, u00027, "system__parametersB");
   pragma Export (C, u00028, "system__parametersS");
   pragma Export (C, u00029, "system__secondary_stackB");
   pragma Export (C, u00030, "system__secondary_stackS");
   pragma Export (C, u00031, "system__stack_checkingB");
   pragma Export (C, u00032, "system__stack_checkingS");
   pragma Export (C, u00033, "system__tracebackB");
   pragma Export (C, u00034, "system__tracebackS");
   pragma Export (C, u00035, "system__unsigned_typesS");
   pragma Export (C, u00036, "system__traceback_entriesB");
   pragma Export (C, u00037, "system__traceback_entriesS");
   pragma Export (C, u00038, "ada__stringsS");
   pragma Export (C, u00039, "ada__strings__fixedB");
   pragma Export (C, u00040, "ada__strings__fixedS");
   pragma Export (C, u00041, "ada__strings__mapsB");
   pragma Export (C, u00042, "ada__strings__mapsS");
   pragma Export (C, u00043, "system__bit_opsB");
   pragma Export (C, u00044, "system__bit_opsS");
   pragma Export (C, u00045, "system__pure_exceptionsS");
   pragma Export (C, u00046, "ada__charactersS");
   pragma Export (C, u00047, "ada__characters__latin_1S");
   pragma Export (C, u00048, "ada__strings__searchB");
   pragma Export (C, u00049, "ada__strings__searchS");
   pragma Export (C, u00050, "ada__text_ioB");
   pragma Export (C, u00051, "ada__text_ioS");
   pragma Export (C, u00052, "ada__streamsS");
   pragma Export (C, u00053, "ada__tagsB");
   pragma Export (C, u00054, "ada__tagsS");
   pragma Export (C, u00055, "interfaces__c_streamsB");
   pragma Export (C, u00056, "interfaces__c_streamsS");
   pragma Export (C, u00057, "system__crtlS");
   pragma Export (C, u00058, "system__file_ioB");
   pragma Export (C, u00059, "system__file_ioS");
   pragma Export (C, u00060, "ada__finalizationB");
   pragma Export (C, u00061, "ada__finalizationS");
   pragma Export (C, u00062, "system__finalization_rootB");
   pragma Export (C, u00063, "system__finalization_rootS");
   pragma Export (C, u00064, "system__finalization_implementationB");
   pragma Export (C, u00065, "system__finalization_implementationS");
   pragma Export (C, u00066, "system__string_ops_concat_3B");
   pragma Export (C, u00067, "system__string_ops_concat_3S");
   pragma Export (C, u00068, "system__string_opsB");
   pragma Export (C, u00069, "system__string_opsS");
   pragma Export (C, u00070, "system__stream_attributesB");
   pragma Export (C, u00071, "system__stream_attributesS");
   pragma Export (C, u00072, "ada__io_exceptionsS");
   pragma Export (C, u00073, "system__file_control_blockS");
   pragma Export (C, u00074, "ada__finalization__list_controllerB");
   pragma Export (C, u00075, "ada__finalization__list_controllerS");
   pragma Export (C, u00076, "gnatS");
   pragma Export (C, u00077, "gnat__command_lineB");
   pragma Export (C, u00078, "gnat__command_lineS");
   pragma Export (C, u00079, "ada__command_lineB");
   pragma Export (C, u00080, "ada__command_lineS");
   pragma Export (C, u00081, "gnat__os_libB");
   pragma Export (C, u00082, "gnat__os_libS");
   pragma Export (C, u00083, "system__case_utilB");
   pragma Export (C, u00084, "system__case_utilS");
   pragma Export (C, u00085, "gnat__stringsB");
   pragma Export (C, u00086, "gnat__stringsS");
   pragma Export (C, u00087, "gnat__directory_operationsB");
   pragma Export (C, u00088, "gnat__directory_operationsS");
   pragma Export (C, u00089, "ada__characters__handlingB");
   pragma Export (C, u00090, "ada__characters__handlingS");
   pragma Export (C, u00091, "ada__strings__maps__constantsS");
   pragma Export (C, u00092, "gnat__regexpB");
   pragma Export (C, u00093, "gnat__regexpS");
   pragma Export (C, u00094, "gnat__case_utilB");
   pragma Export (C, u00095, "gnat__case_utilS");
   pragma Export (C, u00096, "system__img_intB");
   pragma Export (C, u00097, "system__img_intS");
   pragma Export (C, u00098, "gnatvsnB");
   pragma Export (C, u00099, "gnatvsnS");
   pragma Export (C, u00100, "osintB");
   pragma Export (C, u00101, "osintS");
   pragma Export (C, u00102, "fmapB");
   pragma Export (C, u00103, "fmapS");
   pragma Export (C, u00104, "gnat__htableB");
   pragma Export (C, u00105, "gnat__htableS");
   pragma Export (C, u00106, "nametB");
   pragma Export (C, u00107, "nametS");
   pragma Export (C, u00108, "debugB");
   pragma Export (C, u00109, "debugS");
   pragma Export (C, u00110, "outputB");
   pragma Export (C, u00111, "outputS");
   pragma Export (C, u00112, "typesB");
   pragma Export (C, u00113, "typesS");
   pragma Export (C, u00114, "system__compare_array_unsigned_8B");
   pragma Export (C, u00115, "system__compare_array_unsigned_8S");
   pragma Export (C, u00116, "system__address_operationsB");
   pragma Export (C, u00117, "system__address_operationsS");
   pragma Export (C, u00118, "tree_ioB");
   pragma Export (C, u00119, "tree_ioS");
   pragma Export (C, u00120, "widecharB");
   pragma Export (C, u00121, "widecharS");
   pragma Export (C, u00122, "optB");
   pragma Export (C, u00123, "optS");
   pragma Export (C, u00124, "hostparmS");
   pragma Export (C, u00125, "system__wch_conS");
   pragma Export (C, u00126, "system__wch_cnvB");
   pragma Export (C, u00127, "system__wch_cnvS");
   pragma Export (C, u00128, "system__wch_jisB");
   pragma Export (C, u00129, "system__wch_jisS");
   pragma Export (C, u00130, "allocS");
   pragma Export (C, u00131, "tableB");
   pragma Export (C, u00132, "tableS");
   pragma Export (C, u00133, "sdefaultB");
   pragma Export (C, u00134, "sdefaultS");
   pragma Export (C, u00135, "system__string_ops_concat_4B");
   pragma Export (C, u00136, "system__string_ops_concat_4S");
   pragma Export (C, u00137, "xr_tablsB");
   pragma Export (C, u00138, "xr_tablsS");
   pragma Export (C, u00139, "ada__strings__unboundedB");
   pragma Export (C, u00140, "ada__strings__unboundedS");
   pragma Export (C, u00141, "xref_libB");
   pragma Export (C, u00142, "xref_libS");
   pragma Export (C, u00143, "gnat__io_auxB");
   pragma Export (C, u00144, "gnat__io_auxS");
   pragma Export (C, u00145, "system__string_ops_concat_5B");
   pragma Export (C, u00146, "system__string_ops_concat_5S");
   pragma Export (C, u00147, "system__val_intB");
   pragma Export (C, u00148, "system__val_intS");
   pragma Export (C, u00149, "system__val_unsB");
   pragma Export (C, u00150, "system__val_unsS");
   pragma Export (C, u00151, "system__val_utilB");
   pragma Export (C, u00152, "system__val_utilS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.handling%s
   --  ada.characters.latin_1%s
   --  ada.command_line%s
   --  gnat%s
   --  gnat.strings%s
   --  gnat.strings%b
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.bit_ops%s
   --  system.case_util%s
   --  system.case_util%b
   --  gnat.case_util%s
   --  gnat.case_util%b
   --  system.compare_array_unsigned_8%s
   --  system.htable%s
   --  system.htable%b
   --  gnat.htable%s
   --  gnat.htable%b
   --  system.img_int%s
   --  system.machine_code%s
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
   --  system.img_int%b
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
   --  ada.exceptions.last_chance_handler%b
   --  system.exceptions%s
   --  system.machine_state_operations%s
   --  system.soft_links%s
   --  system.soft_links%b
   --  system.secondary_stack%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.tags%s
   --  ada.tags%b
   --  ada.streams%s
   --  gnat.os_lib%s
   --  gnat.os_lib%b
   --  system.assertions%s
   --  system.assertions%b
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  system.memory%s
   --  system.memory%b
   --  system.machine_state_operations%b
   --  system.standard_library%b
   --  system.unsigned_types%s
   --  ada.exceptions%b
   --  system.bit_ops%b
   --  ada.strings.maps%s
   --  ada.strings.maps%b
   --  ada.strings.fixed%s
   --  ada.strings.maps.constants%s
   --  ada.characters.handling%b
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.strings.fixed%b
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.finalization_implementation%s
   --  system.finalization_implementation%b
   --  ada.finalization%s
   --  ada.finalization%b
   --  ada.finalization.list_controller%s
   --  ada.finalization.list_controller%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  gnat.directory_operations%s
   --  gnat.directory_operations%b
   --  gnat.regexp%s
   --  gnat.regexp%b
   --  gnat.command_line%s
   --  gnat.command_line%b
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.file_io%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  gnat.io_aux%s
   --  gnat.io_aux%b
   --  system.val_int%s
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
   --  system.val_int%b
   --  system.wch_con%s
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  alloc%s
   --  debug%s
   --  debug%b
   --  gnatvsn%s
   --  gnatvsn%b
   --  hostparm%s
   --  types%s
   --  types%b
   --  fmap%s
   --  opt%s
   --  osint%s
   --  output%s
   --  output%b
   --  sdefault%s
   --  sdefault%b
   --  tree_io%s
   --  tree_io%b
   --  opt%b
   --  table%s
   --  table%b
   --  namet%s
   --  osint%b
   --  fmap%b
   --  widechar%s
   --  widechar%b
   --  namet%b
   --  xr_tabls%s
   --  xr_tabls%b
   --  xref_lib%s
   --  xref_lib%b
   --  gnatfind%b
   --  END ELABORATION ORDER

end ada_main;
