-- The Dens of Dying & Talramas - Borean Tundra

-- Den of Dying Plague Cauldron
-- missing added - WoTLKDB free guids reused
DELETE FROM gameobject WHERE guid = 42453;
DELETE FROM game_event_gameobject WHERE guid = 42453;
DELETE FROM gameobject_battleground WHERE guid = 42453;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES 
(42453, 187879, 571, 1,1,4207.37, 4056.89, 91.6208, 2.792518, 0, 0, 0.984807, 0.1736523, 300, 300, 255, 1);

-- Lich-Lord Chillwinter
UPDATE creature SET position_x = 4364.976074, position_y = 4556.350098, position_z = 122.240402, orientation = 0.05235988, spawndist = 0, MovementType = 2 WHERE guid = 103285;
UPDATE creature_template SET MovementType = 2 WHERE entry = 25682;
DELETE FROM creature_movement WHERE id = 103285;
DELETE FROM creature_movement_template WHERE entry = 25682;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25682,1,4364.67,4566.64,123.051,0,0,1.52001),
(25682,2,4365.26,4573.03,120.89,0,0,1.13831),
(25682,3,4368.4,4580.33,120.687,0,0,0.93568),
(25682,4,4377.7,4589.19,119.202,0,0,0.0105718),
(25682,5,4382.49,4589.16,120.084,0,0,6.27412),
(25682,6,4386.42,4589.09,119.62,20000,2568201,6.20737),
(25682,7,4384.16,4589.03,120.149,0,0,3.06184),
(25682,8,4377.99,4589.21,119.138,0,0,3.39957),
(25682,9,4369.91,4583.57,120.57,0,0,4.18732),
(25682,10,4365.17,4573.01,120.907,0,0,4.5863),
(25682,11,4364.69,4567.15,122.988,0,0,4.613),
(25682,12,4364.976074,4556.350098,122.240402,60000,0,0.05235988);
-- Scripts
DELETE FROM dbscripts_on_creature_movement WHERE id = 2568201;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2568201,1,0,0,0,0,0,0,0,2000001237,2000001238,2000001239,0,0,0,0,0,''),
(2568201,1,15,45864,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2568201,7,15,45864,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2568201,14,15,45864,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001237 AND 2000001239;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001237,'Faster! We must be flying by the end of the day or the Lich King will destroy us for certain.',0,0,0,0,''),
(2000001238,'If the Lich King finds out that we crashed Talramas due to a malfunction, we\'ll all be reduced to ashes.',0,0,0,0,''),
(2000001239,'These repairs are behind schedule!',0,0,0,0,'');

-- Doctor Razorgrin
UPDATE creature SET position_x = 4385.206055, position_y = 4542.416016, position_z = 88.759903, orientation = 4.066617, spawndist = 0, MovementType = 2 WHERE guid = 102838;
UPDATE creature_template SET MovementType = 2 WHERE entry = 25678;
DELETE FROM creature_movement WHERE id = 102838;
DELETE FROM creature_movement_template WHERE entry = 25678;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25678,1,4403.476,4552.631,88.76743,18000,2567801,0.5531955),
(25678,2,4385.206055,4542.416016,88.759903,25000,2567802,4.066617),
(25678,3,4403.476,4552.631,88.76743,24000,2567803,0.5531955),
(25678,4,4385.206055,4542.416016,88.759903,25000,2567802,4.066617);
-- Scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2567801,2567802,2567803);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2567801,1,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2567801,3,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2567801,5,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2567801,7,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2567801,8,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2567801,10,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2567801,12,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2567801,14,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2567801,15,1,36,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2567802,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2567802,22,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2567803,2,15,45872,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2567803,11,15,45872,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2567803,20,15,45872,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- spell must have target
DELETE FROM spell_script_target WHERE entry = 45872;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45872,1,23837,0);

