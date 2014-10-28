-- q.12701 'Massacre At Light's Point'
-- Mine Car -- update
UPDATE creature_template SET MinLevel = 56, MaxLevel = 56, FactionAlliance = 35, FactionHorde = 35, UnitFlags = 520 WHERE entry = 28817; -- faction should be = 1610
-- Scarlet Miner
UPDATE creature_template SET MovementType = 2 WHERE entry = 28841;
DELETE FROM creature_movement_template WHERE entry = 28841;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(28841,1,2386.89,-5901.15,108.503,6000,2884101,0,0,0,0,0,0,0,0,0.0305656,0,0),
(28841,2,2366.93,-5906.73,106.928,0,0,0,0,0,0,0,0,0,0,3.1584,0,0),
(28841,3,2332.73,-5902.29,100.307,0,0,0,0,0,0,0,0,0,0,3.08379,0,0),
(28841,4,2317.88,-5902.86,94.9301,0,0,0,0,0,0,0,0,0,0,3.29977,0,0),
(28841,5,2301.5,-5908.89,87.569,0,0,0,0,0,0,0,0,0,0,3.78279,0,0),
(28841,6,2295.23,-5916.3,83.1045,0,0,0,0,0,0,0,0,0,0,4.46216,0,0),
(28841,7,2290.66,-5928.75,74.3088,0,0,0,0,0,0,0,0,0,0,4.65739,0,0),
(28841,8,2283.12,-5959.27,55.8999,0,0,0,0,0,0,0,0,0,0,4.06161,0,0),
(28841,9,2271.77,-5970.92,48.815,0,0,0,0,0,0,0,0,0,0,3.61394,0,0),
(28841,10,2250.55,-5980.45,36.277,0,0,0,0,0,0,0,0,0,0,3.67677,0,0),
(28841,11,2241.79,-5987.29,31.6077,0,0,0,0,0,0,0,0,0,0,3.9438,0,0),
(28841,12,2233.43,-5998.21,24.4464,0,0,0,0,0,0,0,0,0,0,4.18335,0,0),
(28841,13,2222.22,-6016.38,10.5408,0,0,0,0,0,0,0,0,0,0,4.15979,0,0),
(28841,14,2206.35,-6051.64,6.24328,0,0,0,0,0,0,0,0,0,0,4.28152,0,0),
(28841,15,2189.89,-6078.5,3.60618,0,0,0,0,0,0,0,0,0,0,4.45195,0,0),
(28841,16,2183.44,-6099.19,0.853,0,0,0,0,0,0,0,0,0,0,4.44252,0,0),
(28841,17,2176.59,-6128.98,1.09618,0,0,0,0,0,0,0,0,0,0,4.45822,0,0),
(28841,18,2168.7,-6155.02,1.37583,0,0,0,0,0,0,0,0,0,0,3.69246,0,0),
(28841,19,2134.1,-6167.12,0.389482,0,0,0,0,0,0,0,0,0,0,4.2934,0,0),
(28841,20,2122.55,-6185.47,14.1255,0,0,0,0,0,0,0,0,0,0,4.2398,0,0),
(28841,21,2115.67,-6196.45,13.3122,0,0,0,0,0,0,0,0,0,0,1.28671,0,0),
(28841,22,2118.73,-6192.05,13.2693,10000,2884102,0,0,0,0,0,0,0,0,1.86369,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2884101,2884102); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2884101,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Scarlet Miner active'),
(2884101,2,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2884101,2,0,0,0,0,0,0,2000000373,0,0,0,0,0,0,0,''),
(2884101,5,15,52595,0,28817,15,1,0,0,0,0,0,0,0,0,'cast 52595 on buddy'),
(2884102,1,3,0,0,0,0,0,0,0,0,0,0,0,0,4.20496,''),
(2884102,3,0,0,0,0,0,0,2000000374,0,0,0,0,0,0,0,''),
(2884102,5,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Scarlet Miner unactive'),
(2884102,6,14,46598,0,0,0,2,0,0,0,0,0,0,0,0,'Ride Vehicle Hardcoded - removed'),
(2884102,7,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'desp');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000373 AND 2000000374;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000373,'Where\'d this come from? I better get this down to the ships before the foreman sees it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL),
(2000000374,'I\'ll just leave it here and nobody will be the wiser!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
DELETE FROM creature_linking_template WHERE entry = 28817;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES    
(28817,609,28841,512+8192,15); -- let them despawn together!!!
-- spell update
DELETE FROM spell_target_position WHERE id = 52464;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES 
(52464,609,2390.14,-5903.44,109.249,0); -- req for linking
-- 52589 Skeletal Gryphon Escape -- should be casted after .. objective completed/leave vehicle
-- Scourge Gryphon
UPDATE creature_template SET MovementType = 2, InhabitType = 5 WHERE entry = 28864;
DELETE FROM creature_movement_template WHERE entry = 28864;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(28864,6,2360.925,-5710.754,155.4011,5000,2886401,0,0,0,0,0,0,0,0,0,0,0),
(28864,5,2347.977,-5736.882,167.929,0,0,0,0,0,0,0,0,0,0,0,0,0),
(28864,4,2306.983,-5872.798,177.6512,0,0,0,0,0,0,0,0,0,0,0,0,0),
(28864,3,2281.503,-5955.75,131.79,0,0,0,0,0,0,0,0,0,0,0,0,0),
(28864,2,2220.663,-6030.991,70.01215,0,0,0,0,0,0,0,0,0,0,0,0,0),
(28864,1,2191.454,-6131.876,48.42883,0,0,0,0,0,0,0,0,0,0,0,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2886401; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2886401,3,14,46598,0,0,0,2,0,0,0,0,0,0,0,0,'Ride Vehicle Hardcoded - removed'),
(2886401,4,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'desp');

-- Duplicate removed
DELETE FROM creature WHERE guid = 129164;
DELETE FROM creature_addon WHERE guid = 129164;
DELETE FROM creature_movement WHERE id = 129164;
DELETE FROM game_event_creature WHERE guid = 129164;
DELETE FROM game_event_creature_data WHERE guid = 129164;
DELETE FROM creature_battleground WHERE guid = 129164;
DELETE FROM creature_linking WHERE guid = 129164 OR master_guid = 129164;