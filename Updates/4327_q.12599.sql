-- Drak'Agal - Zul'Drak

-- q.12599 'Creature Comforts' & q.12585 'Troll Patrol: Creature Comforts'
DELETE FROM dbscripts_on_quest_end WHERE id IN (12599);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12599,1,31,28324,10,0,0,0,0,0,0,0,0,0,0,0,0,'search for 28324'),
(12599,100,0,0,0,0,0,0,0,27733,0,0,0,0,0,0,0,'Say'),
(12599,101,20,2,0,0,28324,15,7,0,0,0,0,0,0,0,0,'buddy wp');
UPDATE quest_template SET CompleteScript = 12599 WHERE entry IN (12585,12599);
-- Argent Footman 28117
UPDATE creature SET spawndist=0, MovementType=0 WHERE guid IN (521149,521151);
UPDATE creature SET position_x = 5574.021973, position_y = -2978.200195, position_z = 276.583496, spawndist=10, MovementType=1 WHERE guid = 521150;
UPDATE creature SET position_x = 5539.073730, position_y = -2968.790527, position_z = 276.583466, spawndist=15, MovementType=1 WHERE guid = 521148;
-- spawn data
DELETE FROM creature_spawn_data_template WHERE Entry IN (20033,20034,20035,20036);
INSERT INTO creature_spawn_data_template(Entry,RelayId) VALUES
(20033,30500),(20034,30501),(20035,30502),(20036,30503);
DELETE FROM `creature_spawn_data` WHERE `id` BETWEEN 20033 AND 20036;
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(521150,20033),
(521149,20034),
(521151,20035),
(521148,20036);
DELETE FROM dbscripts_on_relay WHERE `id` BETWEEN 30500 AND 30503;
DELETE FROM dbscripts_on_relay WHERE `id` = 30510;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(30500,1,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - Send AI Event 5 (A) to Self'),
(30501,1,35,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - Send AI Event 6 (B) to Self'),
(30502,1,35,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - Send AI Event 8 (C) to Self'),
(30503,1,35,9,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - Send AI Event 9 (D) to Self'),
(30510,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - active Self');
-- add paths for each
DELETE FROM `creature_movement_template` WHERE `entry` = 28117; -- set by script
INSERT INTO `creature_movement_template` (`entry`, `PathId`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(28117,1,1,5568.49,-2980.96,276.584,3.44367,30000,2811701),
(28117,1,2,5568.49,-2980.96,276.584,3.44367,5000,2811702),
(28117,2,1,5563.38,-2986.08,276.584,1.12282,30000,2811701),
(28117,2,2,5563.38,-2986.08,276.584,1.12282,10000,2811703),
(28117,3,1,5561.11,-2983.05,276.584,0.255073,30000,2811701),
(28117,3,2,5561.11,-2983.05,276.584,0.255073,10000,2811704),
(28117,4,1,5563.46,-2978.4,276.584,4.98867,30000,2811701),
(28117,4,2,5563.46,-2978.4,276.584,4.98867,5000,2811705);
DELETE FROM dbscripts_on_creature_movement WHERE `id` BETWEEN 2811701 AND 2811705;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2811701,2000,28,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'sit'),
(2811702,1,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand'),
(2811702,200,20,1,10,0,0,0,0x04,0,0,0,0,0,0,0,0,'randommovement'),
(2811702,201,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event 5'),
(2811702,210,21,0,10,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(2811703,1,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand'),
(2811703,2000,3,0,0,0,0,0,0x04,0,0,0,0,5559.78,-2993.52,276.643,0.733038,'move'),
(2811703,6000,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(2811703,6001,35,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event 6'),
(2811703,6002,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0.733038,'move'),
(2811703,6010,21,0,10,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(2811704,1,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand'),
(2811704,2000,3,0,0,0,0,0,0x04,0,0,0,0,5552.8,-2986.09,276.643,0.610865,'move'),
(2811704,6000,20,0,10,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(2811704,6001,35,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event 8'),
(2811704,6002,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0.610865,'move'),
(2811704,6010,21,0,10,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(2811705,1,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand'),
(2811705,200,20,1,15,0,0,0,0x04,0,0,0,0,0,0,0,0,'randommovement'),
(2811705,201,35,9,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event 9'),
(2811705,210,21,0,10,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
-- Crusader Whathah 28324
UPDATE creature SET spawndist=0, MovementType=0 WHERE guid=522238;
UPDATE creature_template SET MovementType=2 WHERE entry=28324;
DELETE FROM `creature_movement_template` WHERE `entry` = 28324; -- set by script
INSERT INTO `creature_movement_template` (`entry`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(28324,1,5542.888,-3012.408,278.3916,2.391101,5000,2832401),
(28324,2,5540.61,-3010.148,278.3916,100,0,0),
(28324,3,5537.147,-3006.25,278.3916,100,0,0),
(28324,4,5542.891,-3000.26,278.4216,100,0,0),
(28324,5,5550.705,-2994.714,278.4216,100,0,0),
(28324,6,5560.89,-2985.472,276.6429,100,7000,2832402),
(28324,7,5556.429,-2989.992,276.6429,100,0,0),
(28324,8,5552.473,-2994.235,278.1889,100,0,0),
(28324,9,5543.959,-2999.792,278.4216,100,0,0),
(28324,10,5536.565,-3006.063,278.3916,100,0,0),
(28324,11,5540.409,-3010.131,278.3916,100,0,0),
(28324,12,5542.888,-3012.408,278.3916,2.391101,1000,2832403);
DELETE FROM dbscripts_on_creature_movement WHERE `id` BETWEEN 2832401 AND 2832403;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2832401,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2832401,4000,0,0,0,0,0,0,0,27730,0,0,0,0,0,0,0,''),
(2832401,4001,1,66,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2832402,1000,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,'kneel'),
(2832402,2000,9,514751,60,0,0,0,0,0,0,0,0,0,0,0,0,'resp object'),
(2832402,2010,35,10,100,0,0,0,0,0,0,0,0,0,0,0,0,'Send event AI 10'),
(2832402,5000,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'stand state'),
(2832403,10,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(2832403,11,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
-- object
-- Dead Thornwood 190541,190542,190543
DELETE FROM `spawn_group_spawn` WHERE id = 30002;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(30002,500357,-1),(30002,505172,-1),(30002,505173,-1),(30002,505174,-1),
(30002,505175,-1),(30002,505176,-1),(30002,505177,-1),(30002,505178,-1),
(30002,505187,-1),(30002,505188,-1),(30002,505189,-1),(30002,505190,-1),
(30002,505191,-1),(30002,505192,-1),(30002,505193,-1),(30002,505194,-1),
(30002,505202,-1),(30002,505203,-1),(30002,505204,-1),(30002,505205,-1),
(30002,505206,-1),(30002,505207,-1),(30002,505208,-1),(30002,505209,-1),
(30002,505210,-1),(30002,512908,-1),(30002,512909,-1),(30002,512910,-1),
(30002,512911,-1),(30002,512912,-1),(30002,512913,-1),(30002,512914,-1),
(30002,512915,-1),(30002,512916,-1),(30002,512917,-1),(30002,512918,-1),
(30002,512919,-1),(30002,513120,-1),(30002,513121,-1),(30002,513128,-1),
(30002,513129,-1),(30002,513131,-1),(30002,513156,-1),(30002,513157,-1),
(30002,513158,-1),(30002,513159,-1),(30002,513460,-1),(30002,514397,-1);
DELETE FROM spawn_group WHERE id = 30002;
INSERT INTO spawn_group (Id, Name, Type, MaxCount, WorldState, Flags) VALUES
(30002,'Zul\'Drak - Dead Thornwood 190541,190542,190543',1,30,0,0);
-- Bonefire
UPDATE gameobject SET spawntimesecsmin = -60, spawntimesecsmax = -60 WHERE guid = 514751;
