-- The Maiden's Fancy
-- Ratchet <--> Booty Bay

-- Crewman Springwidget 25095
UPDATE creature SET movementtype = 2, spawndist = 0 WHERE id = 25095;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 25095;
DELETE FROM creature_movement_template WHERE Entry = 25095;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(25095,0,1,12.037506,-8.863828,11.831423,100,2000,1000), -- reset emote
(25095,0,2,12.921524,-8.771513,11.857969,100,0,0),
(25095,0,3,15.671524,-8.271513,12.107969,100,0,0),
(25095,0,4,15.805542,-8.679199,11.884516,100,26000,1028), -- 01:56:02.837
(25095,0,5,15.805542,-8.679199,11.884516,100,2000,1000), -- 01:56:28.707
(25095,0,6,12.857117,-2.566162,11.897912,100,0,0), -- 01:56:30.286
(25095,0,7,9.566101,8.870361,11.665414,100,26000,1028), -- 01:56:33.565
(25095,0,8,9.566101,8.870361,11.665414,100,1500,1000), -- 01:57:01.063
(25095,0,9,15.1427,8.106445,11.908027,100,0,0), -- 01:57:02.673
(25095,0,10,15.084656,8.602783,11.893976,100,23000,1069), -- 01:57:05.914
(25095,0,11,15.084656,8.602783,11.893976,100,2000,1000),
(25095,0,12,12.037109,-8.864014,11.71606,100,0,0); -- 01:57:30.186

-- First Mate Masker 25093
UPDATE creature SET position_x = 16.575304, position_y = 4.065951, position_z = 12.061051, orientation = 1.3255638, movementtype = 2, spawndist = 0 WHERE id = 25093;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (25093));
DELETE FROM creature_template_addon WHERE entry IN (25093);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(25093,0,0,0,0,0,0,NULL);
UPDATE creature_template SET movementtype = 2 WHERE Entry = 25093;
DELETE FROM creature_movement_template WHERE Entry = 25093;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(25093,0,1,16.101074,6.8448486,11.976395,100,9500,2509301), -- 01:55:40.198
(25093,0,2,17.08789,-4.1606445,12.09512,100,0,0), -- 01:55:49.798
(25093,0,3,16.204224,-5.161133,12.0418,100,9500,2509301), -- 01:55:54.740
(25093,0,4,15.893982,1.1523438,12.102386,100,0,0); -- 01:56:07.692
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2509301);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2509301,900,31,25095,40,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25093'),
(2509301,1000,36,0,0,0,25095,5930005,1|0x10,0,0,0,0,0,0,0,0,'face buddy'), -- 01:55:41.781
(2509301,3000,1,273,0,0,0,0,0x04,6,1,0,0,0,0,0,0,'random emote'); -- 01:55:43.397

