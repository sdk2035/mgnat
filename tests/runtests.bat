@echo -------------------- BUILDING --------------------

mgnatmake array_range.adb
mgnatmake bug20030120a.adb
mgnatmake bug20030120b.adb
mgnatmake bug20030121a.adb
mgnatmake bug20050830.adb
mgnatmake bug20050909a.adb
mgnatmake echo_args.adb
mgnatmake fred.adb
mgnatmake hello.adb
mgnatmake hello_ada.adb
mgnatmake hello_file.adb
mgnatmake seq_io.adb
mgnatmake test_array_bounds.adb
mgnatmake test_assembly.adb
mgnatmake test_assign.adb
mgnatmake test_assign2.adb
mgnatmake test_atc.adb
mgnatmake test_attributes.adb
mgnatmake test_bool_addrof.adb
mgnatmake test_byte_array.adb
mgnatmake test_calendar.adb
mgnatmake test_case.adb
mgnatmake test_case2.adb
mgnatmake test_case3.adb
mgnatmake testcase2.adb
mgnatmake testcase3.adb
mgnatmake test_composite.adb
mgnatmake test_controlled.adb
mgnatmake test_controlled_pkg.adb
mgnatmake test_device_error.adb
mgnatmake test_direct_io.adb
mgnatmake test_enum_attrib.adb
mgnatmake test_enum_get.adb
mgnatmake test_environment.adb
mgnatmake test_eof.adb
mgnatmake test_exception.adb
mgnatmake test_exports_main.adb
mgnatmake test_file.adb
mgnatmake test_file2.adb
mgnatmake test_finalize.adb
mgnatmake test_fix_io.adb
mgnatmake test_gen.adb
mgnatmake test_generic_enum_main.adb
mgnatmake test_handling.adb
mgnatmake test_interface.adb
mgnatmake test_interfaces.adb
mgnatmake test_long_float.adb
mgnatmake test_loop.adb
mgnatmake test_lower.adb
mgnatmake test_main.adb
mgnatmake test_mod_64.adb
mgnatmake test_multidimensional_arrays.adb
mgnatmake test_numeric_exception.adb
mgnatmake test_pkg.adb
mgnatmake test_proc.adb
mgnatmake test_procedure_access.adb
mgnatmake test_record_array.adb
mgnatmake test_record_layout.adb
mgnatmake test_return_convert.adb
mgnatmake test_rounding.adb
mgnatmake test_scalar_rename.adb
mgnatmake test_seq_file.adb
mgnatmake test_slice_assign.adb
mgnatmake test_tag_attribute.adb
mgnatmake test_tag_record.adb
mgnatmake test_task.adb
mgnatmake test_task_.adb
mgnatmake test_task_string.adb
mgnatmake test_task_termination.adb
mgnatmake test_unchecked_conv.adb
mgnatmake test_valuetype.adb
mgnatmake test_valuetype_array.adb
mgnatmake test_wide.adb

@echo -------------------- TESTING -------------------- pause

array_range
bug20030120a
bug20030120b
bug20030121a
bug20050830
@echo -------------- bug20050909a (compilation error) 
echo_args test 2 3 4 
float_test 
fred 
hello 
hello_ada 
hello_file 
seq_io 
test_array_bounds 
test_assembly 
test_assign
test_assign2
test_atc
@echo vvvvvvvvvvvvv-- will result in mgnat.adalib.constraint_error 
test_attributes 
test_bool_addrof 
test_byte_array 
test_calendar 
test_case
test_case2
test_case3
@echo vvvvvvvvvvvvv-- should get increasing sequence 
testcase2
@echo vvvvvvvvvvvvv-- should get increasing sequence 
testcase3
@echo vvvvvvvvvvvvv-- will result in system.nullreferenceexception 
test_composite 
test_controlled 
@echo vvvvvvvvvvvvv-- will result in mgnat.adalib._abort_signal 
test_device_error 
test_direct_io 
test_enum_attrib 
test_enum_get 
test_environment 
test_eof 
test_exception 
test_exports_main 
test_file
test_file2
@echo vvvvvvvvvvvvv-- will result in mgnat.adalib.program_error 
test_finalize 
test_gen 
test_generic_enum_main 
test_handling 
test_interface 
test_long_float 
test_loop 
test_lower 
test_main
test_mod_64
test_multidimensional_arrays
test_numeric_exception
test_proc
test_procedure_access
test_record_array
@echo -------------- test_return_convert (MGNAT BUG) 
test_rounding 
@echo -------------- test_scalar_rename (compilation error) 
test_seq_file 
test_slice_assign 
test_tag_attribute 
@echo -------------- test_tag_record (MGNAT BUG) 
test_task
test_task_string 
test_task_termination 
test_unchecked_conv
test_valuetype 
test_valuetype_array
test_wide
