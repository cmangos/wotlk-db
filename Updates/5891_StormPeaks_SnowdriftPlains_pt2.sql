-- Storm Peaks: Snowdrift Plains Pt:2
-- c.29477 Earthen Defender
DELETE FROM creature_addon WHERE guid IN (526356,533759,533760,533761,533762,533763,533764,533765,533766,533767,533770,533772,533773);
DELETE FROM creature_movement WHERE Id IN (526356,533759,533760,533761,533762,533763,533764,533765,533766,533767,533770,533772,533773);
DELETE FROM game_event_creature WHERE guid IN (526356,533759,533760,533761,533762,533763,533764,533765,533766,533767,533770,533772,533773);
DELETE FROM game_event_creature_data WHERE guid IN (526356,533759,533760,533761,533762,533763,533764,533765,533766,533767,533770,533772,533773);
DELETE FROM creature_battleground WHERE guid IN (526356,533759,533760,533761,533762,533763,533764,533765,533766,533767,533770,533772,533773);
DELETE FROM creature_linking WHERE guid IN (526356,533759,533760,533761,533762,533763,533764,533765,533766,533767,533770,533772,533773)
OR master_guid IN (526356,533759,533760,533761,533762,533763,533764,533765,533766,533767,533770,533772,533773);
DELETE FROM creature WHERE guid IN (526356,533759,533760,533761,533762,533763,533764,533765,533766,533767,533770,533772,533773);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(526356,29477,571,1,1,8387.409,-199.17708,834.96136,2.234021425247192382,300,300,0,0),
(533759,29477,571,1,1,8406.617,-148.2123,813.93024,2.338741064071655273,300,300,0,0),
(533760,29477,571,1,1,8483.984,-132.23438,796.65735,2.30383467674255371,300,300,0,0),
(533761,29477,571,1,1,8454.077,-150.15283,805.3701,2.426007747650146484,300,300,0,0),
(533762,29477,571,1,1,8526.625,-194.71007,806.5246,2.111848354339599609,300,300,0,0),
(533763,29477,571,1,1,8499.016,-201.17671,810.106,2.443460941314697265 ,300,300,0,0),
(533764,29477,571,1,1,8458.735,-119.61372,800.2424,2.617993831634521484,300,300,0,0),
(533765,29477,571,1,1,8433.91,-199.95204,820.49347,2.234021425247192382,300,300,0,0),
(533766,29477,571,1,1,8526.625,-194.71007,806.5246,2.111848354339599609,300,300,0,0),
(533767,29477,571,1,1,8505.18,-168.62723,801.37604,1.972222089767456054,300,300,0,0),
(533770,29477,571,1,1,8515.691,-105.19944,786.9701,2.234021425247192382,300,300,0,0),
(533772,29477,571,1,1,8420.919,-185.84549,820.4396,2.565634012222290039,300,300,0,0),
(533773,29477,571,1,1,8398.406,-177.85504,825.6806,2.181661605834960937,300,300,0,0);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (29477));
DELETE FROM creature_template_addon WHERE entry IN (29477);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(29477,0,0,1,0,375,0,NULL);
UPDATE creature SET position_x = 8482.292, position_y = -238.73643, position_z = 825.7301, orientation = 2.164208173751831054, spawndist = 0, MovementType = 0 WHERE guid = 525116;
UPDATE creature SET position_x = 8361.287, position_y = -125.52395, position_z = 822.9072, orientation = 2.626924991607666015, spawndist = 0, MovementType = 0 WHERE guid = 525114;
UPDATE creature SET position_x = 8469.818, position_y = -99.082466, position_z = 793.71515, orientation = 2.181661605834960937, spawndist = 0, MovementType = 0 WHERE guid = 525120;
UPDATE creature SET position_x = 8322.985, position_y = -173.62404, position_z = 843.82434, orientation = 2.361627817153930664, spawndist = 0, MovementType = 0 WHERE guid = 525127;
UPDATE creature SET position_x = 8319.469, position_y = -177.17873, position_z = 844.4497, orientation = 2.361745834350585937, spawndist = 0, MovementType = 0 WHERE guid = 525128;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 29477;
DELETE FROM dbscript_random_templates WHERE id = 20394;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20394,0,25490,0,'Earthen Defender 29477 - Random text 1'),
(20394,0,25492,0,'Earthen Defender 29477 - Random text 2'),
(20394,0,25493,0,'Earthen Defender 29477 - Random text 3'),
(20394,0,25494,0,'Earthen Defender 29477 - Random text 4');

-- o.191549 Nidavelir Mole Machine - 14sec despawn 
DELETE FROM game_event_gameobject WHERE guid BETWEEN 515746 AND 515751;
DELETE FROM gameobject_battleground WHERE guid BETWEEN 515746 AND 515751;
DELETE FROM gameobject WHERE guid BETWEEN 515746 AND 515751;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(515746,191549,571,1,8426.693,-129.01389,806.2906 ,3.2812386 ,0 ,0,-0.99756336,0.06976615,300,300),
(515747,191549,571,1,8472.601,-246.10243,833.1302 ,3.6826503 ,0 ,0,-0.9636297,0.267241,300,300),
(515748,191549,571,1,8458.409,-93.166664,795.9998 ,4.1713376 ,0 ,0,-0.8703556,0.4924237,300,300),
(515749,191549,571,1,8463.818,-174.75174,812.9154 ,2.1118479 ,0 ,0,0.8703556,0.4924237,300,300),
(515750,191549,571,1,8383.979,-137.4738 ,818.56116,3.5255723 ,0 ,0,-0.9816265,0.19081241,300,300),
(515751,191549,571,1,8435.288,-54.336807,795.90045,3.9444458 ,0 ,0,-0.92050457,0.3907318,300,300);
UPDATE gameobject SET spawntimesecsmin = -14, spawntimesecsmax = -14 WHERE id = 191549;

