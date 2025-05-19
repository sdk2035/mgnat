
--
--  GUITARE Project
--
--  $Id: defines.ads,v 1.9 2000/09/09 15:43:46 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--

package Defines is

   Version : constant String := "v7.1 (September 2000)";

   type Switch is (ON, OFF);

   procedure Set_GUI (Mode : in Switch);

   function Is_GUI_Mode return Switch;

end Defines;
