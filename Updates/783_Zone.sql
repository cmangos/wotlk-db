-- Valgarde - Howling Fjord (part1)

-- Macalroy
DELETE FROM creature_addon WHERE guid = 133903;
DELETE FROM creature_template_addon WHERE entry = 23547;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23547,0,0,0,1,0,0,NULL);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 23547;
UPDATE creature SET MovementType = 2 WHERE id = 23547;
DELETE FROM creature_movement WHERE id = 133903;
DELETE FROM creature_movement_template WHERE entry = 23547;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(23547,1,591.508,-5095.69,5.35388,0,0,4.37523),
(23547,2,596.931,-5073.45,5.66806,0,0,1.4025);

-- Basil Crowe
DELETE FROM creature_addon WHERE guid = 88107;
DELETE FROM creature_template_addon WHERE entry = 26547;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26547,0,0,1,1,0,0,NULL);

-- Vice Admiral Keller
DELETE FROM creature_addon WHERE guid = 119573;
DELETE FROM creature_template_addon WHERE entry = 23546;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23546,0,0,0,1,0,0,NULL);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 23546;
UPDATE creature SET MovementType = 2 WHERE id = 23546;
DELETE FROM creature_movement WHERE id = 119573;
DELETE FROM creature_movement_template WHERE entry = 23546;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(23546,1,658.737,-5047.57,3.41613,0,0,0.8059),
(23546,2,646.411,-5059.24,1.10649,0,0,3.77313),
(23546,3,658.737,-5047.57,3.41613,0,0,0.8059),
(23546,4,646.411,-5059.24,1.10649,0,0,3.77313),
(23546,5,658.737,-5047.57,3.41613,0,0,0.8059),
(23546,6,646.411,-5059.24,1.10649,0,0,3.77313),
(23546,7,658.737,-5047.57,3.41613,0,0,0.8059),
(23546,8,646.411,-5059.24,1.10649,0,0,3.77313),
(23546,9,658.737,-5047.57,3.41613,0,0,0.8059),
(23546,10,650.362,-5055.48,1.65735,0,0,0.680704),
(23546,11,650.362,-5055.48,1.65735,10000,2354601,5.23287),
(23546,12,646.411,-5059.24,1.10649,0,0,3.77313),
(23546,13,658.737,-5047.57,3.41613,0,0,0.8059),
(23546,14,646.411,-5059.24,1.10649,0,0,3.77313),
(23546,15,658.737,-5047.57,3.41613,0,0,0.8059),
(23546,16,646.411,-5059.24,1.10649,0,0,3.77313),
(23546,17,658.737,-5047.57,3.41613,0,0,0.8059),
(23546,18,646.411,-5059.24,1.10649,0,0,3.77313),
(23546,19,658.737,-5047.57,3.41613,0,0,0.8059),
(23546,20,646.411,-5059.24,1.10649,0,0,3.77313),
(23546,21,658.737,-5047.57,3.41613,0,0,0.8059),
(23546,22,646.411,-5059.24,1.10649,0,0,3.77313),
(23546,23,658.737,-5047.57,3.41613,0,0,0.8059),
(23546,24,646.411,-5059.24,1.10649,0,0,3.77313),
(23546,25,658.737,-5047.57,3.41613,0,0,0.8059),
(23546,26,646.411,-5059.24,1.10649,0,0,3.77313),
(23546,27,658.737,-5047.57,3.41613,0,0,0.8059),
(23546,28,646.411,-5059.24,1.10649,0,0,3.77313),
(23546,29,658.737,-5047.57,3.41613,0,0,0.8059),
(23546,30,646.411,-5059.24,1.10649,0,0,3.77313),
(23546,31,658.737,-5047.57,3.41613,0,0,0.8059),
(23546,32,646.411,-5059.24,1.10649,0,0,3.77313),
(23546,33,658.737,-5047.57,3.41613,0,0,0.8059),
(23546,34,646.411,-5059.24,1.10649,0,0,3.77313),
(23546,35,658.737,-5047.57,3.41613,0,0,0.8059),
(23546,36,646.411,-5059.24,1.10649,0,0,3.77313),
(23546,37,658.737,-5047.57,3.41613,0,0,0.8059),
(23546,38,646.411,-5059.24,1.10649,0,0,3.77313);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2354601;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2354601,0,31,23551,50,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2354601,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2354601,1,21,1,0,23551,40,7,0,0,0,0,0,0,0,0,'Valgarde Cannoneer - active'),
(2354601,3,0,0,0,0,0,0,2000001119,0,0,0,0,0,0,0,''),
(2354601,7,0,0,0,23551,40,7,2000001120,0,0,0,0,0,0,0,''),
(2354601,8,13,0,0,191414,30,1,0,0,0,0,0,0,0,0,'use object'),
(2354601,9,21,0,0,23551,40,7,0,0,0,0,0,0,0,0,'Valgarde Cannoneer - unactive'),
(2354601,9,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001119 AND 2000001120;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001119,'Fire a warning shot!',0,1,0,25,NULL),
(2000001120,'FIRE!',0,1,0,0,NULL);

