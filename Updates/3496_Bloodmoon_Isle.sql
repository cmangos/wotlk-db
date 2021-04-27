-- Bloodmoon Isle - Grizzly Hills

-- Duplicates
DELETE FROM creature_addon WHERE guid IN (519097,516251,516256,516263,523895,516095);
DELETE FROM creature_movement WHERE id IN (519097,516251,516256,516263,523895,516095);
DELETE FROM game_event_creature WHERE guid IN (519097,516251,516256,516263,523895,516095);
DELETE FROM game_event_creature_data WHERE guid IN (519097,516251,516256,516263,523895,516095);
DELETE FROM creature_battleground WHERE guid IN (519097,516251,516256,516263,523895,516095);
DELETE FROM creature_linking WHERE guid IN (519097,516251,516256,516263,523895,516095)
 OR master_guid IN (519097,516251,516256,516263,523895,516095);
DELETE FROM creature WHERE guid IN (519097,516251,516256,516263,523895,516095);

-- Varlam 27579
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27579);
DELETE FROM creature_template_addon WHERE entry = 27579;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27579,207,0,1,0,0,0,NULL);

-- Shade of Arugal 27018
UPDATE creature SET position_x = 4589.976, position_y = -5712.252, position_z = 184.5901, orientation = 0.9424778 WHERE guid = 516230;
-- target corrected
DELETE FROM spell_script_target WHERE entry IN (48185);
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(48185,1,27024,0);

-- Bloodmoon Worgen 27020
-- missing added
DELETE FROM creature_addon WHERE guid IN (519097,514303);
DELETE FROM creature_movement WHERE id IN (519097,514303);
DELETE FROM game_event_creature WHERE guid IN (519097,514303);
DELETE FROM game_event_creature_data WHERE guid IN (519097,514303);
DELETE FROM creature_battleground WHERE guid IN (519097,514303);
DELETE FROM creature_linking WHERE guid IN (519097,514303)
OR master_guid IN (519097,514303);
DELETE FROM creature WHERE guid IN (519097,514303);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(519097,27020,571,1,1,0,0,4575.09,-5652.89,105.476,5.08563,300,300,0,0,9940,0,0,0),
(514303,27020,571,1,1,0,0,4594.88,-5708.66,155.209,2.592,300,300,7,0,9940,0,0,1);
UPDATE creature SET position_x = 4553.819824, position_y = -5668.968750, position_z = 105.476402, spawndist = 5, MovementType = 1 WHERE guid = 516240;
UPDATE creature SET position_x = 4566.145020, position_y = -5562.742188, position_z = 4.817438, spawndist = 7, MovementType = 1 WHERE guid = 516236;
UPDATE creature SET position_x = 4652.721680, position_y = -5514.769043, position_z = 26.405849, spawndist = 5, MovementType = 1 WHERE guid = 516246;
UPDATE creature SET position_x = 4595.108887, position_y = -5468.861328, position_z = 2.247406, spawndist = 5, MovementType = 1 WHERE guid = 516233;

