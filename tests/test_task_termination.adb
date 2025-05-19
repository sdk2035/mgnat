with Ada.Text_io;
procedure test_task_termination is

   task test is
      entry start;
      entry stop;
   end test;

   task body test is
   begin
      loop
         select
            accept start;
         or
            accept stop;
            exit;
         or
            terminate;
         end select;

         -- do something...
         delay 0.01;
      end loop;
   end test;

begin
   -- If the task is never started (called) or when it started but not stopped
   -- the task termination fails:

   -- Unhandled Exception: mgnat.adalib._abort_signal: Exception of type
   --           mgnat.adalib._abort_signal was thrown.
   --   at mgnat.adalib.GNAT_libc.reraise_occurrence_no_defer(Object e)
   --   at test_task_termination.testTKB(testTKV _task,
   --                                     __AR_test_task_termination_class __AR_SL)
   --          in test_task_termination.adb:line 2
   --   at system_tasking_task_procedure_access_test_task_termination_testTKB_test_task_termination_adb0.Invoke(Object arg)
   --   at system.tasking.stages_pkg.task_wrapper(ada_task_control_block self_id)
   --   at mgnat.adalib.ada_wrapper.run()


   test.start;
   Ada.Text_io.Put_line ("Task started");
   if false then
      test.stop;
      Ada.Text_io.Put_line ("Task stopped");
   end if;
end test_task_termination;