-- Valgarde Cannoneer
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid = 56616;
DELETE FROM creature_addon WHERE guid = 56616;
DELETE FROM creature_movement WHERE id = 56616;
DELETE FROM game_event_creature WHERE guid = 56616;
DELETE FROM game_event_creature_data WHERE guid = 56616;
DELETE FROM creature_battleground WHERE guid = 56616;
DELETE FROM creature_linking WHERE guid = 56616 OR master_guid = 56616;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(56616,23551,571,1,1,0,0,650.276,-5062.32,1.10026,5.67232,300,0,0,3834,0,0,0);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 23551);
DELETE FROM creature_template_addon WHERE entry = 23551;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23551,0,0,0,1,0,0,NULL);

-- McGoyver <Pro>
DELETE FROM creature_template_addon WHERE entry = 24040;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(24040,0,0,1,1,0,0,NULL);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 24040;
UPDATE creature SET MovementType = 2 WHERE id = 24040;
DELETE FROM creature_movement WHERE id = 88147;
DELETE FROM creature_movement_template WHERE entry = 24040;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(24040,1,634.924,-5072.46,-0.140513,0,0,0.849185),
(24040,2,634.924,-5072.46,-0.140513,30000,2404001,5.28511),
(24040,3,636.904,-5070.46,0.0474637,0,0,0.209872),
(24040,4,638.551,-5071.46,0.0166242,30000,2404001,5.15006),
(24040,5,636.787,-5070.51,0.042277,0,0,3.39469),
(24040,6,634.989,-5072.31,-0.12746,0,0,3.91149),
(24040,7,634.989,-5072.31,-0.12746,30000,2404001,5.50113),
(24040,8,634.15,-5076.1,-0.457643,0,0,4.5253),
(24040,9,634.15,-5076.1,-0.457643,30000,2404001,0.189901);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2404001;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2404001,2,1,69,0,0,0,0,0,233,0,0,0,0,0,0,''),
(2404001,27,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Anchorite Yazmina
DELETE FROM creature_template_addon WHERE entry = 23734;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23734,0,0,0,1,0,0,NULL);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 23734;
UPDATE creature SET MovementType = 2 WHERE id = 23734;
DELETE FROM creature_movement WHERE id = 113117;
DELETE FROM creature_movement_template WHERE entry = 23734;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(23734,1,629.313,-5021.61,3.0161,0,0,1.23333),
(23734,2,630.962,-5013.28,3.76629,0,0,1.59776),
(23734,3,627.625,-5005.77,3.81134,0,0,2.4262),
(23734,4,624.236,-5004.27,3.55125,0,0,4.40069),
(23734,5,623.725,-5006.55,3.37562,15000,2373401,4.56562),
(23734,6,618.229,-5003.8,3.18406,0,0,3.53911),
(23734,7,610.98,-5008.56,3.07044,0,0,4.04726),
(23734,8,608.157,-5016.99,3.01243,0,0,4.76746),
(23734,9,611.732,-5025.12,2.062,0,0,5.51987),
(23734,10,619.061,-5027.79,1.91867,0,0,0.0927631),
(23734,11,625.17,-5026.17,2.32551,0,0,0.460217),
(23734,12,629.312,-5021.56,3.0185,0,0,1.1655),
(23734,13,631.12,-5013.37,3.78221,0,0,1.69329),
(23734,14,627.401,-5005.44,3.80519,0,0,2.93422),
(23734,15,618.179,-5003.91,3.17557,0,0,2.99313),
(23734,16,610.995,-5008.63,3.06872,0,0,3.86099),
(23734,17,608.191,-5016.75,3.02679,0,0,4.59141),
(23734,18,612.026,-5025.24,2.05162,0,0,5.2747),
(23734,19,619.023,-5027.62,1.93201,0,0,6.10722),
(23734,20,625.231,-5026.19,2.32932,0,0,0.483769),
(23734,21,629.313,-5021.61,3.0161,0,0,1.23333),
(23734,22,630.962,-5013.28,3.76629,0,0,1.59776),
(23734,23,627.625,-5005.77,3.81134,0,0,2.4262),
(23734,24,624.236,-5004.27,3.55125,0,0,4.40069),
(23734,25,618.229,-5003.8,3.18406,0,0,3.53911),
(23734,26,610.98,-5008.56,3.07044,0,0,4.04726),
(23734,27,608.157,-5016.99,3.01243,0,0,4.76746),
(23734,28,611.732,-5025.12,2.062,0,0,5.51987),
(23734,29,619.061,-5027.79,1.91867,0,0,0.0927631),
(23734,30,629.313,-5021.61,3.0161,0,0,1.23333),
(23734,31,630.962,-5013.28,3.76629,0,0,1.59776),
(23734,32,627.625,-5005.77,3.81134,0,0,2.4262),
(23734,33,624.236,-5004.27,3.55125,0,0,4.40069),
(23734,34,618.229,-5003.8,3.18406,0,0,3.53911),
(23734,35,610.98,-5008.56,3.07044,0,0,4.04726),
(23734,36,608.157,-5016.99,3.01243,0,0,4.76746),
(23734,37,611.732,-5025.12,2.062,0,0,5.51987),
(23734,38,619.061,-5027.79,1.91867,0,0,0.0927631);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2373401;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2373401,1,0,0,0,0,0,0,2000001121,0,0,0,0,0,0,0,''),
(2373401,1,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2373401,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2373401,10,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2373401,11,0,0,0,0,0,0,2000001122,0,0,0,0,0,0,0,''),
(2373401,12,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001121 AND 2000001122;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001121,'Don\'t worry, soldier. Yazmina is going to take care of you.',0,0,0,0,NULL),
(2000001122,'%s shakes her head.',0,2,0,0,NULL);

