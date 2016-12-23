-- Bladespine Basilisk
-- (WoWHead) They were removed in 2.1 when the Blade's Edge plateaus were turned into questing areas.
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 22187);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 22187);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 22187);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 22187);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 22187);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 22187) OR master_guid IN (SELECT guid FROM creature WHERE id = 22187);
DELETE FROM creature WHERE id = 22187;

-- Whirligig Wafflefry
-- script corrected
DELETE FROM dbscripts_on_creature_movement WHERE id = 2588501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(2588501,3,31,19475,30,0,0,0,-14000,0,0,0,0,0,0,0,'search for 19475'),
(2588501,4,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2588501,4,21,1,0,19475,50,7,0,0,0,0,0,0,0,0,'buddy active'),
(2588501,5,0,0,0,0,0,0,2000005201,0,0,0,0,0,0,0,''),
(2588501,7,3,0,0,19475,50,7,0,0,0,0,0,0,0,0.452172,'force buddy to move'),
(2588501,10,0,0,0,19475,50,7,2000005205,0,0,0,0,0,0,0,'force buddy to: say text'),
(2588501,15,3,0,0,19475,50,7,0,0,0,0,0,0,0,3.4383,'force buddy to move'),
(2588501,16,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2588501,16,21,0,0,19475,50,7,0,0,0,0,0,0,0,0,'buddy unactive');

-- q.7782 'The Lord of Blackrock' After patch (3.0.2) King Varian Wrynn is the right person to start this quest
-- author: @NeatElves 
DELETE FROM creature_questrelation WHERE id = 1748 AND quest = 7782;
