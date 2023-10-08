-- Pool Template Id (25724) is empty.
-- moved to spawn groups
DELETE FROM `pool_template` WHERE `entry` IN (25724);
DELETE FROM `pool_creature_template` WHERE `pool_entry` IN (25724);
