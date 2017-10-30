-- Implement pooled buccaneers strongboxes with traps

/* Old values
INSERT INTO gameobject VALUES
('15125', '123330', '1', '1', '-1458.06', '-3972.06', '8.26139', '1.39626', '0', '0', '0', '0', '5', '100', '1'),
('15123', '123330', '1', '1', '-1462.45', '-3966.9', '7.56138', '-0.017453', '0', '0', '0', '0', '5', '100', '1'),
('15122', '123330', '1', '1', '-1453.02', '-3969.75', '7.56026', '2.49582', '0', '0', '0', '0', '5', '100', '1'),
('15121', '123330', '1', '1', '-1452.1', '-3966.4', '7.56134', '-3.07178', '0', '0', '0', '0', '5', '100', '1'),
('15120', '123330', '1', '1', '-1461.56', '-3970.03', '7.56018', '0.750492', '0', '0', '0', '0', '5', '100', '1'),
('15119', '123330', '1', '1', '-1456.44', '-3971.63', '7.56249', '1.8326', '0', '0', '0', '0', '5', '100', '1'),
('15683', '123331', '1', '1', '-1458.06', '-3972.06', '8.26139', '1.39626', '0', '0', '0', '0', '5', '100', '1'),
('15145', '123331', '1', '1', '-1463', '-3968.46', '7.56007', '0.069813', '0', '0', '0', '0', '5', '100', '1'),
('60197', '123332', '1', '1', '-1454.38', '-3971.26', '7.5598', '2.14675', '0', '0', '0', '0', '5', '100', '1'),
('15702', '123333', '1', '1', '-1454.38', '-3971.26', '7.5598', '2.14675', '0', '0', '0', '0', '5', '100', '1');
*/

-- 1: 
-- 15119 this already existed
DELETE FROM `gameobject` WHERE `guid` IN (15119,121946,121947,121948,121949,121950,121951);
DELETE FROM `game_event_gameobject` WHERE `guid` IN (15119,121946,121947,121948,121949,121950,121951);
DELETE FROM `gameobject_battleground` WHERE `guid` IN (15119,121946,121947,121948,121949,121950,121951);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
('121946', '123330', '1', '1', '-1456.44', '-3971.63', '7.56249', '1.8326', '0', '0', '0', '0', '5', '5', '100', '1'),
('121947', '123331', '1', '1', '-1456.44', '-3971.63', '7.56249', '1.8326', '0', '0', '0', '0', '5', '5', '100', '1'),
('121948', '123332', '1', '1', '-1456.44', '-3971.63', '7.56249', '1.8326', '0', '0', '0', '0', '5', '5', '100', '1'),
('121949', '123333', '1', '1', '-1456.44', '-3971.63', '7.56249', '1.8326', '0', '0', '0', '0', '5', '5', '100', '1'),
('121950', '123334', '1', '1', '-1456.44', '-3971.63', '7.56249', '1.8326', '0', '0', '0', '0', '5', '5', '100', '1'),
('121951', '123355', '1', '1', '-1456.44', '-3971.63', '7.56249', '1.8326', '0', '0', '0', '0', '5', '5', '100', '1');
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 121946 AND 121949;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
('121946', '16453', '0', 'Buccaneer\'s Strongbox 1-1'),
('121947', '16453', '0', 'Buccaneer\'s Strongbox 1-2'),
('121948', '16453', '15', 'Buccaneer\'s Strongbox 1-3'),
('121949', '16453', '15', 'Buccaneer\'s Strongbox 1-4');
	
-- 2: 
-- 15120 this already existed
DELETE FROM `gameobject` WHERE `guid` IN (15120,121952,121953,121954,121955,121956,121957);
DELETE FROM `game_event_gameobject` WHERE `guid` IN (15120,121952,121953,121954,121955,121956,121957);
DELETE FROM `gameobject_battleground` WHERE `guid` IN (15120,121952,121953,121954,121955,121956,121957);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
('121952', '123330', '1', '1', '-1461.56', '-3970.03', '7.56018', '0.750492', '0', '0', '0', '0', '5', '5', '100', '1'),
('121953', '123331', '1', '1', '-1461.56', '-3970.03', '7.56018', '0.750492', '0', '0', '0', '0', '5', '5', '100', '1'),
('121954', '123332', '1', '1', '-1461.56', '-3970.03', '7.56018', '0.750492', '0', '0', '0', '0', '5', '5', '100', '1'),
('121955', '123333', '1', '1', '-1461.56', '-3970.03', '7.56018', '0.750492', '0', '0', '0', '0', '5', '5', '100', '1'),
('121956', '123334', '1', '1', '-1461.56', '-3970.03', '7.56018', '0.750492', '0', '0', '0', '0', '5', '5', '100', '1'),
('121957', '123355', '1', '1', '-1461.56', '-3970.03', '7.56018', '0.750492', '0', '0', '0', '0', '5', '5', '100', '1');
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 121952 AND 121955;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
('121952', '16454', '0', 'Buccaneer\'s Strongbox 2-1'),
('121953', '16454', '0', 'Buccaneer\'s Strongbox 2-2'),
('121954', '16454', '15', 'Buccaneer\'s Strongbox 2-3'),
('121955', '16454', '15', 'Buccaneer\'s Strongbox 2-4');
  
