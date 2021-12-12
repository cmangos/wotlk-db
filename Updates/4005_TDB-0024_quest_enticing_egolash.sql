-- Gameobjects spawned during quest Enticing Negolash.
DELETE FROM gameobject WHERE guid IN (20893, 20894, 20895, 20896, 20897, 20898, 20899, 20900, 20901, 20902, 20903, 20904, 20905, 20906, 20884, 20883, 20882, 20873, 20872, 20871);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `state`, `animprogress`) VALUES 
(20893, 2332, 0, -14655.1, 146.671, 2.23095, 2.65289, 0, 0, 0.970295, 0.241925, -120, -120, 1, 100),
(20894, 2332, 0, -14656.8, 148.893, 3.28866, 5.09636, 0, 0, -0.559193, 0.829038, -120, -120, 1, 100),
(20895, 2332, 0, -14655.3, 147.802, 2.63972, 6.16101, 0, 0, -0.0610485, 0.998135, -120, -120, 1, 100),
(20896, 2332, 0, -14652.9, 146.867, 2.50691, 2.94959, 0, 0, 0.995396, 0.0958512, -120, -120, 1, 100),
(20897, 2332, 0, -14654.7, 146.142, 2.08906, 2.37364, 0, 0, 0.927183, 0.374608, -120, -120, 1, 100),
(20898, 2332, 0, -14652.4, 146.512, 3.50118, 0.349065, 0, 0, 0.173648, 0.984808, -120, -120, 1, 100),
(20899, 2332, 0, -14656.2, 147.096, 2.38777, 0.174532, 0, 0, 0.0871553, 0.996195, -120, -120, 1, 100),
(20900, 2332, 0, -14654.5, 147.324, 2.45636, 1.81514, 0, 0, 0.788011, 0.615662, -120, -120, 1, 100),
(20901, 2332, 0, -14653, 146.524, 2.35559, 6.00393, 0, 0, -0.139173, 0.990268, -120, -120, 1, 100),
(20902, 2332, 0, -14654, 147.306, 2.46731, 0.942477, 0, 0, 0.45399, 0.891007, -120, -120, 1, 100),
(20903, 2332, 0, -14654.9, 147.278, 2.42524, 5.88176, 0, 0, -0.199367, 0.979925, -120, -120, 1, 100),
(20904, 2332, 0, -14653, 145.138, 2.65327, 5.84685, 0, 0, -0.216439, 0.976296, -120, -120, 1, 100),
(20905, 2333, 0, -14656.8, 147.434, 3.10207, 3.01941, 0, 0, 0.998135, 0.0610518, -120, -120, 1, 100),
(20906, 2333, 0, -14655.7, 148.978, 4.0564, 3.47321, 0, 0, -0.986285, 0.16505, -120, -120, 1, 100),
(20884, 2333, 0, -14656.5, 147.595, 3.12908, 1.58825, 0, 0, 0.71325, 0.70091, -120, -120, 1, 100),
(20883, 2333, 0, -14653, 145.389, 2.852, 4.85202, 0, 0, -0.656058, 0.75471, -120, -120, 1, 100),
(20882, 2333, 0, -14657.2, 148.228, 2.88632, 1.53589, 0, 0, 0.694658, 0.71934, -120, -120, 1, 100),
(20873, 2562, 0, -14653.8, 146.204, 2.14631, 4.88692, 0, 0, -0.642787, 0.766045, -120, -120, 1, 100),
(20872, 2562, 0, -14652.4, 145.753, 3.25464, 2.93214, 0, 0, 0.994521, 0.104535, -120, -120, 1, 100),
(20871, 2562, 0, -14656.1, 148.367, 3.51564, 5.63741, 0, 0, -0.317305, 0.948324, -120, -120, 1, 100);

-- Script on completion of quest Enticing Negolash.
DELETE FROM dbscripts_on_quest_end WHERE id = '619';
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `data_flags`, `dataint`, `x`, `y`, `z`, `o`, `comments`) VALUES 
('619 ', '0', '10', '1494', '120000', '0', '0', '0', '-14598.6', '76.0563', '-11.249', '0.925025','Enticing Negolash: Ruined Lifeboat - Summon Creature Negolash'),
('619 ', '0', '9', 20893, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
('619 ', '0', '9', 20894, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
('619 ', '0', '9', 20895, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
('619 ', '0', '9', 20896, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
('619 ', '0', '9', 20897, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
('619 ', '0', '9', 20898, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
('619 ', '0', '9', 20899, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
('619 ', '0', '9', 20900, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
('619 ', '0', '9', 20901, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
('619 ', '0', '9', 20902, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
('619 ', '0', '9', 20903, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
('619 ', '0', '9', 20904, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Barbequed Buzzard Wings'),
('619 ', '0', '9', 20905, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Stranglevine Wine'),
('619 ', '0', '9', 20906, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Stranglevine Wine'),
('619 ', '0', '9', 20884, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Stranglevine Wine'),
('619 ', '0', '9', 20883, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Stranglevine Wine'),
('619 ', '0', '9', 20882, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Stranglevine Wine'),
('619 ', '0', '9', 20873, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Baked Bread'),
('619 ', '0', '9', 20872, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Baked Bread'),
('619 ', '0', '9', 20871, '120', '0', '0', '0', '0', '0', '0', '0','Enticing Negolash: Ruined Lifeboat - Respawn GameObject Baked Bread');

-- Waypoints for Negolash.
DELETE FROM creature_movement_template WHERE entry = '1494';
INSERT INTO `creature_movement_template` (`entry`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`,  `scriptid`) VALUES
(1494, 1, -14598.599609, 76.056297, -11.249000, 100.000000, 0, 149401),
(1494, 2, -14603.400391, 87.177902, -10.240300, 100.000000, 0, 0),
(1494, 3, -14612.900391, 104.960999, -8.736550, 100.000000, 0,  0),
(1494, 4, -14625.200195, 125.224998, -5.169360, 100.000000, 0, 0),
(1494, 5, -14647.200195, 142.490005, 0.734623, 100.000000, 1000, 149405),
(1494, 6, -14647.200195, 142.490005, 0.734623, 1.421290, 1000, 0);

-- Waypoint scripts for Negolash.
DELETE FROM dbscripts_on_creature_movement WHERE id = '149401';
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `data_flags`, `dataint`, `x`, `y`, `z`, `o`, `comments`) VALUES 
('149401 ', '0', '0', '0', '0', '0', '0', '731', '0', '0', '0', '0','Negolash - Say Text'),
('149405 ', '0', '0', '0', '0', '0', '0', '763', '0', '0', '0', '0','Negolash - Say Text'),
('149405 ', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0','Negolash - Remove Movement');

-- Add Movement Flag to Negolash
UPDATE `creature_template` SET `MovementType`=2, `InhabitType`=1 WHERE `entry`=1494;

-- This text should be yelled
UPDATE `broadcast_text` SET `ChatTypeID`='1' WHERE (`Id`='731'); 