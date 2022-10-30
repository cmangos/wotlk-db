-- fear and horror
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|(8388608 + 16) WHERE entry IN(32352,27900);

