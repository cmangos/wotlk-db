-- Pools of Zha'Jin & Heb'Valok - Zul'Drak
-- Disturbed Soul 29133
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 534872 AND 534877;
DELETE FROM creature_movement WHERE id BETWEEN 534872 AND 534877;
DELETE FROM game_event_creature WHERE guid BETWEEN 534872 AND 534877;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 534872 AND 534877;
DELETE FROM creature_battleground WHERE guid BETWEEN 534872 AND 534877;
DELETE FROM creature_linking WHERE guid BETWEEN 534872 AND 534877
 OR master_guid BETWEEN 534872 AND 534877;
DELETE FROM creature WHERE guid BETWEEN 534872 AND 534877;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(534872,29133,571,1,1,0,0,5631.4,-2357.58,285.92,2.73017,300,300,10,0,0,0,0,1),
(534873,29133,571,1,1,0,0,5657.65,-2459.85,285.848,1.44213,300,300,10,0,0,0,0,1),
(534874,29133,571,1,1,0,0,5617.11,-2437.78,287.551,3.15822,300,300,10,0,0,0,0,1),
(534875,29133,571,1,1,0,0,5669.29,-2500.06,286.505,4.83112,300,300,10,0,0,0,0,1),
(534876,29133,571,1,1,0,0,5572.84,-2523.33,287.527,2.90611,300,300,10,0,0,0,0,1),
(534877,29133,571,1,1,0,0,5654.72,-2525.98,287.526,1.03841,300,300,10,0,0,0,0,1);
UPDATE creature SET position_x = 5659.621582, position_y = -2437.315918, position_z = 284.9953 WHERE guid = 523960;
UPDATE creature SET position_x = 5568.193848, position_y = -2348.270996, position_z = 287.526550 WHERE guid = 523950;
UPDATE creature SET position_x = 5614.587402, position_y = -2326.615479, position_z = 287.470947 WHERE guid = 523951;
UPDATE creature SET position_x = 5697.206543, position_y = -2412.753662, position_z = 287.550568 WHERE guid = 523961;
UPDATE creature SET position_x = 5637.847656, position_y = -2523.916992, position_z = 287.031433 WHERE guid = 523959;
UPDATE creature SET position_x = 5610.384766, position_y = -2523.130371, position_z = 285.102539 WHERE guid = 523954;
UPDATE creature SET spawndist=10, MovementType=1 WHERE id = 29133;
-- Lost Drakkari Spirit 29129
-- missing added
DELETE FROM creature_addon WHERE guid = 534878;
DELETE FROM creature_movement WHERE id = 534878;
DELETE FROM game_event_creature WHERE guid = 534878;
DELETE FROM game_event_creature_data WHERE guid = 534878;
DELETE FROM creature_battleground WHERE guid = 534878;
DELETE FROM creature_linking WHERE guid = 534878
 OR master_guid = 534878;
DELETE FROM creature WHERE guid = 534878;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(534878,29129,571,1,1,0,0,5686.13,-2331.51,288.337,3.27379,300,300,7,0,0,0,0,1);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 29129);
DELETE FROM creature_template_addon WHERE entry = 29129;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, auras) VALUES
(29129,0,0,1,0,0,17327);
UPDATE creature SET spawndist=10, MovementType=1 WHERE id = 29129;
UPDATE creature SET position_x = 5646.006348, position_y = -2346.957275, position_z = 287.526855 WHERE guid = 523933;
UPDATE creature SET position_x = 5687.564453, position_y = -2512.810303, position_z = 287.526520 WHERE guid = 523941;
UPDATE creature SET position_x = 5701.643555, position_y = -2556.693359, position_z = 287.824951 WHERE guid = 523945;
UPDATE creature SET position_x = 5560.899902, position_y = -2564.568848, position_z = 287.529175 WHERE guid = 523929;
UPDATE creature SET position_x = 5566.878906, position_y = -2383.528076, position_z = 287.551575, orientation = 5.153082, spawndist=0, MovementType=4 WHERE guid = 523934;
DELETE FROM creature_movement WHERE id IN (523934);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 523934
(523934,1,5573.7,-2392.93,287.527,100,0,0),
(523934,2,5579.39,-2408.34,287.527,100,0,0),
(523934,3,5582.05,-2422.05,287.527,100,0,0),
(523934,4,5582.76,-2434.25,287.527,100,0,0),
(523934,5,5583.28,-2446.84,287.527,100,0,0),
(523934,6,5581.74,-2456.12,287.527,100,0,0),
(523934,7,5576.81,-2473.49,287.527,100,0,0),
(523934,8,5571.73,-2488.92,287.527,100,0,0);