-- Crewman Hammertink 25097
UPDATE creature SET position_x = -11.879251, position_y = 6.683722, position_z = 6.1819563, orientation = 3.1241393, movementtype = 2, spawndist = 0 WHERE id = 25097;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 25097;
DELETE FROM creature_movement_template WHERE Entry = 25097;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(25097,0,1 ,-11.879251,6.683722,6.1819563,100,20000,1028), -- 01:56:05.662
(25097,0,2 ,-11.879251,6.683722,6.1819563,100,4000,2509701),
(25097,0,3 ,-10.366627,6.602725,6.141445,100,0,0),
(25097,0,4 ,-8.866627,6.602725,6.141445,100,0,0),
(25097,0,5 ,-7.116627,6.602725,6.141445,100,0,0),
(25097,0,6 ,1.6333728,4.602725,6.141445,100,0,0),
(25097,0,7 ,3.1333728,4.352725,6.141445,100,0,0),
(25097,0,8 ,4.133373,4.102725,6.141445,100,0,0),
(25097,0,9 ,4.633373,3.3527253,6.141445,100,0,0),
(25097,0,10,6.133373,0.85272527,6.141445,100,0,0),
(25097,0,11,6.145996,0.5217285,6.100934,100,0,0), -- 01:56:07.692
(25097,0,12,6.246032,-0.47875953,6.349739,100,0,0),
(25097,0,13,6.746032,-6.47876,6.349739,100,0,0),
(25097,0,14,5.8460693,-6.979248,6.0985446,100,5000,0), -- 01:56:10.913
(25097,0,15,6.4137573,0.82336426,6.348203,100,0,0),
(25097,0,16,5.6637573,4.8233643,6.348203,100,0,0),
(25097,0,17,3.4137573,4.8233643,6.348203,100,0,0),
(25097,0,18,0.6637573,4.8233643,6.348203,100,0,0),
(25097,0,19,-4.5185547,3.6259766,6.097862,100,0,0), -- 01:56:15.763
(25097,0,20,19.474121,-6.3913574,12.095972,100,0,0), -- 01:56:18.961
(25097,0,21,20.251587,-6.1713867,12.548439,100,0,0),
(25097,0,22,23.501587,-5.6713867,16.048439,100,0,0),
(25097,0,23,24.251587,-5.6713867,16.048439,100,0,0),
(25097,0,24,25.001587,-5.4213867,16.298439,100,0,0),
(25097,0,25,26.751587,-5.1713867,16.548439,100,0,0),
(25097,0,26,34.751587,-3.9213867,18.048439,100,0,0),
(25097,0,27,35.751587,-3.6713867,18.548439,100,0,0),
(25097,0,28,36.501587,-3.4213867,18.548439,100,0,0),
(25097,0,29,36.751587,-2.9213867,18.548439,100,0,0),
(25097,0,30,37.029053,-1.951416,18.500906,100,10000,2509702), -- 01:56:23.863
(25097,0,31,34.939999,-4.001230,18.038124,100,0,0),
(25097,0,32,24.671875,-5.270513,16.021315,100,0,0),
(25097,0,33,19.512039,-5.866657,12.126170,100,0,0),
(25097,0,34,2.088557,-4.682076,11.425754,100,0,0),
(25097,0,35,-3.680368,-4.367230,6.097966,100,0,0),
(25097,0,36,-11.879395,6.683838,6.0986266,3.1241393,60000,1028); -- 01:56:33.565
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2509701,2509702);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2509701,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(2509701,2,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote'),
(2509702,2000,1,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(2509702,2010,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN OFF');

-- Navigator Tah're 25094
UPDATE creature SET movementtype = 2, spawndist = 0 WHERE id = 25094;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 25094;
DELETE FROM creature_movement_template WHERE Entry = 25094;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(25094,0,1,34.1192,0.04272461,18.286228,3.132,25000,0),
(25094,0,2,37.848145,0.007080078,18.62088,100,35000,2509401), -- 01:56:10.913
(25094,0,3,34.1192,0.04272461,18.286228,3.132,60000,0); -- 01:56:48.129
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2509401);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2509401,4000,28,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'UNIT_STAND_STATE_SIT'), -- 01:56:14.151 
(2509401,20000,1,273,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 01:56:30.286
(2509401,23000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'UNIT_STAND_STATE_STAND'), -- 01:56:33.565
(2509401,25000,1,92,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 01:56:35.186
(2509401,29000,1,92,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'); -- 01:56:39.985

-- Bosun Thunderhorn 25098
UPDATE creature_template SET GossipMenuId = 9086 WHERE entry=25098;
DELETE FROM gossip_menu WHERE entry=9086;
INSERT INTO gossip_menu (entry,text_id) VALUES
(9086,12284);
DELETE FROM npc_text_broadcast_text WHERE Id IN(12284);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(12284,1,24148);
DELETE FROM npc_text WHERE id=12284;

-- Galley Chief Steelbelly 25089
UPDATE creature SET movementtype = 2, spawndist = 0 WHERE id = 25089;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 25089;
DELETE FROM creature_movement_template WHERE Entry = 25089;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(25089,0,1,17.873539,-7.911864,6.1809983,1.7976891,12000,0),
(25089,0,2,16.688112,-7.3771963,6.3896527,100,0,0), -- 01:55:51.476
(25089,0,3,11.502686,-7.8425293,6.098307,100,0,0),
(25089,0,4,11.442688,-8.286621,6.098162,100,8000,2508901), -- 01:55:54.740
(25089,0,5,17.873291,-7.911865,6.0983334,100,0,0), -- 01:56:02.837
(25089,0,6,17.873291,-7.911865,6.0983334,1.797689199447631835,60000,0); -- 01:56:02.837
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2508901);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2508901,2000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 01:55:56.353
(2508901,5000,1,11,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'); -- 01:55:59.591

-- Captain Krick Wrenchnozzle 25078
UPDATE creature SET position_x = 26.52356, position_y = 4.576416, position_z = 16.424603, movementtype = 2, spawndist = 0 WHERE id = 25078;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (25078));
DELETE FROM creature_template_addon WHERE entry IN (25078);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(25078,0,0,0,0,0,0,NULL);
UPDATE creature_template SET movementtype = 2 WHERE Entry = 25078;
DELETE FROM creature_movement_template WHERE Entry = 25078;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- ratchet
(25078,0,1,26.379824,4.8866,16.470982,100,0,0),
(25078,0,2,33.74118,3.5709248,17.958591,100,0,0),
(25078,0,3,34.10254,3.255249,17.946201,4.71759,10000,2507801), -- 02:03:25.960
(25078,0,4,26.380005,4.886963,16.393131,3.543018,9000,0), -- 02:03:35.681
(25078,0,5,26.346375,-3.145752,16.374086,3.543018,1000,0),
(25078,0,6,27.045166,4.7543945,16.52227,100,0,0),
(25078,0,7,26.869385,-3.2756348,16.474241,100,0,0),
(25078,0,8,26.276672,4.663086,16.376226,100,0,0),
(25078,0,9,26.556702,-3.6472168,16.40372,2000,0,0),
(25078,0,10,26.52356,4.576416,16.424603,100,2000,0),
(25078,0,11,26.52356,4.576416,16.424603,3.40339,60000,2507802),
-- booty bay
(25078,1,1 ,33.73242,3.4042969,17.820826,100,1000,0),
(25078,1,2 ,33.73242,3.4042969,17.820826,4.82704,2000,2507803), -- 01:58:01.343
(25078,1,3 ,26.686523,2.7185059,16.450924,100,2000,0), -- 01:58:03.349
(25078,1,4 ,25.331055,-5.317627,16.154238,100,0,0), -- 01:58:07.801
(25078,1,5 ,19.514648,-5.922119,12.108348,100,0,0), -- 01:58:12.659
(25078,1,6 ,17.24121,0.27929688,12.140296,100,0,0), -- 01:58:15.892
(25078,1,7 ,20.41504,5.9692383,12.17082,100,0,0), -- 01:58:19.138
(25078,1,8 ,26.374023,-5.992676,6.0962324,100,0,0), -- 01:58:22.369
(25078,1,9 ,21.167969,-4.5595703,6.0987244,100,1000,1273), -- 01:58:30.441
(25078,1,10,18.213867,-3.3116455,6.3488398,100,0,0),
(25078,1,11,14.759766,1.4362793,6.098955,100,0,0), -- 01:58:36.908
(25078,1,12,16.161621,5.0914307,6.3474655,100,0,0),
(25078,1,13,16.411621,6.0914307,6.3474655,100,0,0),
(25078,1,14,16.661621,6.0914307,6.3474655,100,0,0),
(25078,1,15,18.411621,6.0914307,6.3474655,100,0,0),
(25078,1,16,23.911621,6.0914307,6.3474655,100,0,0),
(25078,1,17,26.063477,6.246582,6.0959764,100,0,0), -- 01:58:41.698
(25078,1,18,28.245605,4.2440186,6.3455896,100,0,0),
(25078,1,19,29.495605,3.2440186,6.3455896,100,0,0),
(25078,1,20,30.927734,1.7414551,6.0952034,100,0,0), -- 01:58:48.242
(25078,1,21,35.513184,2.9019775,6.3436246,100,0,0),
(25078,1,22,37.098633,4.5625,6.092046,100,15000,0),
(25078,1,23,30.927734,1.7414551,6.0952034,100,0,0), -- 01:58:48.242
(25078,1,24,26.063477,6.246582,6.0959764,100,0,0), 
(25078,1,25,14.759766,1.4362793,6.098955,100,0,0),
(25078,1,26,21.167969,-4.5595703,6.0987244,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2507801 AND 2507803;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2507801,2000,1,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 02:03:27.590
(2507801,4000,1,273,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 02:03:29.206
(2507801,6000,3,0,0,0,0,0,0,0,0,0,0,0,0,0,3.0892,'move'), -- 02:03:30.747
(2507801,8000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 02:03:32.444
(2507802,3000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 02:04:14.560
(2507803,2000,1,66,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'); -- 01:58:03.349
DELETE FROM dbscripts_on_event WHERE id IN (16398,16397);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(16398,1,16,5495,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - BoatDockingWarning'),
(16398,1000,16,5154,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - ShipDocked'),
(16397,1,16,5495,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - BoatDockingWarning'),
(16397,2,31,25078,100,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - search for 25078'),
(16397,500,20,2,1,0,25078,100,7,0,0,0,0,0,0,0,0,'Transports (Ships) - Captain Krick Wrenchnozzle 25078 - Path 1'),
(16397,1000,16,5154,16,0,0,0,0,0,0,0,0,0,0,0,0,'Transports (Ships) - Play - ShipDocked');
UPDATE creature_template SET ExtraFlags = ExtraFlags|4096 WHERE entry IN (25095,25093,25078,25097,25094,25089);

-- objects
-- they did not exist during 3.x.x
DELETE FROM gameobject WHERE map = 593;
