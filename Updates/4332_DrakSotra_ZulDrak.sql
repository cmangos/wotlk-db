-- Drak'Sotra - Zul'Drak
-- q.12512 'Leave No One Behind'
-- q.12509 'Troll Patrol: Intestinal Fortitude' -- also fixed here
-- q.12606 'Cocooned!' -- also fixed here

-- q.12512 'Leave No One Behind'
-- removed wrong req.
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 12512;
-- Dr. Rogers 28125
UPDATE creature SET position_x = 5255.43, position_y = -3530.281, position_z = 291.7579, orientation = 3.874631 WHERE guid = 521209;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28125);
DELETE FROM creature_template_addon WHERE entry = 28125;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(28125,0,8,1,1,0,0,NULL);
-- Argent Footman 28117
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 534978 AND 534985;
DELETE FROM creature_movement WHERE id BETWEEN 534978 AND 534985;
DELETE FROM game_event_creature WHERE guid BETWEEN 534978 AND 534985;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 534978 AND 534985;
DELETE FROM creature_battleground WHERE guid BETWEEN 534978 AND 534985;
DELETE FROM creature_linking WHERE guid BETWEEN 534978 AND 534985
 OR master_guid BETWEEN 534978 AND 534985;
DELETE FROM creature WHERE guid BETWEEN 534978 AND 534985;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(534978,28117,571,1,1,0,0,5251.745,-3529.29,291.7581,3.822271,300,300,0,0,0,0,0,0),
(534979,28117,571,1,1,0,0,5254.106,-3531.658,291.7579,3.857178,300,300,0,0,0,0,0,0),
(534980,28117,571,1,1,0,0,5256.383,-3534.295,291.758,3.822271,300,300,0,0,0,0,0,0),
(534981,28117,571,1,1,0,0,5254.899,-3486.914,289.3379,2.251475,300,300,0,0,0,0,0,0),
(534982,28117,571,1,1,0,0,5244.46,-3496.665,289.1789,2.181662,300,300,0,0,0,0,0,0),
(534983,28117,571,1,1,0,0,5234.966,-3497.907,289.2205,0,300,300,0,0,0,0,0,4),
(534984,28117,571,1,1,0,0,5264.44,-3465.556,289.1319,0,300,300,0,0,0,0,0,4),
(534985,28117,571,1,1,0,0,5296.43,-3464.81,289.096,0,300,300,0,0,0,0,0,4);
DELETE FROM creature_movement WHERE id IN (534983,534984,534985);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(534983,1,5234.966,-3497.907,289.2205,100,0,0),
(534983,2,5238.514,-3485.903,289.2205,100,0,0),
(534983,3,5221.12,-3468.321,289.193,100,0,0),
(534983,4,5208.602,-3464.686,289.1041,100,0,0),
(534984,1,5264.44,-3465.556,289.1319,100,0,0),
(534984,2,5250.542,-3469.569,289.2205,100,0,0),
(534984,3,5239.97,-3456.992,289.1319,100,0,0),
(534984,4,5243.359,-3436.381,289.1319,100,0,0),
(534985,1,5296.43,-3464.81,289.096,100,0,0),
(534985,2,5291,-3455.44,289.096,100,0,0),
(534985,3,5286.48,-3437.98,289.096,100,0,0),
(534985,4,5273.4,-3422.47,289.096,100,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (534978,534979,534980);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(534978,0,7,1,0,0,0,NULL),
(534979,0,7,1,0,0,0,NULL),
(534980,0,7,1,0,0,0,NULL);
DELETE FROM `creature_spawn_data` WHERE guid IN (534978,534979,534980);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(534978,20037),(534979,20037),(534980,20037);
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (20037);
INSERT INTO `creature_spawn_data_template` (`entry`, `UnitFlags`) VALUES
(20037,33536);
-- Defeated Argent Footman 28156
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 534986 AND 534997;
DELETE FROM creature_movement WHERE id BETWEEN 534986 AND 534997;
DELETE FROM game_event_creature WHERE guid BETWEEN 534986 AND 534997;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 534986 AND 534997;
DELETE FROM creature_battleground WHERE guid BETWEEN 534986 AND 534997;
DELETE FROM creature_linking WHERE guid BETWEEN 534986 AND 534997
 OR master_guid BETWEEN 534986 AND 534997;
DELETE FROM creature WHERE guid BETWEEN 534986 AND 534997;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(534986,28156,571,1,1,0,0,5007.875,-3210.148,278.5777,3.508112,300,300,0,0,0,0,0,0),
(534987,28156,571,1,1,0,0,5057.572,-3140.934,278.6376,2.6529,300,300,0,0,0,0,0,0),
(534988,28156,571,1,1,0,0,5063.661,-3182.015,278.6122,4.782202,300,300,0,0,0,0,0,0),
(534989,28156,571,1,1,0,0,5201.292,-3436.875,289.1792,5.654867,300,300,0,0,0,0,0,0),
(534990,28156,571,1,1,0,0,5313.237,-3393.622,297.5677,3.159046,300,300,0,0,0,0,0,0),
(534991,28156,571,1,1,0,0,5205.452,-3301.382,278.6382,5.5676,300,300,0,0,0,0,0,0),
(534992,28156,571,1,1,0,0,5205.016,-3249.204,273.9963,6.003932,300,300,0,0,0,0,0,0),
(534993,28156,571,1,1,0,0,5281.521,-3248.244,281.175,1.43117,300,300,0,0,0,0,0,0),
(534994,28156,571,1,1,0,0,5241.197,-3254.057,278.6382,4.049164,300,300,0,0,0,0,0,0),
(534995,28156,571,1,1,0,0,5318.353,-3250.743,278.6382,4.031711,300,300,0,0,0,0,0,0),
(534996,28156,571,1,1,0,0,5015.82,-3267.528,281.217,1.204277,300,300,0,0,0,0,0,0),
(534997,28156,571,1,1,0,0,5453.532,-3289.909,292.9978,0.9599311,300,300,0,0,0,0,0,0);
-- Withered Argent Footman 28158
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28158);
DELETE FROM creature_template_addon WHERE entry = 28158;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(28158,0,0,0,0,0,0,NULL);
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 534998 AND 535001;
DELETE FROM creature_movement WHERE id BETWEEN 534998 AND 535001;
DELETE FROM game_event_creature WHERE guid BETWEEN 534998 AND 535001;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 534998 AND 535001;
DELETE FROM creature_battleground WHERE guid BETWEEN 534998 AND 535001;
DELETE FROM creature_linking WHERE guid BETWEEN 534998 AND 535001
 OR master_guid BETWEEN 534998 AND 535001;
