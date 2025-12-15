-- q.12856 'Cold Hearted'
-- Captive Proto-Drake 29708
UPDATE creature SET spawndist = 0.2, MovementType = 1 WHERE id = 29708;
-- Freed Proto-Drake 29709
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, SpeedWalk = 18/2.5, SpeedRun = 30/7.0, UnitFlags = 0, InhabitType = 7, MovementType = 0 WHERE entry IN (29709);
DELETE FROM dbscripts_on_relay WHERE id IN (21243,21244,21245);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- Part of Freed Proto-Drake 29709 EAI
-- 21243
(21243,10,34,21087,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Freed Proto-Drake 29709 EAI: area check'),
(21243,1000,15,51259,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Freed Proto-Drake 29709 EAI: warning spell'),
(21243,16000,34,21087,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Freed Proto-Drake 29709 EAI: area check'),
(21243,16100,14,55029,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Freed Proto-Drake 29709 EAI: Player Drop'),
-- 21244
(21244,1000,20,1,7,0,0,0,0x004,1,0,0,0,0,0,0,0,'Part of Brunnhildar Prisoner 29639 EAI: SET RandomMovement + RUN (dist 7)'),
(21244,1001,18,5000,0,0,0,0,0x004,1,0,0,0,0,0,0,0,'Part of Brunnhildar Prisoner 29639 EAI: despawn self'),
-- 21245
(21245,1,14,54894,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Brunnhildar Prisoner 29639 EAI: remove aura'),
(21245,2,15,55047,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Brunnhildar Prisoner 29639 EAI: cast 55047'),
(21245,3,15,55047,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Brunnhildar Prisoner 29639 EAI: cast 55047'),
(21245,4,15,55047,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Brunnhildar Prisoner 29639 EAI: cast 55047'),
(21245,5,15,55047,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Brunnhildar Prisoner 29639 EAI: cast 55047'),
(21245,6,15,55047,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Brunnhildar Prisoner 29639 EAI: cast 55047'),
(21245,7,15,55047,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Brunnhildar Prisoner 29639 EAI: cast 55047'),
(21245,8,15,55047,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Brunnhildar Prisoner 29639 EAI: cast 55047'),
(21245,9,15,55047,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Brunnhildar Prisoner 29639 EAI: cast 55047'),
(21245,10,15,55047,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Brunnhildar Prisoner 29639 EAI: cast 55047'),
(21245,11,15,55047,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Brunnhildar Prisoner 29639 EAI: cast 55047');
DELETE FROM conditions WHERE condition_entry BETWEEN 21083 AND 21087;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES
(21083, 4, 4422,0,0,0,0),
(21084, 4, 4437,0,0,0,0),
(21085, 4, 4438,0,0,0,0),
(21086, 4, 4535,0,0,0,0),
(21087, -2, 21086,21085,21084,21083,0);
UPDATE broadcast_text SET ChatTypeID = 3 WHERE Id= 32956;
DELETE FROM creature_movement_template WHERE Entry = 29709;
INSERT INTO creature_movement_template (`Entry`, `pathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- path 1
(29709,1,1,7294.96,-2418.7327,823.86896,100,0,0),
(29709,1,2,7315.9844,-2331.4597,826.39716,100,0,0),
(29709,1,3,7271.8257,-2271.4795,833.59174,100,0,0),
(29709,1,4,7186.253,-2218.4753,847.56323,100,0,0),
(29709,1,5,7113.1953,-2164.2883,850.2301,100,0,0),
(29709,1,6,7078.018,-2063.106,854.75806,100,0,0),
(29709,1,7,7073.2207,-1983.382,861.9246,100,0,0),
(29709,1,8,7061.455,-1885.8987,865.11896,100,0,0),
(29709,1,9,7033.3203,-1826.7754,876.25775,100,0,0),
(29709,1,10,6999.902,-1784.0123,897.4521,100,0,0),
(29709,1,11,6954.9126,-1747.043,897.4521,100,0,0),
(29709,1,12,6933.8564,-1720.6979,882.2022,100,0,0),
(29709,1,13,6932.729,-1687.3057,866.1189,100,0,0),
(29709,1,14,6952.458,-1663.8024,849.8133,100,0,0),
(29709,1,15,7002.819,-1651.6808,831.397,100,0,0),
(29709,1,16,7026.531,-1649.2389,828.84064,100,5000,2970901),
-- path 2
(29709,2,1,7023.9546,-1653.0209,830.5179,100,0,0),
(29709,2,2,7024.369,-1674.0743,842.3121,100,0,0),
(29709,2,3,7009.892,-1708.0817,857.92334,100,0,0),
(29709,2,4,6985.585,-1722.4503,866.1286,100,0,0),
(29709,2,5,6952.674,-1723.7157,875.6844,100,0,0),
(29709,2,6,6915.1494,-1705.2404,888.934,100,0,0),
(29709,2,7,6887.2827,-1668.9343,906.4061,100,0,0),
(29709,2,8,6885.4087,-1634.4321,918.7952,100,0,0),
(29709,2,9,6905.096,-1602.3185,926.43414,100,0,0),
(29709,2,10,6937.0645,-1583.4703,928.68317,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2970901);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,datafloat,x,y,z,o,speed,condition_id,comments) VALUES
(2970901,500,3,0,0x1,0,0,0,0x004,0,0,0,0,0,7026.531,-1649.2389,819.710,100,0,0,'AnimTier 0'),
(2970901,2000,15,55141,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 55141'), -- target 29639
(2970901,5000,15,55143,0,0,0,0,0x004,0,0,0,0,0,0,0,0,0,0,0,'cast 55143'), -- target player
(2970901,5001,14,55029,0,0,0,0,0x004,0,0,0,0,0,0,0,0,0,0,0,'remove 55029'), -- remove veh control spell
(2970901,6000,3,0,0x1,0,0,0,0x004,0,3,0,0,0,7026.531,-1649.2389,828.84064,100,0,0,'AnimTier 3'),
(2970901,8000,20,3,2,0,0,0,0x004,0,0,0,0,0,0,0,0,0,0,0,'set path 2'); -- path2
DELETE FROM dbscripts_on_spell WHERE id IN (55047,55048);
INSERT INTO dbscripts_on_spell (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,datafloat,x,y,z,o,speed,condition_id,comments) VALUES
(55047,1,15,55048,0,0,0,0,0x004,0,0,0,0,0,0,0,0,0,0,0,''),
(55048,1,14,54894,0,0,0,0,0x004,0,0,0,0,0,0,0,0,0,0,0,'');
-- Brunnhildar Prisoner 29639
-- missing added
DELETE FROM creature_addon WHERE guid IN (525365,525366,525367);
DELETE FROM creature_movement WHERE id IN (525365,525366,525367);
DELETE FROM game_event_creature WHERE guid IN (525365,525366,525367);
DELETE FROM game_event_creature_data WHERE guid IN (525365,525366,525367);
DELETE FROM creature_battleground WHERE guid IN (525365,525366,525367);
DELETE FROM creature_linking WHERE guid IN (525365,525366,525367);
DELETE FROM creature WHERE guid IN (525365,525366,525367);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(525365,29639,571,1,3,7311.4756,-2807.3967,799.3841,2.809980154037475585,300,300,0,0),
(525366,29639,571,1,3,7346.9272,-2804.3225,799.5508,0.837758064270019531,300,300,0,0),
(525367,29639,571,1,3,7221.723,-2811.6194,822.7162,4.537856101989746093,300,300,0,0);
DELETE FROM creature_movement_template WHERE Entry = 29639;
INSERT INTO creature_movement_template (`Entry`, `pathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- path 1
(29639,1,1,7036.458,-1627.729,820.61426,100,0,0),
(29639,1,2,7051.916,-1624.3735,828.8491,100,0,0),
(29639,1,3,7073.54,-1620.7849,826.26434,100,100,1),
-- path 2
(29639,2,1,7044.5537,-1667.6604,820.6143,100,0,0),
(29639,2,2,7059.668,-1664.3043,828.6731,100,0,0),
(29639,2,3,7070.859,-1662.113,827.60944,100,0,0),
(29639,2,4,7081.014,-1659.3873,826.3391,100,100,1);
DELETE FROM dbscript_random_templates WHERE id = 20389;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20389,1,21246,0,'Brunnhildar Prisoner 29639 - Random Script 1'),
(20389,1,21247,0,'Brunnhildar Prisoner 29639 - Random Script 2');
DELETE FROM dbscripts_on_relay WHERE id IN (21246,21247);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21246,0,20,2,1,0,0,0,0x004,0,0,0,0,0,0,0,0,'Brunnhildar Prisoner 29639 - Random Script 1 - Path1'),
(21247,0,20,2,2,0,0,0,0x004,0,0,0,0,0,0,0,0,'Brunnhildar Prisoner 29639 - Random Script 2 - Path2');
-- add them all to spawn GROUP
DELETE FROM `spawn_group` WHERE id = 33009;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33009, 'Storm Peaks - Brunnhildar Prisoner 29639', 0, 10, 0, 0); -- max 10/13
DELETE FROM `spawn_group_spawn` WHERE id = 33009;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33009, 525365, -1),(33009, 525366, -1),(33009, 525367, -1),
(33009, 525833, -1),(33009, 525834, -1),(33009, 525835, -1),
(33009, 525836, -1),(33009, 525837, -1),(33009, 525838, -1),
(33009, 525839, -1),(33009, 525840, -1),(33009, 525841, -1),
(33009, 525842, -1);
-- spell targets
DELETE FROM spell_script_target WHERE entry IN (55141,55145,61180);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(55141, 1, 29639, 0),
(55145, 1, 29709, 0),
(61180, 1, 29709, 0);
-- Totally Generic Bunny (All Phase) 32520
UPDATE creature_template SET StaticFlags1 = StaticFlags1|0x80000000 WHERE entry IN (32520);
UPDATE creature_template_addon SET auras = NULL WHERE entry = 32520;
-- individual addons
DELETE FROM creature_addon WHERE guid BETWEEN 532760 AND 532766;
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES 
(532760,0,0,1,0,0,0,61179), -- Periodic Proto-Landing Z
(532761,0,0,1,0,0,0,55167), -- Periodic Proto-Landing A
(532762,0,0,1,0,0,0,55228), -- Periodic Proto-Landing B
(532763,0,0,1,0,0,0,61179), -- Periodic Proto-Landing Z
(532764,0,0,1,0,0,0,61179), -- Periodic Proto-Landing Z
(532765,0,0,1,0,0,0,61179), -- Periodic Proto-Landing Z
(532766,0,0,1,0,0,0,55230); -- Periodic Proto-Landing C
