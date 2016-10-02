-- Draenei Zone - polishing PArt 2.

-- Red Crystal Bunny
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 63622;
DELETE FROM creature_movement WHERE id = 63622;
UPDATE creature_template SET MovementType = 2 WHERE entry = 17947;
DELETE FROM creature_movement_template WHERE entry = 17947;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(17947,1,-4574.52,-13320.3,89.2015, 360000, 1794701,3.05433, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1794701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1794701,1,9,29898,86400,0,0,0,0,0,0,0,0,0,0,0,'resp object 182070');
DELETE FROM dbscripts_on_creature_death WHERE id = 17947;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17947,0,40,0,0,182070,100,1,0,0,0,0,0,0,0,0,'');
-- links
DELETE FROM creature_linking WHERE guid IN (63622,87660);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(63622, 57439, 4+128), -- Red Crystal Bunny
(87660, 57439, 1); -- Blood Elf Scout
-- spawntime corrected for object
UPDATE gameobject SET spawntimesecs = -180 WHERE guid = 29898;
-- respawntime for Surveyor Candress - corrected
UPDATE creature SET spawntimesecs = 120 WHERE guid = 57439;

-- q.9453 'Find Acteon!'
-- next quest shouldn't show up automat. 
UPDATE quest_template SET NextQuestInChain = 0 WHERE entry = 9453;
DELETE FROM npc_gossip WHERE npc_guid = 59517;

-- quest item drop corrected
UPDATE creature_loot_template SET ChanceOrQuestChance = -58 WHERE entry = 17196 AND item = 23685;
