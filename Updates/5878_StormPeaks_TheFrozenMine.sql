-- Storm Peaks: The Frozen Mine

-- c.29384 Captive Mechagnome
DELETE FROM creature_addon WHERE guid IN (527747,527798,527799,527801,527803,527813,527814,527815,527816,527817,527818,527819,527820);
DELETE FROM creature_movement WHERE id IN (527747,527798,527799,527801,527803,527813,527814,527815,527816,527817,527818,527819,527820);
DELETE FROM game_event_creature WHERE guid IN (527747,527798,527799,527801,527803,527813,527814,527815,527816,527817,527818,527819,527820);
DELETE FROM game_event_creature_data WHERE guid IN (527747,527798,527799,527801,527803,527813,527814,527815,527816,527817,527818,527819,527820);
DELETE FROM creature_battleground WHERE guid IN (527747,527798,527799,527801,527803,527813,527814,527815,527816,527817,527818,527819,527820);
DELETE FROM creature_linking WHERE guid IN (527747,527798,527799,527801,527803,527813,527814,527815,527816,527817,527818,527819,527820);
DELETE FROM creature WHERE guid IN (527747,527798,527799,527801,527803,527813,527814,527815,527816,527817,527818,527819,527820);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(527747,29384,571,1,1,7726.9253,-9.089301,865.71344,1.535889744758605957,300,300,0,0),
(527798,29384,571,1,1,7736.012,-36.465385,869.1368,3.333578824996948242,300,300,0,0),
(527799,29384,571,1,1,7745.44,-55.28776,870.79114,2.617993831634521484,300,300,0,0),
(527801,29384,571,1,1,7717.46,-10.003038,866.54846,3.001966238021850585,300,300,0,0),
(527803,29384,571,1,1,7747.329,-47.022243,869.69885,0.994837641716003417,300,300,0,0),
(527813,29384,571,1,1,7836.1235,-68.48221,880.6543,6.108652114868164062,300,300,0,0),
(527814,29384,571,1,1,7827.557,-65.01367,882.1137,3.211405754089355468,300,300,0,0),
(527815,29384,571,1,1,7831.0347,-46.304253,882.2456,5.864306449890136718,300,300,0,0),
(527816,29384,571,1,1,7765.5947,3.372504,865.40204,0.907571196556091308,300,300,0,0),
(527817,29384,571,1,1,7743.0034,-25.287436,867.45264,0.226892799139022827,300,300,0,0),
(527818,29384,571,1,1,7768.4976,-16.321507,864.4009,4.97418832778930664,300,300,0,0),
(527819,29384,571,1,1,7779.954,-7.854275,863.28754,0.436332315206527709,300,300,0,0),
(527820,29384,571,1,1,7815.5645,-36.965496,879.7954,1.623156189918518066,300,300,0,0);
UPDATE creature SET position_x = 7833.2153, position_y = -56.419815, position_z = 881.8431, orientation = 0.541052043437957763, spawndist = 0, MovementType = 0 WHERE guid = 524683;
UPDATE creature SET position_x = 7823.1226, position_y = -55.006077, position_z = 882.2609, orientation = 4.834561824798583984, spawndist = 0, MovementType = 0 WHERE guid = 524684;
UPDATE creature SET position_x = 7813.856, position_y = -53.62424, position_z = 883.7043, orientation = 5.078907966613769531, spawndist = 0, MovementType = 0 WHERE guid = 524685;
UPDATE creature SET position_x = 7823.6665, position_y = -37.51964, position_z = 882.7526, orientation = 1.692969322204589843, spawndist = 0, MovementType = 0 WHERE guid = 524686;
UPDATE creature SET position_x = 7831.7163, position_y = -38.967556, position_z = 881.6061, orientation = 4.956735134124755859, spawndist = 0, MovementType = 0 WHERE guid = 524687;
UPDATE creature SET position_x = 7794.343, position_y = -48.1097, position_z = 881.72894, orientation = 3.577924966812133789, spawndist = 0, MovementType = 0 WHERE guid = 524688;
UPDATE creature SET position_x = 7794.047, position_y = -60.66504, position_z = 880.9378, orientation = 5.79449319839477539, spawndist = 0, MovementType = 0 WHERE guid = 524689;
UPDATE creature SET position_x = 7808.4854, position_y = -40.310764, position_z = 879.52576, orientation = 3.211405754089355468, spawndist = 0, MovementType = 0 WHERE guid = 524690;
UPDATE creature SET position_x = 7756.3345, position_y = -66.37359, position_z = 875.0351, orientation = 4.694935798645019531, spawndist = 0, MovementType = 0 WHERE guid = 524691;
UPDATE creature SET position_x = 7758.001, position_y = -58.602215, position_z = 874.88245, orientation = 0.959931075572967529, spawndist = 0, MovementType = 0 WHERE guid = 524692;
UPDATE creature SET position_x = 7793.433, position_y = -35.11556, position_z = 879.70123, orientation = 2.0245819091796875, spawndist = 0, MovementType = 0 WHERE guid = 524693;
UPDATE creature SET position_x = 7802.9395, position_y = -38.81966, position_z = 879.3645, orientation = 4.101523876190185546, spawndist = 0, MovementType = 0 WHERE guid = 524694;
UPDATE creature SET position_x = 7781.9297, position_y = -40.24425, position_z = 879.1712, orientation = 2.251474618911743164, spawndist = 0, MovementType = 0 WHERE guid = 524695;
UPDATE creature SET position_x = 7812.1797, position_y = -94.02344, position_z = 880.2368, orientation = 4.660028934478759765, spawndist = 0, MovementType = 0 WHERE guid = 524696;
UPDATE creature SET position_x = 7757.494, position_y = -4.936957, position_z = 865.0462, orientation = 3.96189737319946289, spawndist = 0, MovementType = 0 WHERE guid = 524697;
UPDATE creature SET position_x = 7828.539, position_y = -87.213, position_z = 882.2543, orientation = 0.104719758033752441, spawndist = 0, MovementType = 0 WHERE guid = 524698;
UPDATE creature SET position_x = 7739.954, position_y = 3.092556, position_z = 865.9239, orientation = 0.698131680488586425, spawndist = 0, MovementType = 0 WHERE guid = 524699;
UPDATE creature SET position_x = 7718.132, position_y = 1.124241, position_z = 867.4224, orientation = 2.181661605834960937, spawndist = 0, MovementType = 0 WHERE guid = 524700;
UPDATE creature SET position_x = 7725.975, position_y = -16.970161, position_z = 867.8891, orientation = 0.174532920122146606, spawndist = 0, MovementType = 0 WHERE guid = 524701;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 29384);
DELETE FROM creature_template_addon WHERE entry IN (29384);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(29384,0,0,1,0,233,0,NULL);