-- Bloodmoon Cultist 27024
-- individual addons
DELETE FROM creature_addon WHERE guid IN (516265,516253,516254,516270,516259,516266,516268,516257);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(516265,0,8,1,0,0,0,NULL),
(516253,0,8,1,0,0,0,NULL),
(516254,0,8,1,0,0,0,NULL),
(516270,0,8,1,0,0,0,NULL),
(516259,0,8,1,0,0,0,NULL),
(516266,0,8,1,0,0,0,NULL),
(516268,0,8,1,0,0,0,NULL),
(516257,0,8,1,0,0,0,NULL);
UPDATE creature SET position_x = 4590.053, position_y = -5703.886, position_z = 184.5901, orientation = 4.415683 WHERE guid = 516265;
UPDATE creature SET position_x = 4597.472, position_y = -5697.7, position_z = 184.5901, orientation = 4.310963 WHERE guid = 516253;
UPDATE creature SET position_x = 4598.147, position_y = -5705.811, position_z = 184.5901, orientation = 4.101524 WHERE guid = 516270;
UPDATE creature SET position_x = 4605.000488, position_y = -5696.289062, position_z = 183.362289, orientation = 3.979800 WHERE guid = 516259;
UPDATE creature SET position_x = 4595.892090, position_y = -5691.405273, position_z = 183.396225, orientation = 4.581410 WHERE guid = 516266;
UPDATE creature SET position_x = 4607.772949, position_y = -5706.373535, position_z = 183.564407, orientation = 3.480093 WHERE guid = 516268;
UPDATE creature SET position_x = 4587.139160, position_y = -5693.552246, position_z = 183.417572, orientation = 4.757572 WHERE guid = 516257;
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (516258,516264,516253);
DELETE FROM creature_movement WHERE id IN (516258,516264,516253);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 516253
(516253,1,4597.472,-5697.7,184.5901,4.310963,5000,2702401),
(516253,2,4599.27,-5695.25,184.507,100,0,0),
(516253,3,4600.77,-5693.06,183.471,100,0,0),
(516253,4,4603.02,-5688.75,180.056,100,0,0),
(516253,5,4615.2,-5683.68,180.034,100,0,0),
(516253,6,4617.65,-5681.11,180.032,100,0,0),
(516253,7,4616.25,-5677.44,180.031,100,0,0),
(516253,8,4610.28,-5673.27,174.545,100,0,0),
(516253,9,4603.55,-5669.23,169.472,100,0,0),
(516253,10,4596.45,-5676.76,169.472,100,0,0),
(516253,11,4591.6,-5684.61,163.634,100,0,0),
(516253,12,4587.13,-5695.2,155.372,100,0,0),
(516253,13,4586.19,-5697.93,155.366,100,0,0),
(516253,14,4591.27,-5705.87,155.264,100,0,0),
(516253,15,4608.31,-5713.09,155.198,100,0,0),
(516253,16,4615.14,-5707.01,155.142,100,0,0),
(516253,17,4618.48,-5707.85,155.145,100,0,0),
(516253,18,4628.72,-5713.03,148.601,100,0,0),
(516253,19,4631.73,-5711.55,148.601,100,0,0),
(516253,20,4635.68,-5705,144.49,100,0,0),
(516253,21,4637.37,-5701.57,144.461,100,0,0),
(516253,22,4632.36,-5698.66,144.461,100,0,0),
(516253,23,4627.75,-5689.29,144.507,100,0,0),
(516253,24,4623.94,-5688.5,144.525,100,0,0),
(516253,25,4621.47,-5693.21,141.57,100,0,0),
(516253,26,4618.89,-5698.7,138.656,100,0,0),
(516253,27,4606.47,-5689.21,138.656,100,0,0),
(516253,28,4585.45,-5676.93,138.832,100,0,0),
(516253,29,4580.97,-5683.81,138.925,100,0,0),
(516253,30,4575.12,-5694.55,135.001,100,0,0),
(516253,31,4577.18,-5697.55,134.936,100,0,0),
(516253,32,4590.35,-5703.75,125.926,100,0,0),
(516253,33,4595.13,-5705.63,125.907,100,0,0),
(516253,34,4602.38,-5706.23,125.877,100,0,0),
(516253,35,4604.79,-5702.81,125.99,100,0,0),
(516253,36,4602.22,-5698.92,126.048,100,0,0),
(516253,37,4598.33,-5694.38,125.993,100,0,0),
(516253,38,4587.72,-5687.93,126.077,100,0,0),
(516253,39,4591.4,-5684.85,126.077,100,0,0),
(516253,40,4597.63,-5687.84,122.124,100,0,0),
(516253,41,4606.7,-5691.8,117.365,100,0,0),
(516253,42,4609.2,-5675.68,117.363,100,0,0),
(516253,43,4613.46,-5665.87,117.338,100,0,0),
(516253,44,4617.03,-5652.17,110.529,100,0,0),
(516253,45,4622.16,-5648.77,110.541,100,0,0),
(516253,46,4635.08,-5650.17,109.501,100,0,0),
(516253,47,4643.99,-5654.45,105.657,100,0,0),
(516253,48,4653.95,-5658.47,98.6639,100,0,0),
(516253,49,4661.85,-5658.32,93.0826,100,0,0),
(516253,50,4672.79,-5656.5,86.639,100,0,0),
(516253,51,4684.1,-5651.91,81.9183,100,0,0),
(516253,52,4696.92,-5648.56,79.9188,100,0,0),
(516253,53,4708.49,-5646.01,80.658,100,0,0),
(516253,54,4719.55,-5643.31,81.7446,100,0,0),
(516253,55,4730.94,-5640.03,80.8517,100,0,0),
(516253,56,4741.68,-5636.52,76.1045,100,0,0),
(516253,57,4759.69,-5635.35,67.7306,100,1000,2702402),
-- 516258
(516258,1,4669.95,-5577.05,53.6185,100,0,0),
(516258,2,4664.55,-5588.54,52.5927,100,0,0),
(516258,3,4664.04,-5596.39,52.0754,100,0,0),
(516258,4,4672.44,-5603.3,54.6493,100,0,0),
(516258,5,4681.58,-5615.35,61.8243,100,0,0),
(516258,6,4690.86,-5629.46,73.3392,100,0,0),
(516258,7,4692.18,-5641.6,78.1894,100,0,0),
(516258,8,4688.15,-5648.58,80.2274,100,0,0),
(516258,9,4681.35,-5652.27,82.7958,100,0,0),
(516258,10,4671.82,-5657.18,87.2506,100,0,0),
(516258,11,4659.82,-5659.1,94.7233,100,0,0),
(516258,12,4649.72,-5658.51,101.756,100,0,0),
(516258,13,4639.67,-5656.54,107.868,100,0,0),
(516258,14,4649.84,-5658.4,101.656,100,0,0),
(516258,15,4659.15,-5659.12,95.184,100,0,0),
(516258,16,4671.45,-5657.05,87.4288,100,0,0),
(516258,17,4680.82,-5652.93,83.0477,100,0,0),
(516258,18,4687.77,-5648.94,80.3819,100,0,0),
(516258,19,4692.12,-5641.58,78.175,100,0,0),
(516258,20,4690.95,-5630.19,73.7545,100,0,0),
(516258,21,4681.62,-5615.69,62.0222,100,0,0),
(516258,22,4673.07,-5604.02,54.93,100,0,0),
(516258,23,4664.59,-5597.29,52.2828,100,0,0),
(516258,24,4664.45,-5589.47,52.4374,100,0,0),
(516258,25,4669.69,-5577.37,53.6175,100,0,0),
(516258,26,4685.02,-5565.21,53.6175,100,0,0),
-- 516264
(516264,1,4543.68,-5486.07,2.19597,100,0,0),
(516264,2,4557.76,-5504.57,2.24723,100,0,0),
(516264,3,4565.44,-5523.64,2.18552,100,0,0),
(516264,4,4567.06,-5538.74,2.28435,100,0,0),
(516264,5,4570.99,-5554.47,3.6956,100,0,0),
(516264,6,4577.18,-5568.22,8.40786,100,0,0),
(516264,7,4588.57,-5574.9,12.8777,100,0,0),
(516264,8,4599.93,-5580.95,19.5068,100,0,0),
(516264,9,4612.37,-5588.52,27.1602,100,0,0),
(516264,10,4619.33,-5588.45,30.6728,100,0,0),
(516264,11,4633.88,-5587.81,39.3144,100,0,0),
(516264,12,4639.99,-5582.74,42.6289,100,0,0),
(516264,13,4642.25,-5575.66,43.2599,100,0,0),
(516264,14,4645.11,-5564.93,39.3397,100,0,0),
(516264,15,4648.3,-5553.9,34.0965,100,0,0),
(516264,16,4654.93,-5534.77,28.9016,100,0,0),
(516264,17,4662.71,-5519.8,27.308,100,0,0),
(516264,18,4670.68,-5512.46,25.8114,100,0,0),
(516264,19,4663.14,-5518.87,27.1682,100,0,0),
(516264,20,4654.91,-5534.48,28.8675,100,0,0),
(516264,21,4648.34,-5553.23,33.8543,100,0,0),
(516264,22,4645.18,-5564.54,39.0985,100,0,0),
(516264,23,4642.19,-5575.33,43.2113,100,0,0),
(516264,24,4640.55,-5581.86,42.9282,100,0,0),
(516264,25,4634.77,-5587.24,39.8075,100,0,0),
(516264,26,4613.21,-5588.79,27.594,100,0,0),
(516264,27,4600.9,-5581.62,20.2054,100,0,0),
(516264,28,4589.23,-5575.14,13.1473,100,0,0),
(516264,29,4577.57,-5568.62,8.59135,100,0,0),
(516264,30,4571.43,-5555.21,3.89847,100,0,0),
(516264,31,4567.06,-5539.48,2.30188,100,0,0),
(516264,32,4565.64,-5523.87,2.18385,100,0,0),
(516264,33,4558.39,-5505.5,2.24767,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2702401 AND 2702402;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2702401,1000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand state'),
(2702401,2000,14,48185,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove aura'),
(2702401,3000,15,47457,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 47457'),
(2702402,1000,3,0,0,0,0,0,0x08,0,0,0,0,4597.472,-5697.7,184.5901,4.310963,'TP');
-- Part of Shade of Arugal 27018 EAI: 
DELETE FROM dbscripts_on_relay WHERE id IN (20573,20574,20575);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20573,0,3,0,0,0,0,0,0x04|0x08,0,0,0,0,4590.94,-5711.24,184.507,0,'Part of Shade of Arugal 27018 EAI: TP'),
(20573,100,15,53052,1,0,0,0,0x04,0,0,0,0,4590.94,-5711.24,184.507,0.94,'Part of Shade of Arugal 27018 EAI: cast 53052'),
(20573,200,10,29082,180000,0,0,0,0,0,0,0,0,4601.202,-5705.198,184.59,0.01745329,'Part of Shade of Arugal 27018 EAI: Summon: Bloodmoon Servant'),
(20573,201,10,29082,180000,0,0,0,0,0,0,0,0,4595.732,-5701.575,184.59,1.047198,'Part of Shade of Arugal 27018 EAI: Summon: Bloodmoon Servant'),
(20573,202,10,29082,180000,0,0,0,0,0,0,0,0,4589.834,-5699.556,184.59,2.094395,'Part of Shade of Arugal 27018 EAI: Summon: Bloodmoon Servant'),
(20574,0,3,0,0,0,0,0,0x04|0x08,0,0,0,0,4590.94,-5711.24,184.507,0,'Part of Shade of Arugal 27018 EAI: TP'),
(20574,100,15,53052,1,0,0,0,0x04,0,0,0,0,4590.94,-5711.24,184.507,0.94,'Part of Shade of Arugal 27018 EAI: cast 53052'),
(20574,200,10,29082,180000,0,0,0,0,0,0,0,0,4601.136,-5701.017,184.59,0.7504916,'Part of Shade of Arugal 27018 EAI: Summon: Bloodmoon Servant'),
(20574,201,10,29082,180000,0,0,0,0,0,0,0,0,4593.603,-5697.066,184.59,1.710423,'Part of Shade of Arugal 27018 EAI: Summon: Bloodmoon Servant'),
(20574,202,10,29082,180000,0,0,0,0,0,0,0,0,4597.296,-5711.708,184.59,0.5585054,'Part of Shade of Arugal 27018 EAI: Summon: Bloodmoon Servant'),
(20574,203,10,29082,180000,0,0,0,0,0,0,0,0,4586.083,-5707.216,184.59,1.53589,'Part of Shade of Arugal 27018 EAI: Summon: Bloodmoon Servant'),
(20574,204,10,29082,180000,0,0,0,0,0,0,0,0,4593.576,-5705.751,184.59,0.9075712,'Part of Shade of Arugal 27018 EAI: Summon: Bloodmoon Servant'),
(20574,205,10,29082,180000,0,0,0,0,0,0,0,0,4606.891,-5705.7,184.0332,0.3490658,'Part of Shade of Arugal 27018 EAI: Summon: Bloodmoon Servant'),
(20574,206,10,29082,180000,0,0,0,0,0,0,0,0,4599.885,-5693.742,183.5372,1.082104,'Part of Shade of Arugal 27018 EAI: Summon: Bloodmoon Servant'),
(20574,207,10,29082,180000,0,0,0,0,0,0,0,0,4586.538,-5694.962,184.0332,1.762783,'Part of Shade of Arugal 27018 EAI: Summon: Bloodmoon Servant'),
(20574,208,10,26935,300000,2,0,0,0,1,1665,0,20005,4601.451,-5668.565,169.5556,5.777504,'Part of Shade of Arugal 27018 EAI: Summon: Sasha'),
(20574,300,20,2,2,0,26935,255,7,0,0,0,0,0,0,0,0,'Part of Shade of Arugal 27018 EAI: set pathId 2 for Sasha'),
(20575,0,31,26935,200,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Shade of Arugal 27018 EAI: search for 26935'),
(20575,10,18,0,0,0,26935,210,7,0,0,0,0,0,0,0,0,'Part of Shade of Arugal 27018 EAI: despawn 26935');
-- links
DELETE FROM creature_linking_template WHERE entry = 29082;
INSERT INTO creature_linking_template (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(29082, 571, 27018, 4096, 100);

-- Sasha 26935
DELETE FROM npc_gossip WHERE npc_guid IN (516095);
DELETE FROM creature_movement_template WHERE entry = 26935 AND pathId = 2;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26935,2,1,4601.451,-5668.565,169.5556,5.777504,100,2693502),
(26935,2,2,4624.027,-5681.065,180.0248,100,0,0),
(26935,2,3,4620.658,-5685.283,180.0284,3.822271,300000,2693503);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2693502,2693503);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2693502,0,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Remove NpcFlags'),
(2693503,0,0,0,0,0,0,0,0x04,2000020895,0,0,0,0,0,0,0,''),
(2693503,1,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Send AI event 5');
DELETE FROM dbscript_string WHERE entry = 2000020895;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020895,'Worgen everywhere!  Don\'t give up yet, I\'m right behind you!',0,0,0,0,NULL);
DELETE FROM dbscripts_on_relay WHERE id IN (20576,20577,20578);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20576,0,31,26935,200,0,0,0,0,0,0,0,0,0,0,0,0,'search for 26935 - prevent duplicate spawns'),
(20576,10,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self'),
(20577,0,31,29082,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 29082'),
(20577,10,26,0,0,0,29082,110,1,0,0,0,0,0,0,0,0,'attack buddy'),
(20578,0,31,27018,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27018'),
(20578,10,26,0,0,0,27018,110,1,0,0,0,0,0,0,0,0,'attack buddy');
DELETE FROM creature_spawn_data_template WHERE Entry = 20005;
INSERT INTO creature_spawn_data_template (Entry, UnitFlags, Faction, ModelId, EquipmentId, CurHealth, CurMana, SpawnFlags) VALUES
(20005,0,1665,0,767,0,0,0);
