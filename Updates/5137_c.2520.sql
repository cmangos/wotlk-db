-- Remote-Controlled Golem 2520
-- immune to poinson, taunt
UPDATE creature_template SET ExtraFlags = ExtraFlags|0x01000000, MechanicImmuneMask = MechanicImmuneMask|256 WHERE entry = 2520;
