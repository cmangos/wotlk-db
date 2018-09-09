-- MECHANIC_DISORIENTED & MECHANIC_KNOCKOUT Immunity for Pusillin 14354
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|2|8192 WHERE entry IN (14354);
