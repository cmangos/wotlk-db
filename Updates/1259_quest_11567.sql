-- q.11567 'The Ancient Armor of the Kvaldir'

-- Alanya
-- Option available only during q.
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 962101, condition_id = 1402 WHERE menu_id = 9621;
DELETE FROM conditions WHERE condition_entry = 1402;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1402, 9, 11567, 0);
-- Script
DELETE FROM dbscripts_on_gossip WHERE id = 962101;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(962101,0,15,50038,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(962101,1,0,0,0,0,0,0,0,2000001500,0,0,0,0,0,0,0,'say to player');
DELETE FROM dbscript_string WHERE entry = 2000001500;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001500,'Enjoy the ride! It\'s a one way trip!',0,0,0,3,NULL);

-- Harry's Bomber - 27932
UPDATE creature_template SET Expansion = 0, MinLevel = 70, MaxLevel = 70, MinLevelHealth = 4050, MaxLevelHealth = 4050, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 304, MinMeleeDmg = 125, MaxMeleeDmg = 165, InhabitType = 7, SpeedRun = 5, MovementType = 2, VehicleTemplateId = 90 WHERE entry = 27932;
DELETE FROM creature_template_addon WHERE entry = 27932;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27932,0,0,1,0,0,0,43775);
-- Waypoints
DELETE FROM creature_movement_template WHERE entry = 27932;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(27932,1,-170.469,-3588.19,-0.1378127,5000,2793201,4.502949),
(27932,2,-174.4882,-3608.789,4.14813,0,0,0),
(27932,3,-177.9799,-3625.581,9.39813,0,0,0),
(27932,4,-176.4415,-3677.083,9.39813,0,0,0),
(27932,5,-183.3317,-3810.037,11.09257,0,0,0),
(27932,6,-259.1576,-4150.835,23.14812,0,0,0),
(27932,7,-462.8598,-4691.708,23.14812,0,0,0),
(27932,8,-470.0875,-4990.103,40.19931,0,0,0),
(27932,9,-442.6166,-5213.771,40.19931,0,0,0),
(27932,10,-311.4662,-5396.983,76.64378,0,0,0),
(27932,11,-251.8118,-5561.788,73.19932,0,0,0),
(27932,12,-224.4948,-5815.915,73.19932,0,0,0),
(27932,13,-17.14985,-6131.504,26.69932,0,0,0),
(27932,14, 84.32823,-6289.158,1.365987,5000,2793202,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2793201,2793202);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2793201,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(2793201,0,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2793202,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(2793202,1,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Harry's Bomber - 28277
UPDATE creature_template SET UnitFlags = 32768 WHERE entry = 28277;
-- Option available only during q.
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 1021801, condition_id = 1402 WHERE menu_id = 10218;
-- Script
DELETE FROM dbscripts_on_gossip WHERE id = 1021801;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(1021801,0,15,61604,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Harry's Bomber - 32682
UPDATE creature_template SET Expansion = 0, MinLevel = 70, MaxLevel = 70, MinLevelHealth = 4050, MaxLevelHealth = 4050, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 304, MinMeleeDmg = 125, MaxMeleeDmg = 165, InhabitType = 7, SpeedRun = 5, MovementType = 2, VehicleTemplateId = 90 WHERE entry = 32682;
-- Waypoints
DELETE FROM creature_movement_template WHERE entry = 32682;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(32682, 1, 89.7416,-6286.08,1.262363,2000,2793201,1.58825),
(32682, 2, 61.83957,-6228.992,19.07242,0,0,0),
(32682, 3,-64.6518, -5908.95, 29.8502,0,0,0),
(32682, 4,-158.0859,-5631.193,29.8502,0,0,0),
(32682, 5,-436.5865,-5223.862,32.1002,0,0,0),
(32682, 6,-412.989, -5012.779,45.7391,0,0,0),
(32682, 7,-75.09814,-4341.288,64.29379,0,0,0),
(32682, 8,-51.86116,-4023.003,70.12712,0,0,0),
(32682, 9,-136.1673,-3716.832,59.96046,0,0,0),
(32682, 10,-170.8945,-3578.378,4.988236,5000,2793202,0);

-- Forsaken Deckhand
UPDATE creature SET position_x = 83.557266, position_y = -6293.268066, position_z = 2.478195, orientation = 5.270895, spawndist = 0, MovementType = 0 WHERE guid = 112397;
UPDATE creature SET position_x = 86.461456, position_y = -6311.127930, position_z = 2.707301, orientation = 4.537856, spawndist = 0, MovementType = 0 WHERE guid = 112374;
-- missing added - WoTLK Range 571x Free guids used
DELETE FROM creature_addon WHERE guid BETWEEN 5710196 AND 5710213;
DELETE FROM creature_movement WHERE id BETWEEN 5710196 AND 5710213;
DELETE FROM game_event_creature WHERE guid BETWEEN 5710196 AND 5710213;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 5710196 AND 5710213;
DELETE FROM creature_battleground WHERE guid BETWEEN 5710196 AND 5710213;
DELETE FROM creature_linking WHERE guid BETWEEN 5710196 AND 5710213
OR master_guid BETWEEN 5710196 AND 5710213;
DELETE FROM creature WHERE guid BETWEEN 5710196 AND 5710213;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(5710196,23982,571,1,1,0,0,51.7076,-6311.95,3.07946,5.77704,300,300,0,0,20958,0,0,0),
(5710197,23982,571,1,1,0,0,70.9303,-6330.43,3.46134,2.844887,300,300,0,0,20958,0,0,0),
(5710198,23982,571,1,1,0,0,90.354,-6339.57,7.08323,4.712389,300,300,0,0,20958,0,0,0),
(5710199,23982,571,1,1,0,0,97.1263,-6329.79,6.15611,5.375614,300,300,0,0,20958,0,0,0),
(5710200,23982,571,1,1,0,0,98.5698,-6344.55,7.60561,2.86234,300,300,0,0,20958,0,0,0),
(5710201,23982,571,1,1,0,0,120.393,-6350.1,13.306,4.153883,300,300,0,0,20958,0,0,0),
(5710202,23982,571,1,1,0,0,131.832,-6340.61,12.55,0.8203048,300,300,0,0,20958,0,0,0),
(5710203,23982,571,1,1,0,0,129.186,-6345.83,0.167526,5.5676,300,300,0,0,20958,0,0,0),
(5710204,23982,571,1,1,0,0,104.829,-6357.47,7.49159,5.235988,300,300,0,0,20958,0,0,0),
(5710205,23982,571,1,1,0,0,133.646,-6343.11,18.3464,1.48353,300,300,0,0,20958,0,0,0),
(5710206,23982,571,1,1,0,0,119.949,-6359.69,13.1438,5.201081,300,300,0,0,20958,0,0,0),
(5710207,23982,571,1,1,0,0,110.554,-6371.23,7.49816,1.27409,300,300,0,0,20958,0,0,0),
(5710208,23982,571,1,1,0,0,115.475,-6363.24,0.167809,2.408554,300,300,0,0,20958,0,0,0),
(5710209,23982,571,1,1,0,0,129.184,-6351.27,0.167885,3.490659,300,300,0,0,20958,0,0,0),
(5710210,23982,571,1,1,0,0,103.771,-6368.57,0.173394,2.094395,300,300,0,0,20958,0,0,0),
(5710211,23982,571,1,1,0,0,138.983,-6343.52,0.555263,2.792527,300,300,0,0,20958,0,0,0),
(5710212,23982,571,1,1,0,0,96.0175,-6378.46,4.24244,5.532694,300,300,0,0,20958,0,0,0),
(5710213,23982,571,1,1,0,0,100.026,-6375.11,18.9151,2.600541,300,300,0,0,20958,0,0,0);
-- Invidual addons
DELETE FROM creature_addon WHERE guid IN (112397,112374,5710196,5710197,5710198,5710199,5710200,5710201,5710202,5710203,5710204,5710205,5710206,5710207,5710208,5710209,5710210,5710211,5710212,5710213);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112397,0,0,1,0,0,0,'29266'),
(112374,0,0,1,0,0,0,'29266'),
(5710196,0,0,1,0,0,0,'29266'),
(5710197,0,0,1,0,0,0,'29266'),
(5710198,0,0,1,0,0,0,'29266'),
(5710199,0,0,1,0,0,0,'29266'),
(5710200,0,0,1,0,0,0,'29266'),
(5710201,0,0,1,0,0,0,'29266'),
(5710202,0,0,1,0,0,0,'29266'),
(5710203,0,0,1,0,0,0,'29266'),
(5710204,0,0,1,0,0,0,'29266'),
(5710205,0,0,1,0,0,0,'29266'),
(5710206,0,0,1,0,0,0,'29266'),
(5710207,0,0,1,0,0,0,'29266'),
(5710208,0,0,1,0,0,0,'29266'),
(5710209,0,0,1,0,0,0,'29266'),
(5710210,0,0,1,0,0,0,'29266'),
(5710211,0,0,1,0,0,0,'29266'),
(5710212,0,0,1,0,0,0,'29266'),
(5710213,0,0,1,0,0,0,'29266');

-- Vengeful Kvaldir Spirit
UPDATE creature SET position_x = 98.409668, position_y = -6311.735840, position_z = 3.024888, spawndist = 7, MovementType = 1 WHERE guid = 86766;
UPDATE creature SET position_x = 70.397163, position_y = -6340.569824, position_z = 3.429829, spawndist = 7, MovementType = 1 WHERE guid = 86765;
UPDATE creature SET position_x = 100.672256, position_y = -6350.550293, position_z = 7.368619, spawndist = 5, MovementType = 1 WHERE guid = 86770;
UPDATE creature SET position_x = 112.773499, position_y = -6364.286133, position_z = 0.167356, orientation = 2.374028, spawndist = 0, MovementType = 2 WHERE guid = 86764;
-- Waypoints
DELETE FROM creature_movement WHERE id IN (86764);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #86764
(86764,1,132.087,-6346.02,0.30114,0,0,0.599806),
(86764,2,105.522,-6370.34,0.173003,0,0,3.87492);

-- Invisible Stalker (Floating)
-- missing added - WoTLK Range 571x Free guids used
DELETE FROM creature_addon WHERE guid BETWEEN 5710214 AND 5710224;
DELETE FROM creature_movement WHERE id BETWEEN 5710214 AND 5710224;
DELETE FROM game_event_creature WHERE guid BETWEEN 5710214 AND 5710224;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 5710214 AND 5710224;
DELETE FROM creature_battleground WHERE guid BETWEEN 5710214 AND 5710224;
DELETE FROM creature_linking WHERE guid BETWEEN 5710214 AND 5710224
OR master_guid BETWEEN 5710214 AND 5710224;
DELETE FROM creature WHERE guid BETWEEN 5710214 AND 5710224;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(5710214,23033,571,1,1,0,0,122.4542,-6349.216,13.51903,0.06981317,300,300,0,0,42,0,0,0),
(5710215,23033,571,1,1,0,0,121.043,-6350.6,0.167368,5.36909,300,300,0,0,42,0,0,0),
(5710216,23033,571,1,1,0,0,105.1841,-6356.575,7.529881,2.234021,300,300,0,0,42,0,0,0),
(5710217,23033,571,1,1,0,0,134.3599,-6343.983,18.43672,4.13643,300,300,0,0,42,0,0,0),
(5710218,23033,571,1,1,0,0,137.363,-6341.455,0.6397853,4.712389,300,300,0,0,42,0,0,0),
(5710219,23033,571,1,1,0,0,126.0219,-6359.624,13.29924,0.8552113,300,300,0,0,42,0,0,0),
(5710220,23033,571,1,1,0,0,100.9148,-6372.519,0.2711143,1.850049,300,300,0,0,42,0,0,0),
(5710221,23033,571,1,1,0,0,112.8128,-6370.394,0.2509333,5.323254,300,300,0,0,42,0,0,0),
(5710222,23033,571,1,1,0,0,132.2583,-6350.229,0.2506703,0.9075712,300,300,0,0,42,0,0,0),
(5710223,23033,571,1,1,0,0,108.9089,-6372.98,7.581032,1.151917,300,300,0,0,42,0,0,0),
(5710224,23033,571,1,1,0,0,102.7771,-6374.673,18.44771,1.48353,300,300,0,0,42,0,0,0);
-- Invidual addons
DELETE FROM creature_addon WHERE guid BETWEEN 5710214 AND 5710224;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(5710214,0,0,1,0,0,0,'45319'),
(5710215,0,0,1,0,0,0,'45319'),
(5710216,0,0,1,0,0,0,'45319'),
(5710217,0,0,1,0,0,0,'45319'),
(5710218,0,0,1,0,0,0,'45319'),
(5710219,0,0,1,0,0,0,'45319'),
(5710220,0,0,1,0,0,0,'45319'),
(5710221,0,0,1,0,0,0,'45319'),
(5710222,0,0,1,0,0,0,'45319'),
(5710223,0,0,1,0,0,0,'45319'),
(5710224,0,0,1,0,0,0,'45319');
