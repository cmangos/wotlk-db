-- Pool Template Id (25724) is empty.
-- moved to spawn groups
DELETE FROM `pool_template` WHERE `entry` IN (25724);
DELETE FROM `pool_creature_template` WHERE `pool_entry` IN (25724);

-- Creature (Entry: 24557) has wrong spell 44288 defined in `auras` field in `creature_template_addon`.
-- ss autra that triggers another spell in combat - will add it when correct spell found.
UPDATE creature_template_addon SET auras = 42459 WHERE entry = 24557;
