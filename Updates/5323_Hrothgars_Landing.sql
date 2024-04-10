-- Hrothgar's Landing

-- Spell applied while in this area
DELETE FROM spell_area WHERE spell = 68085 AND area = 4742;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(68085,4742,0,0,0,0,0,0,2,1);

-- duplicates
DELETE FROM creature_addon WHERE guid IN (533980,533976,533946);
DELETE FROM creature_movement WHERE Id IN (533980,533976,533946);
DELETE FROM game_event_creature WHERE guid IN (533980,533976,533946);
DELETE FROM game_event_creature_data WHERE guid IN (533980,533976,533946);
DELETE FROM creature_battleground WHERE guid IN (533980,533976,533946);
DELETE FROM creature_linking WHERE guid IN (533980,533976,533946)
 OR master_guid IN (533980,533976,533946);
DELETE FROM creature WHERE guid IN (533980,533976,533946);

-- Silver Blade Sailor 35319
UPDATE creature SET position_x = 9079.912, position_y = 1270.3298, position_z = 4.0314827, spawndist = 0, MovementType = 4 WHERE guid = 534235; -- linear
UPDATE creature SET position_x = 9064.637, position_y = 1257.1736, position_z = 4.0324063, spawndist = 0, MovementType = 4 WHERE guid = 534234; -- linear
DELETE FROM creature_movement WHERE id IN (534235,534234);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 534235
(534235,1,9079.912,1270.3298,4.0314827,100,100,0),
(534235,2,9088.236,1260.0851,4.1278925,100,0,0),
(534235,3,9095.156,1250.3455,4.430257,100,0,0),
(534235,4,9100.435,1241.3264,5.113573,100,0,0),
(534235,5,9103.74,1236.1892,5.538798,100,100,0),
-- 534234
(534234,1,9064.637,1257.1736,4.0324063,100,100,0),
(534234,2,9069.005,1251.9115,4.0146737,100,0,0),
(534234,3,9074.286,1246.3733,4.150903,100,0,0),
(534234,4,9080.736,1240.316,4.3346186,100,0,0),
(534234,5,9088.519,1234.1007,4.979484,100,0,0),
(534234,6,9094.786,1228.9254,5.512454,100,100,0);

-- Crimson Dawn Sailor 35318
UPDATE creature SET position_x = 9013.992, position_y = 772.0469, position_z = 3.9293153, spawndist = 0, MovementType = 4 WHERE guid = 534227; -- linear
UPDATE creature SET position_x = 8999.593, position_y = 786.0955, position_z = 3.9412892, spawndist = 0, MovementType = 4 WHERE guid = 534228; -- linear
DELETE FROM creature_movement WHERE id IN (534227,534228);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 534227
(534227,1,9013.992,772.0469,3.9293153,100,100,0),
(534227,2,9021.193,779.3234,3.9654112,100,0,0),
(534227,3,9026.437,785.3281,4.129852,100,0,0),
(534227,4,9031.723,791.59375,4.4350615,100,0,0),
(534227,5,9035.5205,796.77606,4.877356,100,0,0),
(534227,6,9039.805,802.7292,5.3505144,100,100,0),
-- 534228
(534228,1,8999.593,786.0955,3.9412892,100,100,0),
(534228,2,9004.68,791.0903,3.9387722,100,0,0),
(534228,3,9010.243,796.3542,4.0501776,100,0,0),
(534228,4,9015.974,801.1094,4.197909,100,0,0),
(534228,5,9022.62,806.2535,4.712504,100,0,0),
(534228,6,9031.089,812.3559,5.3925214,100,100,0);