-- Valgarde Yeoman
UPDATE creature_template SET Expansion = 2 WHERE entry IN (23550,23552);
-- missing added - WoTLKDB free guids reused
-- 88153 - corrected (correct template)
DELETE FROM creature WHERE guid IN (56619,88152,88153);
DELETE FROM creature_addon WHERE guid IN (56619,88152,88153);
DELETE FROM creature_movement WHERE id IN (56619,88152,88153);
DELETE FROM game_event_creature WHERE guid IN (56619,88152,88153);
DELETE FROM game_event_creature_data WHERE guid IN (56619,88152,88153);
DELETE FROM creature_battleground WHERE guid IN (56619,88152,88153);
DELETE FROM creature_linking WHERE guid IN (56619,88152,88153) OR master_guid IN (56619,88152,88153);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(56619,23552,571,1,1,0,0,601.381,-5035.12,1.15024,2.02576,300,0,0,5914,0,0,2),
(88152,23552,571,1,1,0,0,573.459,-5087.6,5.13267,2.59592,300,0,0,5914,0,0,2),
(88153,23552,571,1,1,0,0,609.527,-5012.88,3.03903,4.80793,300,0,0,5914,0,0,2);
-- addon
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 23552);
DELETE FROM creature_template_addon WHERE entry = 23552;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23552,0,0,1,1,0,0,NULL);
-- Waypoints
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 120418;
DELETE FROM creature_movement WHERE id IN (56619,88152,88153,120418);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #56619
(56619,1,600.297,-5049.56,2.03911,0,0,4.32854),
(56619,2,596.624,-5063.8,4.10389,0,0,4.46442),
(56619,3,594.768,-5071.69,5.85686,0,0,4.46049),
(56619,4,588.974,-5092.18,5.51398,0,0,3.59656),
(56619,5,575.94,-5096.54,5.21948,6000,2355201,3.944444),
(56619,6,589.681,-5089.01,5.63261,0,0,1.19716),
(56619,7,594.855,-5071.9,5.82745,0,0,1.29141),
(56619,8,598.73,-5056.5,2.9707,0,0,1.3778),
(56619,9,600.856,-5046.49,1.49573,0,0,1.62599),
(56619,10,601.53,-5034.98,1.15087,6000,2355202,1.73909),
-- #88152
(88152,1,573.459,-5087.6,5.13267,6000,2355201,2.63126),
(88152,2,583.465,-5093.42,5.44001,0,0,6.1302),
(88152,3,589.318,-5093.87,5.42627,0,0,0.816976),
(88152,4,592.982,-5089.51,5.6336,0,0,1.18611),
(88152,5,594.47,-5085.58,5.43564,0,0,1.3157),
(88152,6,597.474,-5072.68,5.79961,0,0,1.41465),
(88152,7,600.294,-5056.1,2.8194,0,0,1.39484),
(88152,8,600.11,-5038.64,1.10781,0,0,1.57156),
(88152,9,599.999,-5035.63,1.18895,6000,2355202,1.61868),
(88152,10,601.62,-5039.69,1.01512,0,0,4.98804),
(88152,11,601.61,-5048.95,1.56395,0,0,4.56),
(88152,12,599.508,-5060.42,3.67604,0,0,4.53644),
(88152,13,597.279,-5071.98,5.80678,0,0,4.48932),
(88152,14,592.851,-5090.16,5.63305,0,0,3.95289),
(88152,15,589.688,-5093.55,5.44802,0,0,3.33397),
(88152,16,583.364,-5093.45,5.443,0,0,2.76107),
(88152,17,573.576,-5087.71,5.13597,0,0,2.53881),
-- #88153
(88153,1,611.015,-5031.8,1.31925,0,0,4.41916),
(88153,2,604.768,-5049.81,1.54828,0,0,4.40345),
(88153,3,600.817,-5061.12,3.71663,0,0,4.37204),
(88153,4,596.442,-5072.49,5.79422,0,0,4.41916),
(88153,5,593.603,-5090.2,5.63292,0,0,4.56053),
(88153,6,593.579,-5100.06,5.26073,0,0,5.55013),
(88153,7,599.787,-5103.52,5.29643,0,0,5.91394),
(88153,8,609.064,-5106.88,4.87263,6000,2355201,5.92965),
(88153,9,600.308,-5103.83,5.24079,0,0,2.49903),
(88153,10,593.807,-5099.98,5.26068,0,0,1.74898),
(88153,11,593.539,-5090.18,5.63406,0,0,1.45596),
(88153,12,596.302,-5072.64,5.76611,0,0,1.39706),
(88153,13,602.625,-5051.29,2.19186,0,0,1.24391),
(88153,14,607.473,-5030.67,1.40294,0,0,1.61304),
(88153,15,606.311,-5016.5,3.2097,0,0,1.65624),
(88153,16,606.505,-5001.07,3.87045,6000,2355202,1.69944),
(88153,17,608.675,-5003.06,3.53868,0,0,4.95884),
(88153,18,609.472,-5012.15,3.06254,0,0,4.68003),
-- #120418
(120418,1,607.476,-5049.79,1.67459,0,0,4.38371),
(120418,2,603.832,-5062.27,3.76286,0,0,4.47639),
(120418,3,599.995,-5072.96,5.84425,0,0,4.44497),
(120418,4,595.889,-5086.81,5.48554,0,0,4.47246),
(120418,5,595.606,-5093.49,5.52468,0,0,5.47776),
(120418,6,601.332,-5098.05,5.26486,0,0,6.03146),
(120418,7,611.397,-5098.6,4.87513,6000,2355201,0.45513),
(120418,8,601.759,-5098.03,5.22542,0,0,2.75242),
(120418,9,596.272,-5094.12,5.49875,0,0,2.022),
(120418,10,595.849,-5087.37,5.51726,0,0,1.41489),
(120418,11,600.605,-5071.75,5.58593,0,0,1.31121),
(120418,12,603.791,-5061.67,3.6999,0,0,1.23267),
(120418,13,607.824,-5046.35,1.26101,0,0,1.0324),
(120418,14,616.965,-5035.34,1.13929,0,0,0.714311),
(120418,15,624.787,-5029.44,2.0275,0,0,0.215583),
(120418,16,634.377,-5029.23,2.86261,0,0,6.20424),
(120418,17,647.889,-5029.85,3.75786,6000,2355202,5.83904),
(120418,18,630.139,-5028.72,2.53281,0,0,3.51426),
(120418,19,622.751,-5031.81,1.69682,0,0,3.77344),
(120418,20,612.733,-5040.58,0.831384,0,0,3.95016);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2355201,2355202);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2355201,3,23,23550,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2355202,3,23,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Guard Captain Zorek
DELETE FROM creature_addon WHERE guid = 112612;
DELETE FROM creature_template_addon WHERE entry = 23728;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23728,0,0,0,1,0,0,NULL);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 23728;
UPDATE creature SET MovementType = 2 WHERE id = 23728;
DELETE FROM creature_movement WHERE id = 112612;
DELETE FROM creature_movement_template WHERE entry = 23728;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(23728,1,600.131,-5032.45,5.46526,35000,0,0.837758),
(23728,2,600.131,-5032.45,5.46526,10000,2372801,0.837758),
(23728,3,600.131,-5032.45,5.46526,240000,0,0.837758);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2372801;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2372801,2,0,0,0,0,0,0,2000001123,0,0,0,0,0,0,0,''),
(2372801,6,0,0,0,0,0,0,2000001124,2000001125,2000001126,0,0,0,0,0,''),
(2372801,9,1,6,0,0,0,0,25,274,1,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001123 AND 2000001126;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001123,'%s clears his throat.',0,2,0,0,NULL),
(2000001124,'I look across this base and all I see is fear... Are you gonna be scared when the Lich King\'s armies are sittin\' pretty in Stormwind? Ironforge? NO! You\'re not. And do you know why? Because you\'ll be dead, that\'s why.',0,0,0,1,NULL),
(2000001125,'So when you\'re feeling that tinglin\' sensation at the base of your spine and you\'re \'bout ready to wet your pants, embrace it. Let it enrage you. That fear is the only thing that\'s gonna keep you breathin\'.',0,0,0,1,NULL),
(2000001126,'Am I clear? Do you understand what I\'m sayin\'? I don\'t wanna have to send any more coffins or letters home.',0,0,0,1,NULL);

