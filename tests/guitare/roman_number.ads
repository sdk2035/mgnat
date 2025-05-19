
--
--  GUITARE Project
--
--  $Id: roman_number.ads,v 1.6 2000/09/09 15:43:47 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--

--
--  This is not a comple package. It handle only the number from 1 to 12
--

package Roman_Number is

   Bad_Roman_Number : exception;

   function Image (Number : in Positive) return String;

   procedure Put (Number : in Positive);

   function Get (Number : in String) return Positive;

end Roman_Number;