-- 3: 
-- 15121 this already existed
DELETE FROM `gameobject` WHERE `guid` IN (15121,121958,121959,121960,121961,121962,121963);
DELETE FROM `game_event_gameobject` WHERE `guid` IN (15121,121958,121959,121960,121961,121962,121963);
DELETE FROM `gameobject_battleground` WHERE `guid` IN (15121,121958,121959,121960,121961,121962,121963);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
('121958', '123330', '1', '1', '-1452.1', '-3966.4', '7.56134', '-3.07178', '0', '0', '0', '0', '5', '5', '100', '1'),
('121959', '123331', '1', '1', '-1452.1', '-3966.4', '7.56134', '-3.07178', '0', '0', '0', '0', '5', '5', '100', '1'),
('121960', '123332', '1', '1', '-1452.1', '-3966.4', '7.56134', '-3.07178', '0', '0', '0', '0', '5', '5', '100', '1'),
('121961', '123333', '1', '1', '-1452.1', '-3966.4', '7.56134', '-3.07178', '0', '0', '0', '0', '5', '5', '100', '1'),
('121962', '123334', '1', '1', '-1452.1', '-3966.4', '7.56134', '-3.07178', '0', '0', '0', '0', '5', '5', '100', '1'),
('121963', '123355', '1', '1', '-1452.1', '-3966.4', '7.56134', '-3.07178', '0', '0', '0', '0', '5', '5', '100', '1');
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 121958 AND 121961;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
('121958', '16455', '0', 'Buccaneer\'s Strongbox 3-1'),
('121959', '16455', '0', 'Buccaneer\'s Strongbox 3-2'),
('121960', '16455', '15', 'Buccaneer\'s Strongbox 3-3'),
('121961', '16455', '15', 'Buccaneer\'s Strongbox 3-4');
  
-- 4: 
-- 15122 this already existed
DELETE FROM `gameobject` WHERE `guid` IN (15122,121964,121965,121966,121967,121968,121969);
DELETE FROM `game_event_gameobject` WHERE `guid` IN (15122,121964,121965,121966,121967,121968,121969);
DELETE FROM `gameobject_battleground` WHERE `guid` IN (15122,121964,121965,121966,121967,121968,121969);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
('121964', '123330', '1', '1', '-1453.02', '-3969.75', '7.56026', '2.49582', '0', '0', '0', '0', '5', '5', '100', '1'),
('121965', '123331', '1', '1', '-1453.02', '-3969.75', '7.56026', '2.49582', '0', '0', '0', '0', '5', '5', '100', '1'),
('121966', '123332', '1', '1', '-1453.02', '-3969.75', '7.56026', '2.49582', '0', '0', '0', '0', '5', '5', '100', '1'),
('121967', '123333', '1', '1', '-1453.02', '-3969.75', '7.56026', '2.49582', '0', '0', '0', '0', '5', '5', '100', '1'),
('121968', '123334', '1', '1', '-1453.02', '-3969.75', '7.56026', '2.49582', '0', '0', '0', '0', '5', '5', '100', '1'),
('121969', '123355', '1', '1', '-1453.02', '-3969.75', '7.56026', '2.49582', '0', '0', '0', '0', '5', '5', '100', '1');
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 121964 AND 121967;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
('121964', '16456', '0', 'Buccaneer\'s Strongbox 4-1'),
('121965', '16456', '0', 'Buccaneer\'s Strongbox 4-2'),
('121966', '16456', '15', 'Buccaneer\'s Strongbox 4-3'),
('121967', '16456', '15', 'Buccaneer\'s Strongbox 4-4');
  
