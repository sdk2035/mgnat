
--
--  GUITARE Project
--
--  $Id: key.ads,v 1.7 2000/09/09 15:43:46 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--

with Scales;

package Key is

   use Scales;

   procedure Put_Common_Chords
     (For_Scale : in Scales.Scale_Type);

   procedure Put_Progression
     (For_Scale      : in Scales.Scale_Type;
      Chords_Numbers : in String);

   procedure Find (From_Chords : in String);

end Key;