-- Beltrand McSorf <Explorers' League>
DELETE FROM creature_addon WHERE guid = 120105;
DELETE FROM creature_template_addon WHERE entry = 23548;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23548,0,0,0,1,0,0,NULL);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 23548;
UPDATE creature SET MovementType = 2 WHERE id = 23548;
DELETE FROM creature_movement WHERE id = 120105;
DELETE FROM creature_movement_template WHERE entry = 23548;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(23548,1,656.451,-5035.95,4.47663,115000,0,3.07178),
(23548,2,656.451,-5035.95,4.47663,20000,2354801,3.07178),
(23548,3,656.451,-5035.95,4.47663,350000,0,3.07178);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2354801;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2354801,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2354801,2,3,0,0,0,0,0,0,0,0,0,0,0,0,4.67009,''),
(2354801,4,0,0,0,0,0,0,2000001127,2000001128,0,0,0,0,0,0,''),
(2354801,7,31,23546,50,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2354801,8,0,0,0,23546,50,7,2000001129,0,0,0,0,0,0,0,''),
(2354801,15,3,0,0,0,0,0,0,0,0,0,0,0,0,3.07178,''),
(2354801,16,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001127 AND 2000001129;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001127,'Keller\'s soldiers ain\'t brought me nothin\' in days... No news is good news I \'spose.',0,0,0,0,NULL),
(2000001128,'Oy! Keller! Any word from the ruins? Anything at all??',0,0,0,6,NULL),
(2000001129,'I\'ve already told you, McSorf. I\'ve sent no less than three rescue teams into the ruins and none have returned. I am working tirelessly to keep this port afloat and in one piece! GET OFF MY BACK!',0,0,0,5,NULL);

