-- q.12093 'Runes of Compulsion'

-- Directional Rune Aura 188493
-- missing added
DELETE FROM gameobject WHERE guid = 504311;
DELETE FROM game_event_gameobject WHERE guid = 504311;
DELETE FROM gameobject_battleground WHERE guid = 504311;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(504311,188493,571,1,1,3985.49,-5249.979,7.012465,0.6981315,0,0,0.34202,0.9396927,300,300,100,1);

-- Directional Rune 188492
-- missing added
DELETE FROM gameobject WHERE guid = 504312;
DELETE FROM game_event_gameobject WHERE guid = 504312;
DELETE FROM gameobject_battleground WHERE guid = 504312;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(504312,188492,571,1,1,3985.617,-5249.809,6.77149,-0.4014249,0,0,-0.1993675,0.9799248,300,300,100,1);

-- Directional Rune 26785
-- missing added
DELETE FROM creature_addon WHERE guid = 507835;
DELETE FROM creature_movement WHERE id = 507835;
DELETE FROM game_event_creature WHERE guid = 507835;
DELETE FROM game_event_creature_data WHERE guid = 507835;
DELETE FROM creature_battleground WHERE guid = 507835;
DELETE FROM creature_linking WHERE guid = 507835
OR master_guid = 507835;
DELETE FROM creature WHERE guid = 507835;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(507835,26785,571,1,1,0,0,3985.488,-5249.946,8.444119,1.37881,300,300,0,0,9610,3309,0,0);
-- waypoints
UPDATE creature SET spawntimesecsmin = 180, spawntimesecsmax = 180 WHERE id = 26785;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (507835,515655,515656,515657);
DELETE FROM creature_movement WHERE id IN (507835,515655,515656,515657);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 507835
(507835,1,3985.488,-5249.946,8.444119,1.37881,100,11),
(507835,2,3985.488,-5249.946,8.444119,1.37881,100,3),
-- 515655
(515655,1,4218.69,-5050.18,7.11765,0.994838,100,12),
(515655,2,4218.69,-5050.18,7.11765,0.994838,100,3),
-- 515656
(515656,1,4317.82,-4880.28,35.0747,0.820305,100,13),
(515656,2,4317.82,-4880.28,35.0747,0.820305,100,3),
-- 515657
(515657,1,4486.46,-4653.99,78.9732,1.65806,100,14),
(515657,2,4486.46,-4653.99,78.9732,1.65806,100,3);
-- links
DELETE FROM creature_linking WHERE master_guid IN (507835,515655,515656,515657);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
-- 507835
(507836, 507835, 128),
(507837, 507835, 128),
(507838, 507835, 128),
(507839, 507835, 128),
-- 515655
(515822, 515655, 128),
(515831, 515655, 128),
(515830, 515655, 128),
(515829, 515655, 128),
-- 515656
(515825, 515656, 128),
(515827, 515656, 128),
(515828, 515656, 128),
(515826, 515656, 128),
-- 515657
(515833, 515657, 128),
(515823, 515657, 128),
(515824, 515657, 128),
(515832, 515657, 128);
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20567 AND 20570;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 20567
(20567,0,31,26820,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 26820 - terminate if alive'),
(20567,100,13,0,0,0,188507,20,1,0,0,0,0,0,0,0,0,'activate 188507'),
(20567,1000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self'),
-- 20568
(20568,0,31,26820,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 26820 - terminate if alive'),
(20568,100,13,0,0,0,188506,20,1,0,0,0,0,0,0,0,0,'activate 188506'),
(20568,1000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self'),
-- 20569
(20569,0,31,26820,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 26820 - terminate if alive'),
(20569,100,13,0,0,0,188505,20,1,0,0,0,0,0,0,0,0,'activate 188505'),
(20569,1000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self'),
-- 20570
(20570,0,31,26820,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 26820 - terminate if alive'),
(20570,100,13,0,0,0,188471,20,1,0,0,0,0,0,0,0,0,'activate 188471'),
(20570,1000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');

-- Iron Rune-Weaver 26820
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 507836 AND 507839;
DELETE FROM creature_movement WHERE id BETWEEN 507836 AND 507839;
DELETE FROM game_event_creature WHERE guid BETWEEN 507836 AND 507839;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 507836 AND 507839;
DELETE FROM creature_battleground WHERE guid BETWEEN 507836 AND 507839;
DELETE FROM creature_linking WHERE guid BETWEEN 507836 AND 507839
OR master_guid BETWEEN 507836 AND 507839;
DELETE FROM creature WHERE guid BETWEEN 507836 AND 507839;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(507836,26820,571,1,1,0,0,3996.077,-5238.035,8.059824,3.822271,300,300,0,0,8508,7981,0,2),
(507837,26820,571,1,1,0,0,3995.696,-5261.256,7.888505,2.286381,300,300,0,0,8508,7981,0,2),
(507838,26820,571,1,1,0,0,3973.187,-5260.419,7.597371,0.7679449,300,300,0,0,8508,7981,0,2),
(507839,26820,571,1,1,0,0,3974.118,-5239.274,7.926013,5.77704,300,300,0,0,8508,7981,0,2);
-- waypoints
UPDATE creature SET spawntimesecsmin = 180, spawntimesecsmax = 180 WHERE id = 26820;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (507836,507837,507838,507839,515822,515823,515824,515825,515826,515827,515828,515829,515830,515831,515832,515833);
DELETE FROM creature_movement WHERE id IN (507836,507837,507838,507839,515822,515823,515824,515825,515826,515827,515828,515829,515830,515831,515832,515833);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 507836
(507836,1,3996.077,-5238.035,8.059824,3.822271,100,11),
(507836,2,3996.077,-5238.035,8.059824,3.822271,100,3),
-- 507837
(507837,1,3995.696,-5261.256,7.888505,2.286381,100,11),
(507837,2,3995.696,-5261.256,7.888505,2.286381,100,3),
-- 507838
(507838,1,3973.187,-5260.419,7.597371,0.7679449,100,11),
(507838,2,3973.187,-5260.419,7.597371,0.7679449,100,3),
-- 507839
(507839,1,3974.118,-5239.274,7.926013,5.77704,100,11),
(507839,2,3974.118,-5239.274,7.926013,5.77704,100,3),
-- 515822
(515822,1,4228.84,-5038.24,6.93284,3.89208,100,11),
(515822,2,4228.84,-5038.24,6.93284,3.89208,100,3),
-- 515823
(515823,1,4479.58,-4642.15,80.3625,5.21853,100,11),
(515823,2,4479.58,-4642.15,80.3625,5.21853,100,3),
-- 515824
(515824,1,4478.67,-4662.77,77.6043,0.523599,100,11),
(515824,2,4478.67,-4662.77,77.6043,0.523599,100,3),
-- 515825
(515825,1,4328.7,-4871.32,34.4313,3.92699,100,11),
(515825,2,4328.7,-4871.32,34.4313,3.92699,100,3),
-- 515826
(515826,1,4328.4,-4893.99,34.2018,2.46091,100,11),
(515826,2,4328.4,-4893.99,34.2018,2.46091,100,3),
-- 515827
(515827,1,4305.36,-4869.95,35.3677,5.67232,100,11),
(515827,2,4305.36,-4869.95,35.3677,5.67232,100,3),
-- 515828
(515828,1,4307.46,-4891.04,34.4202,0.680678,100,11),
(515828,2,4307.46,-4891.04,34.4202,0.680678,100,3),
-- 515829
(515829,1,4206.33,-5038.64,7.4189,5.65487,100,11),
(515829,2,4206.33,-5038.64,7.4189,5.65487,100,3),
-- 515830
(515830,1,4204.77,-5062.97,6.95697,0.872665,100,11),
(515830,2,4204.77,-5062.97,6.95697,0.872665,100,3),
-- 515831
(515831,1,4229.45,-5062.6,6.59069,2.21657,100,11),
(515831,2,4229.45,-5062.6,6.59069,2.21657,100,3),
-- 515832
(515832,1,4496.51,-4662.97,77.1041,2.61799,100,11),
(515832,2,4496.51,-4662.97,77.1041,2.61799,100,3),
-- 515833
(515833,1,4497.71,-4645.45,79.8957,3.90954,100,11),
(515833,2,4497.71,-4645.45,79.8957,3.90954,100,3);
DELETE FROM dbscripts_on_go_template_use WHERE id IN (188471,188505,188506,188507);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- Directional Rune 1 188471
(188471,0,31,26920,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 26920 - terminate if alive'),
(188471,10,10,26920,120000,0,0,0,0x04,0,0,0,0,0,0,0,0,'summon: Overseer Durval - 2min'),
(188471,1000,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'lock self'),
-- Directional Rune 2 188505
(188505,0,31,26921,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 26921 - terminate if alive'),
(188505,10,10,26921,120000,0,0,0,0x04,0,0,0,0,0,0,0,0,'summon: Overseer Korgan - 2min'),
(188505,1000,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'lock self'),
-- Directional Rune 3 188506
(188506,0,31,26922,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 26922 - terminate if alive'),
(188506,10,10,26922,120000,0,0,0,0x04,0,0,0,0,0,0,0,0,'summon: Overseer Lochli - 2min'),
(188506,1000,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'lock self'),
-- Directional Rune 4 188507
(188507,0,31,26923,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 26923 - terminate if alive'),
(188507,10,10,26923,120000,0,0,0,0x04,0,0,0,0,0,0,0,0,'summon: Overseer Brunon - 2min'),
(188507,1000,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'lock self');
