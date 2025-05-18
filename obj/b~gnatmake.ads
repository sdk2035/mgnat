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

   Ada_Main_Program_Name : constant String := "_ada_gnatmake" & Ascii.NUL;
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
   u00001 : constant Version_32 := 16#6a889475#;
   u00002 : constant Version_32 := 16#00c1261a#;
   u00003 : constant Version_32 := 16#7d78a8a4#;
   u00004 : constant Version_32 := 16#ad6baf6a#;
   u00005 : constant Version_32 := 16#be5439c7#;
   u00006 : constant Version_32 := 16#aa3af9cd#;
   u00007 : constant Version_32 := 16#93682d6b#;
   u00008 : constant Version_32 := 16#b6b021b1#;
   u00009 : constant Version_32 := 16#9a1fe783#;
   u00010 : constant Version_32 := 16#d4faec2d#;
   u00011 : constant Version_32 := 16#f1c85ff7#;
   u00012 : constant Version_32 := 16#ccb45172#;
   u00013 : constant Version_32 := 16#234b18dc#;
   u00014 : constant Version_32 := 16#9c7dd3ea#;
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
   u00044 : constant Version_32 := 16#99fea50f#;
   u00045 : constant Version_32 := 16#5efe5ad2#;
   u00046 : constant Version_32 := 16#875b8507#;
   u00047 : constant Version_32 := 16#a70c0a76#;
   u00048 : constant Version_32 := 16#e75038bb#;
   u00049 : constant Version_32 := 16#b567060e#;
   u00050 : constant Version_32 := 16#205292dd#;
   u00051 : constant Version_32 := 16#8af86432#;
   u00052 : constant Version_32 := 16#672474ed#;
   u00053 : constant Version_32 := 16#511bc233#;
   u00054 : constant Version_32 := 16#f61ca988#;
   u00055 : constant Version_32 := 16#f13848f3#;
   u00056 : constant Version_32 := 16#b54a36ec#;
   u00057 : constant Version_32 := 16#08b09684#;
   u00058 : constant Version_32 := 16#e21510ce#;
   u00059 : constant Version_32 := 16#3098dba8#;
   u00060 : constant Version_32 := 16#ddf14e3f#;
   u00061 : constant Version_32 := 16#ad188429#;
   u00062 : constant Version_32 := 16#f7a1e876#;
   u00063 : constant Version_32 := 16#d369e518#;
   u00064 : constant Version_32 := 16#3e868797#;
   u00065 : constant Version_32 := 16#e3b93c8a#;
   u00066 : constant Version_32 := 16#9f9b2af0#;
   u00067 : constant Version_32 := 16#3a510ddd#;
   u00068 : constant Version_32 := 16#76399ffe#;
   u00069 : constant Version_32 := 16#e279999f#;
   u00070 : constant Version_32 := 16#2232b364#;
   u00071 : constant Version_32 := 16#8b145ea9#;
   u00072 : constant Version_32 := 16#b7140ae3#;
   u00073 : constant Version_32 := 16#0da8cc78#;
   u00074 : constant Version_32 := 16#2686046a#;
   u00075 : constant Version_32 := 16#c5c1ddd4#;
   u00076 : constant Version_32 := 16#1060e054#;
   u00077 : constant Version_32 := 16#97739b1f#;
   u00078 : constant Version_32 := 16#5a7526eb#;
   u00079 : constant Version_32 := 16#baad0baa#;
   u00080 : constant Version_32 := 16#f34abfa5#;
   u00081 : constant Version_32 := 16#dd797cbe#;
   u00082 : constant Version_32 := 16#24a455e0#;
   u00083 : constant Version_32 := 16#a9a791ad#;
   u00084 : constant Version_32 := 16#8ee2df36#;
   u00085 : constant Version_32 := 16#70c34603#;
   u00086 : constant Version_32 := 16#5e814ca3#;
   u00087 : constant Version_32 := 16#0ab0fda7#;
   u00088 : constant Version_32 := 16#80cfff51#;
   u00089 : constant Version_32 := 16#bdf51894#;
   u00090 : constant Version_32 := 16#a1683194#;
   u00091 : constant Version_32 := 16#df06034d#;
   u00092 : constant Version_32 := 16#0db1ebfb#;
   u00093 : constant Version_32 := 16#4488d9c9#;
   u00094 : constant Version_32 := 16#ccd92b43#;
   u00095 : constant Version_32 := 16#085a8af0#;
   u00096 : constant Version_32 := 16#63c7c118#;
   u00097 : constant Version_32 := 16#08f87e97#;
   u00098 : constant Version_32 := 16#373bd87b#;
   u00099 : constant Version_32 := 16#8ed3bc75#;
   u00100 : constant Version_32 := 16#4c526528#;
   u00101 : constant Version_32 := 16#46b815f8#;
   u00102 : constant Version_32 := 16#7a4dbec6#;
   u00103 : constant Version_32 := 16#8ac50a58#;
   u00104 : constant Version_32 := 16#f7462fea#;
   u00105 : constant Version_32 := 16#a510609d#;
   u00106 : constant Version_32 := 16#265530fd#;
   u00107 : constant Version_32 := 16#adbd6f2e#;
   u00108 : constant Version_32 := 16#fd3a7187#;
   u00109 : constant Version_32 := 16#657219e5#;
   u00110 : constant Version_32 := 16#82bc48e0#;
   u00111 : constant Version_32 := 16#be216a7e#;
   u00112 : constant Version_32 := 16#90ad3add#;
   u00113 : constant Version_32 := 16#ea18203a#;
   u00114 : constant Version_32 := 16#6c4f1ff8#;
   u00115 : constant Version_32 := 16#bf52a607#;
   u00116 : constant Version_32 := 16#b9780be6#;
   u00117 : constant Version_32 := 16#1612aea2#;
   u00118 : constant Version_32 := 16#2be8eeae#;
   u00119 : constant Version_32 := 16#3e207ceb#;
   u00120 : constant Version_32 := 16#846b7374#;
   u00121 : constant Version_32 := 16#730b3bc4#;
   u00122 : constant Version_32 := 16#69e36cad#;
   u00123 : constant Version_32 := 16#7073741b#;
   u00124 : constant Version_32 := 16#f10c91e1#;
   u00125 : constant Version_32 := 16#17c28ba0#;
   u00126 : constant Version_32 := 16#80ee477b#;
   u00127 : constant Version_32 := 16#6b4b9336#;
   u00128 : constant Version_32 := 16#a6787f6a#;
   u00129 : constant Version_32 := 16#d4e80933#;
   u00130 : constant Version_32 := 16#00ff1e20#;
   u00131 : constant Version_32 := 16#d6bc0475#;
   u00132 : constant Version_32 := 16#9cbd0982#;
   u00133 : constant Version_32 := 16#83fd6b24#;
   u00134 : constant Version_32 := 16#c7643603#;
   u00135 : constant Version_32 := 16#370fa207#;
   u00136 : constant Version_32 := 16#5caec52a#;
   u00137 : constant Version_32 := 16#5b40561d#;
   u00138 : constant Version_32 := 16#9396f020#;
   u00139 : constant Version_32 := 16#3549faa8#;
   u00140 : constant Version_32 := 16#ba8732df#;
   u00141 : constant Version_32 := 16#b87e0446#;
   u00142 : constant Version_32 := 16#28b2a5e6#;
   u00143 : constant Version_32 := 16#f04ed6e3#;
   u00144 : constant Version_32 := 16#81680562#;
   u00145 : constant Version_32 := 16#6cb07f45#;
   u00146 : constant Version_32 := 16#b13a3599#;
   u00147 : constant Version_32 := 16#c6d566f9#;
   u00148 : constant Version_32 := 16#9373097b#;
   u00149 : constant Version_32 := 16#8d872683#;
   u00150 : constant Version_32 := 16#ddd77462#;
   u00151 : constant Version_32 := 16#93fb3597#;
   u00152 : constant Version_32 := 16#7551bb71#;
   u00153 : constant Version_32 := 16#a76533e0#;
   u00154 : constant Version_32 := 16#ddf52d87#;
   u00155 : constant Version_32 := 16#2c444a3c#;
   u00156 : constant Version_32 := 16#09c89821#;
   u00157 : constant Version_32 := 16#bd42b7c0#;
   u00158 : constant Version_32 := 16#5066734a#;
   u00159 : constant Version_32 := 16#99af6bc5#;
   u00160 : constant Version_32 := 16#0aabc2b5#;
   u00161 : constant Version_32 := 16#ed92f8eb#;
   u00162 : constant Version_32 := 16#76bf72cb#;
   u00163 : constant Version_32 := 16#4fb70c40#;
   u00164 : constant Version_32 := 16#df794e1c#;
   u00165 : constant Version_32 := 16#3d0c24a3#;
   u00166 : constant Version_32 := 16#cc1134cf#;
   u00167 : constant Version_32 := 16#0d7da1e0#;
   u00168 : constant Version_32 := 16#b19439a7#;
   u00169 : constant Version_32 := 16#60144c8b#;
   u00170 : constant Version_32 := 16#1bc9f0e1#;
   u00171 : constant Version_32 := 16#b508dc1a#;
   u00172 : constant Version_32 := 16#bc5c2342#;
   u00173 : constant Version_32 := 16#52acdf2c#;
   u00174 : constant Version_32 := 16#04e247f8#;
   u00175 : constant Version_32 := 16#6c2ffb17#;
   u00176 : constant Version_32 := 16#29346572#;
   u00177 : constant Version_32 := 16#a91ece26#;
   u00178 : constant Version_32 := 16#6370ea61#;
   u00179 : constant Version_32 := 16#0d2e6c3e#;
   u00180 : constant Version_32 := 16#9714d691#;
   u00181 : constant Version_32 := 16#d2909f23#;
   u00182 : constant Version_32 := 16#36479335#;
   u00183 : constant Version_32 := 16#dc743fe3#;
   u00184 : constant Version_32 := 16#f00d9b80#;
   u00185 : constant Version_32 := 16#b5eb9d85#;
   u00186 : constant Version_32 := 16#e84eaef1#;
   u00187 : constant Version_32 := 16#ddd0112e#;
   u00188 : constant Version_32 := 16#44d0ba9e#;
   u00189 : constant Version_32 := 16#656c1951#;
   u00190 : constant Version_32 := 16#c69d713c#;
   u00191 : constant Version_32 := 16#65af5a34#;
   u00192 : constant Version_32 := 16#265101de#;
   u00193 : constant Version_32 := 16#fe654942#;
   u00194 : constant Version_32 := 16#a4db386c#;
   u00195 : constant Version_32 := 16#2274d34a#;
   u00196 : constant Version_32 := 16#7e457e52#;
   u00197 : constant Version_32 := 16#e6d4c046#;
   u00198 : constant Version_32 := 16#bd4079c3#;
   u00199 : constant Version_32 := 16#dc138eb7#;
   u00200 : constant Version_32 := 16#ae4a35f3#;
   u00201 : constant Version_32 := 16#07111e30#;
   u00202 : constant Version_32 := 16#e3e85499#;
   u00203 : constant Version_32 := 16#c5cf7e91#;
   u00204 : constant Version_32 := 16#066d380e#;
   u00205 : constant Version_32 := 16#f635b278#;
   u00206 : constant Version_32 := 16#bbd50486#;
   u00207 : constant Version_32 := 16#1546c6c8#;
   u00208 : constant Version_32 := 16#77317927#;
   u00209 : constant Version_32 := 16#2977527a#;
   u00210 : constant Version_32 := 16#183dd40d#;
   u00211 : constant Version_32 := 16#31fe68b1#;
   u00212 : constant Version_32 := 16#107b0e9b#;
   u00213 : constant Version_32 := 16#4b839881#;
   u00214 : constant Version_32 := 16#70a748c7#;
   u00215 : constant Version_32 := 16#1832f884#;
   u00216 : constant Version_32 := 16#2f1e5f93#;
   u00217 : constant Version_32 := 16#7f2e1969#;
   u00218 : constant Version_32 := 16#a9e20397#;
   u00219 : constant Version_32 := 16#472cc1a7#;
   u00220 : constant Version_32 := 16#a897959c#;
   u00221 : constant Version_32 := 16#2e89c0f7#;
   u00222 : constant Version_32 := 16#be3179a1#;
   u00223 : constant Version_32 := 16#8abb22cf#;
   u00224 : constant Version_32 := 16#267ea2b6#;
   u00225 : constant Version_32 := 16#56af4987#;
   u00226 : constant Version_32 := 16#f9da4a9b#;
   u00227 : constant Version_32 := 16#37e2f16d#;
   u00228 : constant Version_32 := 16#bf50046b#;
   u00229 : constant Version_32 := 16#c8e6875a#;
   u00230 : constant Version_32 := 16#22c535c9#;
   u00231 : constant Version_32 := 16#121203c3#;
   u00232 : constant Version_32 := 16#ae681174#;
   u00233 : constant Version_32 := 16#057b5679#;
   u00234 : constant Version_32 := 16#bd7f57ec#;
   u00235 : constant Version_32 := 16#bd5cd6ad#;
   u00236 : constant Version_32 := 16#b2ac9f5f#;
   u00237 : constant Version_32 := 16#b262f628#;
   u00238 : constant Version_32 := 16#16b0b376#;
   u00239 : constant Version_32 := 16#0a3f4443#;
   u00240 : constant Version_32 := 16#75dd6b60#;
   u00241 : constant Version_32 := 16#1d7aa3cc#;
   u00242 : constant Version_32 := 16#5c982aa7#;
   u00243 : constant Version_32 := 16#b18fb2f3#;
   u00244 : constant Version_32 := 16#3557620d#;
   u00245 : constant Version_32 := 16#742c6968#;
   u00246 : constant Version_32 := 16#003dfd1c#;
   u00247 : constant Version_32 := 16#bcbcb795#;
   u00248 : constant Version_32 := 16#8a20ed8e#;
   u00249 : constant Version_32 := 16#07eff617#;
   u00250 : constant Version_32 := 16#dba4623d#;
   u00251 : constant Version_32 := 16#6d67ef9a#;
   u00252 : constant Version_32 := 16#6f1ed443#;
   u00253 : constant Version_32 := 16#0496f9e3#;
   u00254 : constant Version_32 := 16#83bba1ee#;
   u00255 : constant Version_32 := 16#554cfe41#;
   u00256 : constant Version_32 := 16#1aa3c245#;
   u00257 : constant Version_32 := 16#cbcb5615#;
   u00258 : constant Version_32 := 16#01b2a8a4#;
   u00259 : constant Version_32 := 16#9fc52d34#;
   u00260 : constant Version_32 := 16#df35cd24#;
   u00261 : constant Version_32 := 16#fb6b01b9#;
   u00262 : constant Version_32 := 16#dbaa442d#;
   u00263 : constant Version_32 := 16#5c1fc972#;
   u00264 : constant Version_32 := 16#2d905750#;

   pragma Export (C, u00001, "gnatmakeB");
   pragma Export (C, u00002, "gnatmakeS");
   pragma Export (C, u00003, "system__standard_libraryB");
   pragma Export (C, u00004, "system__standard_libraryS");
   pragma Export (C, u00005, "gnatvsnB");
   pragma Export (C, u00006, "gnatvsnS");
   pragma Export (C, u00007, "system__secondary_stackB");
   pragma Export (C, u00008, "system__secondary_stackS");
   pragma Export (C, u00009, "systemS");
   pragma Export (C, u00010, "system__parametersB");
   pragma Export (C, u00011, "system__parametersS");
   pragma Export (C, u00012, "system__soft_linksB");
   pragma Export (C, u00013, "system__soft_linksS");
   pragma Export (C, u00014, "adaS");
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
   pragma Export (C, u00044, "makeB");
   pragma Export (C, u00045, "makeS");
   pragma Export (C, u00046, "ada__command_lineB");
   pragma Export (C, u00047, "ada__command_lineS");
   pragma Export (C, u00048, "aliB");
   pragma Export (C, u00049, "aliS");
   pragma Export (C, u00050, "butilB");
   pragma Export (C, u00051, "butilS");
   pragma Export (C, u00052, "hostparmS");
   pragma Export (C, u00053, "typesB");
   pragma Export (C, u00054, "typesS");
   pragma Export (C, u00055, "system__compare_array_unsigned_8B");
   pragma Export (C, u00056, "system__compare_array_unsigned_8S");
   pragma Export (C, u00057, "system__address_operationsB");
   pragma Export (C, u00058, "system__address_operationsS");
   pragma Export (C, u00059, "nametB");
   pragma Export (C, u00060, "nametS");
   pragma Export (C, u00061, "debugB");
   pragma Export (C, u00062, "debugS");
   pragma Export (C, u00063, "optB");
   pragma Export (C, u00064, "optS");
   pragma Export (C, u00065, "tree_ioB");
   pragma Export (C, u00066, "tree_ioS");
   pragma Export (C, u00067, "outputB");
   pragma Export (C, u00068, "outputS");
   pragma Export (C, u00069, "gnatS");
   pragma Export (C, u00070, "gnat__os_libB");
   pragma Export (C, u00071, "gnat__os_libS");
   pragma Export (C, u00072, "system__case_utilB");
   pragma Export (C, u00073, "system__case_utilS");
   pragma Export (C, u00074, "system__crtlS");
   pragma Export (C, u00075, "gnat__stringsB");
   pragma Export (C, u00076, "gnat__stringsS");
   pragma Export (C, u00077, "widecharB");
   pragma Export (C, u00078, "widecharS");
   pragma Export (C, u00079, "allocS");
   pragma Export (C, u00080, "tableB");
   pragma Export (C, u00081, "tableS");
   pragma Export (C, u00082, "system__memoryB");
   pragma Export (C, u00083, "system__memoryS");
   pragma Export (C, u00084, "fnameB");
   pragma Export (C, u00085, "fnameS");
   pragma Export (C, u00086, "osintB");
   pragma Export (C, u00087, "osintS");
   pragma Export (C, u00088, "fmapB");
   pragma Export (C, u00089, "fmapS");
   pragma Export (C, u00090, "gnat__htableB");
   pragma Export (C, u00091, "gnat__htableS");
   pragma Export (C, u00092, "sdefaultB");
   pragma Export (C, u00093, "sdefaultS");
   pragma Export (C, u00094, "gnat__case_utilB");
   pragma Export (C, u00095, "gnat__case_utilS");
   pragma Export (C, u00096, "system__string_opsB");
   pragma Export (C, u00097, "system__string_opsS");
   pragma Export (C, u00098, "system__string_ops_concat_3B");
   pragma Export (C, u00099, "system__string_ops_concat_3S");
   pragma Export (C, u00100, "system__string_ops_concat_4B");
   pragma Export (C, u00101, "system__string_ops_concat_4S");
   pragma Export (C, u00102, "casingB");
   pragma Export (C, u00103, "casingS");
   pragma Export (C, u00104, "csetsB");
   pragma Export (C, u00105, "csetsS");
   pragma Export (C, u00106, "ridentS");
   pragma Export (C, u00107, "ali__utilB");
   pragma Export (C, u00108, "ali__utilS");
   pragma Export (C, u00109, "binderrB");
   pragma Export (C, u00110, "binderrS");
   pragma Export (C, u00111, "libB");
   pragma Export (C, u00112, "libS");
   pragma Export (C, u00113, "atreeB");
   pragma Export (C, u00114, "atreeS");
   pragma Export (C, u00115, "elistsB");
   pragma Export (C, u00116, "elistsS");
   pragma Export (C, u00117, "nlistsB");
   pragma Export (C, u00118, "nlistsS");
   pragma Export (C, u00119, "sinfoB");
   pragma Export (C, u00120, "sinfoS");
   pragma Export (C, u00121, "uintpB");
   pragma Export (C, u00122, "uintpS");
   pragma Export (C, u00123, "urealpB");
   pragma Export (C, u00124, "urealpS");
   pragma Export (C, u00125, "sinputB");
   pragma Export (C, u00126, "sinputS");
   pragma Export (C, u00127, "system__img_enumB");
   pragma Export (C, u00128, "system__img_enumS");
   pragma Export (C, u00129, "einfoB");
   pragma Export (C, u00130, "einfoS");
   pragma Export (C, u00131, "standB");
   pragma Export (C, u00132, "standS");
   pragma Export (C, u00133, "snamesB");
   pragma Export (C, u00134, "snamesS");
   pragma Export (C, u00135, "gnat__heap_sort_aB");
   pragma Export (C, u00136, "gnat__heap_sort_aS");
   pragma Export (C, u00137, "stringtB");
   pragma Export (C, u00138, "stringtS");
   pragma Export (C, u00139, "unameB");
   pragma Export (C, u00140, "unameS");
   pragma Export (C, u00141, "scansB");
   pragma Export (C, u00142, "scansS");
   pragma Export (C, u00143, "scngB");
   pragma Export (C, u00144, "scngS");
   pragma Export (C, u00145, "err_varsS");
   pragma Export (C, u00146, "gnat__utf_32B");
   pragma Export (C, u00147, "gnat__utf_32S");
   pragma Export (C, u00148, "styleswB");
   pragma Export (C, u00149, "styleswS");
   pragma Export (C, u00150, "system__crc32B");
   pragma Export (C, u00151, "system__crc32S");
   pragma Export (C, u00152, "stylegB");
   pragma Export (C, u00153, "stylegS");
   pragma Export (C, u00154, "sinput__cB");
   pragma Export (C, u00155, "sinput__cS");
   pragma Export (C, u00156, "fname__sfB");
   pragma Export (C, u00157, "fname__sfS");
   pragma Export (C, u00158, "fname__ufB");
   pragma Export (C, u00159, "fname__ufS");
   pragma Export (C, u00160, "krunchB");
   pragma Export (C, u00161, "krunchS");
   pragma Export (C, u00162, "sfn_scanB");
   pragma Export (C, u00163, "sfn_scanS");
   pragma Export (C, u00164, "gnat__directory_operationsB");
   pragma Export (C, u00165, "gnat__directory_operationsS");
   pragma Export (C, u00166, "ada__charactersS");
   pragma Export (C, u00167, "ada__characters__handlingB");
   pragma Export (C, u00168, "ada__characters__handlingS");
   pragma Export (C, u00169, "ada__characters__latin_1S");
   pragma Export (C, u00170, "ada__stringsS");
   pragma Export (C, u00171, "ada__strings__mapsB");
   pragma Export (C, u00172, "ada__strings__mapsS");
   pragma Export (C, u00173, "system__bit_opsB");
   pragma Export (C, u00174, "system__bit_opsS");
   pragma Export (C, u00175, "ada__strings__maps__constantsS");
   pragma Export (C, u00176, "ada__strings__fixedB");
   pragma Export (C, u00177, "ada__strings__fixedS");
   pragma Export (C, u00178, "ada__strings__searchB");
   pragma Export (C, u00179, "ada__strings__searchS");
   pragma Export (C, u00180, "ada__finalization__list_controllerB");
   pragma Export (C, u00181, "ada__finalization__list_controllerS");
   pragma Export (C, u00182, "ada__finalizationB");
   pragma Export (C, u00183, "ada__finalizationS");
   pragma Export (C, u00184, "system__finalization_rootB");
   pragma Export (C, u00185, "system__finalization_rootS");
   pragma Export (C, u00186, "ada__streamsS");
   pragma Export (C, u00187, "ada__tagsB");
   pragma Export (C, u00188, "ada__tagsS");
   pragma Export (C, u00189, "system__finalization_implementationB");
   pragma Export (C, u00190, "system__finalization_implementationS");
   pragma Export (C, u00191, "system__restrictionsB");
   pragma Export (C, u00192, "system__restrictionsS");
   pragma Export (C, u00193, "system__stream_attributesB");
   pragma Export (C, u00194, "system__stream_attributesS");
   pragma Export (C, u00195, "ada__io_exceptionsS");
   pragma Export (C, u00196, "makeusgB");
   pragma Export (C, u00197, "makeusgS");
   pragma Export (C, u00198, "usageB");
   pragma Export (C, u00199, "usageS");
   pragma Export (C, u00200, "makeutlB");
   pragma Export (C, u00201, "makeutlS");
   pragma Export (C, u00202, "prjB");
   pragma Export (C, u00203, "prjS");
   pragma Export (C, u00204, "prj__attrB");
   pragma Export (C, u00205, "prj__attrS");
   pragma Export (C, u00206, "prj__comS");
   pragma Export (C, u00207, "prj__envB");
   pragma Export (C, u00208, "prj__envS");
   pragma Export (C, u00209, "system__img_intB");
   pragma Export (C, u00210, "system__img_intS");
   pragma Export (C, u00211, "tempdirB");
   pragma Export (C, u00212, "tempdirS");
   pragma Export (C, u00213, "prj__errB");
   pragma Export (C, u00214, "prj__errS");
   pragma Export (C, u00215, "errutilB");
   pragma Export (C, u00216, "errutilS");
   pragma Export (C, u00217, "erroutcB");
   pragma Export (C, u00218, "erroutcS");
   pragma Export (C, u00219, "targparmB");
   pragma Export (C, u00220, "targparmS");
   pragma Export (C, u00221, "gnat__dynamic_htablesB");
   pragma Export (C, u00222, "gnat__dynamic_htablesS");
   pragma Export (C, u00223, "prj__extB");
   pragma Export (C, u00224, "prj__extS");
   pragma Export (C, u00225, "system__string_ops_concat_5B");
   pragma Export (C, u00226, "system__string_ops_concat_5S");
   pragma Export (C, u00227, "prj__utilB");
   pragma Export (C, u00228, "prj__utilS");
   pragma Export (C, u00229, "mlibB");
   pragma Export (C, u00230, "mlibS");
   pragma Export (C, u00231, "mlib__utlB");
   pragma Export (C, u00232, "mlib__utlS");
   pragma Export (C, u00233, "mlib__filB");
   pragma Export (C, u00234, "mlib__filS");
   pragma Export (C, u00235, "mlib__tgtB");
   pragma Export (C, u00236, "mlib__tgtS");
   pragma Export (C, u00237, "mlib__prjB");
   pragma Export (C, u00238, "mlib__prjS");
   pragma Export (C, u00239, "interfaces__c_streamsB");
   pragma Export (C, u00240, "interfaces__c_streamsS");
   pragma Export (C, u00241, "sinput__pB");
   pragma Export (C, u00242, "sinput__pS");
   pragma Export (C, u00243, "switchB");
   pragma Export (C, u00244, "switchS");
   pragma Export (C, u00245, "osint__mB");
   pragma Export (C, u00246, "osint__mS");
   pragma Export (C, u00247, "prj__parsB");
   pragma Export (C, u00248, "prj__parsS");
   pragma Export (C, u00249, "prj__partB");
   pragma Export (C, u00250, "prj__partS");
   pragma Export (C, u00251, "prj__dectB");
   pragma Export (C, u00252, "prj__dectS");
   pragma Export (C, u00253, "prj__attr__pmB");
   pragma Export (C, u00254, "prj__attr__pmS");
   pragma Export (C, u00255, "prj__strtB");
   pragma Export (C, u00256, "prj__strtS");
   pragma Export (C, u00257, "prj__treeB");
   pragma Export (C, u00258, "prj__treeS");
   pragma Export (C, u00259, "prj__procB");
   pragma Export (C, u00260, "prj__procS");
   pragma Export (C, u00261, "prj__nmscB");
   pragma Export (C, u00262, "prj__nmscS");
   pragma Export (C, u00263, "switch__mB");
   pragma Export (C, u00264, "switch__mS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.handling%s
   --  ada.characters.latin_1%s
   --  ada.command_line%s
   --  gnat%s
   --  gnat.dynamic_htables%s
   --  gnat.dynamic_htables%b
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
   --  system.bit_ops%s
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
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.pure_exceptions%s
   --  system.restrictions%s
   --  system.restrictions%b
   --  system.standard_library%s
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.compare_array_unsigned_8%b
   --  system.secondary_stack%s
   --  system.img_int%b
   --  system.img_enum%b
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
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.tags%s
   --  gnat.os_lib%s
   --  gnat.os_lib%b
   --  system.assertions%s
   --  system.assertions%b
   --  ada.streams%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.unsigned_types%s
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
   --  gnat.directory_operations%s
   --  gnat.directory_operations%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.tags%b
   --  ada.exceptions%b
   --  alloc%s
   --  debug%s
   --  debug%b
   --  gnatmake%s
   --  gnatvsn%s
   --  gnatvsn%b
   --  makeusg%s
   --  rident%s
   --  sfn_scan%s
   --  sfn_scan%b
   --  types%s
   --  types%b
   --  binderr%s
   --  butil%s
   --  casing%s
   --  elists%s
   --  fmap%s
   --  fname%s
   --  fname.sf%s
   --  fname.uf%s
   --  hostparm%s
   --  krunch%s
   --  krunch%b
   --  nlists%s
   --  opt%s
   --  csets%s
   --  csets%b
   --  osint%s
   --  mlib%s
   --  mlib.fil%s
   --  mlib.utl%s
   --  osint.m%s
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
   --  switch%s
   --  switch%b
   --  switch.m%s
   --  targparm%s
   --  tempdir%s
   --  tree_io%s
   --  tree_io%b
   --  opt%b
   --  table%s
   --  table%b
   --  switch.m%b
   --  elists%b
   --  ali%s
   --  ali.util%s
   --  erroutc%s
   --  lib%s
   --  make%s
   --  gnatmake%b
   --  namet%s
   --  ali%b
   --  tempdir%b
   --  targparm%b
   --  stringt%b
   --  snames%b
   --  mlib%b
   --  osint%b
   --  fname.sf%b
   --  fname%b
   --  fmap%b
   --  butil%b
   --  binderr%b
   --  sinput%s
   --  sinput.c%s
   --  sinput.c%b
   --  uintp%s
   --  uintp%b
   --  err_vars%s
   --  erroutc%b
   --  uname%s
   --  urealp%s
   --  urealp%b
   --  einfo%s
   --  scans%s
   --  scans%b
   --  styleg%b
   --  prj%s
   --  makeutl%s
   --  mlib.prj%s
   --  mlib.tgt%s
   --  mlib.tgt%b
   --  mlib.utl%b
   --  mlib.fil%b
   --  prj.attr%s
   --  prj.attr.pm%s
   --  prj.attr.pm%b
   --  prj.com%s
   --  prj.attr%b
   --  prj.env%s
   --  prj.env%b
   --  prj.ext%s
   --  prj.nmsc%s
   --  prj.pars%s
   --  prj.tree%s
   --  prj.dect%s
   --  prj.part%s
   --  prj.proc%s
   --  prj.strt%s
   --  prj.util%s
   --  prj.util%b
   --  makeutl%b
   --  sinfo%s
   --  atree%s
   --  atree%b
   --  sinfo%b
   --  uname%b
   --  nlists%b
   --  sinput.p%s
   --  mlib.prj%b
   --  usage%s
   --  usage%b
   --  makeusg%b
   --  widechar%s
   --  widechar%b
   --  sinput%b
   --  namet%b
   --  prj.ext%b
   --  make%b
   --  scng%b
   --  osint.m%b
   --  fname.uf%b
   --  casing%b
   --  ali.util%b
   --  errutil%s
   --  errutil%b
   --  prj.err%s
   --  prj.err%b
   --  sinput.p%b
   --  prj.strt%b
   --  prj.proc%b
   --  prj.part%b
   --  prj.dect%b
   --  prj.tree%b
   --  prj.pars%b
   --  prj.nmsc%b
   --  prj%b
   --  stand%s
   --  stand%b
   --  einfo%b
   --  lib%b
   --  END ELABORATION ORDER

end ada_main;
