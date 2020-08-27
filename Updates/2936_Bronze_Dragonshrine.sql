-- Bronze Dragonshrine - Dragonblight

-- Arctic Ram 26426
-- missing added
DELETE FROM creature_addon WHERE guid IN (512700);
DELETE FROM creature_movement WHERE id IN (512700);
DELETE FROM game_event_creature WHERE guid IN (512700);
DELETE FROM game_event_creature_data WHERE guid IN (512700);
DELETE FROM creature_battleground WHERE guid IN (512700);
DELETE FROM creature_linking WHERE guid IN (512700)
 OR master_guid IN (512700);
DELETE FROM creature WHERE guid IN (512700);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(512700,26426,571,1,1,0,0,3947.08,-297.822,135.998,3.06707,300,300,5,0,9610,0,0,1);

-- Bronze Shrine Warden 26277
UPDATE creature SET spawntimesecsmin = 20, spawntimesecsmax = 20 WHERE id = 26277;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26277);
DELETE FROM creature_template_addon WHERE entry = 26277;
INSERT INTO creature_template_addon VALUES
(26277,0,50331648,1,0,0,0,4368);
UPDATE creature SET position_x = 4036.618, position_y = -410.075, position_z = 155.0924, orientation = 1.00721 WHERE guid = 512749;
-- Waypoints
DELETE FROM creature_movement WHERE id IN (512749);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (512749);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 512749
(512749,1,4036.618,-410.075,155.0924,100,0,5),
(512749,2,4036.618,-410.075,155.0924,100,0,0),
(512749,3,4064.925,-360.9518,155.0924,100,0,0),
(512749,4,4130.639,-346.9796,155.0924,100,0,0),
(512749,5,4160.93,-381.8614,155.0924,100,0,0),
(512749,6,4142.985,-434.5384,155.0924,100,0,0),
(512749,7,4113.847,-457.3329,155.0924,100,0,0),
(512749,8,4064.386,-455.2153,155.0924,100,0,0);

-- Tempus Wyrm 32180
-- duplicate removed
DELETE FROM creature_addon WHERE guid=531858;
DELETE FROM creature_movement WHERE id=531858;
DELETE FROM game_event_creature WHERE guid=531858;
DELETE FROM game_event_creature_data WHERE guid=531858;
DELETE FROM creature_battleground WHERE guid=531858;
DELETE FROM creature_linking WHERE guid=531858 OR master_guid=531858;
DELETE FROM creature WHERE guid=531858;
-- updates
UPDATE creature SET spawntimesecsmin = 20, spawntimesecsmax = 20 WHERE id = 32180;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 32180);
DELETE FROM creature_template_addon WHERE entry = 32180;
INSERT INTO creature_template_addon VALUES
(32180,0,0,1,0,0,0,4368);
UPDATE creature SET position_x = 4030.608154, position_y = -419.168304, position_z = 157.4532, orientation = 1.00721, spawndist = 0, MovementType = 0 WHERE guid = 531859;
UPDATE creature SET position_x = 4026.736084, position_y = -416.135468, position_z = 155.0924, orientation = 1.00721, spawndist = 0, MovementType = 0 WHERE guid = 531860;
UPDATE creature SET position_x = 4038.406494, position_y = -420.536072, position_z = 155.0924, orientation = 1.00721, spawndist = 0, MovementType = 0 WHERE guid = 531857;
UPDATE creature SET position_x = 4164.974, position_y = -399.6096, position_z = 142.6423, orientation = 1.40514, spawndist = 0, MovementType = 2 WHERE guid = 531856;
UPDATE creature SET position_x = 4155.62, position_y = -401.2, position_z = 144.667, orientation = 1.40514, spawndist = 0, MovementType = 0 WHERE guid = 531855;
-- Waypoints
DELETE FROM creature_movement WHERE id IN (531856);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (531856);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 531856
(531856,1,4164.974,-399.6096,142.6423,100,0,5),
(531856,2,4164.974,-399.6096,142.6423,100,0,0),
(531856,3,4167.08,-377.4431,142.6423,100,0,0),
(531856,4,4151.239,-361.0978,142.6423,100,0,0),
(531856,5,4130.046,-359.7336,142.6423,100,0,0),
(531856,6,4095.954,-386.6495,142.6423,100,0,0),
(531856,7,4053.72,-445.9019,142.6423,100,0,0),
(531856,8,4087.912,-488.7475,142.6423,100,0,0),
(531856,9,4121.044,-480.3546,142.6423,100,0,0),
(531856,10,4150.563,-429.6214,142.6423,100,0,0);
-- links
DELETE FROM `creature_linking` WHERE `master_guid` IN (512749,531856);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(531859, 512749, 512),
(531860, 512749, 512),
(531857, 512749, 512),
(531855, 531856, 512);

