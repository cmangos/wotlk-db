-- The Nexus

-- Groups of Alliance/Horde depending spawns
-- Note: horde group will spawn for alliance players / alliance group will spawn for horde players
DELETE FROM creature_conditional_spawn WHERE guid between 71182 and 71191;
DELETE FROM creature_conditional_spawn WHERE guid IN (126665,126666,126667,126664,126668);
INSERT INTO creature_conditional_spawn (guid, EntryAlliance, EntryHorde, Comments) VALUES
-- rangers
(126665,26801,26802,'The Nexus - Horde Ranger / Alliance Ranger'),
(126666,26801,26802,'The Nexus - Horde Ranger / Alliance Ranger'),
(126667,26801,26802,'The Nexus - Horde Ranger / Alliance Ranger'),
(71182,26801,26802,'The Nexus - Horde Ranger / Alliance Ranger'),
(71183,26801,26802,'The Nexus - Horde Ranger / Alliance Ranger'),
-- bresekers
(71184,26799,26800,'The Nexus - Horde Berserker / Alliance Berserker'),
(71185,26799,26800,'The Nexus - Horde Berserker / Alliance Berserker'),
(71186,26799,26800,'The Nexus - Horde Berserker / Alliance Berserker'),
(126664,26799,26800,'The Nexus - Horde Berserker / Alliance Berserker'),
-- Clerics  
(71187,26803,26805,'The Nexus - Horde Cleric / Alliance Cleric'),
(71188,26803,26805,'The Nexus - Horde Cleric / Alliance Cleric'),
(71189,26803,26805,'The Nexus - Horde Cleric / Alliance Cleric'),
(126668,26803,26805,'The Nexus - Horde Cleric / Alliance Cleric'),
-- Commanders - Normal mode only
(71190,27947,27949,'The Nexus - Horde Commander / Alliance Commander'),
-- boss - Heroic mode only
(71191,26798,26796,'The Nexus - Commander Kolurg / Commander Stoutbeard');

UPDATE creature SET id=0 WHERE guid between 71182 and 71191;
UPDATE creature SET id=0 WHERE guid IN (126665,126666,126667,126664,126668);

-- Loot corrected for Commander Kolurg
UPDATE creature_template SET MinLootGold = 664, MaxLootGold = 13288 WHERE entry = 26798; -- Normal
UPDATE creature_template SET MinLootGold = 1328, MaxLootGold = 26576, LootId = 30397, PickpocketLootId = 26798, MechanicImmuneMask = 617299803 WHERE entry = 30397; -- Heroic
-- Loot corrected for Commander Stoutbeard
UPDATE creature_template SET MinLootGold = 664, MaxLootGold = 13288 WHERE entry = 26796; -- Normal
UPDATE creature_template SET MinLootGold = 1328, MaxLootGold = 26576, LootId = 30398, PickpocketLootId = 26798, MechanicImmuneMask = 617299803 WHERE entry = 30398; -- Heroic
DELETE FROM creature_loot_template WHERE entry IN (30397,30398);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(30397,45912,0.1,0,1,1,0,''),
(30397,47241,100,0,1,1,0,''),
(30397,1,100,0,-35034,1,0,''),
(30398,45912,0.1,0,1,1,0,''),
(30398,47241,100,0,1,1,0,''),
(30398,1,100,0,-35034,1,0,'');
DELETE FROM reference_loot_template WHERE entry = 35034;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(35034,39152,25,0,1,1,0,''),
(35034,37728,0,1,1,1,0,''),
(35034,37731,0,1,1,1,0,''),
(35034,37730,0,1,1,1,0,''),
(35034,37729,0,1,1,1,0,''),
(35034,43228,100,0,4,4,51,''), -- condition aura active 57940
(35034,43852,8.5,0,1,1,0,''),
(35034,33470,100,0,1,1,0,''),
(35034,43876,8.5,0,1,1,0,'');
