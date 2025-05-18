------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--          A d a . R e a l _ T i m e . T i m i n g _ E v e n t s           --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--            Copyright (C) 2005, Free Software Foundation, Inc.            --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 2,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with GNAT;  see file COPYING.  If not, write --
-- to  the  Free Software Foundation,  51  Franklin  Street,  Fifth  Floor, --
-- Boston, MA 02110-1301, USA.                                              --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

with System.Tasking.Utilities;
--  used for Make_Independent

with Ada.Containers.Doubly_Linked_Lists;
pragma Elaborate_All (Ada.Containers.Doubly_Linked_Lists);

package body Ada.Real_Time.Timing_Events is

   type Any_Timing_Event is access all Timing_Event'Class;
   --  We must also handle user-defined types derived from Timing_Event

   ------------
   -- Events --
   ------------

   package Events is
      new Ada.Containers.Doubly_Linked_Lists (Any_Timing_Event);

   -----------------
   -- Event_Queue --
   -----------------

   protected Event_Queue is
      pragma Priority (System.Priority'Last);

      procedure Insert (This : in Any_Timing_Event);
      --  Inserts This into the queue in ascending order by Timeout

      procedure Delete (This : in Any_Timing_Event);
      --  Deletes the event with an Owner equal to This. Failure to find a
      --  match is not an error.

      entry Remove (This : out Any_Timing_Event);
      --  Takes the first event off the queue, blocking the caller until an
      --  event is present.

    private
      All_Events : Events.List;
   end Event_Queue;

   -----------
   -- Timer --
   -----------

   task Timer is
      pragma Priority (System.Priority'Last);
   end Timer;
   --  We use a task to process a queue of events, calling the handlers for
   --  those events that have timed-out. The task is aborted automatically when
   --  the package body is finalized.

   task body Timer is
      Event   : Any_Timing_Event;
      Handler : Timing_Event_Handler;

   begin
      --  The following call to Make_Independent allows automatic termination
      --  for this task, which would otherwise cause the partition to hang
      --  since it does not terminate any other way.

      System.Tasking.Utilities.Make_Independent;

      --  Loop to remove and process events

      loop
         Event_Queue.Remove (Event);

         --  D.15 (22/2) requires that no new handler can be allowed to execute
         --  in response to an old timeout. Therefore, at this point the
         --  designated event is locked from changes to the Timeout and Handler
         --  values. Note that cancellation can still occur.

         select
            Event.Control.Cancellation;
         then abort
            delay until Event.Control.Current_Timeout;
         end select;

         --  If the event was cancelled while the timer was counting down, the
         --  handler will be null at this point. However, the cancellation
         --  might occur right after the asynchronous select statement, but
         --  before the next statement executes, so we test for null here
         --  rather than setting flags within the select statement. We take a
         --  snapshot of the Handler value into a local variable and then use
         --  that value for both the test and the call to the user's protected
         --  event handler. The snapshot prevents a race condition between
         --  calling the function in the test and again to invoke the handler.
         --  If the cancellation occurs after we take the snapshot, the user
         --  just cancelled the timeout too late.

         Handler := Event.Control.Current_Handler;

         --  The handler will be null if the event was cancelled or if the user
         --  explicitly specified null as the handler in Set_Handler.

         if Handler /= null then
            begin
               --  The handler invocation requires a value of type
               --  Timing_Event, not the class-wide value, which is why the
               --  type conversion is present in the following call.

               Handler (Timing_Event (Event.all));

            exception
               --  Ignore exceptions (RM D.15 (21/2))

               when others =>
                  null;  --  per D.15 (21/2)
            end;
         end if;

         --  Reset the state and enable calls to Set_Handler

         Event.Control.Clear;
      end loop;
   end Timer;

   -----------------
   -- Set_Handler --
   -----------------

   procedure Set_Handler
     (Event   : in out Timing_Event;
      At_Time : Time;
      Handler : Timing_Event_Handler)
   is
   begin
      if At_Time <= Clock then

         --  See D.15(15/2) which says the task calling Set_Handler calls
         --  the handler directly in this case. However, perhaps the user is
         --  calling Set_Handler with the intent of clearing the handler, in
         --  which case In_Time has no useful value.

         if Handler /= null then
            Handler (Event);
         end if;

         Event.Control.Cancel;
         return;
      end if;

      Event.Control.Cancel;
      Event_Queue.Delete (Event'Unchecked_Access);

      if Handler /= null then
         Event.Control.Set (At_Time, Handler);
         Event_Queue.Insert (Event'Unchecked_Access);
      end if;
   end Set_Handler;

   -----------------
   -- Set_Handler --
   -----------------

   procedure Set_Handler
     (Event   : in out Timing_Event;
      In_Time : Time_Span;
      Handler : Timing_Event_Handler)
   is
   begin
      if In_Time <= Time_Span_Zero then

         --  See D.15(15/2) which says the task calling Set_Handler calls
         --  the handler directly in this case. However, perhaps the user is
         --  calling Set_Handler with the intent of clearing the handler, in
         --  which case In_Time has no useful value.

         if Handler /= null then
            Handler (Event);
         end if;

         Event.Control.Cancel;
         return;
      end if;

      Event.Control.Cancel;
      Event_Queue.Delete (Event'Unchecked_Access);

      if Handler /= null then
         Event.Control.Set (Clock + In_Time, Handler);
         Event_Queue.Insert (Event'Unchecked_Access);
      end if;
   end Set_Handler;

   -----------------
   -- Event_State --
   -----------------

   protected body Event_State is

      entry Set
        (Timeout : Time;
         Handler : Timing_Event_Handler)
      when
         Available
      is
      begin
         Event_State.Timeout := Set.Timeout;
         Event_State.Handler := Set.Handler;
         Cancelled := False;
         Available := False;
      end Set;

      procedure Clear is
      begin
         Handler := null;
         Timeout := Time_First;
         Cancelled := False;
         Available := True;
      end Clear;

      procedure Cancel is
      begin
         Handler := null;
         Timeout := Time_First;
         Cancelled := True;
      end Cancel;

      entry Cancellation when Cancelled is
      begin
         Cancelled := False;
      end Cancellation;

      function Current_Timeout return Time is
      begin
         return Timeout;
      end Current_Timeout;

      function Current_Handler return Timing_Event_Handler is
      begin
         return Handler;
      end Current_Handler;

   end Event_State;

   ---------------------
   -- Current_Handler --
   ---------------------

   function Current_Handler
     (Event : Timing_Event) return Timing_Event_Handler
   is
   begin
      return Event.Control.Current_Handler;
   end Current_Handler;

   --------------------
   -- Cancel_Handler --
   --------------------

   procedure Cancel_Handler
     (Event     : in out Timing_Event;
      Cancelled : out Boolean)
   is
   begin
      Cancelled := Event.Control.Current_Handler /= null;
      Event.Control.Cancel;
      Event_Queue.Delete (Event'Unchecked_Access);
   end Cancel_Handler;

   -------------------
   -- Time_Of_Event --
   -------------------

   function Time_Of_Event (Event : Timing_Event) return Time is
   begin
      return Event.Control.Current_Timeout;
   end Time_Of_Event;

   ------------
   -- Sooner --
   ------------

   function Sooner (Left, Right : Any_Timing_Event) return Boolean;
   --  Used by the Event_Queue insertion routine to keep the events in
   --  ascending order by timeout value.

   -----------------
   -- Event_Queue --
   -----------------

   protected body Event_Queue is

      procedure Insert (This : Any_Timing_Event) is
         package By_Timeout is new Events.Generic_Sorting (Sooner);
         --  Used to keep the events in ascending order by timeout value.

      begin
         All_Events.Append (This);

         --  A critical property of the implementation of this package is that
         --  all occurrences are in ascending order by Timeout. Thus the first
         --  event in the queue always has the "next" value for the Timer task
         --  to use in its delay statement.

         By_Timeout.Sort (All_Events);
      end Insert;

      procedure Delete (This : Any_Timing_Event) is
         use Events;
         C : Cursor := All_Events.Find (This);
      begin
         if C /= No_Element then
            All_Events.Delete (C);
         end if;
      end Delete;

      entry Remove
         (This : out Any_Timing_Event)
      when
         not All_Events.Is_Empty
      is
      begin
         This := All_Events.First_Element;
         All_Events.Delete_First;
      end Remove;

   end Event_Queue;

   ------------
   -- Sooner --
   ------------

   function Sooner (Left, Right : Any_Timing_Event) return Boolean is
   begin
      return Left.Control.Current_Timeout < Right.Control.Current_Timeout;
   end Sooner;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (This : in out Timing_Event) is
      Cancelled : Boolean;
   begin
      --  D.15 (19/2) says finalization clears the event

      Cancel_Handler (This, Cancelled);
   end Finalize;

end Ada.Real_Time.Timing_Events;
