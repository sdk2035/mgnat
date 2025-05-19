with System;
with System.Standard_Library;
package ada_test_read_only is
   pragma Warnings (Off);

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#5bdf2a05#;
   u00002 : constant Version_32 := 16#db52b687#;
   u00003 : constant Version_32 := 16#93251449#;
   u00004 : constant Version_32 := 16#7cd43be2#;
   u00005 : constant Version_32 := 16#daf6a163#;
   u00006 : constant Version_32 := 16#08aaf4bc#;
   u00007 : constant Version_32 := 16#7df3772d#;
   u00008 : constant Version_32 := 16#a9865cec#;
   u00009 : constant Version_32 := 16#95451da4#;
   u00010 : constant Version_32 := 16#59269c14#;
   u00011 : constant Version_32 := 16#b1c88a44#;
   u00012 : constant Version_32 := 16#15131902#;
   u00013 : constant Version_32 := 16#9265b782#;
   u00014 : constant Version_32 := 16#2ddca3df#;
   u00015 : constant Version_32 := 16#79ae1914#;
   u00016 : constant Version_32 := 16#c21cf000#;
   u00017 : constant Version_32 := 16#edadc47d#;
   u00018 : constant Version_32 := 16#1ad5c19b#;
   u00019 : constant Version_32 := 16#c905fe7e#;
   u00020 : constant Version_32 := 16#1957a8a8#;
   u00021 : constant Version_32 := 16#1d22210e#;
   u00022 : constant Version_32 := 16#eeed5e9e#;
   u00023 : constant Version_32 := 16#279b6d6d#;
   u00024 : constant Version_32 := 16#b6535879#;
   u00025 : constant Version_32 := 16#7b3ea502#;
   u00026 : constant Version_32 := 16#821f460d#;
   u00027 : constant Version_32 := 16#53ef6a77#;
   u00028 : constant Version_32 := 16#d224419d#;
   u00029 : constant Version_32 := 16#e5a3b236#;
   u00030 : constant Version_32 := 16#ee50fcf0#;
   u00031 : constant Version_32 := 16#6200293f#;
   u00032 : constant Version_32 := 16#1b22a04f#;
   u00033 : constant Version_32 := 16#f299cd2b#;
   u00034 : constant Version_32 := 16#d9d819c9#;
   u00035 : constant Version_32 := 16#e819b848#;
   u00036 : constant Version_32 := 16#3112ad4d#;
   u00037 : constant Version_32 := 16#d8560a2e#;
   u00038 : constant Version_32 := 16#8bbb7125#;
   u00039 : constant Version_32 := 16#334ce3ae#;
   u00040 : constant Version_32 := 16#ed1480e2#;
   u00041 : constant Version_32 := 16#6406efc7#;
   u00042 : constant Version_32 := 16#cacad10a#;
   u00043 : constant Version_32 := 16#5d66ec68#;
   u00044 : constant Version_32 := 16#26ab6f2c#;

   pragma Export (C, u00001, "test_read_onlyB");
   pragma Export (C, u00002, "system__standard_libraryB");
   pragma Export (C, u00003, "system__standard_libraryS");
   pragma Export (C, u00004, "adaS");
   pragma Export (C, u00005, "ada__text_ioB");
   pragma Export (C, u00006, "ada__text_ioS");
   pragma Export (C, u00007, "ada__streamsS");
   pragma Export (C, u00008, "ada__tagsB");
   pragma Export (C, u00009, "ada__tagsS");
   pragma Export (C, u00010, "ada__exceptionsB");
   pragma Export (C, u00011, "ada__exceptionsS");
   pragma Export (C, u00012, "systemS");
   pragma Export (C, u00013, "system__secondary_stackB");
   pragma Export (C, u00014, "system__secondary_stackS");
   pragma Export (C, u00015, "system__soft_linksB");
   pragma Export (C, u00016, "system__soft_linksS");
   pragma Export (C, u00017, "system__parametersB");
   pragma Export (C, u00018, "system__parametersS");
   pragma Export (C, u00019, "system__stack_checkingB");
   pragma Export (C, u00020, "system__stack_checkingS");
   pragma Export (C, u00021, "system__storage_elementsB");
   pragma Export (C, u00022, "system__storage_elementsS");
   pragma Export (C, u00023, "interfacesS");
   pragma Export (C, u00024, "interfaces__c_streamsB");
   pragma Export (C, u00025, "interfaces__c_streamsS");
   pragma Export (C, u00026, "system__file_ioB");
   pragma Export (C, u00027, "system__file_ioS");
   pragma Export (C, u00028, "ada__finalizationB");
   pragma Export (C, u00029, "ada__finalizationS");
   pragma Export (C, u00030, "system__finalization_rootB");
   pragma Export (C, u00031, "system__finalization_rootS");
   pragma Export (C, u00032, "system__stream_attributesB");
   pragma Export (C, u00033, "system__stream_attributesS");
   pragma Export (C, u00034, "ada__io_exceptionsS");
   pragma Export (C, u00035, "system__unsigned_typesS");
   pragma Export (C, u00036, "system__finalization_implementationB");
   pragma Export (C, u00037, "system__finalization_implementationS");
   pragma Export (C, u00038, "system__file_control_blockS");
   pragma Export (C, u00039, "ada__finalization__list_controllerB");
   pragma Export (C, u00040, "ada__finalization__list_controllerS");
   pragma Export (C, u00041, "system__string_opsB");
   pragma Export (C, u00042, "system__string_opsS");
   pragma Export (C, u00043, "system__memoryB");
   pragma Export (C, u00044, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.io_exceptions%s
   --  interfaces%s
   --  system%s
   --  ada.exceptions%s
   --  system.parameters%s
   --  system.parameters%b
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.secondary_stack%s
   --  system.secondary_stack%b
   --  system.standard_library%s
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.soft_links%s
   --  system.soft_links%b
   --  ada.exceptions%b
   --  ada.tags%s
   --  ada.tags%b
   --  ada.streams%s
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.string_ops%s
   --  system.string_ops%b
   --  system.unsigned_types%s
   --  system.stream_attributes%s
   --  system.stream_attributes%b
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  system.finalization_implementation%s
   --  system.finalization_implementation%b
   --  ada.finalization%s
   --  ada.finalization%b
   --  ada.finalization.list_controller%s
   --  ada.finalization.list_controller%b
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.file_io%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  test_read_only%b
   --  END ELABORATION ORDER

end ada_test_read_only;