-- Foreman Miles McMoody
DELETE FROM creature_addon WHERE guid = 113477;
DELETE FROM creature_template_addon WHERE entry = 23738;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23738,0,0,0,1,0,0,NULL);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 23738;
UPDATE creature SET MovementType = 2 WHERE id = 23738;
DELETE FROM creature_movement WHERE id = 113477;
DELETE FROM creature_movement_template WHERE entry = 23738;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(23738,1,643.115,-4964.15,5.28152,0,0,4.16272),
(23738,2,638.361,-4973.51,5.47383,0,0,4.54364),
(23738,3,638.384,-4979.95,5.65666,0,0,4.91198),
(23738,4,639.389,-4984.8,5.74369,0,0,5.03765),
(23738,5,638.538,-4980.36,5.66372,0,0,1.59682),
(23738,6,638.238,-4973.9,5.48081,0,0,1.15229),
(23738,7,642.844,-4964.52,5.26284,0,0,0.62686),
(23738,8,649.584,-4960.66,5.83445,0,0,0.512978);

-- Valgarde Defender
-- missing added - WoTLKDB free guids reused
-- 88153 - corrected (correct template)
DELETE FROM creature WHERE guid IN (56620,56622,56626,56628);
DELETE FROM creature_addon WHERE guid IN (56620,56622,56626,56628);
DELETE FROM creature_movement WHERE id IN (56620,56622,56626,56628);
DELETE FROM game_event_creature WHERE guid IN (56620,56622,56626,56628);
DELETE FROM game_event_creature_data WHERE guid IN (56620,56622,56626,56628);
DELETE FROM creature_battleground WHERE guid IN (56620,56622,56626,56628);
DELETE FROM creature_linking WHERE guid IN (56620,56622,56626,56628) OR master_guid IN (56620,56622,56626,56628);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(56620,23739,571,1,1,0,0,590.322,-5071.69,5.70638,5.969026,300,0,0,38440,0,0,0),
(56622,23739,571,1,1,0,0,603.062,-5074.55,5.70947,2.897247,300,0,0,38440,0,0,0),
(56626,23739,571,1,1,0,0,581.19,-5103.27,5.33624,4.537856,300,0,0,38440,0,0,0),
(56628,23739,571,1,1,0,0,597.229,-5107,5.2605,4.485496,300,0,0,38440,0,0,0);
-- Waypoints
UPDATE creature SET position_x = 647.548218, position_y = -4915.018066, position_z = 11.238075, orientation = 6.222694 WHERE guid = 113658;
UPDATE creature SET position_x = 648.869751, position_y = -4951.304688, position_z = 5.656138, orientation = 4.197996 WHERE guid = 113648;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (113647,113658);
DELETE FROM creature_movement WHERE id IN (113647,113658);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #113647
(113647,1,637.903,-4965.07,4.93948,0,0,4.05983),
(113647,2,630.706,-4974.99,5.05682,0,0,4.0402),
(113647,3,618.038,-4986.29,4.10895,0,0,3.42366),
(113647,4,596.834,-4983.63,4.02863,0,0,2.90923),
(113647,5,581.275,-4979.64,3.82475,0,0,2.76942),
(113647,6,568.379,-4976.46,6.14412,0,0,3.17233),
(113647,7,558.376,-4978.16,8.37929,0,0,3.5022),
(113647,8,551.886,-4981.53,10.1739,0,0,3.36633),
(113647,9,546.005,-4981.22,11.4256,0,0,2.65076),
(113647,10,539.039,-4973.25,16.6356,0,0,2.27298),
(113647,11,534.562,-4965.62,20.3132,0,0,1.9706),
(113647,12,539.009,-4973.4,16.6068,0,0,5.47662),
(113647,13,546.917,-4979.98,11.5018,0,0,5.98005),
(113647,14,553.835,-4979.53,9.68171,0,0,0.242715),
(113647,15,567.436,-4976.22,6.3419,0,0,6.15755),
(113647,16,580.789,-4979.72,3.86132,0,0,5.97612),
(113647,17,596.67,-4983.59,4.01546,0,0,6.03503),
(113647,18,618.237,-4987.21,4.03302,0,0,0.344817),
(113647,19,630.633,-4975.34,5.05055,0,0,0.953501),
(113647,20,644.492,-4961.06,5.38302,0,0,1.00455),
(113647,21,651.853,-4953.25,5.64921,0,0,1.12629),
(113647,22,654.611,-4939.78,5.75075,0,0,1.58182),
(113647,23,651.389,-4928.99,6.60776,0,0,1.95881),
(113647,24,646.115,-4914.39,11.8761,0,0,1.99023),
(113647,25,639.873,-4902.93,19.8482,0,0,2.11982),
(113647,26,635.059,-4886.65,30.5997,0,0,3.11727),
(113647,27,631.373,-4887.82,30.3963,0,0,5.06898),
(113647,28,639.387,-4902.35,20.3143,0,0,5.25355),
(113647,29,645.72,-4913.93,12.1715,0,0,5.1593),
(113647,30,651.255,-4928.65,6.68146,0,0,4.98338),
(113647,31,654.469,-4939.98,5.74488,0,0,4.51607),
(113647,32,647.083,-4954.2,5.59876,0,0,4.12338),
-- #113658
(113658,1,643.027,-4910.64,14.4259,0,0,2.92092),
(113658,2,637.697,-4909.95,17.0169,0,0,3.10942),
(113658,3,629.59,-4908.53,18.1244,0,0,2.86987),
(113658,4,616.974,-4905.08,19.2734,0,0,2.99161),
(113658,5,605.057,-4902.82,19.9766,0,0,3.26649),
(113658,6,588.858,-4904.97,19.2106,0,0,3.38823),
(113658,7,576.725,-4909.77,19.9054,0,0,3.77308),
(113658,8,570.387,-4914.88,19.7994,0,0,4.04011),
(113658,9,566.637,-4922.52,18.9085,0,0,4.50664),
(113658,10,567.353,-4935.98,18.1132,0,0,4.7841),
(113658,11,567.882,-4943.33,18.1442,0,0,4.437),
(113658,12,566.473,-4945.79,18.3941,0,0,3.49295),
(113658,13,563.058,-4944.2,18.733,0,0,2.20524),
(113658,14,562.509,-4934.9,18.6995,0,0,2.34269),
(113658,15,557.091,-4930.99,18.248,0,0,3.1006),
(113658,16,548.802,-4932.43,16.4583,0,0,3.9369),
(113658,17,545.221,-4942.13,14.6443,0,0,4.72622),
(113658,18,545.008,-4952.92,13.4233,0,0,5.07572),
(113658,19,549.001,-4960.99,12.0363,0,0,5.28464),
(113658,20,557.203,-4971.6,8.83417,0,0,5.76674),
(113658,21,567.788,-4976.41,6.26239,0,0,5.98665),
(113658,22,579.862,-4980.42,3.93766,0,0,5.95523),
(113658,23,606.439,-4984.57,4.33421,0,0,6.24661),
(113658,24,626.348,-4984.18,4.5401,0,0,0.724474),
(113658,25,632.134,-4975.76,5.07923,0,0,1.41955),
(113658,26,634.35,-4965.85,4.88685,0,0,0.513987),
(113658,27,644.861,-4961.08,5.41758,0,0,0.633929),
(113658,28,655.686,-4949.36,5.61234,0,0,1.32901),
(113658,29,654.717,-4933.17,5.84752,0,0,1.84344),
(113658,30,651.817,-4922.07,7.95819,0,0,1.96125),
(113658,31,648.059,-4915.11,11.0859,0,0,2.22436);
-- links
DELETE FROM creature_linking WHERE guid = 113648;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(113648, 113647, 1+515);

