-- Ahn'Kahet - updates

-- Channel Image Target 30413
UPDATE creature_template SET UnitFlags = 33555200 WHERE entry = 30413;

-- target for s:56711
DELETE FROM spell_script_target WHERE entry = 56711;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(56711, 1, 30413, 0);

-- Exit behind final Boss
DELETE FROM areatrigger_teleport WHERE `id` = 5235;
INSERT INTO areatrigger_teleport (`id`, `name`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`, `condition_id`) VALUES
(5235,'Ahn\'Kahet (exit)',571,3641.84,2032.94,2.47,1.178,0);

-- Ahn'kahar Watcher 31449
UPDATE creature_template SET LootId = 31449 WHERE Entry = 31449;
DELETE FROM creature_loot_template WHERE entry = 31449;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(31449,43494,100,0,1,1,0,'Ahn\'kahar Watcher\'s Corpse'),
(31449,33470,4,1,1,7,0,'Frostweave Cloth'),
(31449,42852,1.6,1,1,2,0,'Thick Fur Clothing Scraps'),
(31449,33452,1.2,1,1,1,0,'Honey-Spiced Lichen');