-- North Sea Kraken 34925
DELETE FROM creature_addon WHERE guid = 535774;
DELETE FROM creature_movement WHERE id = 535774;
DELETE FROM game_event_creature WHERE guid = 535774;
DELETE FROM game_event_creature_data WHERE guid = 535774;
DELETE FROM creature_battleground WHERE guid = 535774;
DELETE FROM creature_linking WHERE guid = 535774;
DELETE FROM creature where guid = 535774;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(535774,34925,571,1,1,9480.798,1151.1007,1.8585213,2.60054,60,60,0,0);
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 34925;
UPDATE creature_model_info SET bounding_radius = 22.92293357849121093, combat_reach = 15 WHERE modelid = 29487;
-- Spawn Groups
-- Group 1
DELETE FROM `spawn_group` WHERE id = 34950;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34950, 'Hrothgar\'s Landing - North Sea Kraken 34925 - Group 1', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 34950;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34950, 535774, -1),
(34950, 534083, -1);
-- Group 2
DELETE FROM `spawn_group` WHERE id = 34951;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34951, 'Hrothgar\'s Landing - North Sea Kraken 34925 - Group 2', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 34951;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34951, 534084, -1),
(34951, 534085, -1);

-- Captain Aerthas Firehawk 35090
UPDATE creature SET position_x = 9452.707, position_y = 1164.6094, position_z = 4.812959, orientation = 1.483529, spawndist = 0, MovementType = 0 WHERE id = 35090;
UPDATE creature_template_addon SET emote = 375 WHERE entry = 35090;

-- Firehawk Mariner 35070
-- duplicates
DELETE FROM creature_addon WHERE guid IN (534106,534107);
DELETE FROM creature_movement WHERE Id IN (534106,534107);
DELETE FROM game_event_creature WHERE guid IN (534106,534107);
DELETE FROM game_event_creature_data WHERE guid IN (534106,534107);
DELETE FROM creature_battleground WHERE guid IN (534106,534107);
DELETE FROM creature_linking WHERE guid IN (534106,534107)
 OR master_guid IN (534106,534107);
DELETE FROM creature WHERE guid IN (534106,534107);
UPDATE creature SET spawntimesecsmin = 15, spawntimesecsmax = 15 WHERE id IN (35070);
-- individual addon
DELETE FROM creature_addon WHERE guid IN(534105,534108,534112,534104);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES 
(534105,0,0,1,1,376,0,NULL),
(534108,0,0,1,1,376,0,NULL),
(534112,0,0,1,1,376,0,NULL),
(534104,0,0,1,1,376,0,NULL);
UPDATE creature SET position_x = 9449.078, position_y = 1174.0538, position_z = 4.4504805, orientation = 1.7453, spawndist = 0, MovementType = 0 WHERE guid = 534105;
UPDATE creature SET position_x = 9460.156, position_y = 1165.1979, position_z = 4.7309904, orientation = 1.37167, spawndist = 0, MovementType = 0 WHERE guid = 534108;
UPDATE creature SET position_x = 9460.708, position_y = 1171.2692, position_z = 4.3152137, orientation = 1.59636, spawndist = 0, MovementType = 0 WHERE guid = 534112;
UPDATE creature SET position_x = 9446.302, position_y = 1168.8038, position_z = 4.7419844, orientation = 1.557546, spawndist = 0, MovementType = 0 WHERE guid = 534104;
UPDATE creature SET position_x = 9465.356, position_y = 1175.3229, position_z = 4.199183, spawndist = 0, MovementType = 4 WHERE guid = 534109; -- linear
DELETE FROM creature_movement WHERE id IN (534109);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(534109,1,9465.356,1175.3229,4.199183,100,100,0),
(534109,2,9472.015,1207.217,4.5868154,100,0,0),
(534109,3,9472.73,1223.5817,5.728765,100,100,0);

-- Wavecrest Mariner 35098
-- duplicates
DELETE FROM creature_addon WHERE guid IN (534187,534188,533983);
DELETE FROM creature_movement WHERE Id IN (534187,534188,533983);
DELETE FROM game_event_creature WHERE guid IN (534187,534188,533983);
DELETE FROM game_event_creature_data WHERE guid IN (534187,534188,533983);
DELETE FROM creature_battleground WHERE guid IN (534187,534188,533983);
DELETE FROM creature_linking WHERE guid IN (534187,534188,533983)
 OR master_guid IN (534187,534188,533983);
