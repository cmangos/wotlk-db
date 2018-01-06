-- Raging Flames should be immune to taunt and banish
UPDATE creature_template SET ExtraFlags=ExtraFlags|256,MechanicImmuneMask=MechanicImmuneMask|131072 WHERE entry IN(20481,21538);