-- 5: 
-- 15123 this already existed
DELETE FROM `gameobject` WHERE `guid` IN (15123,121970,121971,121972,121973,121974,121975);
DELETE FROM `game_event_gameobject` WHERE `guid` IN (15123,121970,121971,121972,121973,121974,121975);
DELETE FROM `gameobject_battleground` WHERE `guid` IN (15123,121970,121971,121972,121973,121974,121975);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
('121970', '123330', '1', '1', '-1462.45', '-3966.9', '7.56138', '-0.017453', '0', '0', '0', '0', '5', '5', '100', '1'),
('121971', '123331', '1', '1', '-1462.45', '-3966.9', '7.56138', '-0.017453', '0', '0', '0', '0', '5', '5', '100', '1'),
('121972', '123332', '1', '1', '-1462.45', '-3966.9', '7.56138', '-0.017453', '0', '0', '0', '0', '5', '5', '100', '1'),
('121973', '123333', '1', '1', '-1462.45', '-3966.9', '7.56138', '-0.017453', '0', '0', '0', '0', '5', '5', '100', '1'),
('121974', '123334', '1', '1', '-1462.45', '-3966.9', '7.56138', '-0.017453', '0', '0', '0', '0', '5', '5', '100', '1'),
('121975', '123355', '1', '1', '-1462.45', '-3966.9', '7.56138', '-0.017453', '0', '0', '0', '0', '5', '5', '100', '1');
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 121970 AND 121973;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
('121970', '16457', '0', 'Buccaneer\'s Strongbox 5-1'),
('121971', '16457', '0', 'Buccaneer\'s Strongbox 5-2'),
('121972', '16457', '15', 'Buccaneer\'s Strongbox 5-3'),
('121973', '16457', '15', 'Buccaneer\'s Strongbox 5-4');
  
-- 6: 
-- 15125, 15683 already existed
DELETE FROM `gameobject` WHERE `guid` IN (15125,15683,121976,121977,121978,121979,121980,121981);
DELETE FROM `game_event_gameobject` WHERE `guid` IN (15125,15683,121976,121977,121978,121979,121980,121981);
DELETE FROM `gameobject_battleground` WHERE `guid` IN (15125,15683,121976,121977,121978,121979,121980,121981);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
('121976', '123330', '1', '1', '-1458.06', '-3972.06', '8.26139', '1.39626', '0', '0', '0', '0', '5', '5', '100', '1'),
('121977', '123331', '1', '1', '-1458.06', '-3972.06', '8.26139', '1.39626', '0', '0', '0', '0', '5', '5', '100', '1'),
('121978', '123332', '1', '1', '-1458.06', '-3972.06', '8.26139', '1.39626', '0', '0', '0', '0', '5', '5', '100', '1'),
('121979', '123333', '1', '1', '-1458.06', '-3972.06', '8.26139', '1.39626', '0', '0', '0', '0', '5', '5', '100', '1'),
('121980', '123334', '1', '1', '-1458.06', '-3972.06', '8.26139', '1.39626', '0', '0', '0', '0', '5', '5', '100', '1'),
('121981', '123355', '1', '1', '-1458.06', '-3972.06', '8.26139', '1.39626', '0', '0', '0', '0', '5', '5', '100', '1');
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 121976 AND 121979;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
('121976', '16458', '0', 'Buccaneer\'s Strongbox 6-1'),
('121977', '16458', '0', 'Buccaneer\'s Strongbox 6-2'),
('121978', '16458', '15', 'Buccaneer\'s Strongbox 6-3'),
('121979', '16458', '15', 'Buccaneer\'s Strongbox 6-4');

-- 7: 
-- 15145 this already existed
DELETE FROM `gameobject` WHERE `guid` IN (15145,121982,121983,121984,121985,121986,121987);
DELETE FROM `game_event_gameobject` WHERE `guid` IN (15145,121982,121983,121984,121985,121986,121987);
DELETE FROM `gameobject_battleground` WHERE `guid` IN (15145,121982,121983,121984,121985,121986,121987);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
('121982', '123330', '1', '1', '-1463', '-3968.46', '7.56007', '0.069813', '0', '0', '0', '0', '5', '5', '100', '1'),
('121983', '123331', '1', '1', '-1463', '-3968.46', '7.56007', '0.069813', '0', '0', '0', '0', '5', '5', '100', '1'),
('121984', '123332', '1', '1', '-1463', '-3968.46', '7.56007', '0.069813', '0', '0', '0', '0', '5', '5', '100', '1'),
('121985', '123333', '1', '1', '-1463', '-3968.46', '7.56007', '0.069813', '0', '0', '0', '0', '5', '5', '100', '1'),
('121986', '123334', '1', '1', '-1463', '-3968.46', '7.56007', '0.069813', '0', '0', '0', '0', '5', '5', '100', '1'),
('121987', '123355', '1', '1', '-1463', '-3968.46', '7.56007', '0.069813', '0', '0', '0', '0', '5', '5', '100', '1');
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 121982 AND 121985;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
('121982', '16459', '0', 'Buccaneer\'s Strongbox 7-1'),
('121983', '16459', '0', 'Buccaneer\'s Strongbox 7-2'),
('121984', '16459', '15', 'Buccaneer\'s Strongbox 7-3'),
('121985', '16459', '15', 'Buccaneer\'s Strongbox 7-4');
  
