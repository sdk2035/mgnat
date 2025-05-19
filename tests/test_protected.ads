with System;
package Test_Protected is
   protected type Suspension_Object is
      entry Wait;
      function Get_Open return Boolean;
      entry Wait_Exception;

      pragma Priority (System.Any_Priority'Last);
   private
      Open : Boolean := False;
   end Suspension_Object;
end Test_Protected;