-- c.29377 Stormforged Raider
DELETE FROM creature_addon WHERE guid IN (524645,524672);
DELETE FROM creature_movement WHERE Id IN (524645,524672);
DELETE FROM game_event_creature WHERE guid IN (524645,524672);
DELETE FROM game_event_creature_data WHERE guid IN (524645,524672);
DELETE FROM creature_battleground WHERE guid IN (524645,524672);
DELETE FROM creature_linking WHERE guid IN (524645,524672)
OR master_guid IN (524645,524672);
DELETE FROM creature WHERE guid IN (524645,524672);
UPDATE creature SET position_x = 8363.0703, position_y = -207.4320, position_z = 846.005981, orientation = -2.3212, spawndist = 0, MovementType = 0, spawntimesecsmin = 120, spawntimesecsmax = 180 WHERE guid = 524629;
UPDATE creature SET position_x = 8509.8701, position_y = -196.2189, position_z = 809.435974, orientation = -0.5235, spawndist = 0, MovementType = 0, spawntimesecsmin = 120, spawntimesecsmax = 180 WHERE guid = 524630;
UPDATE creature SET position_x = 8495.8095, position_y = 197.37199, position_z = 787.666992, orientation = -2.9670, spawndist = 0, MovementType = 0, spawntimesecsmin = 120, spawntimesecsmax = 180 WHERE guid = 524631;
UPDATE creature SET position_x = 8478.6796, position_y = -127.8919, position_z = 796.820007, orientation = -0.5759, spawndist = 0, MovementType = 0, spawntimesecsmin = 120, spawntimesecsmax = 180 WHERE guid = 524632;
UPDATE creature SET position_x = 8486.9199, position_y = -63.42530, position_z = 790.362976, orientation = -1.6929, spawndist = 0, MovementType = 0, spawntimesecsmin = 120, spawntimesecsmax = 180 WHERE guid = 524633;
UPDATE creature SET position_x = 8426.6904, position_y = -129.0140, position_z = 806.291015, orientation = -3.0019, spawndist = 0, MovementType = 0, spawntimesecsmin = 120, spawntimesecsmax = 180 WHERE guid = 524634;
UPDATE creature SET position_x = 8399.0097, position_y = -197.7400, position_z = 830.945983, orientation = -2.7401, spawndist = 0, MovementType = 0, spawntimesecsmin = 120, spawntimesecsmax = 180 WHERE guid = 524635;
UPDATE creature SET position_x = 8432.6298, position_y = -213.3000, position_z = 825.562988, orientation = 3.05433, spawndist = 0, MovementType = 0, spawntimesecsmin = 120, spawntimesecsmax = 180 WHERE guid = 524636;
UPDATE creature SET position_x = 8409.2802, position_y = -79.81449, position_z = 802.052001, orientation = 0.24434, spawndist = 0, MovementType = 0, spawntimesecsmin = 120, spawntimesecsmax = 180 WHERE guid = 524637;
UPDATE creature SET position_x = 8421.0595, position_y = -180.1580, position_z = 820.687988, orientation = 1.39626, spawndist = 0, MovementType = 0, spawntimesecsmin = 120, spawntimesecsmax = 180 WHERE guid = 524638;
UPDATE creature SET position_x = 8426.6930, position_y = -129.0138, position_z = 806.290600, orientation = 3.28123, spawndist = 0, MovementType = 0, spawntimesecsmin = 120, spawntimesecsmax = 180 WHERE guid = 524639;
UPDATE creature SET position_x = 8472.6010, position_y = -246.1024, position_z = 833.130200, orientation = 3.68265, spawndist = 0, MovementType = 0, spawntimesecsmin = 120, spawntimesecsmax = 180 WHERE guid = 524640;
UPDATE creature SET position_x = 8458.4090, position_y = -93.16666, position_z = 795.999800, orientation = 4.17133, spawndist = 0, MovementType = 0, spawntimesecsmin = 120, spawntimesecsmax = 180 WHERE guid = 524641;
UPDATE creature SET position_x = 8463.8180, position_y = -174.7517, position_z = 812.915400, orientation = 2.11184, spawndist = 0, MovementType = 0, spawntimesecsmin = 120, spawntimesecsmax = 180 WHERE guid = 524642;
UPDATE creature SET position_x = 8383.9790, position_y = -137.4738, position_z = 818.561160, orientation = 3.52557, spawndist = 0, MovementType = 0, spawntimesecsmin = 120, spawntimesecsmax = 180 WHERE guid = 524643;
UPDATE creature SET position_x = 8435.2880, position_y = -54.33680, position_z = 795.900450, orientation = 3.94444, spawndist = 0, MovementType = 0, spawntimesecsmin = 120, spawntimesecsmax = 180 WHERE guid = 524644;
UPDATE creature_template SET UnitFlags = 768 WHERE entry = 29377;
DELETE FROM dbscripts_on_relay WHERE id IN (21274);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21274,1,9,0,14,0,191549,10,7,0,0,0,0,0,0,0,0,'Part of Stormforged Raider 29377 EAI - resp object'),
(21274,2,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Stormforged Raider 29377 EAI - run'),
(21274,2000,37,4,4,0,0,0x08,0,0,0,0,0,0,0,0,0,'Part of Stormforged Raider 29377 EAI - move forward'),
(21274,4000,48,768,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Stormforged Raider 29377 EAI - remove unitflags'),
(21274,4001,1,27,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Stormforged Raider 29377 EAI - emote');

-- c.29382 Stormforged Reaver
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE id = 29382;