-- Pricilla Winterwind
DELETE FROM creature_addon WHERE guid = 113331;
DELETE FROM creature_template_addon WHERE entry = 23736;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23736,0,0,0,1,0,0,NULL);

-- Wink Sprinklesprankle
DELETE FROM creature_addon WHERE guid = 119572;
DELETE FROM creature_template_addon WHERE entry = 23802;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23802,0,0,0,1,0,0,NULL);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 23802;
UPDATE creature SET MovementType = 2 WHERE id = 23802;
DELETE FROM creature_movement WHERE id = 119572;
DELETE FROM creature_movement_template WHERE entry = 23802;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(23802,1,598.232,-4927.23,17.8837,0,0,0.142193),
(23802,2,604.329,-4926.59,17.8837,0,0,1.70906),
(23802,3,603.686,-4920.85,17.8837,0,0,4.04955),
(23802,4,599.513,-4925.6,17.8837,0,0,3.51155),
(23802,5,591.432,-4928.39,17.8834,0,0,3.31913),
(23802,6,589.487,-4928.74,18.6776,0,0,3.12828),
(23802,7,586.516,-4927.23,18.6763,0,0,3.42779),
(23802,8,580.731,-4928.98,18.6763,0,0,4.97424),
(23802,9,584.455,-4942.88,18.6714,0,0,0.154243),
(23802,10,592.069,-4942.78,18.6746,0,0,1.83342),
(23802,11,590.218,-4936.2,18.6732,0,0,1.84913),
(23802,12,588.086,-4930.55,18.6718,0,0,0.605843),
(23802,13,591.326,-4929.33,17.9085,0,0,0.274405);

