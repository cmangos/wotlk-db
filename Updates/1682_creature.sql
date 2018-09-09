-- Accursed Apparition 21941
UPDATE `creature_template_addon` SET `auras` = '8278 8279 16380' WHERE `entry` = 21941;

-- 	Respawn Accursed Apparition (-1 / + 12)
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 21941);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 21941);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 21941);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 21941);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 21941);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 21941)
OR master_guid IN (SELECT guid FROM creature WHERE id = 21941);
DELETE FROM creature WHERE id = 21941;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnmask`, `position_x`, `position_y`,`position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(191115, 21941, 530, 1, -3736.376, 4700.821, -15.99797, 0.917079, 300, 300, 5, 1),
(191116, 21941, 530, 1, -3811.741, 4705.245, -26.43885, 2.959275, 300, 300, 5, 1),
(191117, 21941, 530, 1, -3821.004, 4728.347, -25.41444, 2.953965, 300, 300, 5, 1),
(191118, 21941, 530, 1, -3842.895, 4713.101, -32.77962, 6.243168, 300, 300, 5, 1),
(191119, 21941, 530, 1, -3775.479, 4740.845, -21.04175, 2.304031, 300, 300, 5, 1),
(191120, 21941, 530, 1, -3859.166, 4715.581, -40.46419, 3.949761, 300, 300, 5, 1),
(191121, 21941, 530, 1, -3704.95, 4798.153, -20.50031, 3.115232, 300, 300, 5, 1),
(191122, 21941, 530, 1, -3708.42, 4722.049, -17.48276, 0.2504053, 300, 300, 5, 1),
(191123, 21941, 530, 1, -3671.4, 4744.68, -21.40731, 0.4243141, 300, 300, 5, 1),
(191124, 21941, 530, 1, -3670.686, 4793.217, -20.97872, 2.007943, 300, 300, 5, 1),
(191125, 21941, 530, 1, -3721.201, 4685.048, -16.82257, 4.183875, 300, 300, 5, 1),
(191126, 21941, 530, 1, -3720.889, 4759.596, -19.78682, 3.498393, 300, 300, 5, 1);