-- 8: 
-- 15702,15705,60197,61025  already existed
DELETE FROM `gameobject` WHERE `guid` IN (15702,15705,60197,61025,121988,121989,121990,121991,121992,121993);
DELETE FROM `game_event_gameobject` WHERE `guid` IN (15702,15705,60197,61025,121988,121989,121990,121991,121992,121993);
DELETE FROM `gameobject_battleground` WHERE `guid` IN (15702,15705,60197,61025,121988,121989,121990,121991,121992,121993);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
('121988', '123330', '1', '1', '-1454.38', '-3971.26', '7.5598', '2.14675', '0', '0', '0', '0', '5', '5', '100', '1'),
('121989', '123331', '1', '1', '-1454.38', '-3971.26', '7.5598', '2.14675', '0', '0', '0', '0', '5', '5', '100', '1'),
('121990', '123332', '1', '1', '-1454.38', '-3971.26', '7.5598', '2.14675', '0', '0', '0', '0', '5', '5', '100', '1'),
('121991', '123333', '1', '1', '-1454.38', '-3971.26', '7.5598', '2.14675', '0', '0', '0', '0', '5', '5', '100', '1'),
('121992', '123334', '1', '1', '-1454.38', '-3971.26', '7.5598', '2.14675', '0', '0', '0', '0', '5', '5', '100', '1'),
('121993', '123355', '1', '1', '-1454.38', '-3971.26', '7.5598', '2.14675', '0', '0', '0', '0', '5', '5', '100', '1');
DELETE FROM `pool_gameobject` WHERE `guid` BETWEEN 121988 AND 121991;
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
('121988', '16460', '0', 'Buccaneer\'s Strongbox 8-1'),
('121989', '16460', '0', 'Buccaneer\'s Strongbox 8-2'),
('121990', '16460', '15', 'Buccaneer\'s Strongbox 8-3'),
('121991', '16460', '15', 'Buccaneer\'s Strongbox 8-4');

-- pool_template entries:
DELETE FROM `pool_template` WHERE `entry` BETWEEN 16453 AND 16460;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) 
	VALUES ('16453', '1', 'Buccaneer\'s Strongbox 1');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) 
	VALUES ('16454', '1', 'Buccaneer\'s Strongbox 2');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) 
	VALUES ('16455', '1', 'Buccaneer\'s Strongbox 3');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) 
	VALUES ('16456', '1', 'Buccaneer\'s Strongbox 4');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) 
	VALUES ('16457', '1', 'Buccaneer\'s Strongbox 5');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) 
	VALUES ('16458', '1', 'Buccaneer\'s Strongbox 6');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) 
	VALUES ('16459', '1', 'Buccaneer\'s Strongbox 7');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) 
	VALUES ('16460', '1', 'Buccaneer\'s Strongbox 8');

/*	
-- pool_pool entires:
-- INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) 
-- 	VALUES ('16453', '30001', '0', 'Barrens - Buccaneer\'s Strongbox 1');
-- INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) 
-- 	VALUES ('16454', '30001', '0', 'Barrens - Buccaneer\'s Strongbox 2');
-- INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) 
-- 	VALUES ('16455', '30001', '0', 'Barrens - Buccaneer\'s Strongbox 3');
-- INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) 
-- 	VALUES ('16456', '30001', '0', 'Barrens - Buccaneer\'s Strongbox 4');	
-- INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) 
-- 	VALUES ('16457', '30001', '0', 'Barrens - Buccaneer\'s Strongbox 5');
-- INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) 
-- 	VALUES ('16458', '30001', '0', 'Barrens - Buccaneer\'s Strongbox 6');
-- INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) 
-- 	VALUES ('16459', '30001', '0', 'Barrens - Buccaneer\'s Strongbox 7');
-- INSERT INTO `pool_pool` (`pool_id`, `mother_pool`, `chance`, `description`) 
-- 	VALUES ('16460', '30001', '0', 'Barrens - Buccaneer\'s Strongbox 8');
*/