-- c.29369 Stormforged Taskmaster
DELETE FROM creature_addon WHERE guid IN (527730,527821,527872);
DELETE FROM creature_movement WHERE id IN (527730,527821,527872);
DELETE FROM game_event_creature WHERE guid IN (527730,527821,527872);
DELETE FROM game_event_creature_data WHERE guid IN (527730,527821,527872);
DELETE FROM creature_battleground WHERE guid IN (527730,527821,527872);
DELETE FROM creature_linking WHERE guid IN (527730,527821,527872);
DELETE FROM creature WHERE guid IN (527730,527821,527872);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(527730,29369,571,1,1,7796.762,-50.188694,882.3017,0,300,300,0,4),
(527821,29369,571,1,1,7726.0645,0.671767,867.3513,0,300,300,0,4),
(527872,29369,571,1,1,7730.3213,-23.281912,867.55054,0,300,300,0,4);
UPDATE creature SET position_x = 7842.5425, position_y = -110.64627, position_z = 882.8648, orientation = 0, spawndist = 0, MovementType = 4 WHERE guid = 524563; -- linear
UPDATE creature SET position_x = 7824.0103, position_y = -133.21658, position_z = 883.1015, orientation = 0, spawndist = 0, MovementType = 4 WHERE guid = 524564; -- linear
UPDATE creature SET position_x = 7835.0044, position_y = -35.802517, position_z = 881.1093, orientation = 0, spawndist = 0, MovementType = 4 WHERE guid = 524565; -- linear
UPDATE creature SET position_x = 7832.377, position_y = -77.63553, position_z = 882.18726, orientation = 0, spawndist = 0, MovementType = 2 WHERE guid = 524566;
DELETE FROM creature_movement WHERE id IN (524563,524564,524565,524566,527730,527821,527872);
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- 524563
(524563,1,7842.5425,-110.64627,882.8648,100,500,0),
(524563,2,7839.189,-106.30838,882.96606,100,0,0),
(524563,3,7833.7085,-100.74078,881.4133,100,0,0),
(524563,4,7827.7676,-96.58257,881.1446,100,0,0),
(524563,5,7822.916,-90.537544,880.74774,100,0,0),
(524563,6,7822.8447,-83.79514,881.602,100,500,0),
-- 524564
(524564,1,7824.0103,-133.21658,883.1015,100,500,0),
(524564,2,7834.078,-130.53917,882.26056,100,0,0),
(524564,3,7842.921,-124.64529,880.8713,100,0,0),
(524564,4,7851.019,-120.68349,880.71344,100,0,0),
(524564,5,7856.9653,-115.75087,881.2493,100,500,0),
-- 524565 
(524565,1,7835.0044,-35.802517,881.1093,100,500,0),
(524565,2,7831.4062,-36.4311,881.7886,100,0,0),
(524565,3,7825.858,-41.522785,882.7488,100,0,0),
(524565,4,7825.4517,-46.997395,881.8351,100,0,0),
(524565,5,7825.428,-52.692165,881.8121,100,0,0),
(524565,6,7829.174,-59.9388,881.9704,100,0,0),
(524565,7,7830.633,-64.98741,881.8168,100,500,0),
-- 524566
(524566,1,7832.377,-77.63553,882.18726,100,0,0),
(524566,2,7837.315,-75.350296,880.3026,100,0,0),
(524566,3,7827.683,-77.09928,882.81104,100,0,0),
(524566,4,7824.5723,-79.80317,882.5861,100,0,0),
-- 527730
(527730,1,7796.762,-50.188694,882.3017,100,500,0),
(527730,2,7802.53,-48.544163,883.21814,100,0,0),
(527730,3,7806.8228,-50.18902,883.62915,100,0,0),
(527730,4,7810.619,-51.102974,883.7081,100,0,0),
(527730,5,7814.9263,-51.181965,883.2064,100,0,0),
(527730,6,7818.904,-50.98427,882.66345,100,500,0),
-- 527821
(527821,1,7726.0645,0.671767,867.3513,100,500,0),
(527821,2,7732.2876,0.640082,866.2783,100,0,0),
(527821,3,7738.8896,-1.104058,866.25586,100,0,0),
(527821,4,7747.007,-1.096788,865.7106,100,0,0),
(527821,5,7755.479,-0.063151,865.96466,100,0,0),
(527821,6,7761.0825,1.824002,865.41266,100,0,0),
(527821,7,7766.3066,-2.848633,864.75476,100,0,0),
(527821,8,7771.362,-8.772439,864.01984,100,0,0),
(527821,9,7776.58,-11.874777,863.3382,100,500,0),
-- 527872
(527872,1,7730.3213,-23.281912,867.55054,100,500,0),
(527872,2,7736.8145,-27.022352,867.09174,100,0,0),
(527872,3,7741.8926,-35.71669,868.4073,100,0,0),
(527872,4,7742.489,-41.61561,868.16895,100,0,0),
(527872,5,7745.9194,-49.20703,869.6114,100,0,0),
(527872,6,7748.4785,-53.62652,870.92737,100,500,0);
DELETE FROM dbscripts_on_relay WHERE id IN (21268,21269);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21268,1,31,29384,10,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Stormforged Taskmaster 29369 EAI: search for 29384'),
(21268,100,32,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Stormforged Taskmaster 29369 EAI: pause wps'),
(21268,1000,36,0,0,0,29384,20,1,0,0,0,0,0,0,0,0,'Part of Stormforged Taskmaster 29369 EAI: face target'),
(21268,2500,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Stormforged Taskmaster 29369 EAI: emote'),
(21268,2600,0,20392,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Stormforged Taskmaster 29369 EAI: random say'),
(21268,5000,32,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Stormforged Taskmaster 29369 EAI: unpause wps'),
(21269,1,32,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Stormforged Taskmaster 29369 EAI: unpause wps');
DELETE FROM `dbscript_random_templates` WHERE `id`=20392;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(20392,0,30233,0,'Stormforged Taskmaster 29369 - Random Text 1'),
(20392,0,30234,0,'Stormforged Taskmaster 29369 - Random Text 2'),
(20392,0,30235,0,'Stormforged Taskmaster 29369 - Random Text 3'),
(20392,0,30236,0,'Stormforged Taskmaster 29369 - Random Text 4'),
(20392,0,30237,0,'Stormforged Taskmaster 29369 - Random Text 5'),
(20392,0,30238,0,'Stormforged Taskmaster 29369 - Random Text 6'),
(20392,0,30239,0,'Stormforged Taskmaster 29369 - Random Text 7'),
(20392,0,30240,0,'Stormforged Taskmaster 29369 - Random Text 8');
