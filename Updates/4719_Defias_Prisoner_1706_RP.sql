-- Defias Prisoner 1706 & Stormwind City Guard 68 - RP (Wotlk ONLY)
-- missing added - guids free in all 3 DBs
DELETE FROM creature_addon WHERE guid BETWEEN 535347 AND 535351;
DELETE FROM creature_movement WHERE id BETWEEN 535347 AND 535351;
DELETE FROM game_event_creature WHERE guid BETWEEN 535347 AND 535351;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535347 AND 535351;
DELETE FROM creature_battleground WHERE guid BETWEEN 535347 AND 535351;
DELETE FROM creature_linking WHERE guid BETWEEN 535347 AND 535351
 OR master_guid BETWEEN 535347 AND 535351;
DELETE FROM creature WHERE guid BETWEEN 535347 AND 535351;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(535347,1706,0,1,1,0,0,-8643.581,1326.7286,5.402488,5.21675,300,300,0,0,0,0,0,0),
(535348,68,0,1,1,0,0,-8643.581,1326.7286,5.402488,5.21675,300,300,0,0,0,0,0,0),
(535349,68,0,1,1,0,0,-8643.581,1326.7286,5.402488,5.21675,300,300,0,0,0,0,0,0),
(535350,68,0,1,1,0,0,-8643.581,1326.7286,5.402488,5.21675,300,300,0,0,0,0,0,0),
(535351,68,0,1,1,0,0,-8643.581,1326.7286,5.402488,5.21675,300,300,0,0,0,0,0,0);
DELETE FROM `creature_spawn_data` WHERE guid BETWEEN 535347 AND 535351;
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(535347,20042),(535348,20043),(535349,20043),(535350,20043),(535351,20043);
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (20042);
INSERT INTO `creature_spawn_data_template` (`entry`, `UnitFlags`, `Faction`, `EquipmentId`,`RelayId`) VALUES
(20042,32832,290,0,30510);
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (20043);
INSERT INTO `creature_spawn_data_template` (`entry`, `RelayId`) VALUES
(20043,30510);
-- Spawn Groups
DELETE FROM `spawn_group` WHERE id = 36000;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(36000, 'Stormwind - Defias Prisoner 1706 & 4x Stormwind City Guard 68 - RP', 0, 0, 9109, 0x02 | 0x08);
DELETE FROM conditions WHERE condition_entry IN (9109);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(9109, 12, 61, 0, 0, 0, '');
DELETE FROM `spawn_group_spawn` WHERE id = 36000;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(36000, 535347, 0),
(36000, 535348, 1),
(36000, 535349, 2),
(36000, 535350, 3),
(36000, 535351, 4);
DELETE FROM `spawn_group_formation` WHERE id = 36000;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(36000, 6, 2, 0, 36000, 2, 'Stormwind - Defias Prisoner 1706 & 4x Stormwind City Guard 68 - RP');
DELETE FROM `waypoint_path_name` WHERE PathId = 36000;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(36000,'Stormwind - Defias Prisoner 1706 & 4x Stormwind City Guard 68 - RP');
DELETE FROM `waypoint_path` WHERE PathId = 36000;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(36000,1,-8643.581,1326.7286,5.402488,5.21675,1000,0),
(36000,2,-8631,1303.0446,5.4024887,100,0,0),
(36000,3,-8619.749,1280.7294,5.4024887,100,0,0),
(36000,4,-8606.835,1256.3182,5.4024887,100,0,0),
(36000,5,-8599.619,1242.5701,5.230897,100,2000,0),
(36000,6,-8573.832,1214.7916,5.124157,100,0,0),
(36000,7,-8575.115,1174.3962,17.708239,100,0,0),
(36000,8,-8573.521,1158.7756,17.94424,100,0,0),
(36000,9,-8576.539,1129.1569,17.954538,100,0,0),
(36000,10,-8580.023,1123.8751,17.954538,100,0,0),
(36000,11,-8590.064,1107.7494,24.866459,100,0,0),
(36000,12,-8593.36,1091.1791,32.45767,100,0,0),
(36000,13,-8584.468,1073.5491,36.76308,100,0,0),
(36000,14,-8568.211,1051.359,49.25404,100,0,0),
(36000,15,-8554.245,1037.4084,59.132774,100,0,0),
(36000,16,-8539.086,1036.1836,59.65161,100,0,0),
(36000,17,-8527.008,1019.3984,59.854393,100,0,0),
(36000,18,-8514.958,1011.5777,59.817078,100,0,0),
(36000,19,-8504.275,1005.9727,59.672443,100,0,0),
(36000,20,-8496.262,995.2617,65.0308,100,0,0),
(36000,21,-8486.975,983.37305,72.93512,100,0,0),
(36000,22,-8478.263,988.2344,76.20655,100,0,0),
(36000,23,-8471.039,992.7748,79.14529,100,0,0),
(36000,24,-8497.283,962.815,95.903435,100,0,0),
(36000,25,-8515.219,955.5148,95.87245,100,0,0),
(36000,26,-8539.886,958.63025,96.67345,100,0,0),
(36000,27,-8554.554,972.3635,96.35692,100,0,0),
(36000,28,-8573.868,994.17883,96.35401,100,0,0),
(36000,29,-8581.212,987.5622,97.554,100,0,0),
(36000,30,-8617.4375,964.0139,99.554,100,0,0),
(36000,31,-8641.591,952.37024,99.834656,100,0,0),
(36000,32,-8662.786,942.43524,101.14315,100,0,0),
(36000,33,-8692.1045,925.4583,101.15401,100,0,0),
(36000,34,-8721.164,902.0069,101.15839,100,0,0),
(36000,35,-8736.802,892.68475,101.437996,100,0,0),
(36000,36,-8763.575,891.93555,101.62234,100,0,0),
(36000,37,-8778.048,909.10925,100.354004,100,0,0),
(36000,38,-8793.632,927.11414,100.74059,100,0,0),
(36000,39,-8817.08,954.1502,100.798294,100,0,0),
(36000,40,-8834.851,940.5484,105.336945,100,0,0),
(36000,41,-8849.797,929.9794,102.14111,100,0,0),
(36000,42,-8846.703,920.99023,101.53754,100,0,0),
(36000,43,-8834.206,899.3277,97.902306,100,0,0),
(36000,44,-8801.526,863.3957,98.954,100,0,0),
(36000,45,-8794.071,854.61536,97.75399,100,0,0),
(36000,46,-8796.784,832.4583,97.754,100,0,0),
(36000,47,-8794.059,828.60333,97.754,100,0,0),
(36000,48,-8785.917,827.9068,97.754005,100,0,0),
(36000,49,-8772.567,839.7439,91.38941,100,1000,170601);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (170601,170602);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 170601
(170601,2,18,0,0,0,68,535348,7| 0x10,0,0,0,0,0,0,0,0,'desp'),
(170601,3,18,0,0,0,68,535349,7| 0x10,0,0,0,0,0,0,0,0,'desp'),
(170601,4,18,0,0,0,68,535350,7| 0x10,0,0,0,0,0,0,0,0,'desp'),
(170601,5,18,0,0,0,68,535351,7| 0x10,0,0,0,0,0,0,0,0,'desp'),
(170601,6,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp'),
(170601,101,21,0,0,0,68,535348,7| 0x10,0,0,0,0,0,0,0,0,'unactive'),
(170601,102,21,0,0,0,68,535349,7| 0x10,0,0,0,0,0,0,0,0,'unactive'),
(170601,103,21,0,0,0,68,535350,7| 0x10,0,0,0,0,0,0,0,0,'unactive'),
(170601,104,21,0,0,0,68,535351,7| 0x10,0,0,0,0,0,0,0,0,'unactive');

-- some wrongly spawned objects removed
DELETE FROM `gameobject` WHERE `guid` IN (124049,124050,124051,124052);
UPDATE gameobject set position_z = 102.3746 WHERE guid = 191255;
UPDATE gameobject set position_x = -8666, position_y = 948.621, position_z = 102.3746 WHERE guid = 191256;
