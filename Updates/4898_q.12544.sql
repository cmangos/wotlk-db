-- q.12544 'The Bones of Nozronn'
DELETE FROM dbscripts_on_event WHERE id = 18481;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(18481,1,31,28256,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'q check - terminate if alive'),
(18481,10,10,28256,35000,0,0,0,0x08,0,0,0,0,5212.603,5787.078,-70.56953,2.513274,'summon: 28256'),
(18481,11,10,28279,20000,0,0,0,0x08,1,0,0,0,5242.078,5740.667,-59.98927,4.18879,'summon: 28279'),
(18481,12,10,28279,20000,0,0,0,0x08,1,0,0,0,5232.818,5750.225,-63.93412,3.961897,'summon: 28279'),
(18481,13,10,28279,20000,0,0,0,0x08,1,0,0,0,5249.261,5765.971,-59.90696,6.178465,'summon: 28279'),
(18481,14,10,28279,20000,0,0,0,0x08,1,0,0,0,5230.022,5771.104,-56.96051,1.710423,'summon: 28279'),
(18481,15,10,28279,20000,0,0,0,0x08,1,0,0,0,5240.936,5786.487,-63.58977,1.22173,'summon: 28279'),
(18481,16,10,28279,20000,0,0,0,0x08,1,0,0,0,5206.194,5754.944,-71.6155,2.879793,'summon: 28279'),
(18481,17,10,28279,20000,0,0,0,0x08,1,0,0,0,5221.603,5749.741,-63.75953,3.543018,'summon: 28279'),
(18481,18,10,28279,20000,0,0,0,0x08,1,0,0,0,5232.51,5731.526,-68.7676,4.764749,'summon: 28279'),
(18481,19,10,28279,20000,0,0,0,0x08,1,0,0,0,5214.361,5743.659,-73.36909,4.29351,'summon: 28279'),
(18481,20,10,28279,20000,0,0,0,0x08,1,0,0,0,5206.439,5767.634,-68.19739,3.822271,'summon: 28279'),
(18481,21,10,28279,20000,0,0,0,0x08,1,0,0,0,5197.423,5776.377,-70.25041,2.094395,'summon: 28279'),
(18481,22,10,28279,20000,0,0,0,0x08,1,0,0,0,5199.837,5789.268,-62.45123,2.775074,'summon: 28279'),
(18481,23,10,28279,20000,0,0,0,0x08,1,0,0,0,5198.979,5768.557,-70.70884,0.436332,'summon: 28279'),
(18481,24,10,28279,20000,0,0,0,0x08,1,0,0,0,5204.702,5791.856,-68.11948,1.623156,'summon: 28279'),
(18481,25,10,28279,20000,0,0,0,0x08,1,0,0,0,5259.322,5767.997,-63.7346,2.75762,'summon: 28279'),
(18481,26,10,28279,20000,0,0,0,0x08,1,0,0,0,5254.312,5781.61,-67.96659,3.420845,'summon: 28279'),
(18481,27,10,28279,20000,0,0,0,0x08,1,0,0,0,5242.865,5777.236,-65.67616,2.426008,'summon: 28279'),
(18481,28,10,28279,20000,0,0,0,0x08,1,0,0,0,5232.002,5790.667,-68.25787,1.518436,'summon: 28279'),
(18481,29,10,28279,20000,0,0,0,0x08,1,0,0,0,5223.679,5794.549,-64.10463,5.951573,'summon: 28279'),
(18481,30,10,28279,20000,0,0,0,0x08,1,0,0,0,5207.38,5800.154,-67.0273,3.822271,'summon: 28279'),
(18481,31,10,28279,20000,0,0,0,0x08,1,0,0,0,5215.567,5799.322,-68.99142,3.193953,'summon: 28279'),
(18481,32,10,28230,30000,0,0,0,0x08,0,0,0,0,5215.021,5777.659,-71.13335,3.752458,'summon: 28230'),
(18481,33,10,28230,30000,0,0,0,0x08,0,0,0,0,5214.409,5784.443,-62.01576,0.5934119,'summon: 28230'),
(18481,34,10,28230,30000,0,0,0,0x08,0,0,0,0,5208.637,5778.08,-63.04353,2.565634,'summon: 28230'),
(18481,35,10,28230,30000,0,0,0,0x08,0,0,0,0,5219.113,5779.453,-71.0571,4.520403,'summon: 28230'),
(18481,36,10,28230,30000,0,0,0,0x08,0,0,0,0,5225.277,5777.674,-67.50936,5.061455,'summon: 28230'),
(18481,37,53,0,0,0,0,0,0,32538,1,0,0,0,0,0,0,'Set worldstate variable to 1'),
(18481,28000,8,28256,0,0,0,0,0,0,0,0,0,0,0,0,0,'Q Credit'),
(18481,30000,53,0,0,0,0,0,0,32538,0,0,0,0,0,0,0,'Set worldstate variable to 0');
-- Updates
UPDATE creature_template SET UnitFlags = 33554432, MovementType = 0 WHERE entry IN (28256);
UPDATE creature_template SET InhabitType = 4, MovementType = 1 WHERE entry IN (28279);
UPDATE creature_template SET InhabitType = 4, MovementType = 0 WHERE entry IN (28230);
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20766 AND 20771;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20766,4000,0,0,0,0,0,0,2,27697,0,0,0,0,0,0,0,'Part of Voice of Nozronn 28256 EAI: Say'),
(20766,11000,0,0,0,0,0,0,2,27698,0,0,0,0,0,0,0,'Part of Voice of Nozronn 28256 EAI: Say'),
(20766,17000,0,0,0,0,0,0,2,27699,0,0,0,0,0,0,0,'Part of Voice of Nozronn 28256 EAI: Say'),
(20766,24000,0,0,0,0,0,0,2,27701,0,0,0,0,0,0,0,'Part of Voice of Nozronn 28256 EAI: Say'),
(20766,29000,0,0,0,0,0,0,2,27702,0,0,0,0,0,0,0,'Part of Voice of Nozronn 28256 EAI: Say'),
(20767,1,15,33343,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Sholazar Witch Light 28279 EAI: Self Cast'),
(20768,1,15,33344,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Sholazar Witch Light 28279 EAI: Self Cast'),
(20769,1,15,35709,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Sholazar Witch Light 28279 EAI: Self Cast'),
(20770,1,15,32566,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Sholazar Witch Light 28279 EAI: Self Cast'),
(20771,1,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Sholazar Witch Light 28279 EAI: move towards summoner');
DELETE FROM dbscript_random_templates WHERE id = 20311;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20311,1,20767,0,'Sholazar Witch Light 28279 - Random Script 1'),
(20311,1,20768,0,'Sholazar Witch Light 28279 - Random Script 2'),
(20311,1,20769,0,'Sholazar Witch Light 28279 - Random Script 3'),
(20311,1,20770,0,'Sholazar Witch Light 28279 - Random Script 4');
-- moved
UPDATE creature SET position_x = 5212.669922, position_y = 5831.364746, position_z = -71.507301 WHERE guid = 521234;
-- missing OBJECT added
DELETE FROM game_event_gameobject WHERE guid = 511788;
DELETE FROM gameobject_battleground WHERE guid = 511788;
DELETE FROM gameobject WHERE guid = 511788;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(511788,188443,571,1,5210.079,5790.797,-71.42526,0.71558490,0,0,0.3502073,0.9366722,1,1);
DELETE FROM `spawn_group` WHERE id = 32538;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32538, 'Sholazar Basin - o.188443 spawn with q.12544', 1, 0, 20563, 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 32538;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32538, 511788, -1);
DELETE FROM conditions WHERE condition_entry IN (20563);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20563, 42, 32538, 1, 1, 0, 'Sholazar Basin - o.188443 spawn with q.12544');
DELETE FROM worldstate_name WHERE Id=32538;
INSERT INTO worldstate_name(Id, Name) VALUES
(32538,'Sholazar Basin - o.188443 spawn with q.12544');