DELETE FROM creature WHERE guid IN (534187,534188,533983);
UPDATE creature SET spawntimesecsmin = 15, spawntimesecsmax = 15 WHERE id IN (35098);
-- individual addon
DELETE FROM creature_addon WHERE guid IN (534182,534185,534186,534190);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES 
(534182,0,0,2,1,376,0,NULL),
(534185,0,0,2,1,376,0,NULL),
(534186,0,0,2,1,376,0,NULL),
(534190,0,0,2,1,376,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (534182,534185,534186,534190);
UPDATE creature SET position_x = 9564.247, position_y = 946.5035, position_z = 3.8128023, orientation = 1.3788, spawndist = 0, MovementType = 0 WHERE guid = 534189;
UPDATE creature SET position_x = 9578.22, position_y = 941.55206, position_z = 3.6359882, orientation = 1.4137, spawndist = 0, MovementType = 0 WHERE guid = 534183;
UPDATE creature SET position_x = 9565.859, position_y = 960.52606, position_z = 4.7337384, orientation = 1.972222, spawndist = 0, MovementType = 0 WHERE guid = 534181;
UPDATE creature SET position_x = 9574.15, position_y = 969.52, position_z = 5.28131, spawndist = 0, MovementType = 4 WHERE guid = 534184; -- linear
DELETE FROM creature_movement WHERE id IN (534184);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(534184,1,9574.15,969.52,5.28131,100,100,0),
(534184,2,9578.07,956.365,4.29208,100,0,0),
(534184,3,9582.44,936.204,3.47593,100,0,0),
(534184,4,9583.75,922.587,3.48202,100,100,0);

-- Kvaldir Berserker 34947 & Kvaldir Harpooner 34907
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id IN (34947,34907));
UPDATE creature SET spawntimesecsmin = 15, spawntimesecsmax = 15 WHERE id IN (34947,34907);
UPDATE creature SET position_x = 9461.64, position_y = 1218.71, position_z = 5.15272, orientation = 4.62741, spawndist = 0, MovementType = 0 WHERE guid = 534092;
UPDATE creature SET position_x = 9472.6, position_y = 1208.29, position_z = 4.68757, orientation = 4.14202, spawndist = 0, MovementType = 0 WHERE guid = 534093;
UPDATE creature SET position_x = 9465.428, position_y = 1217.3069, position_z = 5.1221495, orientation = 0.92836, spawndist = 0, MovementType = 0 WHERE guid = 534089;
UPDATE creature SET position_x = 9459.879, position_y = 1203.6927, position_z = 4.3668795, orientation = 0.410054, spawndist = 0, MovementType = 0 WHERE guid = 534073;
UPDATE creature SET position_x = 9467.476, position_y = 1201.4688, position_z = 4.3553395, orientation = 1.02094, spawndist = 0, MovementType = 0 WHERE guid = 534077;
UPDATE creature SET position_x = 9429.246, position_y = 1192.4479, position_z = 2.1135933, orientation = 5.109664, spawndist = 0, MovementType = 2 WHERE guid = 534091;
UPDATE creature SET position_x = 9482.483, position_y = 1228.1858, position_z = 2.8711522, orientation = 3.00776, spawndist = 0, MovementType = 2 WHERE guid = 534074;
UPDATE creature SET position_x = 9428.052, position_y = 1182.7466, position_z = 1.6290773, orientation = 5.61506, spawndist = 0, MovementType = 2 WHERE guid = 534072;
UPDATE creature SET position_x = 9429.065, position_y = 1173.6285, position_z = 1.7373734, orientation = 0.96636, spawndist = 0, MovementType = 2 WHERE guid = 534090;
UPDATE creature SET position_x = 9483.141, position_y = 1214.4913, position_z = 2.7955832, orientation = 1.82492, spawndist = 0, MovementType = 2 WHERE guid = 534070;
UPDATE creature SET position_x = 9565.717, position_y = 962.7222, position_z = 4.8882957, orientation = 4.78220, spawndist = 0, MovementType = 0 WHERE guid = 534088;
UPDATE creature SET position_x = 9578.393, position_y = 943.9132, position_z = 3.7167861, orientation = 4.48549, spawndist = 0, MovementType = 0 WHERE guid = 534076;
UPDATE creature SET position_x = 9554.311, position_y = 967.5139, position_z = 3.0017931, orientation = 5.365948, spawndist = 0, MovementType = 2 WHERE guid = 534080;
UPDATE creature SET position_x = 9603.662, position_y = 931.15454, position_z = 1.7500963, orientation = 3.0351, spawndist = 0, MovementType = 2 WHERE guid = 534086;
UPDATE creature SET position_x = 9549.891, position_y = 964.3507, position_z = 3.1756063, orientation = 5.884062, spawndist = 0, MovementType = 2 WHERE guid = 534078;
UPDATE creature SET position_x = 9555.499, position_y = 962.7535, position_z = 3.0983493, orientation = 0.959044, spawndist = 0, MovementType = 2 WHERE guid = 534075;
UPDATE creature SET position_x = 9550.85, position_y = 954.96356, position_z = 2.4894671, orientation = 0.5827, spawndist = 0, MovementType = 2 WHERE guid = 534087;
UPDATE creature SET position_x = 9558.161, position_y = 971.13715, position_z = 3.2346892, orientation = 4.58311, spawndist = 0, MovementType = 2 WHERE guid = 534079;
UPDATE creature SET position_x = 9599.748, position_y = 924.8351, position_z = 0.5574243, orientation = 2.1326, spawndist = 0, MovementType = 2 WHERE guid = 534094;
DELETE FROM creature_movement WHERE id IN (534091,534074,534072,534090,534070,534080,534086,534078,534075,534087,534079,534094);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 534091
(534091,1,9446.906,1171.2327,4.542157,100,0,0),
(534091,2,9446.906,1171.2327,4.542157,100,100,3),
-- 534074
(534074,1,9482.483,1228.1858,2.8711522,100,100,3494701),
(534074,2,9473.123,1231.8281,6.705458,100,100,3),
-- 534072
(534072,1,9437.892,1174.981,3.331804,100,100,3494702),
(534072,2,9445.947,1174.1771,4.482608,100,100,3),
-- 534090
(534090,1,9436.286,1184.0834,3.140588,100,100,3494703),
(534090,2,9447.434,1183.3716,4.097971,100,100,3),
-- 534070
(534070,1,9479.479,1228.5903,4.333998,100,100,3494704),
(534070,2,9473.123,1231.8281,6.705458,100,100,3),
-- 534080
(534080,1,9559.537,960.6893,4.502128,100,100,3494705),
(534080,2,9568.47,954.0469,4.258508,100,100,3),
-- 534086
(534086,1,9595.2,932.059,2.875807,100,100,3494706),
(534086,2,9580.299,936.2448,3.4552,100,100,3),
-- 534078
(534078,1,9559.379,960.34894,4.52799,100,100,3494707),
(534078,2,9568.057,956.88196,4.385259,100,100,3),
-- 534075
(534075,1,9561.723,971.625,5.088545,100,100,3494708),
(534075,2,9567.468,968.7552,5.274316,100,100,3),
-- 534087
(534087,1,9559.537,960.6893,4.502128,100,100,3494709),
(534087,2,9568.47,954.0469,4.258508,100,100,3),
-- 534079
(534079,1,9555.817,953.10767,5.128618,100,100,3494710),
(534079,2,9564.812,951.6094,4.083227,100,100,3),
-- 534094
(534094,1,9595.2,932.059,2.875807,100,100,3494711),
(534094,2,9580.299,936.2448,3.4552,100,100,3);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3494701 AND 3494711;
INSERT INTO dbscripts_on_creature_movement (id,delay,priority,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,datafloat,x,y,z,o,speed,condition_id,comments) VALUES
(3494701,0,0,20,15,0,0,0,0,0x04,0,0,0,0,5,9473.123,1231.8281,6.705458,100,19,0,'jump'),
(3494702,0,0,20,15,0,0,0,0,0x04,0,0,0,0,5,9445.947,1174.1771,4.482608,100,19,0,'jump'),
(3494703,0,0,20,15,0,0,0,0,0x04,0,0,0,0,5,9447.434,1183.3716,4.097971,100,19,0,'jump'),
(3494704,0,0,20,15,0,0,0,0,0x04,0,0,0,0,5,9473.123,1231.8281,6.705458,100,19,0,'jump'),
(3494705,0,0,20,15,0,0,0,0,0x04,0,0,0,0,5,9568.47,954.0469,4.258508,100,19,0,'jump'),
(3494706,0,0,20,15,0,0,0,0,0x04,0,0,0,0,5,9580.299,936.2448,3.4552,100,19,0,'jump'),
(3494707,0,0,20,15,0,0,0,0,0x04,0,0,0,0,5,9568.057,956.88196,4.385259,100,19,0,'jump'),
(3494708,0,0,20,15,0,0,0,0,0x04,0,0,0,0,5,9567.468,968.7552,5.274316,100,19,0,'jump'),
(3494709,0,0,20,15,0,0,0,0,0x04,0,0,0,0,5,9568.47,954.0469,4.258508,100,19,0,'jump'),
(3494710,0,0,20,15,0,0,0,0,0x04,0,0,0,0,5,9564.812,951.6094,4.083227,100,19,0,'jump'),
(3494711,0,0,20,15,0,0,0,0,0x04,0,0,0,0,5,9580.299,936.2448,3.4552,100,19,0,'jump');
DELETE FROM creature_spawn_data WHERE guid IN (
534092,534093,534089,534073,534077,534091,534074,534072,534090,534070,534088,534076,534080,534086,534078,534075,534087,534079,534094);
INSERT INTO creature_spawn_data (`guid`, `id`) VALUES 
(534092,1),(534093,1),(534089,1),(534073,1),(534077,1),
(534091,1),(534074,1),(534072,1),(534090,1),(534070,1),
(534088,1),(534076,1),(534080,1),(534086,1),(534078,1),
(534075,1),(534087,1),(534079,1),(534094,1);
-- shared spawn
DELETE FROM creature_spawn_entry WHERE guid IN (
534092,534093,534089,534073,534077,534091,534074,534072,534090,534070,534088,534076,534080,534086,534078,534075,534087,534079,534094);
INSERT INTO creature_spawn_entry (`guid`, `entry`) VALUES 
(534092,34947),(534092,34907),(534093,34947),(534093,34907),(534089,34947),(534089,34907),
(534073,34947),(534073,34907),(534077,34947),(534077,34907),(534091,34947),(534091,34907),
(534074,34947),(534074,34907),(534072,34947),(534072,34907),(534090,34947),(534090,34907),
(534070,34947),(534070,34907),(534088,34947),(534088,34907),(534076,34947),(534076,34907),
(534080,34947),(534080,34907),(534086,34947),(534086,34907),(534078,34947),(534078,34907),
(534075,34947),(534075,34907),(534087,34947),(534087,34907),(534079,34947),(534079,34907),
(534094,34947),(534094,34907);
-- Spawn Groups
-- Group 1
DELETE FROM `spawn_group` WHERE id = 34952;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34952, 'Hrothgar\'s Landing - Kvaldir Berserker 34947 & Kvaldir Harpooner 34907 - Group 1', 0, 5, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 34952;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34952,534092, -1),
(34952,534093, -1),
(34952,534089, -1),
(34952,534073, -1),
(34952,534077, -1),
(34952,534091, -1),
(34952,534074, -1),
(34952,534072, -1),
(34952,534090, -1),
(34952,534070, -1);
-- Group 2
DELETE FROM `spawn_group` WHERE id = 34953;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34953, 'Hrothgar\'s Landing - Kvaldir Berserker 34947 & Kvaldir Harpooner 34907 - Group 2', 0, 5, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 34953;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34953,534088, -1),
(34953,534076, -1),
(34953,534080, -1),
(34953,534086, -1),
(34953,534078, -1),
(34953,534075, -1),
(34953,534087, -1),
(34953,534079, -1),
(34953,534094, -1);
-- EAI moved to spell lists
DELETE FROM creature_spell_list_entry WHERE Id IN (3490701);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3490701, 'Hrothgar\'s Landing - Kvaldir Harpooner 34907',0,75);
DELETE FROM creature_spell_list WHERE id = 3490701;
INSERT INTO creature_spell_list (Id,Position,SpellId,Flags,CombatCondition,TargetId,ScriptId,Availability,Probability,InitialMin,InitialMax,RepeatMin,RepeatMax,Comments) VALUES
(3490701,1,66489,2,-1,1,0,100,1,0,1000,2000,4000,'Kvaldir Harpooner 34907 - Spear Throw');
UPDATE creature_template SET SpellList = 3490701 WHERE entry IN (34907);