-- Coot "The Stranger" Albertson <Bartender>
DELETE FROM creature_addon WHERE guid = 113407;
DELETE FROM creature_template_addon WHERE entry = 23737;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23737,0,0,1,1,0,0,NULL);

-- Sorely Twitchblade
DELETE FROM creature_addon WHERE guid = 113407;
DELETE FROM creature_template_addon WHERE entry = 23732;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23732,0,0,1,1,10,0,NULL);

-- Innkeeper Hazel Largas
UPDATE creature SET position_z = 17.8836 WHERE guid = 112850;
DELETE FROM creature_addon WHERE guid = 112850;
DELETE FROM creature_template_addon WHERE entry = 23731;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23731,0,0,1,1,0,0,NULL);

-- Rowan Helfgot
DELETE FROM creature_addon WHERE guid = 112850;
DELETE FROM creature_template_addon WHERE entry = 23549;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23549,0,0,0,1,0,0,NULL);

-- Thoralius the Wise
UPDATE creature_template SET MovementType = 2 WHERE Entry = 23975;
UPDATE creature SET MovementType = 2 WHERE id = 23975;
DELETE FROM creature_movement WHERE id = 111692;
DELETE FROM creature_movement_template WHERE entry = 23975;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(23975,1,638.255,-5013.19,4.65392,50000,2397501,3.21141),
(23975,2,638.255,-5013.19,4.65392,100000,0,3.21141);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2397501;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2397501,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2397501,1,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(2397501,3,3,0,0,0,0,0,0,0,0,0,0,0,0,3.23457,''),
(2397501,3,3,0,0,0,0,0,0,0,0,0,637.63,-5012.64,4.54714,3.23457,''),
(2397501,4,15,42837,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2397501,5,3,0,0,0,0,0,0,0,0,0,634.837,-5010.3,4.45303,3.23457,''),
(2397501,7,0,0,0,0,0,0,2000001130,0,0,0,0,0,0,0,''),
(2397501,9,1,20,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2397501,15,3,0,0,0,0,0,0,0,0,0,638.255,-5013.19,4.65392,255,''),
(2397501,17,3,0,0,0,0,0,0,0,0,0,0,0,0,3.53216,''),
(2397501,18,15,42838,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2397501,19,3,0,0,0,0,0,0,0,0,0,636.042,-5016.67,4.16637,3.53216,''),
(2397501,21,0,0,0,0,0,0,2000001131,0,0,0,0,0,0,0,''),
(2397501,23,1,20,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2397501,28,3,0,0,0,0,0,0,0,0,0,638.255,-5013.19,4.65392,255,''),
(2397501,31,3,0,0,0,0,0,0,0,0,0,0,0,0,3.21141,''),
(2397501,32,0,0,0,0,0,0,2000001132,2000001133,0,0,0,0,0,0,''),
(2397501,33,1,64,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2397501,43,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2397501,44,0,0,0,0,0,0,2000001134,0,0,0,0,0,0,0,''),
(2397501,46,28,1,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_SIT'),
(2397501,47,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001130 AND 2000001134;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001130,'Fire grant me vision...',0,0,0,0,NULL),
(2000001131,'Water grant me serenity...',0,0,0,0,NULL),
(2000001132,'%s inhales the wispy smoke tendrils emanating from the burner.',0,2,0,0,NULL),
(2000001133,'%s falls into a trance.',0,2,0,0,NULL),
(2000001134,'Thank you, spirits.',0,0,0,0,NULL);

-- Bartleby Armorfist
DELETE FROM creature_addon WHERE guid = 113249;
DELETE FROM creature_template_addon WHERE entry = 23735;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23735,0,0,0,1,0,0,NULL);

-- Cleric of the Crusade <The Argent Crusade>
UPDATE creature_template SET equipmentTemplateid = 0 WHERE entry = 24233;
DELETE FROM creature_addon WHERE guid = 111855;
DELETE FROM creature_template_addon WHERE entry = 24233;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(24233,0,0,1,1,69,0,NULL);

-- Highlord Tirion Fordring
UPDATE creature_template SET UnitClass = 2 WHERE entry = 24232;

-- Turkey
UPDATE creature SET position_x = 585.436157, position_y = -5051.375977, position_z = 0.933165 WHERE guid = 119557;
UPDATE creature SET position_x = 580.762878, position_y = -4903.232422, position_z = 20.424324 WHERE guid = 119561;
