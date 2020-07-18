-- Violet Stand - Crystalsong Forest

-- Objects
-- Teleport to Dalaran Crystal 191230
UPDATE gameobject SET guid = 5710974 WHERE guid = 15393;

-- Creatures
-- Warmage Ilsudria 32372
UPDATE creature SET guid = 5713730 WHERE guid = 66729;
-- Part of Warmage Ilsudria EAI: 
DELETE FROM dbscripts_on_relay WHERE id = 20295;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20295,100,31,27306,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Warmage Ilsudria EAI: search for 27306'),
(20295,200,15,48310,0,0,27306,125,1,0,0,0,0,0,0,0,0,'Part of Warmage Ilsudria EAI: cast on buddy');

-- Warmage Halister 32371
UPDATE creature SET guid = 5713731 WHERE guid = 65524;

-- Warmage Sarina 32369
UPDATE creature SET guid = 5713732 WHERE guid = 54535;

-- Gatekeeper Melindra 32373
UPDATE creature SET guid = 5713733 WHERE guid = 70951;

-- Librarian Belleford 32374
UPDATE creature SET guid = 5713734 WHERE guid = 72214;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 32374;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 5713734;
DELETE FROM creature_movement_template WHERE entry = 32374;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(32374,1,5747.04,1029.93,174.5359,3.385939,20000,0),
(32374,2,5752.69,1031.65,174.48,100,30000,0),
(32374,3,5753,1030.16,174.48,100,30000,0),
(32374,4,5750.98,1031.09,174.48,100,0,0),
(32374,5,5747.04,1029.93,174.5359,3.385939,120000,0);

-- Warmage Yurias 32375
UPDATE creature SET guid = 5713735 WHERE guid = 72215;
UPDATE creature SET position_x = 5747.312, position_y = 1008.31, position_z = 174.5359, orientation = 2.984513, spawndist = 0, MovementType = 2 WHERE guid = 5713735;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 32375;
DELETE FROM creature_movement_template WHERE entry = 32375;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(32375,1,5747.312,1008.31,174.5359,2.984513,60000,0),
(32375,2,5750.64,1006.57,174.5359,0.1570796,20000,0),
(32375,3,5747.312,1008.31,174.5359,2.984513,90000,0);

-- Azure Scalebane 31402
UPDATE creature SET guid = 5713736 WHERE guid = 72221;
DELETE FROM creature_addon WHERE guid = 72221;
-- missing added
DELETE FROM creature_addon WHERE guid IN (5713737,5713738);
DELETE FROM creature_movement WHERE id IN (5713737,5713738);
DELETE FROM game_event_creature WHERE guid IN (5713737,5713738);
DELETE FROM game_event_creature_data WHERE guid IN (5713737,5713738);
DELETE FROM creature_battleground WHERE guid IN (5713737,5713738);
DELETE FROM creature_linking WHERE guid IN (5713737,5713738)
 OR master_guid IN (5713737,5713738);
DELETE FROM creature WHERE guid IN (5713737,5713738);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(5713737,31402,571,1,1,0,0,5659.527,987.8398,174.5677,0.3141593,180,180,0,0,12175,0,0,0),
(5713738,31402,571,1,1,0,0,5660.187,1028.454,174.5627,2.792527,180,180,0,0,12175,0,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (5713736,5713737,5713738);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(5713736,0,0,1,0,0,0,29266),
(5713737,0,0,1,0,0,0,29266),
(5713738,0,0,1,0,0,0,29266);

-- Azure Spellweaver 31403
-- missing added
DELETE FROM creature_addon WHERE guid IN (5713739,5713740);
DELETE FROM creature_movement WHERE id IN (5713739,5713740);
DELETE FROM game_event_creature WHERE guid IN (5713739,5713740);
DELETE FROM game_event_creature_data WHERE guid IN (5713739,5713740);
DELETE FROM creature_battleground WHERE guid IN (5713739,5713740);
DELETE FROM creature_linking WHERE guid IN (5713739,5713740)
 OR master_guid IN (5713739,5713740);
DELETE FROM creature WHERE guid IN (5713739,5713740);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(5713739,31403,571,1,1,0,0,5699.435,978.3561,174.5627,2.199115,300,300,0,0,9740,8636,0,0),
(5713740,31403,571,1,1,0,0,5642.355,959.7368,173.1561,2.373648,300,300,0,0,9740,8636,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (5713739,5713740);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(5713739,0,0,1,0,0,0,29266),
(5713740,0,0,1,0,0,0,29266);
