-- * should no longer be possible to loot the same items twice:
-- BRD - Chest of The Seven
-- BRD - Emperor Dagran Thaurissan
-- Stratholme - Cannon Master Willey 
-- Stratholme - Balnazzar
-- Stratholme - Baron Rivendare
-- DM - Alzzin the Wildshaper
-- DM - Immol'thar
-- DM - Prince Tortheldrin
-- DM - King Gordok

-- 'Chest of The Seven'
UPDATE gameobject SET position_x = 1265.85, position_y = -285.098, position_z = -78.2193, orientation = 3.90954, rotation0 = 0, rotation1 = 0, rotation2 = -0.927183, rotation3 = 0.374608 WHERE guid = 67872;
UPDATE gameobject_loot_template SET item = 11920, ChanceOrQuestChance = 0, mincountOrRef = 1, maxcount = 1 WHERE entry = 12260 and item = 12005;
REPLACE INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(12260, 11923, 0, 1, 1, 1, 0),
(12260, 11926, 0, 1, 1, 1, 0),
(12260, 11929, 0, 1, 1, 1, 0),
(12260, 11921, 0, 2, 1, 1, 0),
(12260, 11922, 0, 2, 1, 1, 0),
(12260, 11925, 0, 2, 1, 1, 0),
(12260, 11927, 0, 2, 1, 1, 0);
DELETE FROM reference_loot_template WHERE entry = 12005;
-- Doom'rel
UPDATE creature_template SET MinLootGold = 0, MaxLootGold = 0 WHERE Entry = 9039;

-- BRD - Emperor Dagran Thaurissan
DELETE FROM reference_loot_template WHERE entry = 35014;
DELETE FROM creature_loot_template WHERE entry = 9019 and item = 35014;
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(9019, 11684, 1, 1, 1, 1, 0),
(9019, 11815, 0, 1, 1, 1, 0),
(9019, 11924, 0, 2, 1, 1, 0),
(9019, 11928, 0, 2, 1, 1, 0),
(9019, 11930, 0, 1, 1, 1, 0),
(9019, 11931, 0, 1, 1, 1, 0),
(9019, 11932, 0, 2, 1, 1, 0),
(9019, 11933, 0, 1, 1, 1, 0),
(9019, 11934, 0, 2, 1, 1, 0),
(9019, 22204, 0, 1, 1, 1, 0),
(9019, 22207, 0, 2, 1, 1, 0);

-- Stratholme - Cannon Master Willey
DELETE FROM reference_loot_template WHERE entry = 35026;
DELETE FROM creature_loot_template WHERE entry = 10997 and item = 35026;
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(10997, 13380, 0, 1, 1, 1, 0),
(10997, 13381, 0, 1, 1, 1, 0),
(10997, 13382, 0, 1, 1, 1, 0),
(10997, 16708, 0, 1, 1, 1, 0),
(10997, 18721, 0, 1, 1, 1, 0),
(10997, 22403, 0, 2, 1, 1, 0),
(10997, 22404, 0, 2, 1, 1, 0),
(10997, 22405, 0, 2, 1, 1, 0),
(10997, 22406, 0, 2, 1, 1, 0),
(10997, 22407, 0, 2, 1, 1, 0);

-- Stratholme - Balnazzar
DELETE FROM reference_loot_template WHERE entry = 35027;
DELETE FROM creature_loot_template WHERE entry = 10813 and item = 35027;
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(10813, 12103, 0, 2, 1, 1, 0),
(10813, 13348, 0, 1, 1, 1, 0),
(10813, 13353, 1, 1, 1, 1, 0),
(10813, 13358, 0, 1, 1, 1, 0),
(10813, 13359, 0, 2, 1, 1, 0),
(10813, 13360, 0, 1, 1, 1, 0),
(10813, 13369, 0, 2, 1, 1, 0),
(10813, 16725, 0, 1, 1, 1, 0),
(10813, 18717, 0, 2, 1, 1, 0),
(10813, 18718, 0, 1, 1, 1, 0),
(10813, 18720, 0, 2, 1, 1, 0);

