-- ===========
-- REMOVE IMMUNITIES
-- ===========

-- DISTRACT [5 spells]
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask&~8 WHERE entry IN (
17767, -- Rage Winterchill
17808, -- Anetheron
17842, -- Azgalor
17888 -- Kaz'rogal
);
