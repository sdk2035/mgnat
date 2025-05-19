package body Test_Protected is

   -----------------------
   -- Suspension_Object --
   -----------------------

   protected body Suspension_Object is

      ----------
      -- Wait --
      ----------

      entry Wait when True is
      begin
         null;
      end Wait;




      --------------
      -- Get_Open --
      --------------

      function Get_Open return Boolean is
      begin
         return Get_Open;
      end Get_Open;

      --------------------
      -- Wait_Exception --
      --------------------

      entry Wait_Exception when True is
      begin
         null;
      end Wait_Exception;

   end Suspension_Object;

end Test_Protected;