-- Stratholme - Baron Rivendare 
DELETE FROM reference_loot_template WHERE entry = 35028;
DELETE FROM creature_loot_template WHERE entry = 10440 and item = 35028;
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(10440, 13340, 0, 2, 1, 1, 0),
(10440, 13344, 0, 2, 1, 1, 0),
(10440, 13345, 0, 2, 1, 1, 0),
(10440, 13346, 0, 2, 1, 1, 0),
(10440, 13349, 0, 2, 1, 1, 0),
(10440, 13361, 0, 2, 1, 1, 0),
(10440, 13368, 0, 2, 1, 1, 0),
(10440, 13505, 1, 2, 1, 1, 0),
(10440, 22408, 0, 3, 1, 1, 0),
(10440, 22409, 0, 3, 1, 1, 0),
(10440, 22410, 0, 3, 1, 1, 0),
(10440, 22411, 0, 3, 1, 1, 0),
(10440, 22412, 0, 3, 1, 1, 0);

-- DM - Alzzin the Wildshaper
DELETE FROM reference_loot_template WHERE entry = 35017;
DELETE FROM creature_loot_template WHERE entry = 11492 and item = 35017;
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(11492, 18309, 0, 3, 1, 1, 0),
(11492, 18310, 0, 3, 1, 1, 0),
(11492, 18312, 0, 3, 1, 1, 0),
(11492, 18314, 0, 3, 1, 1, 0),
(11492, 18315, 0, 3, 1, 1, 0),
(11492, 18318, 0, 4, 1, 1, 0),
(11492, 18321, 0, 4, 1, 1, 0),
(11492, 18326, 0, 4, 1, 1, 0),
(11492, 18327, 0, 4, 1, 1, 0),
(11492, 18328, 0, 4, 1, 1, 0);

-- DM - Immolthar
DELETE FROM reference_loot_template WHERE entry = 35020;
DELETE FROM creature_loot_template WHERE entry = 11496 and item = 35020;
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(11496, 18370, 0, 2, 1, 1, 0),
(11496, 18372, 0, 3, 1, 1, 0),
(11496, 18377, 0, 3, 1, 1, 0),
(11496, 18379, 0, 2, 1, 1, 0),
(11496, 18381, 0, 3, 1, 1, 0),
(11496, 18384, 0, 3, 1, 1, 0),
(11496, 18385, 0, 2, 1, 1, 0),
(11496, 18389, 0, 3, 1, 1, 0),
(11496, 18391, 0, 2, 1, 1, 0),
(11496, 18394, 0, 2, 1, 1, 0);

-- DM - Prince Tortheldrin
DELETE FROM reference_loot_template WHERE entry = 35021;
DELETE FROM creature_loot_template WHERE entry = 11486 and item = 35021;
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES 
(11486, 18373, 0, 3, 1, 1, 0),
(11486, 18375, 0, 2, 1, 1, 0),
(11486, 18376, 0, 3, 1, 1, 0),
(11486, 18378, 0, 2, 1, 1, 0),
(11486, 18380, 0, 3, 1, 1, 0),
(11486, 18382, 0, 3, 1, 1, 0),
(11486, 18388, 0, 2, 1, 1, 0),
(11486, 18392, 0, 3, 1, 1, 0),
(11486, 18395, 0, 2, 1, 1, 0),
(11486, 18396, 0, 2, 1, 1, 0);

-- DM - King Gordok
DELETE FROM reference_loot_template WHERE entry = 35019;
DELETE FROM creature_loot_template WHERE entry = 11501 and item = 35019;
REPLACE INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(11501, 18520, 0, 2, 1, 1, 0),
(11501, 18521, 0, 2, 1, 1, 0),
(11501, 18522, 0, 2, 1, 1, 0),
(11501, 18523, 0, 2, 1, 1, 0),
(11501, 18524, 0, 3, 1, 1, 0),
(11501, 18525, 0, 3, 1, 1, 0),
(11501, 18526, 0, 3, 1, 1, 0),
(11501, 18527, 0, 3, 1, 1, 0);
