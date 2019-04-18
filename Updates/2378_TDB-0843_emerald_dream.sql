DELETE FROM `instance_template` WHERE `map` = 169;
INSERT INTO `instance_template` (`map`, `parent`, `ScriptName`, `mountAllowed`) VALUES
(169, 0, '', 0);

DELETE FROM `game_tele` WHERE `id` BETWEEN 1427 AND 1430;
INSERT INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES 
(1427, -366.091, 3097.86, 92.317, 0.0487625, 169, 'EmeraldDream'),
(1428, 2781.566406, 3006.763184, 23.221882, 0.5, 169, 'EmeraldStatue'),
(1429, -2128.12, -1005.89, 132.213, 0.5, 169, 'VerdantFields'),
(1430, 2732.93, -3319.63, 101.284, 0.5, 169, 'EmeraldForest');


