with System;
with System.Standard_Library;
package ada_test_dll1 is
   pragma Warnings (Off);

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#163479f7#;
   u00002 : constant Version_32 := 16#576e3b8f#;
   u00003 : constant Version_32 := 16#db52b687#;
   u00004 : constant Version_32 := 16#93251449#;
   u00005 : constant Version_32 := 16#59269c14#;
   u00006 : constant Version_32 := 16#b1c88a44#;
   u00007 : constant Version_32 := 16#7cd43be2#;
   u00008 : constant Version_32 := 16#15131902#;
   u00009 : constant Version_32 := 16#9265b782#;
   u00010 : constant Version_32 := 16#2ddca3df#;
   u00011 : constant Version_32 := 16#79ae1914#;
   u00012 : constant Version_32 := 16#c21cf000#;
   u00013 : constant Version_32 := 16#edadc47d#;
   u00014 : constant Version_32 := 16#1ad5c19b#;
   u00015 : constant Version_32 := 16#c905fe7e#;
   u00016 : constant Version_32 := 16#1957a8a8#;
   u00017 : constant Version_32 := 16#1d22210e#;
   u00018 : constant Version_32 := 16#eeed5e9e#;
   u00019 : constant Version_32 := 16#82dcb036#;
   u00020 : constant Version_32 := 16#2b8550c1#;
   u00021 : constant Version_32 := 16#a9865cec#;
   u00022 : constant Version_32 := 16#95451da4#;
   u00023 : constant Version_32 := 16#91acadb9#;
   u00024 : constant Version_32 := 16#600f9203#;
   u00025 : constant Version_32 := 16#bfad429d#;
   u00026 : constant Version_32 := 16#91346459#;
   u00027 : constant Version_32 := 16#ce1981ca#;
   u00028 : constant Version_32 := 16#6ec1a279#;
   u00029 : constant Version_32 := 16#e819b848#;
   u00030 : constant Version_32 := 16#9460d794#;
   u00031 : constant Version_32 := 16#0c82b7db#;
   u00032 : constant Version_32 := 16#48909fc4#;
   u00033 : constant Version_32 := 16#edd3eeb8#;
   u00034 : constant Version_32 := 16#6758080f#;
   u00035 : constant Version_32 := 16#474988a0#;
   u00036 : constant Version_32 := 16#478bb451#;
   u00037 : constant Version_32 := 16#22266eaa#;
   u00038 : constant Version_32 := 16#e499f4d1#;
   u00039 : constant Version_32 := 16#5aa6731c#;
   u00040 : constant Version_32 := 16#2b1c5680#;
   u00041 : constant Version_32 := 16#9fd25450#;
   u00042 : constant Version_32 := 16#279b6d6d#;
   u00043 : constant Version_32 := 16#202bad71#;
   u00044 : constant Version_32 := 16#ed330cf8#;
   u00045 : constant Version_32 := 16#b90d21aa#;
   u00046 : constant Version_32 := 16#7db3cc8b#;
   u00047 : constant Version_32 := 16#5c48db7c#;
   u00048 : constant Version_32 := 16#cc94aa9e#;
   u00049 : constant Version_32 := 16#3c37445d#;
   u00050 : constant Version_32 := 16#90c2ea58#;
   u00051 : constant Version_32 := 16#31cbd98b#;
   u00052 : constant Version_32 := 16#a53b0dc6#;
   u00053 : constant Version_32 := 16#fa864fc0#;
   u00054 : constant Version_32 := 16#0cf330ad#;
   u00055 : constant Version_32 := 16#2923ffba#;
   u00056 : constant Version_32 := 16#11a9e2d4#;
   u00057 : constant Version_32 := 16#a0569c18#;
   u00058 : constant Version_32 := 16#db7e22e6#;
   u00059 : constant Version_32 := 16#4e996fef#;
   u00060 : constant Version_32 := 16#ffb57456#;
   u00061 : constant Version_32 := 16#30fb41e8#;
   u00062 : constant Version_32 := 16#b25ef9eb#;
   u00063 : constant Version_32 := 16#83ef160c#;
   u00064 : constant Version_32 := 16#688c4107#;
   u00065 : constant Version_32 := 16#cbaddc48#;
   u00066 : constant Version_32 := 16#ddae6b88#;
   u00067 : constant Version_32 := 16#d224419d#;
   u00068 : constant Version_32 := 16#e5a3b236#;
   u00069 : constant Version_32 := 16#ee50fcf0#;
   u00070 : constant Version_32 := 16#6200293f#;
   u00071 : constant Version_32 := 16#7df3772d#;
   u00072 : constant Version_32 := 16#1b22a04f#;
   u00073 : constant Version_32 := 16#f299cd2b#;
   u00074 : constant Version_32 := 16#d9d819c9#;
   u00075 : constant Version_32 := 16#3112ad4d#;
   u00076 : constant Version_32 := 16#d8560a2e#;
   u00077 : constant Version_32 := 16#334ce3ae#;
   u00078 : constant Version_32 := 16#ed1480e2#;
   u00079 : constant Version_32 := 16#648e1e09#;
   u00080 : constant Version_32 := 16#2c8ebeb2#;
   u00081 : constant Version_32 := 16#b4b146c8#;
   u00082 : constant Version_32 := 16#07cfd13e#;
   u00083 : constant Version_32 := 16#fd4c5529#;
   u00084 : constant Version_32 := 16#01e5f255#;
   u00085 : constant Version_32 := 16#107d5d07#;
   u00086 : constant Version_32 := 16#a07d81d4#;
   u00087 : constant Version_32 := 16#2fa6af38#;
   u00088 : constant Version_32 := 16#e25b4d93#;
   u00089 : constant Version_32 := 16#39c58472#;
   u00090 : constant Version_32 := 16#eb1142da#;
   u00091 : constant Version_32 := 16#8b4433fc#;
   u00092 : constant Version_32 := 16#a2e24fa8#;
   u00093 : constant Version_32 := 16#5d66ec68#;
   u00094 : constant Version_32 := 16#26ab6f2c#;

   pragma Export (C, u00001, "test_dll1B");
   pragma Export (C, u00002, "test_dll1S");
   pragma Export (C, u00003, "system__standard_libraryB");
   pragma Export (C, u00004, "system__standard_libraryS");
   pragma Export (C, u00005, "ada__exceptionsB");
   pragma Export (C, u00006, "ada__exceptionsS");
   pragma Export (C, u00007, "adaS");
   pragma Export (C, u00008, "systemS");
   pragma Export (C, u00009, "system__secondary_stackB");
   pragma Export (C, u00010, "system__secondary_stackS");
   pragma Export (C, u00011, "system__soft_linksB");
   pragma Export (C, u00012, "system__soft_linksS");
   pragma Export (C, u00013, "system__parametersB");
   pragma Export (C, u00014, "system__parametersS");
   pragma Export (C, u00015, "system__stack_checkingB");
   pragma Export (C, u00016, "system__stack_checkingS");
   pragma Export (C, u00017, "system__storage_elementsB");
   pragma Export (C, u00018, "system__storage_elementsS");
   pragma Export (C, u00019, "mssystS");
   pragma Export (C, u00020, "mssyst__stringS");
   pragma Export (C, u00021, "ada__tagsB");
   pragma Export (C, u00022, "ada__tagsS");
   pragma Export (C, u00023, "msil_typesS");
   pragma Export (C, u00024, "mssyst__objectS");
   pragma Export (C, u00025, "mssyst__sbyteS");
   pragma Export (C, u00026, "mssyst__globalizationS");
   pragma Export (C, u00027, "mssyst__globalization__numberstylesS");
   pragma Export (C, u00028, "mssyst__typecodeS");
   pragma Export (C, u00029, "system__unsigned_typesS");
   pragma Export (C, u00030, "mssyst__valuetypeS");
   pragma Export (C, u00031, "mssyst__windowsS");
   pragma Export (C, u00032, "mssyst__windows__formsS");
   pragma Export (C, u00033, "mssyst__windows__forms__dialogresultS");
   pragma Export (C, u00034, "mssyst__windows__forms__messageboxS");
   pragma Export (C, u00035, "mssyst__windows__forms__messageboxbuttonsS");
   pragma Export (C, u00036, "mssyst__windows__forms__messageboxdefaultbuttonS");
   pragma Export (C, u00037, "mssyst__windows__forms__messageboxiconS");
   pragma Export (C, u00038, "mssyst__windows__forms__messageboxoptionsS");
   pragma Export (C, u00039, "system__tasking__rendezvousB");
   pragma Export (C, u00040, "system__tasking__rendezvousS");
   pragma Export (C, u00041, "system__task_primitivesS");
   pragma Export (C, u00042, "interfacesS");
   pragma Export (C, u00043, "interfaces__javaS");
   pragma Export (C, u00044, "interfaces__java__langS");
   pragma Export (C, u00045, "interfaces__java__lang__objectS");
   pragma Export (C, u00046, "system__task_primitives__operationsB");
   pragma Export (C, u00047, "system__task_primitives__operationsS");
   pragma Export (C, u00048, "interfaces__java__lang__priorityS");
   pragma Export (C, u00049, "interfaces__java__lang__threadS");
   pragma Export (C, u00050, "system__os_interfaceS");
   pragma Export (C, u00051, "system__os_primitivesB");
   pragma Export (C, u00052, "system__os_primitivesS");
   pragma Export (C, u00053, "system__taskingB");
   pragma Export (C, u00054, "system__taskingS");
   pragma Export (C, u00055, "system__task_infoB");
   pragma Export (C, u00056, "system__task_infoS");
   pragma Export (C, u00057, "system__tasking__debugB");
   pragma Export (C, u00058, "system__tasking__debugS");
   pragma Export (C, u00059, "interfaces__cB");
   pragma Export (C, u00060, "interfaces__cS");
   pragma Export (C, u00061, "system__tasking__entry_callsB");
   pragma Export (C, u00062, "system__tasking__entry_callsS");
   pragma Export (C, u00063, "system__tasking__initializationB");
   pragma Export (C, u00064, "system__tasking__initializationS");
   pragma Export (C, u00065, "system__tasking__task_attributesB");
   pragma Export (C, u00066, "system__tasking__task_attributesS");
   pragma Export (C, u00067, "ada__finalizationB");
   pragma Export (C, u00068, "ada__finalizationS");
   pragma Export (C, u00069, "system__finalization_rootB");
   pragma Export (C, u00070, "system__finalization_rootS");
   pragma Export (C, u00071, "ada__streamsS");
   pragma Export (C, u00072, "system__stream_attributesB");
   pragma Export (C, u00073, "system__stream_attributesS");
   pragma Export (C, u00074, "ada__io_exceptionsS");
   pragma Export (C, u00075, "system__finalization_implementationB");
   pragma Export (C, u00076, "system__finalization_implementationS");
   pragma Export (C, u00077, "ada__finalization__list_controllerB");
   pragma Export (C, u00078, "ada__finalization__list_controllerS");
   pragma Export (C, u00079, "system__tasking__protected_objectsB");
   pragma Export (C, u00080, "system__tasking__protected_objectsS");
   pragma Export (C, u00081, "system__tasking__protected_objects__entriesB");
   pragma Export (C, u00082, "system__tasking__protected_objects__entriesS");
   pragma Export (C, u00083, "system__tasking__protected_objects__operationsB");
   pragma Export (C, u00084, "system__tasking__protected_objects__operationsS");
   pragma Export (C, u00085, "system__tasking__queuingB");
   pragma Export (C, u00086, "system__tasking__queuingS");
   pragma Export (C, u00087, "system__tasking__utilitiesB");
   pragma Export (C, u00088, "system__tasking__utilitiesS");
   pragma Export (C, u00089, "system__tasking__stagesB");
   pragma Export (C, u00090, "system__tasking__stagesS");
   pragma Export (C, u00091, "system__address_imageB");
   pragma Export (C, u00092, "system__address_imageS");
   pragma Export (C, u00093, "system__memoryB");
   pragma Export (C, u00094, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.io_exceptions%s
   --  interfaces%s
   --  interfaces.java%s
   --  interfaces.java.lang%s
   --  interfaces.java.lang.priority%s
   --  system%s
   --  ada.exceptions%s
   --  system.address_image%s
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.parameters%s
   --  system.parameters%b
   --  interfaces.c%s
   --  system.secondary_stack%s
   --  system.secondary_stack%b
   --  interfaces.c%b
   --  system.address_image%b
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
   --  interfaces.java.lang.object%s
   --  interfaces.java.lang.thread%s
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.os_interface%s
   --  system.task_info%s
   --  system.task_info%b
   --  system.task_primitives%s
   --  system.tasking%s
   --  system.tasking.debug%s
   --  system.task_primitives.operations%s
   --  system.task_primitives.operations%b
   --  system.tasking.debug%b
   --  system.tasking%b
   --  system.tasking.entry_calls%s
   --  system.tasking.initialization%s
   --  system.tasking.protected_objects%s
   --  system.tasking.protected_objects%b
   --  system.tasking.utilities%s
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
   --  system.tasking.task_attributes%s
   --  system.tasking.task_attributes%b
   --  system.tasking.initialization%b
   --  system.tasking.protected_objects.entries%s
   --  system.tasking.protected_objects.entries%b
   --  system.tasking.queuing%s
   --  system.tasking.queuing%b
   --  system.tasking.utilities%b
   --  system.tasking.rendezvous%s
   --  system.tasking.protected_objects.operations%s
   --  system.tasking.protected_objects.operations%b
   --  system.tasking.rendezvous%b
   --  system.tasking.entry_calls%b
   --  system.tasking.stages%s
   --  system.tasking.stages%b
   --  msil_types%s
   --  mssyst%s
   --  mssyst.globalization%s
   --  mssyst.object%s
   --  mssyst.typecode%s
   --  mssyst.globalization.numberstyles%s
   --  mssyst.valuetype%s
   --  mssyst.sbyte%s
   --  mssyst.string%s
   --  mssyst.windows%s
   --  mssyst.windows.forms%s
   --  mssyst.windows.forms.dialogresult%s
   --  mssyst.windows.forms.messageboxbuttons%s
   --  mssyst.windows.forms.messageboxdefaultbutton%s
   --  mssyst.windows.forms.messageboxicon%s
   --  mssyst.windows.forms.messageboxoptions%s
   --  mssyst.windows.forms.messagebox%s
   --  test_dll1%s
   --  test_dll1%b
   --  END ELABORATION ORDER

end ada_test_dll1;