-- Trapdoor Crawler 28221
-- missing added
DELETE FROM creature_addon WHERE guid = 534879;
DELETE FROM creature_movement WHERE id = 534879;
DELETE FROM game_event_creature WHERE guid = 534879;
DELETE FROM game_event_creature_data WHERE guid = 534879;
DELETE FROM creature_battleground WHERE guid = 534879;
DELETE FROM creature_linking WHERE guid = 534879
 OR master_guid = 534879;
DELETE FROM creature WHERE guid = 534879;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(534879,29129,571,1,1,0,0,5755.42,-2433.88,291.868,4.84665,300,300,7,0,0,0,0,1);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28221);
DELETE FROM creature_template_addon WHERE entry = 28221;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, auras) VALUES
(28221,0,0,1,0,0,11959);
UPDATE creature SET position_x = 5872.256348, position_y = -2428.611328, position_z = 297.294464, spawndist=10, MovementType=1 WHERE guid = 521892;
UPDATE creature SET position_x = 5814.274414, position_y = -2354.171875, position_z = 290.824982, spawndist=10, MovementType=1 WHERE guid = 521891;
UPDATE creature SET position_x = 6096.804199, position_y = -2344.959717, position_z = 289.739166, spawndist=10, MovementType=1 WHERE guid = 521895;
UPDATE creature SET position_x = 6080.146973, position_y = -2416.848633, position_z = 290.617767, spawndist=10, MovementType=1 WHERE guid = 521884;
UPDATE creature SET position_x = 5822.190430, position_y = -2490.802246, position_z = 294.372742, spawndist=10, MovementType=1 WHERE guid = 521883;
-- Zul'Drak Bat 28233
-- duplicates
DELETE FROM creature_addon WHERE guid IN (521953,521949,521956,521954,521955);
DELETE FROM creature_movement WHERE Id IN (521953,521949,521956,521954,521955);
DELETE FROM game_event_creature WHERE guid IN (521953,521949,521956,521954,521955);
DELETE FROM game_event_creature_data WHERE guid IN (521953,521949,521956,521954,521955);
DELETE FROM creature_battleground WHERE guid IN (521953,521949,521956,521954,521955);
DELETE FROM creature_linking WHERE guid IN (521953,521949,521956,521954,521955)
 OR master_guid IN (521953,521949,521956,521954,521955);
DELETE FROM creature WHERE guid IN (521953,521949,521956,521954,521955);
UPDATE creature SET spawndist=10, MovementType=1 WHERE id=28233;
UPDATE creature SET spawndist=15, MovementType=1 WHERE guid=521938;
UPDATE creature SET spawndist=15, MovementType=1 WHERE guid=521939;
UPDATE creature SET spawndist=15, MovementType=1 WHERE guid=521951;
UPDATE creature SET spawndist=15, MovementType=1 WHERE guid=521946;
UPDATE creature SET spawndist=15, MovementType=1 WHERE guid=521943;
UPDATE creature SET position_x = 6098.750000, position_y = -2373.735107, position_z = 290.609192, spawndist=15, MovementType=1 WHERE guid = 521948;
UPDATE creature SET position_x = 5864.060547, position_y = -2559.536377, position_z = 292.333344, spawndist=15, MovementType=1 WHERE guid = 521950;
UPDATE creature SET position_x = 5756.290527, position_y = -2563.150391, position_z = 293.229797, spawndist=10, MovementType=1 WHERE guid = 521936;
UPDATE creature SET position_x = 5773.459961, position_y = -2359.562500, position_z = 288.894714, spawndist=15, MovementType=1 WHERE guid = 521933;
UPDATE creature SET position_x = 6048.602539, position_y = -2330.507324, position_z = 291.093719, spawndist=10, MovementType=1 WHERE guid = 521952;
UPDATE creature SET position_x = 6107.000977, position_y = -2330.479980, position_z = 290.505066, spawndist=10, MovementType=1 WHERE guid = 521935;
UPDATE creature SET position_x = 6153.238281, position_y = -2312.283447, position_z = 292.538849, spawndist=10, MovementType=1 WHERE guid = 521965;
