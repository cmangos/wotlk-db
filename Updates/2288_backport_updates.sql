-- Sandfury Zombie
-- no loot
UPDATE creature_template SET LootId = 0 WHERE entry = 7270;

-- unnused pools removed
DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (136,137,298);

-- missing aadded
DELETE FROM `creature_loot_template` WHERE `entry` = 1853 AND `item` = 5759;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(1853, 5759, 10, 0, -5759, 1, 0, '');
