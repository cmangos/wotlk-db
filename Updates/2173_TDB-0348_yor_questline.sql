-- correct data for Ethereum Prisons
DELETE FROM creature_template_addon WHERE entry IN(20520);
UPDATE creature_template SET UnitFlags=UnitFlags|768 WHERE entry IN(20783,20790,20786,20788,20785,20784,20789,22810,22811,22812,22813,22814,22815);

DELETE FROM dbscripts_on_go_use WHERE id IN(47301);
UPDATE creature_involvedrelation SET id = 22919 WHERE quest IN(10974);
UPDATE creature_template SET UnitFlags=33555200,ModelId1=15880 WHERE entry IN(20889);
UPDATE creature_template SET UnitFlags=768,Faction=14 WHERE entry IN(22920);
UPDATE creature_template SET UnitFlags=0,NpcFlags=3,GossipMenuId=8614 WHERE entry IN(22919);
UPDATE creature_model_info SET bounding_radius=3,combat_reach=7.5 WHERE modelid IN(20863);
DELETE FROM creature WHERE id IN(22919);
INSERT INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
('5309028', '22919', '530', '1', '0', '0', '3866.336', '5978.463', '291.9092', '3.926991', '300', '300', '0', '0', '6986', '0', '0', '0'); -- image of commander ameer
UPDATE gameobject SET spawntimesecsmin=0,spawntimesecsmax=0 WHERE id IN(185512) OR id BETWEEN 184418 AND 184431;

UPDATE creature_involvedrelation SET id = 22919 WHERE quest IN(10975);
UPDATE creature_questrelation SET id = 22919 WHERE quest IN(10975);

UPDATE creature_involvedrelation SET id = 22919 WHERE quest IN(10976);
UPDATE creature_questrelation SET id = 22919 WHERE quest IN(10976);
UPDATE creature_loot_template SET ChanceOrQuestChance=24 WHERE item IN(31941);
UPDATE creature_template SET UnitFlags=768,Faction=90,MinLevel=70,MaxLevel=70 WHERE entry IN(22825,22826,22827,22828,20888);
UPDATE creature_loot_template SET ChanceOrQuestChance=100 WHERE entry IN(22825,22826,22827,22828,20888) AND item IN(31569,32522,31577,31553,31561);

UPDATE creature_template SET UnitFlags=33555200,ModelId1=15880 WHERE entry IN(22927);
UPDATE creature_involvedrelation SET id = 22919 WHERE quest IN(10977);
UPDATE creature_questrelation SET id = 22919 WHERE quest IN(10977);

UPDATE creature_involvedrelation SET id = 22919 WHERE quest IN(10981);
UPDATE creature_questrelation SET id = 22919 WHERE quest IN(10981);
UPDATE creature_template SET UnitFlags=768,Faction=35 WHERE entry IN(22930);

UPDATE creature_involvedrelation SET id = 22919 WHERE quest IN(10982);
UPDATE creature_questrelation SET id = 22919 WHERE quest IN(10982);

-- Yor <Void Hound of Shaffar> 22930
DELETE FROM `creature_loot_template` WHERE entry=22930;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(22930, 28558, 100, 0, 1, 1, 206, 'Spirit Shard'),
(22930, 29434, 100, 0, 1, 1, 0, 'Badge of Justice'),
(22930, 40109, 100, 1, -40109, 1, 0, 'Auchindoun: Mana-Tombs (Boss Loot) - Yor (Heroic) - Rare Items'),
(22930, 40114, 70, 1, -40114, 1, 0, 'Auchindoun: Mana-Tombs (Boss Loot) - Yor (Heroic) - Rare and Epic Items'),
(22930, 40118, 30, 0, -40118, 1, 0, 'Auchindoun: Mana-Tombs Heroic Epic Gems');

DELETE FROM `reference_loot_template` WHERE entry IN (40109,40114);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(40109, 31554, 0, 1, 1, 1, 0, 'Windchanneller\'s Tunic'),
(40109, 31562, 0, 1, 1, 1, 0, 'Skystalker\'s Tunic'),
(40109, 31570, 0, 1, 1, 1, 0, 'Mistshroud Tunic'),
(40109, 31578, 0, 1, 1, 1, 0, 'Slatesteel Breastplate'),
(40114, 31554, 19, 1, 1, 1, 0, 'Windchanneller\'s Tunic'),
(40114, 31562, 19, 1, 1, 1, 0, 'Skystalker\'s Tunic'),
(40114, 31570, 19, 1, 1, 1, 0, 'Mistshroud Tunic'),
(40114, 31578, 19, 1, 1, 1, 0, 'Slatesteel Breastplate'),
(40114, 31919, 4, 1, 1, 1, 0, 'Nexus-Prince\'s Ring of Balance'),
(40114, 31920, 4, 1, 1, 1, 0, 'Shaffar\'s Band of Brutality'),
(40114, 31921, 4, 1, 1, 1, 0, 'Yor\'s Collapsing Band'),
(40114, 31922, 4, 1, 1, 1, 0, 'Ring of Conflict Survival'),
(40114, 31923, 4, 1, 1, 1, 0, 'Band of the Crystalline Void'),
(40114, 31924, 4, 1, 1, 1, 0, 'Yor\'s Revenge');

