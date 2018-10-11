-- The Vibrant Glade - Howling Fjord

-- Scarlet Ivy 
-- size corrected
UPDATE creature_template SET Scale = 0.5, MovementType = 1 WHERE entry = 23763;
-- creature summoned from spell: 42388
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 23763);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 23763);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 23763);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 23763);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 23763);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 23763) 
OR master_guid IN (SELECT guid FROM creature WHERE id = 23763);
DELETE FROM creature WHERE id = 23763;

-- Chill Nymph 23678
-- duplicate
DELETE FROM creature WHERE guid=107540;
DELETE FROM creature_addon WHERE guid=107540;
DELETE FROM creature_movement WHERE id=107540;
DELETE FROM game_event_creature WHERE guid=107540;
DELETE FROM game_event_creature_data WHERE guid=107540;
DELETE FROM creature_battleground WHERE guid=107540;
DELETE FROM creature_linking WHERE guid=107540
 OR master_guid=107540;
-- Updates
UPDATE creature SET position_x = 1976.406616, position_y = -4553.062012, position_z = 208.442963 WHERE guid = 107537;
UPDATE creature SET position_x = 2084.027832, position_y = -4577.147461, position_z = 216.402115 WHERE guid = 107548;
UPDATE creature SET position_x = 2003.506226, position_y = -4522.466309, position_z = 206.963684 WHERE guid = 107549;
UPDATE creature SET position_x = 2104.641357, position_y = -4518.089844, position_z = 215.160126 WHERE guid = 107550;
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE id = 23678;