-- Kvaldir Reaver 34838
UPDATE creature SET position_x = 10096.75, position_y = 1190.5, position_z = 79.644196, orientation = 6.195918, spawndist = 0, MovementType = 0 WHERE guid = 533964;
UPDATE creature SET position_x = 10110.924, position_y = 1218.408, position_z = 78.9978, orientation = 0.628318, spawndist = 0, MovementType = 0 WHERE guid = 533947;
UPDATE creature SET position_x = 10051.266, position_y = 1216.8976, position_z = 69.68569, orientation = 2.460914, spawndist = 0, MovementType = 0 WHERE guid = 533952;
UPDATE creature SET position_x = 9951.683, position_y = 1201.5017, position_z = 52.699364, orientation = 5.58505, spawndist = 0, MovementType = 0 WHERE guid = 533951;
UPDATE creature SET position_x = 10163.754, position_y = 843.03644, position_z = 42.24613, spawndist = 0, MovementType = 4 WHERE guid = 533977;
UPDATE creature SET position_x = 10186.763, position_y = 793.1042, position_z = 58.520096, spawndist = 0, MovementType = 4 WHERE guid = 533973;
UPDATE creature SET position_x = 10238.238, position_y = 782.2483, position_z = 71.306145, spawndist = 0, MovementType = 4 WHERE guid = 533985;
UPDATE creature SET position_x = 10415.964, position_y = 910.55035, position_z = 123.92473, spawndist = 0, MovementType = 4 WHERE guid = 533979;
UPDATE creature SET position_x = 10172.879, position_y = 1190.0903, position_z = 76.36538, spawndist = 0, MovementType = 4 WHERE guid = 533944;
UPDATE creature SET position_x = 10003.864, position_y = 1191.7274, position_z = 58.146805, spawndist = 0, MovementType = 4 WHERE guid = 533948;
UPDATE creature SET position_x = 9980.583, position_y = 1195.9202, position_z = 54.3329, spawndist = 0, MovementType = 4 WHERE guid = 533966;
UPDATE creature SET position_x = 10066.323, position_y = 965.4705, position_z = 10.237686, spawndist = 0, MovementType = 4 WHERE guid = 533955;
-- individual addon
DELETE FROM creature_addon WHERE guid IN (533964,533947,533952,533951);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES 
(533964,0,0,1,0,69,0,NULL),
(533947,0,0,1,0,69,0,NULL),
(533952,0,0,1,0,234,0,NULL),
(533951,0,1,1,0,0,0,NULL);
DELETE FROM creature_movement WHERE id IN (533977,533973,533985,533979,533944,533948,533966,533955);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 533977
(533977,1,10163.754,843.03644,42.24613,100,100,0),
(533977,2,10170.491,831.2708,47.18571,100,0,0),
(533977,3,10181.2,816.316,52.615276,100,0,0),
(533977,4,10192.281,799.4097,57.93019,100,0,0),
(533977,5,10203.033,791.2552,62.390408,100,0,0),
(533977,6,10213.435,785.3785,65.56143,100,0,0),
(533977,7,10224.058,785.1649,68.88577,100,100,0),
-- 533973
(533973,1,10186.763,793.1042,58.520096,100,100,0),
(533973,2,10177.372,775.24133,63.860977,100,0,0),
(533973,3,10170,758.52954,66.86421,100,0,0),
(533973,4,10160.009,748.9653,66.73127,100,0,0),
(533973,5,10151.616,744.27954,66.60175,100,100,0),
-- 533985
(533985,1,10238.238,782.2483,71.306145,100,100,0),
(533985,2,10263.575,779.55035,72.51409,100,0,0),
(533985,3,10288.042,780.6441,74.41165,100,0,0),
(533985,4,10303.064,778.2899,74.40554,100,0,0),
(533985,5,10317.632,777.96875,74.40554,100,0,0),
(533985,6,10330.896,782.1233,74.53054,100,0,0),
(533985,7,10340.319,781.71356,74.699745,100,100,0),
-- 533979
(533979,1,10415.964,910.55035,123.92473,100,100,0),
(533979,2,10414.126,900.02606,121.05333,100,0,0),
(533979,3,10408.974,888.6285,116.71623,100,0,0),
(533979,4,10405.978,875.375,111.83531,100,0,0),
(533979,5,10405.933,863.6893,107.72681,100,0,0),
(533979,6,10395.806,846.125,99.77592,100,0,0),
(533979,7,10383.351,834.6024,92.76371,100,0,0),
(533979,8,10367.598,818.84375,84.29758,100,0,0),
(533979,9,10347.366,803.1042,77.75536,100,100,0),
-- 533944
(533944,1,10172.879,1190.0903,76.36538,100,100,0),
(533944,2,10167.021,1193.3872,78.55712,100,0,0),
(533944,3,10160.896,1196.632,81.09729,100,0,0),
(533944,4,10151.318,1200.9236,83.29877,100,0,0),
(533944,5,10143.434,1207.1562,79.93171,100,0,0),
(533944,6,10135.214,1210.6111,79.11204,100,100,0),
-- 533948
(533948,1,10003.864,1191.7274,58.146805,100,100,0),
(533948,2,10019.428,1197.0521,61.098526,100,0,0),
(533948,3,10034.377,1198.3262,64.19296,100,0,0),
(533948,4,10053.435,1195.5312,69.2673,100,0,0),
(533948,5,10066.107,1187.4757,73.49924,100,0,0),
(533948,6,10071.194,1179.2587,75.82832,100,100,0),
-- 533966
(533966,1 ,9980.583,1195.9202,54.3329,100,100,0),
(533966,2 ,9986.482,1177.6094,51.151566,100,0,0),
(533966,3 ,9977.379,1170.3334,47.403152,100,0,0),
(533966,4 ,9968.799,1153.0695,42.681305,100,0,0),
(533966,5 ,9968.064,1136.25,37.775604,100,0,0),
(533966,6 ,9967.274,1118.092,32.56385,100,0,0),
(533966,7 ,9969.732,1106.9463,29.36329,100,0,0),
(533966,8 ,9969.543,1094.0264,25.77728,100,0,0),
(533966,9 ,9969.849,1082.0817,23.476988,100,0,0),
(533966,10,9970.052,1073.9062,21.76483,100,100,0),
-- 533955
(533955,1,10066.323,965.4705,10.237686,100,100,0),
(533955,2,10046.998,976.625,6.902773,100,0,0),
(533955,3,10021.277,994.666,6.906005,100,0,0),
(533955,4,10005.191,1011.06836,9.509178,100,0,0),
(533955,5,9988.272,1029.4766,13.346391,100,0,0),
(533955,6,9975.161,1041.3229,16.649698,100,100,0);
-- for static equip
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (20071,20072);
INSERT INTO `creature_spawn_data_template` (`entry`, `EquipmentId`, `RelayId`,`Name`) VALUES
(20071,525,0,'- equipment 525'),
(20072,-1,20894,'- Relay 20894');
DELETE FROM creature_spawn_data WHERE guid IN (
533975,533943,533989,533960,533956,533957,533965,533970,533952,533984,533987,533949,533991,533974,533988,533981,533969,533982,
533990,533945,533948,533950,533951,533966,533971,533972,533979,533986,533985,533955,533973,533959,533961,533953,533942,533962,
533978,533977,533963,533944,533968,533967,533954,533964,533958,533947);
INSERT INTO creature_spawn_data (`guid`, `id`) VALUES 
(533975,20071),(533943,20071),(533989,20071),(533960,20071),(533956,20071),
(533957,20071),(533965,20071),(533970,20071),(533952,20071),(533984,20071),
(533987,20071),(533949,20071),(533991,20071),(533974,20071),(533988,20071),
(533981,20071),(533969,20072),(533982,20072),(533990,20072),(533945,20072),
(533948,20072),(533950,20072),(533951,20072),(533966,20072),(533971,20072),
(533972,20072),(533979,20072),(533986,20072),(533985,20072),(533955,20072),
(533973,20072),(533959,20072),(533961,20072),(533953,20072),(533942,20072),
(533962,20072),(533978,20072),(533977,20072),(533963,20072),(533944,20072),
(533968,20072),(533967,20072),(533954,20072),(533964,20072),(533958,20072),
(533947,20072);
-- for dynamic equip
DELETE FROM dbscript_random_templates WHERE id = 20355;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20355,1,20895,0,'Kvaldir Reaver 34838 - Random Equipment 1'),
(20355,1,20896,0,'Kvaldir Reaver 34838 - Random Equipment 2'),
(20355,1,20897,0,'Kvaldir Reaver 34838 - Random Equipment 3'),
(20355,1,20898,0,'Kvaldir Reaver 34838 - Random Equipment 4'),
(20355,1,20899,0,'Kvaldir Reaver 34838 - Random Equipment 5'),
(20355,1,20900,0,'Kvaldir Reaver 34838 - Random Equipment 6');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20894 AND 20900;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20894,0,45,0,20355,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Kvaldir Reaver 34838 - Random Script'),
(20895,0,42,0,0,0,0,0,0x04,34818,0,0,0,0,0,0,0,'Part of Kvaldir Reaver 34838 - Random equip 1'),
(20896,0,42,0,0,0,0,0,0x04,34821,34816,0,0,0,0,0,0,'Part of Kvaldir Reaver 34838 - Random equip 2'),
(20897,0,42,0,0,0,0,0,0x04,40894,13407,0,0,0,0,0,0,'Part of Kvaldir Reaver 34838 - Random equip 3'),
(20898,0,42,0,0,0,0,0,0x04,34819,34819,0,0,0,0,0,0,'Part of Kvaldir Reaver 34838 - Random equip 4'),
(20899,0,42,0,0,0,0,0,0x04,34816,34819,0,0,0,0,0,0,'Part of Kvaldir Reaver 34838 - Random equip 5'),
(20900,0,42,0,0,0,0,0,0x04,34819,33212,0,0,0,0,0,0,'Part of Kvaldir Reaver 34838 - Random equip 6');
