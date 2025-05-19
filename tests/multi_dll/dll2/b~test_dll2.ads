with System;
with System.Standard_Library;
package ada_test_dll2 is
   pragma Warnings (Off);

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#34c7daaa#;
   u00002 : constant Version_32 := 16#d12aeb8a#;
   u00003 : constant Version_32 := 16#db52b687#;
   u00004 : constant Version_32 := 16#93251449#;
   u00005 : constant Version_32 := 16#be5d056b#;
   u00006 : constant Version_32 := 16#52faabc4#;
   u00007 : constant Version_32 := 16#e9ee2bec#;
   u00008 : constant Version_32 := 16#eb4b66cd#;
   u00009 : constant Version_32 := 16#7cd43be2#;
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
   u00024 : constant Version_32 := 16#5b8fe29e#;
   u00025 : constant Version_32 := 16#10e9d5a5#;
   u00026 : constant Version_32 := 16#e279999f#;
   u00027 : constant Version_32 := 16#b7e7e17f#;
   u00028 : constant Version_32 := 16#31cbd98b#;
   u00029 : constant Version_32 := 16#a53b0dc6#;
   u00030 : constant Version_32 := 16#202bad71#;
   u00031 : constant Version_32 := 16#5d66ec68#;
   u00032 : constant Version_32 := 16#26ab6f2c#;

   pragma Export (C, u00001, "test_dll2B");
   pragma Export (C, u00002, "test_dll2S");
   pragma Export (C, u00003, "system__standard_libraryB");
   pragma Export (C, u00004, "system__standard_libraryS");
   pragma Export (C, u00005, "ada__calendar__delaysB");
   pragma Export (C, u00006, "ada__calendar__delaysS");
   pragma Export (C, u00007, "ada__calendarB");
   pragma Export (C, u00008, "ada__calendarS");
   pragma Export (C, u00009, "adaS");
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
   pragma Export (C, u00024, "system__arith_64B");
   pragma Export (C, u00025, "system__arith_64S");
   pragma Export (C, u00026, "gnatS");
   pragma Export (C, u00027, "gnat__exceptionsS");
   pragma Export (C, u00028, "system__os_primitivesB");
   pragma Export (C, u00029, "system__os_primitivesS");
   pragma Export (C, u00030, "interfaces__javaS");
   pragma Export (C, u00031, "system__memoryB");
   pragma Export (C, u00032, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.calendar%s
   --  ada.calendar.delays%s
   --  gnat%s
   --  interfaces%s
   --  interfaces.java%s
   --  system%s
   --  ada.exceptions%s
   --  gnat.exceptions%s
   --  system.arith_64%s
   --  system.arith_64%b
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.parameters%s
   --  system.parameters%b
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
   --  ada.calendar.delays%b
   --  ada.calendar%b
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  test_dll2%s
   --  test_dll2%b
   --  END ELABORATION ORDER

end ada_test_dll2;
