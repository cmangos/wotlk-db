-- Winterfin Retreat - Borean Tundra

-- Winterfin Gatherer
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid = 12159;
DELETE FROM creature_addon WHERE guid = 12159;
DELETE FROM creature_movement WHERE id = 12159;
DELETE FROM game_event_creature WHERE guid = 12159;
DELETE FROM game_event_creature_data WHERE guid = 12159;
DELETE FROM creature_battleground WHERE guid = 12159;
DELETE FROM creature_linking WHERE guid = 12159 
OR master_guid = 12159;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(12159,25198,571,1,1,0,499,4384.93,6104.45,0.310523,1.17594,300,300,7,0,1951,0,0,1);
-- Gossip
-- Q.11571 must be completed forst before player can communicate with them
UPDATE gossip_menu SET condition_id = 120 WHERE entry = 9138 AND text_id = 12363;
-- Updates
UPDATE creature SET spawndist = 7, MovementType = 1 WHERE guid = 105992;
UPDATE creature SET position_x = 4418.952637, position_y = 6144.276855, position_z = 6.374347, spawndist = 7, MovementType = 1 WHERE guid = 105987;
UPDATE creature SET position_x = 4379.948730, position_y = 6138.505371, position_z = -1.597326, spawndist = 10, MovementType = 1 WHERE guid = 105988;
UPDATE creature SET position_x = 4392.704102, position_y = 6178.390625, position_z = -3.621251, spawndist = 10, MovementType = 1 WHERE guid = 105990;
UPDATE creature SET position_x = 4418.356445, position_y = 6177.697266, position_z = -1.524730, spawndist = 10, MovementType = 1 WHERE guid = 106043;
UPDATE creature SET position_x = 4374.064453, position_y = 6085.708984, position_z = 0.472754, spawndist = 0, MovementType = 2 WHERE guid = 105991;
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (105991);
DELETE FROM creature_movement WHERE id IN (105991);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(105991,1,4366.26,6103.79,0.250763,30000,0,3.66642),
(105991,2,4374.064453,6085.708984,0.472754,45000,2519801,100);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2519801);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2519801,1,20,1,7,0,0,0,0x08,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(2519801,44,20,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:wps');

-- Mrmrglmr
-- Gossip
-- Q.11571 must be completed forst before player can communicate with him
DELETE FROM gossip_menu WHERE entry = 9134;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9134, 12352, 0, 120),
(9134, 12354, 0, 0);
-- missing npc_text added
DELETE FROM npc_text WHERE ID = 12354;
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1, em0_2, em0_3, em0_4, em0_5, text1_0, text1_1, lang1, prob1, em1_0, em1_1, em1_2, em1_3, em1_4, em1_5, text2_0, text2_1, lang2, prob2, em2_0, em2_1, em2_2, em2_3, em2_4, em2_5, text3_0, text3_1, lang3, prob3, em3_0, em3_1, em3_2, em3_3, em3_4, em3_5, text4_0, text4_1, lang4, prob4, em4_0, em4_1, em4_2, em4_3, em4_4, em4_5, text5_0, text5_1, lang5, prob5, em5_0, em5_1, em5_2, em5_3, em5_4, em5_5, text6_0, text6_1, lang6, prob6, em6_0, em6_1, em6_2, em6_3, em6_4, em6_5, text7_0, text7_1, lang7, prob7, em7_0, em7_1, em7_2, em7_3, em7_4, em7_5) VALUES
(12354, 'Ahglrglglrglgrrr!', '', 0, 1, 36, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Ahlurglgr
-- Gossip
-- Q.11571 must be completed forst before player can communicate with him
DELETE FROM gossip_menu WHERE entry = 9130;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9130, 12343, 0, 0),
(9130, 12344, 0, 120);
-- should become vendor after q.11559 'Winterfin Commerce' completed
UPDATE gossip_menu_option SET condition_id = 1221 WHERE menu_id = 9130; 
DELETE FROM conditions WHERE condition_entry = 1221;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1221, 8, 11559, 0);