DELETE FROM creature WHERE guid BETWEEN 534998 AND 535001;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(534998,28158,571,1,1,0,0,5016.08,-3128.09,278.554,5.95455,300,300,0,0,0,0,0,0),
(534999,28158,571,1,1,0,0,5058.87,-3181.637,279.175,3.184508,300,300,0,0,0,0,0,0),
(535000,28158,571,1,1,0,0,5203.17,-3411.33,289.096,5.45188,300,300,0,0,0,0,0,0),
(535001,28158,571,1,1,0,0,5119.04,-3140.95,273.817,2.96181,300,300,0,0,0,0,0,0);
UPDATE creature SET position_x = 5323.789551, position_y = -3164.068115, position_z = 278.555481 WHERE guid = 521347;
UPDATE creature SET position_x = 5271.687500, position_y = -3010.651367, position_z = 288.169983 WHERE guid = 521341;
UPDATE creature SET position_x = 5156.196289, position_y = -3305.133545, position_z = 278.555328 WHERE guid = 521358;
UPDATE creature SET position_x = 5158.084473, position_y = -3396.982422, position_z = 289.096161 WHERE guid = 521354;
UPDATE creature SET position_x = 5034.064941, position_y = -3238.987793, position_z = 278.554382 WHERE guid = 521359;
UPDATE creature SET position_x = 5055.119141, position_y = -3134.385986, position_z = 278.554535 WHERE guid = 521360;
UPDATE creature SET position_x = 5166.572266, position_y = -2995.253662, position_z = 279.697876 WHERE guid = 521352;
UPDATE creature SET position_x = 5200.196777, position_y = -3017.016846, position_z = 278.555420 WHERE guid = 521342;
UPDATE creature SET position_x = 5277.822266, position_y = -3125.051270, position_z = 278.555115 WHERE guid = 521362;
UPDATE creature SET position_x = 5228.769531, position_y = -3071.928223, position_z = 278.555573 WHERE guid = 521344;
UPDATE creature SET position_x = 5345.291992, position_y = -3211.348633, position_z = 288.169952 WHERE guid = 521346;
UPDATE creature SET position_x = 5186.630371, position_y = -3207.763428, position_z = 273.731720 WHERE guid = 521356;
UPDATE creature SET position_x = 5128.640137, position_y = -3064.572754, position_z = 278.554932, spawndist=10, MovementType=1 WHERE guid = 521355;
UPDATE creature SET position_x = 5208.152832, position_y = -3149.345459, position_z = 273.690979, spawndist=10, MovementType=1 WHERE guid = 521343;
UPDATE creature SET position_x = 5149.560547, position_y = -3122.375732, position_z = 272.839050, spawndist=10, MovementType=1 WHERE guid = 521350;
UPDATE creature SET spawndist=10, MovementType=1 WHERE id = 28158;
DELETE FROM dbscripts_on_relay WHERE `id` = 20647;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20647,1,31,28156,30,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Withered Argent Footman 28158 EAI: search for 28156'),
(20647,100,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Withered Argent Footman 28158 EAI: idle'),
(20647,101,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Withered Argent Footman 28158 EAI: RUN ON'),
(20647,110,37,0,0,0,28156,35,1,0,0,0,0,0,0,0,0,'Part of Withered Argent Footman 28158 EAI: move towards target'),
(20647,7000,1,398,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Withered Argent Footman 28158 EAI: emote'),
(20647,7100,15,54450,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Withered Argent Footman 28158 EAI: self cast'),
(20647,7200,15,45857,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Withered Argent Footman 28158 EAI: self cast'),
(20647,10000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Withered Argent Footman 28158 EAI: emote'),
(20647,10001,20,1,10,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Withered Argent Footman 28158 EAI: randommovement');
-- Crusader Lamoof 28141
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28141);
DELETE FROM creature_template_addon WHERE entry = 28141;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(28141,0,7,1,0,0,0,NULL);
UPDATE creature_template SET GossipMenuId=9655 WHERE entry=28141;
DELETE FROM gossip_menu WHERE entry=9655;
INSERT INTO gossip_menu (entry, text_id) VALUES
(9655, 13078);
-- Crusader Jonathan 28133
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28133);
DELETE FROM creature_template_addon WHERE entry = 28133;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(28133,0,7,1,0,0,0,NULL);
-- Crusader Josephine 28143
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28143);
DELETE FROM creature_template_addon WHERE entry = 28143;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(28143,0,7,1,0,0,0,NULL);
UPDATE creature_template SET GossipMenuId=9657 WHERE entry=28143;
DELETE FROM gossip_menu WHERE entry=9657;
INSERT INTO gossip_menu (entry, text_id) VALUES
(9657, 13080);
-- Crusade Recruit 28090
UPDATE creature_template SET UnitFlags = 512 WHERE entry = 28090;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28090);
DELETE FROM creature_template_addon WHERE entry = 28090;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(28090,0,0,1,0,431,0,NULL);
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 535002 AND 535015;
DELETE FROM creature_movement WHERE id BETWEEN 535002 AND 535015;
DELETE FROM game_event_creature WHERE guid BETWEEN 535002 AND 535015;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535002 AND 535015;
DELETE FROM creature_battleground WHERE guid BETWEEN 535002 AND 535015;
DELETE FROM creature_linking WHERE guid BETWEEN 535002 AND 535015
 OR master_guid BETWEEN 535002 AND 535015;
DELETE FROM creature WHERE guid BETWEEN 535002 AND 535015;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(535002,28090,571,1,1,0,0,5016.925,-3103.254,278.6376,4.520403,300,300,0,0,0,0,0,0),
(535003,28090,571,1,1,0,0,5068.354,-3168.072,279.0438,4.991642,300,300,0,0,0,0,0,0),
(535004,28090,571,1,1,0,0,5050.277,-3316.515,278.6382,1.32645,300,300,0,0,0,0,0,0),
(535005,28090,571,1,1,0,0,5101.08,-3324.404,278.6728,0.122173,300,300,0,0,0,0,0,0),
(535006,28090,571,1,1,0,0,5216.551,-3314.077,277.403,1.570796,300,300,0,0,0,0,0,0),
(535007,28090,571,1,1,0,0,5221.325,-3219.814,275.1244,2.949606,300,300,0,0,0,0,0,0),
(535008,28090,571,1,1,0,0,5335.108,-3278.605,279.9857,1.605703,300,300,0,0,0,0,0,0),
(535009,28090,571,1,1,0,0,5073.654,-3340.554,281.0932,1.727876,300,300,0,0,0,0,0,0),
(535010,28090,571,1,1,0,0,5106.485,-3376.424,278.893,1.745329,300,300,0,0,0,0,0,0),
(535011,28090,571,1,1,0,0,4979.709,-3251.906,281.2168,6.143559,300,300,0,0,0,0,0,0),
(535012,28090,571,1,1,0,0,5036.905,-3280.029,278.6564,0.08726646,300,300,0,0,0,0,0,0),
(535013,28090,571,1,1,0,0,5137.069,-3136.615,273.917,1.291544,300,300,0,0,0,0,0,0),
(535014,28090,571,1,1,0,0,5095.104,-3142.373,273.8996,6.161012,300,300,0,0,0,0,0,0),
(535015,28090,571,1,1,0,0,5164.072,-3308.812,278.6376,2.583087,300,300,0,0,0,0,0,0);
DELETE FROM `spawn_group_spawn` WHERE id = 30005;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(30005,520690,-1),(30005,520691,-1),(30005,520692,-1),(30005,520693,-1),
(30005,520694,-1),(30005,520695,-1),(30005,520696,-1),(30005,520697,-1),
(30005,520698,-1),(30005,520699,-1),(30005,520700,-1),(30005,520701,-1),
(30005,520702,-1),(30005,520703,-1),(30005,520704,-1),(30005,520705,-1),
(30005,520706,-1),(30005,520707,-1),(30005,520708,-1),(30005,520709,-1),
(30005,520710,-1),(30005,520711,-1),(30005,520712,-1),(30005,535002,-1),
(30005,535003,-1),(30005,535004,-1),(30005,535005,-1),(30005,535006,-1),
(30005,535007,-1),(30005,535008,-1),(30005,535009,-1),(30005,535010,-1),
(30005,535011,-1),(30005,535012,-1),(30005,535013,-1),(30005,535014,-1),
(30005,535015,-1);
DELETE FROM spawn_group WHERE id = 30005;
INSERT INTO spawn_group (Id, Name, Type, MaxCount, WorldState, Flags) VALUES
(30005,'Zul\'Drak - Drak\'Sotra - Crusade Recruit 28090',0,25,0,0);
DELETE FROM gossip_menu_option WHERE menu_id IN (9650);
INSERT INTO gossip_menu_option (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
('9650','0','0','Get out there and make those Scourge wish they were never reborn!','27486','1','1','0','0','965001','0','0',NULL,'0','20492');
DELETE FROM conditions WHERE condition_entry = 20492;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20492, 9, 12509, 8, 0);
DELETE FROM dbscripts_on_gossip WHERE `id` = 965001;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(965001,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove state emote'),
(965001,2,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'face player'),
(965001,3,29,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'remove NpcFlags'),
(965001,200,0,20295,0,0,0,0,0,0,0,0,0,0,0,0,0,'random say'),
(965001,300,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(965001,500,15,50633,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast on Player'),
(965001,2000,1,333,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote state'),
(965001,5000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');
DELETE FROM dbscript_random_templates WHERE `id`=20295;
INSERT INTO dbscript_random_templates (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(20295, 0, 27496, 0, 'Crusade Recruit 28090 - Random Texts'),
(20295, 0, 27497, 0, 'Crusade Recruit 28090 - Random Texts'),
(20295, 0, 27498, 0, 'Crusade Recruit 28090 - Random Texts'),
(20295, 0, 27499, 0, 'Crusade Recruit 28090 - Random Texts'),
(20295, 0, 27500, 0, 'Crusade Recruit 28090 - Random Texts');
-- Hath'ar Broodmaster 28412
-- missing added
DELETE FROM creature_addon WHERE guid = 535016;
DELETE FROM creature_movement WHERE id = 535016;
DELETE FROM game_event_creature WHERE guid = 535016;
DELETE FROM game_event_creature_data WHERE guid = 535016;
DELETE FROM creature_battleground WHERE guid = 535016;
DELETE FROM creature_linking WHERE guid = 535016
 OR master_guid = 535016;
DELETE FROM creature WHERE guid = 535016;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(535016,28412,571,1,1,0,0,5329.506,-3425.842,297.5117,3.574059,300,300,10,0,0,0,0,1);
UPDATE creature SET position_x = 5317.481934, position_y = -3333.287842, position_z = 295.484528 WHERE guid = 522740;
UPDATE creature SET position_x = 5320.954102, position_y = -3367.401123, position_z = 297.483337 WHERE guid = 522746;
UPDATE creature SET position_x = 5289.732910, position_y = -3373.437744, position_z = 297.484589 WHERE guid = 522739;
UPDATE creature SET position_x = 5360.790039, position_y = -3292.544434, position_z = 296.272095 WHERE guid = 522745;
UPDATE creature SET position_x = 5398.658203, position_y = -3318.866943, position_z = 297.484985 WHERE guid = 522738;
UPDATE creature SET position_x = 5463.685547, position_y = -3278.638428, position_z = 292.914703 WHERE guid = 522741;
UPDATE creature SET position_x = 5437.806641, position_y = -3218.361328, position_z = 292.914795 WHERE guid = 522743;
UPDATE creature SET position_x = 5418.778320, position_y = -3252.484619, position_z = 292.914825 WHERE guid = 522742;
UPDATE creature SET position_x = 5364.675781, position_y = -3403.297852, position_z = 299.550751 WHERE guid = 522747;
UPDATE creature SET position_x = 5405.132812, position_y = -3359.063232, position_z = 299.549133 WHERE guid = 522744;
UPDATE creature SET spawndist=10, MovementType=1 WHERE id = 28412;
-- Drakkari Captive 28414
-- comes from spell
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 28414);
DELETE FROM creature_movement WHERE id IN(SELECT guid FROM creature WHERE id = 28414);
DELETE FROM game_event_creature WHERE guid IN(SELECT guid FROM creature WHERE id = 28414);
DELETE FROM game_event_creature_data WHERE guid IN(SELECT guid FROM creature WHERE id = 28414);
DELETE FROM creature_battleground WHERE guid IN(SELECT guid FROM creature WHERE id = 28414);
DELETE FROM creature_linking WHERE guid IN(SELECT guid FROM creature WHERE id = 28414)
 OR master_guid IN(SELECT guid FROM creature WHERE id = 28414);
DELETE FROM creature WHERE id = 28414;
-- Captive Footman 28415
-- comes from spell
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 28415);
DELETE FROM creature_movement WHERE id IN(SELECT guid FROM creature WHERE id = 28415);
DELETE FROM game_event_creature WHERE guid IN(SELECT guid FROM creature WHERE id = 28415);
DELETE FROM game_event_creature_data WHERE guid IN(SELECT guid FROM creature WHERE id = 28415);
DELETE FROM creature_battleground WHERE guid IN(SELECT guid FROM creature WHERE id = 28415);
DELETE FROM creature_linking WHERE guid IN(SELECT guid FROM creature WHERE id = 28415)
 OR master_guid IN(SELECT guid FROM creature WHERE id = 28415);
DELETE FROM creature WHERE id = 28415;
UPDATE `creature_template` SET EquipmentTemplateId = 812 WHERE Entry = 28415;
-- Nerubian Cocoon 28413
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 535017 AND 535022;
DELETE FROM creature_movement WHERE id BETWEEN 535017 AND 535022;
DELETE FROM game_event_creature WHERE guid BETWEEN 535017 AND 535022;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535017 AND 535022;
DELETE FROM creature_battleground WHERE guid BETWEEN 535017 AND 535022;
DELETE FROM creature_linking WHERE guid BETWEEN 535017 AND 535022
 OR master_guid BETWEEN 535017 AND 535022;
DELETE FROM creature WHERE guid BETWEEN 535017 AND 535022;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(535017,28413,571,1,1,0,0,5377.553,-3405.38,299.6347,3.892084,300,300,0,0,0,0,0,0),
(535018,28413,571,1,1,0,0,5349.252,-3429.612,298.1183,3.647738,300,300,0,0,0,0,0,0),
(535019,28413,571,1,1,0,0,5311.243,-3330.419,295.5677,2.234021,300,300,0,0,0,0,0,0),
(535020,28413,571,1,1,0,0,5295.346,-3393.234,297.5677,0.8377581,300,300,0,0,0,0,0,0),
(535021,28413,571,1,1,0,0,5337.055,-3374.499,297.5677,2.583087,300,300,0,0,0,0,0,0),
(535022,28413,571,1,1,0,0,5401.848,-3248.231,292.9978,1.099557,300,300,0,0,0,0,0,0);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20648,1,15,51597,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Nerubian Cocoon 28413 EAI: Player cast 51597'),
(20649,1,15,51599,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Nerubian Cocoon 28413 EAI: Player cast 51599');
DELETE FROM `spawn_group_spawn` WHERE id = 30006;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(30006,522748,-1),(30006,522749,-1),(30006,522750,-1),
(30006,522751,-1),(30006,522752,-1),(30006,522753,-1),
(30006,522754,-1),(30006,522755,-1),(30006,522756,-1),
(30006,522757,-1),(30006,522758,-1),(30006,522759,-1),
(30006,522760,-1),(30006,522761,-1),(30006,522762,-1),
(30006,535016,-1),(30006,535017,-1),(30006,535018,-1),
(30006,535019,-1),(30006,535020,-1),(30006,535021,-1);
DELETE FROM spawn_group WHERE id = 30006;
INSERT INTO spawn_group (Id, Name, Type, MaxCount, WorldState, Flags) VALUES
(30006,'Zul\'Drak - Drak\'Sotra - Nerubian Cocoon 28413',0,12,0,0);
-- Burning Skimmer 28369
UPDATE creature_template SET UnitFlags = 768 WHERE entry = 28369;
-- comes from spell 51435
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 28369);
DELETE FROM creature_movement WHERE id IN(SELECT guid FROM creature WHERE id = 28369);
DELETE FROM game_event_creature WHERE guid IN(SELECT guid FROM creature WHERE id = 28369);
DELETE FROM game_event_creature_data WHERE guid IN(SELECT guid FROM creature WHERE id = 28369);
DELETE FROM creature_battleground WHERE guid IN(SELECT guid FROM creature WHERE id = 28369);
DELETE FROM creature_linking WHERE guid IN(SELECT guid FROM creature WHERE id = 28369)
 OR master_guid IN(SELECT guid FROM creature WHERE id = 28369);
DELETE FROM creature WHERE id = 28369;
