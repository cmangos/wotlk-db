-- Astral Flare - Immune to taunts, stuns, roots, and snares'
UPDATE creature_template SET ExtraFlags=ExtraFlags|256,MechanicImmuneMask=MechanicImmuneMask|(64+1024+2048) WHERE entry=17096;

-- Malchezaar - Immune to taunt
UPDATE creature_template SET ExtraFlags=ExtraFlags|256 WHERE entry=15690;
