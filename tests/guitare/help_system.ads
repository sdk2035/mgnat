
--
--  GUITARE Project
--
--  $Id: help_system.ads,v 1.6 2000/09/09 15:41:42 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--

package Help_System is

   procedure Set_Output_Help;
   --  Output help info into the Help window (for TkGuitare)

   procedure Set_Output_Lower;
   --  Output help info into the Lower window (for TkGuitare)
   --  default value.

   procedure Print (About : in String);

end Help_System;