-- Stop the Plague Kill Credit Bunny
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid = 75933;
DELETE FROM creature_addon WHERE guid = 75933;
DELETE FROM creature_movement WHERE id = 75933;
DELETE FROM game_event_creature WHERE guid = 75933;
DELETE FROM game_event_creature_data WHERE guid = 75933;
DELETE FROM creature_battleground WHERE guid = 75933;
DELETE FROM creature_linking WHERE guid = 75933 
OR master_guid = 75933;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(75933,25654,571,1,1,0,0,4207.06,4056.89,91.6337,2.85094,180,180,0,0,42,0,0,0);

-- ELM General Purpose Bunny (scale x0.01)
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid = 75934;
DELETE FROM creature_addon WHERE guid = 75934;
DELETE FROM creature_movement WHERE id = 75934;
DELETE FROM game_event_creature WHERE guid = 75934;
DELETE FROM game_event_creature_data WHERE guid = 75934;
DELETE FROM creature_battleground WHERE guid = 75934;
DELETE FROM creature_linking WHERE guid = 75934 
OR master_guid = 75934;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(75934,24021,571,1,1,0,0,4207.48,4056.69,93.5371,2.094395,300,300,0,0,42,0,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (75934,115941);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(75934,0,0,0,0,0,0,'45797'),
(115941,0,0,0,0,0,0,'45797');

-- Cult Plaguebringer
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid BETWEEN 75935 AND 75942;
DELETE FROM creature_addon WHERE guid BETWEEN 75935 AND 75942;
DELETE FROM creature_movement WHERE id BETWEEN 75935 AND 75942;
DELETE FROM game_event_creature WHERE guid BETWEEN 75935 AND 75942;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 75935 AND 75942;
DELETE FROM creature_battleground WHERE guid BETWEEN 75935 AND 75942;
DELETE FROM creature_linking WHERE guid BETWEEN 75935 AND 75942 
OR master_guid BETWEEN 75935 AND 75942;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(75935,24957,571,1,1,0,0,4200.88,4056.89,92.2041,6.25263,300,300,0,0,7432,7332,0,2),
(75936,24957,571,1,1,0,0,4355.8,4560.52,17.0717,1.20659,300,300,0,0,7185,7196,0,2),
(75937,24957,571,1,1,0,0,4366.08,4565.96,15.4436,2.426008,300,300,0,0,7185,7196,0,2),
(75938,24957,571,1,1,0,0,4363.97,4585.36,17.6781,4.049164,300,300,0,0,7432,7332,0,2),
(75939,24957,571,1,1,0,0,4369.69,4577,16.0545,3.246312,300,300,0,0,7185,7196,0,2),
(75940,24957,571,1,1,0,0,4355.3,4588.51,19.2133,4.817109,300,300,0,0,7432,7332,0,2),
(75941,24957,571,1,1,0,0,4345.02,4583.83,19.9084,5.602507,300,300,0,0,7432,7332,0,2),
(75942,24957,571,1,1,0,0,4345.95,4563.46,18.9025,0.9250245,300,300,0,0,7432,7332,0,2);
-- Updates
UPDATE creature SET position_x = 4341.374023, position_y = 4573.500000, position_z = 20.154781, orientation = 0.08726646 WHERE guid = 107444;
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (75935,75936,75937,75938,75939,75940,75941,75942,107432,107434,107435,107436,107444,107477);
DELETE FROM creature_movement WHERE id IN (75935,75936,75937,75938,75939,75940,75941,75942,107432,107434,107435,107436,107444,107477);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #75935
(75935,1,4200.88,4056.89,92.2041,5000,2495701,6.25263),
-- #75936
(75936,1,4355.8,4560.52,17.0717,21000,2495702,1.605703),
-- #75937
(75937,1,4366.08,4565.96,15.4436,16000,2495703,2.426008),
-- #75938
(75938,1,4363.97,4585.36,17.6781,30000,2495703,4.049164),
-- #75939
(75939,1,4369.69,4577,16.0545,45000,2495702,3.246312),
-- #75940
(75940,1,4355.3,4588.51,19.2133,45000,2495703,4.817109),
-- #75941
(75941,1,4345.02,4583.83,19.9084,27000,2495702,5.602507),
-- #75942
(75942,1,4345.95,4563.46,18.9025,41000,2495702,0.9250245),
-- #107432
(107432,1,4394.45,4579.75,117.137,13000,2495702,1.55334),
-- #107434
(107434,1,4403.14,4588.96,115.715,17000,2495703,3.21141),
-- #107435
(107435,1,4394.42,4598.11,118.785,21000,2495702,4.74729),
-- #107436
(107436,1,4403.69,4541.46,88.7522,0,0,2.87927),
(107436,2,4380.01,4550.16,88.7597,0,0,3.23898),
(107436,3,4373.99,4547.27,88.7629,30000,2495704,4.58122),
(107436,4,4370.67,4553.44,88.7616,30000,2495704,1.9305),
(107436,5,4373.99,4547.27,88.7629,30000,2495704,4.58122),
(107436,6,4379.32,4550.19,88.7611,0,0,6.08424),
(107436,7,4403.6,4541.44,88.7515,0,0,5.98521),
(107436,8,4407.43,4541.05,88.7587,30000,2495704,4.71758),
-- #107444
(107444,1,4341.37,4573.5,20.1548,25000,2495703,0.0872665),
-- #107477
(107477,1,4351.52,4258.95,99.1533,5000,2495701,0.474706);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2495701 AND 2495704;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2495701,0,31,24021,25,0,0,0,0,0,0,0,0,0,0,0,0,'search for 24021'),
(2495701,1,15,45820,1,0,24021,20,1,0,0,0,0,0,0,0,0,''),
(2495701,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2495702,1,15,45864,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2495702,8,15,45864,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2495703,4,15,45864,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2495703,12,15,45864,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2495704,1,1,69,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2495704,28,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Talramas Abomination
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid BETWEEN 75943 AND 75946;
DELETE FROM creature_addon WHERE guid BETWEEN 75943 AND 75946;
DELETE FROM creature_movement WHERE id BETWEEN 75943 AND 75946;
DELETE FROM game_event_creature WHERE guid BETWEEN 75943 AND 75946;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 75943 AND 75946;
DELETE FROM creature_battleground WHERE guid BETWEEN 75943 AND 75946;
DELETE FROM creature_linking WHERE guid BETWEEN 75943 AND 75946 
OR master_guid BETWEEN 75943 AND 75946;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(75943,25684,571,1,1,0,0,4275.41,4568.46,80.6352,1.05196,300,300,0,0,9291,0,0,2),
(75944,25684,571,1,1,0,0,4304.23,4603.97,27.2126,2.076942,300,300,0,0,9291,0,0,0),
(75945,25684,571,1,1,0,0,4325.78,4625.53,26.4472,2.74672,300,300,0,0,9291,0,0,0),
(75946,25684,571,1,1,0,0,4369.26,4619.57,90.5738,2.92804,300,300,0,0,9291,0,0,2);
-- Updates
UPDATE creature SET position_x = 4301.630859, position_y = 4553.146973, position_z = 43.895393, orientation = 0.6108652, spawndist = 0, MovementType = 0 WHERE guid = 103452;
UPDATE creature SET position_x = 4309.652344, position_y = 4558.426270, position_z = 110.789200, orientation = 5.159799, spawndist = 0, MovementType = 0 WHERE guid = 103408;
UPDATE creature SET position_x = 4425.119141, position_y = 4583.129883, position_z = 24.251305, orientation = 3.193953, spawndist = 0, MovementType = 0 WHERE guid = 103454;
UPDATE creature SET position_x = 4384.189941, position_y = 4550.745117, position_z = 13.366489, orientation = 2.443461, spawndist = 0, MovementType = 0 WHERE guid = 103455;
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (75943,75946,103408,103430,103453);
DELETE FROM creature_movement WHERE id IN (75943,75946,103408,103430,103453);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #75943
(75943,1,4271.23,4559.13,81.5475,0,0,5.10882),
(75943,2,4285.78,4535.27,74.9503,0,0,5.08133),
(75943,3,4291.9,4519.18,71.8358,0,0,6.01595),
(75943,4,4311.97,4511.84,64.1173,0,0,5.64034),
(75943,5,4327.59,4497.45,57.3961,0,0,5.45185),
(75943,6,4312.29,4511.9,63.998,0,0,2.88359),
(75943,7,4292.26,4519.25,71.7072,0,0,1.7911),
(75943,8,4286.13,4534.79,74.7963,0,0,2.22005),
(75943,9,4271.16,4559.01,81.5679,0,0,1.01918),
(75943,10,4275.13,4568.02,80.7082,0,0,1.13228),
-- #75946
(75946,1,4352.6,4623.81,90.4555,0,0,3.27754),
(75946,2,4344.69,4622.25,88.7411,0,0,3.62221),
(75946,3,4337.56,4619.09,84.9436,0,0,3.54065),
(75946,4,4328.26,4615.06,82.7993,0,0,3.52886),
(75946,5,4317.31,4610.34,79.2076,0,0,3.55243),
(75946,6,4304.81,4603.97,75.5958,0,0,3.92156),
(75946,7,4316.91,4610.1,79.0692,0,0,0.450102),
(75946,8,4326.17,4614.36,81.37,0,0,0.31909),
(75946,9,4331.65,4616.18,83.1178,0,0,0.393703),
(75946,10,4336.94,4618.73,84.8842,0,0,0.452608),
(75946,11,4344.51,4622.04,88.6898,0,0,0.381922),
(75946,12,4352.23,4623.52,90.362,0,0,6.18209),
(75946,13,4368.26,4620.26,90.8332,0,0,6.0093),
(75946,14,4381.99,4614.68,85.912,0,0,5.85615),
(75946,15,4386.3,4612.59,85.118,0,0,5.82867),
(75946,16,4397.74,4608.29,89.9933,0,0,5.85223),
(75946,17,4402.16,4604.37,92.4779,0,0,5.40063),
(75946,18,4409.74,4597.01,95.0484,0,0,5.50273),
(75946,19,4423.77,4584.9,98.1135,0,0,5.27496),
(75946,20,4410.81,4596.15,95.336,0,0,2.43968),
(75946,21,4402.53,4603.87,92.7026,0,0,2.34936),
(75946,22,4395.34,4609.47,88.6409,0,0,2.83238),
(75946,23,4387.06,4612.45,84.8367,0,0,2.81141),
(75946,24,4381.64,4614.98,86.0649,0,0,2.70561),
(75946,25,4370.1,4619.39,90.416,0,0,2.79986),
-- #103408
(103408,1,4324.57,4533.31,103.959,0,0,5.24227),
(103408,2,4309.91,4558.23,110.681,0,0,0.829128),
(103408,3,4317.06,4567.85,108.685,0,0,1.1246),
(103408,4,4324.01,4585.02,107.009,0,0,1.05611),
(103408,5,4317.06,4567.85,108.685,0,0,3.65044),
(103408,6,4310.03,4558.63,110.661,0,0,4.28802),
-- #103430
(103430,1,4366.62,4662.17,50.0141,0,0,6.25402),
(103430,2,4379.18,4657.53,45.0322,0,0,5.75922),
(103430,3,4399.27,4646.26,37.8391,0,0,5.78671),
(103430,4,4379.99,4657.33,44.7174,0,0,2.67653),
(103430,5,4367.27,4662.31,49.7318,0,0,3.15641),
(103430,6,4353.59,4660.02,55.7426,0,0,3.35384),
-- #103453
(103453,1,4425.52,4568.21,104.872,0,0,1.72317),
(103453,2,4427.09,4550.89,105.118,0,0,4.6205),
(103453,3,4424.66,4544.81,103.639,0,0,4.271),
(103453,4,4420.24,4533.17,104.629,0,0,3.56728),
(103453,5,4412.45,4528.55,107.251,0,0,3.43062),
(103453,6,4407.96,4527.52,109.184,0,0,3.34423),
(103453,7,4412.47,4528.59,107.249,0,0,0.228073),
(103453,8,4419.72,4532.76,104.798,0,0,0.935717),
(103453,9,4424.25,4543.92,103.741,0,0,1.15877),
(103453,10,4427.09,4550.58,105.124,0,0,1.46592);

-- Festering Ghoul & Bone warrior
-- Duplicates removed
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid IN (101519,97705,101526,97698,97663,101654,97699,97665,101685,101515);
DELETE FROM creature_addon WHERE guid IN (101519,97705,101526,97698,97663,101654,97699,97665,101685,101515);
DELETE FROM creature_movement WHERE id IN (101519,97705,101526,97698,97663,101654,97699,97665,101685,101515);
DELETE FROM game_event_creature WHERE guid IN (101519,97705,101526,97698,97663,101654,97699,97665,101685,101515);
DELETE FROM game_event_creature_data WHERE guid IN (101519,97705,101526,97698,97663,101654,97699,97665,101685,101515);
DELETE FROM creature_battleground WHERE guid IN (101519,97705,101526,97698,97663,101654,97699,97665,101685,101515);
DELETE FROM creature_linking WHERE guid IN (101519,97705,101526,97698,97663,101654,97699,97665,101685,101515) 
OR master_guid IN (101519,97705,101526,97698,97663,101654,97699,97665,101685,101515);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(101519,26126,571,1,1,0,0,4360.54,4629.91,93.5176,3.08054,300,300,0,0,8982,0,0,0),
(97705,25660,571,1,1,0,0,4333.78,4622.09,25.1502,1.72572,300,300,0,0,9291,0,0,0),
(101526,25660,571,1,1,0,0,4338.97,4626.76,24.4067,2.4415,300,300,0,0,9291,0,0,0),
(97698,25660,571,1,1,0,0,4328.48,4527.21,38.0225,5.39003,300,300,0,0,8982,0,0,0),
(97663,25660,571,1,1,0,0,4331.03,4545.43,22.2545,3.2184,300,300,0,0,9291,0,0,0),
(101654,25660,571,1,1,0,0,4248.95,4515.01,39.8757,2.48411,300,300,10,0,8982,0,0,1);
-- Updates
UPDATE creature SET position_x = 4336.381836, position_y = 4529.401855, position_z = 36.845390, orientation = 4.766256 WHERE guid = 101676;
UPDATE creature SET position_x = 4372.353027, position_y = 4532.271484, position_z = 14.545138, orientation = 5.392428 WHERE guid = 101681;
UPDATE creature SET position_x = 4401.464355, position_y = 4525.801270, position_z = 25.413973, orientation = 5.490592 WHERE guid = 101680;
UPDATE creature SET position_x = 4408.641113, position_y = 4528.066406, position_z = 24.285595, orientation = 4.779811 WHERE guid = 101679;
UPDATE creature SET position_x = 4275.212891, position_y = 4645.888672, position_z = 8.919827, spawndist = 7, MovementType = 1 WHERE guid = 101527;
UPDATE creature SET position_x = 4234.112305, position_y = 4647.561523, position_z = 9.165283, spawndist = 7, MovementType = 1 WHERE guid = 101674;
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (97663,97698,97705,101526,101676,101677,101679,101680,101681,101682);
DELETE FROM creature_movement WHERE id IN (97663,97698,97705,101526,101676,101677,101679,101680,101681,101682);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #97663
(97663,1,4331.03,4545.43,22.2545,9000,2566002,3.2184),
-- #97698
(97698,1,4328.48,4527.21,38.0225,13000,2566001,5.39003),
-- #97705
(97705,1,4333.78,4622.09,25.1502,15000,2566002,1.72572),
-- #101526
(101526,1,4338.97,4626.76,24.4067,34000,2566001,2.4415),
-- #101676
(101676,1,4336.381836,4529.401855,36.845390,17000,2566002,4.766256),
-- #101677
(101677,1,4299.5,4603.13,75.6443,14000,2566001,3.57792),
-- #101679
(101679,1,4408.641113,4528.066406,24.285595,10000,2566002,4.779811),
-- #101680
(101680,1,4401.464355,4525.801270,25.413973,7000,2566001,5.490592),
-- #101681
(101681,1,4372.353027,4532.271484,14.545138,22000,2566001,5.392428),
-- #101682
(101682,1,4396.61,4621.86,86.0171,17000,2566002,4.93928);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2566001 AND 2566002;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2566001,1,1,35,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2566002,4,1,35,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
