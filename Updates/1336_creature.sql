-- Dalliah the Doomsayer should not be immune to interrupt and should be immune to taunt
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~33554432,ExtraFlags=ExtraFlags|256 WHERE entry IN(20885,21590);
