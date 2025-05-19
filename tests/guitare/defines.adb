
--
--  GUITARE Project
--
--  $Id: defines.adb,v 1.6 2000/09/09 15:43:46 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--

package body Defines is

   GUI_Mode : Switch := OFF;

   -------------
   -- Set_GUI --
   -------------

   procedure Set_GUI (Mode : in Switch)
   is
   begin
      GUI_Mode := Mode;
   end Set_GUI;

   -----------------
   -- Is_GUI_Mode --
   -----------------

   function Is_GUI_Mode return Switch is
   begin
      return GUI_Mode;
   end Is_GUI_Mode;

end Defines;
