-- Quests 'Bijou's Belongings'
-- http://www.wowhead.com/quest=4982 should be Horde only
-- http://www.wowhead.com/quest=5001 should be Alliance only
UPDATE quest_template SET RequiredRaces = 690 WHERE entry = 4982;
UPDATE quest_template SET RequiredRaces = 1101 WHERE entry = 5001;

-- ClassicDB [297]
-- Author : Cala
-- Added GOs for quest 4982 in Blackrock Spire
-- Spawned missing gameobjects Bijou's belongings
DELETE FROM gameobject WHERE guid BETWEEN 93927 AND 93929;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(93927, 175334, 229,1,1, 33.7166, -466.067, -18.4651, -1.53589, 0, 0, 0, 0, 120, 100, 1),
(93928, 175334, 229,1,1, -78.5492, -402.515, -18.935, 5.53805, 0, 0, 0.36401, -0.931395, 120, 100, 1),
(93929, 175334, 229,1,1, -9.06949, -462.313, -18.6442, 3.13474, 0, 0, 0.999994, 0.00342519, 120, 100, 1);

-- Created pool for Bijou's belongings
DELETE FROM pool_template WHERE entry = 348;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(348, 1, 'QUEST OBJECT - Bijous Belongings - 175334');
DELETE FROM pool_gameobject_template WHERE id = 175334;
INSERT INTO pool_gameobject_template (id, pool_entry, chance, description) VALUES 
(175334, 348, 0, 'Bijous Belongings');
