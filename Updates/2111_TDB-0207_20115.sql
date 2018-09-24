-- Umbrafen Witchdoctor 20115
-- TDB Range 530x Used
DELETE FROM `creature` WHERE `guid` BETWEEN 5309010 AND 5309015;
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 5309010 AND 5309015;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(5309010, 20115, 530, 1, 0, 0, -742.7538, 5307.001, 18.92145, 5.945681, 300, 300, 5, 0, 0, 0, 0, 1),
(5309011, 20115, 530, 1, 0, 0, -1098.786, 5188.825, 44.39291, 3.274908, 300, 300, 5, 0, 0, 0, 0, 1),
(5309012, 20115, 530, 1, 0, 0, -946.217, 5290.435, 18.31916, 1.356362, 300, 300, 5, 0, 0, 0, 0, 1),
(5309013, 20115, 530, 1, 0, 0, -791.7216, 5216.098, 17.5179, 0.6237115, 300, 300, 5, 0, 0, 0, 0, 1),
(5309014, 20115, 530, 1, 0, 0, -1056.179, 5222.964, 22.80347, 5.360602, 300, 300, 5, 0, 0, 0, 0, 1),
(5309015, 20115, 530, 1, 0, 0, -721.4161, 5299.48, 17.92765, 5.17471, 300, 300, 5, 0, 0, 0, 0, 1);