-- Infinite Timebreaker 32186
DELETE FROM creature_addon WHERE guid=531867;
DELETE FROM creature_movement WHERE id=531867;
DELETE FROM game_event_creature WHERE guid=531867;
DELETE FROM game_event_creature_data WHERE guid=531867;
DELETE FROM creature_battleground WHERE guid=531867;
DELETE FROM creature_linking WHERE guid=531867 OR master_guid=531867;
DELETE FROM creature WHERE guid=531867;
-- updates
UPDATE creature SET spawntimesecsmin = 20, spawntimesecsmax = 20 WHERE id = 32186;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 32186);
DELETE FROM creature_template_addon WHERE entry = 32186;
INSERT INTO creature_template_addon VALUES
(32186,0,0,1,0,0,0,4368);
UPDATE creature SET position_x = 4118.228, position_y = -374.5273, position_z = 146.6842, orientation = 0.598282, spawndist = 0, MovementType = 0 WHERE guid = 531866;
-- Waypoints
DELETE FROM creature_movement WHERE id IN (531866);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (531866);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 531866
(531866,1,4118.228,-374.5273,146.6842,100,0,5),
(531866,2,4118.228,-374.5273,146.6842,100,0,0),
(531866,3,4158.644,-348.2169,146.6842,100,0,0),
(531866,4,4196.922,-384.4117,146.6842,100,0,0),
(531866,5,4193.283,-439.7143,146.6842,100,0,0),
(531866,6,4154.769,-467.2552,146.6842,100,0,0),
(531866,7,4110.876,-444.7473,146.6842,100,0,0),
(531866,8,4107.821,-390.3208,146.6842,100,0,0),
(531866,9,4094.354,-343.3002,146.6842,100,0,0),
(531866,10,4059.608,-343.805,146.6842,100,0,0),
(531866,11,4048.697,-372.1508,146.6842,100,0,0),
(531866,12,4050.198,-409.6317,146.6842,100,0,0),
(531866,13,4056.573,-444.7391,146.6842,100,0,0),
(531866,14,4089.472,-462.6982,146.6842,100,0,0),
(531866,15,4119.193,-438.8815,146.6842,100,0,0);

-- Infinite Eradicator 32185
UPDATE creature SET spawntimesecsmin = 20, spawntimesecsmax = 20 WHERE id = 32185;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 32185);
DELETE FROM creature_template_addon WHERE entry = 32185;
INSERT INTO creature_template_addon VALUES
(32185,0,0,1,0,0,0,4368);
UPDATE creature SET position_x = 4105.173828, position_y = -383.650513, position_z = 146.6843, orientation = 0.504804, spawndist = 0, MovementType = 0 WHERE guid = 531862;
UPDATE creature SET position_x = 4120.721191, position_y = -383.635071, position_z = 146.6843, orientation = 0.573916, spawndist = 0, MovementType = 0 WHERE guid = 531861;
UPDATE creature SET position_x = 4106.526367, position_y = -367.810608, position_z = 146.6843, orientation = 0.536217, spawndist = 0, MovementType = 0 WHERE guid = 531863;
UPDATE creature SET position_x = 4097.044, position_y = -483.2576, position_z = 141.9557, orientation = 5.833723, spawndist = 0, MovementType = 2 WHERE guid = 531864;
UPDATE creature SET position_x = 4099.919922, position_y = -477.191193, position_z = 141.9557, orientation = 5.833723, spawndist = 0, MovementType = 0 WHERE guid = 531865;
-- Waypoints
DELETE FROM creature_movement WHERE id IN (531864);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (531864);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 531864
(531864,1,4097.044,-483.2576,141.9557,100,0,5),
(531864,2,4097.044,-483.2576,141.9557,100,0,0),
(531864,3,4136.382,-500.8875,141.9557,100,0,0),
(531864,4,4166.104,-487.1107,141.9557,100,0,0),
(531864,5,4161.927,-462.8755,141.9557,100,0,0),
(531864,6,4133.968,-426.5483,141.9557,100,0,0),
(531864,7,4117.856,-402.0503,141.9557,100,0,0),
(531864,8,4136.213,-384.799,141.9557,100,0,0),
(531864,9,4145.955,-349.7704,141.9557,100,0,0),
(531864,10,4117.731,-334.0284,141.9557,100,0,0),
(531864,11,4081.651,-360.0752,141.9557,100,0,0),
(531864,12,4059.065,-427.9391,141.9557,100,0,0);
-- links
DELETE FROM `creature_linking` WHERE `master_guid` IN (531866,531864);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(531862, 531866, 512),
(531861, 531866, 512),
(531863, 531866, 512),
(531865, 531864, 512);
