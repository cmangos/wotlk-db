-- Time-Lost Proto Drake 32491 - RARE
DELETE FROM creature_addon WHERE guid = 530005;
DELETE FROM creature_movement WHERE id = 530005;
DELETE FROM game_event_creature WHERE guid = 530005;
DELETE FROM game_event_creature_data WHERE guid = 530005;
DELETE FROM creature_battleground WHERE guid = 530005;
DELETE FROM creature_linking WHERE guid = 530005;
DELETE FROM creature where guid = 530005;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(530005,32491,571,1,1,6903.07,-363.67593,992.3348 ,0,1800,1800,0,3);
UPDATE creature_template SET SpeedWalk = (3.6111 / 2.5), SpeedRun = (11.1111 / 7) WHERE entry = 32491;
DELETE FROM `spawn_group` WHERE id = 33005;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33005, 'Storm Peaks - Time-Lost Proto Drake 32491 - RARE', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 33005;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33005, 530005, -1);
-- more missing
DELETE FROM creature_spawn_data WHERE guid IN (530005);
INSERT INTO creature_spawn_data (`guid`, `id`) VALUES 
(530005,20056);
DELETE FROM creature_movement WHERE Id = 530005;
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(530005,1 ,6903.07,-363.67593,992.3348   ,100,0,0),
(530005,2 ,7002.2744,-270.31137,908.9182 ,100,0,0),
(530005,3 ,7150.6274,-142.2627,859.1961  ,100,0,0),
(530005,4 ,7316.008,-35.80534,859.1961   ,100,0,0),
(530005,5 ,7542.2666,-97.61708,878.5572  ,100,0,0),
(530005,6 ,7667.518,-102.67128,899.2793  ,100,0,0),
(530005,7 ,7794.171,-209.65338,925.02905 ,100,0,0),
(530005,8 ,7899.086,-401.56662,928.9456  ,100,0,0),
(530005,9 ,7997.539,-546.96466,949.58435 ,100,0,0),
(530005,10,8143.803,-636.999,999.3811    ,100,0,0),
(530005,11,8245.65,-775.7319,999.3811    ,100,0,0),
(530005,12,8238.106,-987.4192,983.9922   ,100,0,0),
(530005,13,7946.1025,-1003.7714,1088.5669,100,0,0),
(530005,14,7586.955,-1071.2095,1054.2891 ,100,0,0),
(530005,15,7313.6016,-857.4793,987.2056  ,100,0,0),
(530005,16,7143.3037,-697.4054,969.9835  ,100,0,0),
(530005,17,6954.7627,-472.37695,997.65027,100,0,0);





