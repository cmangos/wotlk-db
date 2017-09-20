-- Harvest Festival Corrections

-- Ironforge
/* Adding spawns for Boar, Fruit and Fish for each location if missing */
-- Boar
DELETE FROM gameobject WHERE guid IN (35845, 35846, 35847);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(35845, 180372, 0, -5082.25, -800.448, 496.03, -0.191986, 0, 0, 0.095846, -0.995396, 10, 10, 100, 1),
(35846, 180372, 0, -5085.64, -799.931, 496.03, -0.226893, 0, 0, 0.113203, -0.993572, 10, 10, 100, 1),
(35847, 180372, 0, -5089.05, -799.469, 496.03, -2.11185, 0, 0, 0.870356, -0.492423, 10, 10, 100, 1);

UPDATE gameobject SET position_x = -5080.8, position_y = -799.561, position_z = 496.03, orientation = 1.8675, rotation2 = 0.803857, rotation3 = 0.594823, spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE guid = 31391;

-- Fish
DELETE FROM gameobject WHERE guid IN (35849, 35850);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(35849, 180371, 0, -5077.29, -800.179, 496.03, 2.32129, 0, 0, 0.91706, 0.398749, 10, 10, 100, 1),
(35850, 180371, 0, -5089.05, -799.469, 496.03, -2.11185, 0, 0, 0.870356, -0.492423, 10, 10, 100, 1);

UPDATE gameobject SET position_x = -5075.2, position_y = -799.255, position_z = 496.038, orientation = -1.29154, rotation2 = 0.601815, rotation3 = -0.798635, spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE guid = 31965;

-- Fruit
UPDATE gameobject SET position_x = -5073.67, position_y = -799.944, position_z = 496.038, orientation = -0.15708, rotation2 = 0.078459, rotation3 = -0.996917, spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE guid = 29870;
UPDATE gameobject SET position_x = -5085.64, position_y = -799.931, position_z = 496.03, orientation = -0.226893, rotation2 = 0.113203, rotation3 = -0.993572, spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE guid = 31969;

DELETE FROM game_event_gameobject WHERE guid IN (35845, 35846, 35847, 35849, 35850);
INSERT INTO game_event_gameobject (guid, event) VALUES
(35845, 11),
(35846, 11),
(35847, 11),
(35849, 11),
(35850, 11);

/*Adding spawns to pools. 7 pools each with a chance of spawning either boar, fish or fruit */
DELETE FROM pool_gameobject WHERE guid IN (31388, 31967, 29870, 31968, 31965, 31389, 31392, 35849, 31393, 31391, 31395, 30875, 35845, 29868, 31396, 35846, 30362, 31969, 35847, 35850, 30364);
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(31388, 1709, 33.33, 'IF Harvest Boar 1'),
(31967, 1709, 33.33, 'IF Harvest Fish 1'),
(29870, 1709, 33.34, 'IF Harvest Fruit 1'),
(31968, 1710, 33.33, 'IF Harvest Boar 2'),
(31965, 1710, 33.33, 'IF Harvest Fish 2'),
(31389, 1710, 33.34, 'IF Harvest Fruit 2'),
(31392, 1711, 33.33, 'IF Harvest Boar 3'),
(35849, 1711, 33.33, 'IF Harvest Fish 3'),
(31393, 1711, 33.34, 'IF Harvest Fruit 3'),
(31391, 1712, 33.33, 'IF Harvest Boar 4'),
(31395, 1712, 33.33, 'IF Harvest Fish 4'),
(30875, 1712, 33.34, 'IF Harvest Fruit 4'),
(35845, 1713, 33.33, 'IF Harvest Boar 5'),
(29868, 1713, 33.33, 'IF Harvest Fish 5'),
(31396, 1713, 33.34, 'IF Harvest Fruit 5'),
(35846, 1714, 33.33, 'IF Harvest Boar 6'),
(30362, 1714, 33.33, 'IF Harvest Fish 6'),
(31969, 1714, 33.34, 'IF Harvest Fruit 6'),
(35847, 1715, 33.33, 'IF Harvest Boar 7'),
(35850, 1715, 33.33, 'IF Harvest Fish 7'),
(30364, 1715, 33.34, 'IF Harvest Fruit 7');

DELETE FROM pool_template WHERE entry BETWEEN 1709 AND 1715;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(1709, 1, 'IF Harvest Food 1'),
(1710, 1, 'IF Harvest Food 2'),
(1711, 1, 'IF Harvest Food 3'),
(1712, 1, 'IF Harvest Food 4'),
(1713, 1, 'IF Harvest Food 5'),
(1714, 1, 'IF Harvest Food 6'),
(1715, 1, 'IF Harvest Food 7');

-- Orgrimmar
/*Changing respawn time to 10s for all harvest boar, fruit and fish */
UPDATE gameobject SET spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE id IN (180370, 180371, 180372, 180373, 180374);
/* Adding spawns for Boar, Fruit and Fish for each location if missing */
-- Boar
DELETE FROM gameobject WHERE guid = 35851;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(35851, 180372, 1, 1326.97, -4416.36, 27.5984, -1.6057, 0, 0, 0.71934, -0.694658, 10, 10, 100, 1);

-- Fish
DELETE FROM gameobject WHERE guid BETWEEN 35852 AND 35855;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(35852, 180371, 1, 1340.36, -4414.08, 28.0881, 1.98968, 0, 0, 0.838671, 0.544639, 10, 10, 100, 1),
(35853, 180371, 1, 1341.04, -4421.81, 27.6249, 0.383972, 0, 0, 0.190809, 0.981627, 10, 10, 100, 1),
(35854, 180371, 1, 1337.53, -4411.01, 28.0848, -0.680679, 0, 0, 0.333807, -0.942641, 10, 10, 100, 1),
(35855, 180371, 1, 1329.31, -4413.13, 27.6023, 0.680678, 0, 0, 0.333807, 0.942641, 10, 10, 100, 1);

UPDATE gameobject SET position_x = 1336.56, position_y = -4426.84, position_z = 27.6309, orientation = -2.9147, rotation2 = 0.993572, rotation3 = -0.113203, spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE guid = 35779;

-- Fruit
DELETE FROM gameobject WHERE guid IN (35856, 35857);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(35856, 180370, 1, 1327.37, -4423.33, 27.4349, 2.53073, 0, 0, 0.953717, 0.300706, 10, 10, 100, 1),
(35857, 180370, 1, 1330.72, -4425.71, 27.4281, 0.750492, 0, 0, 0.366501, 0.930418, 10, 10, 100, 1);

UPDATE gameobject SET position_x = 1326.97, position_y = -4416.36, position_z = 27.5984, orientation = -1.6057, rotation2 = 0.71934, rotation3 = -0.694658, spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE guid = 35788;

DELETE FROM game_event_gameobject WHERE guid BETWEEN 35851 AND 35857;
INSERT INTO game_event_gameobject (guid, event) VALUES
(35851, 11),
(35852, 11),
(35853, 11),
(35854, 11),
(35855, 11),
(35856, 11),
(35857, 11);

/*Adding spawns to pools. 8 pools each with a chance of spawning either boar, fish or fruit */
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
(35784, 1701, 33.33, 'Org Harvest Boar 1'),
(35852, 1701, 33.33, 'Org Harvest Fish 1'),
(35777, 1701, 33.34, 'Org Harvest Fruit 1'),
(35780, 1702, 33.33, 'Org Harvest Boar 2'),
(35853, 1702, 33.33, 'Org Harvest Fish 2'),
(35774, 1702, 33.34, 'Org Harvest Fruit 2'),
(35778, 1703, 33.33, 'Org Harvest Boar 3'),
(35854, 1703, 33.33, 'Org Harvest Fish 3'),
(35786, 1703, 33.34, 'Org Harvest Fruit 3'),
(35776, 1704, 33.33, 'Org Harvest Boar 4'),
(35855, 1704, 33.33, 'Org Harvest Fish 4'),
(35785, 1704, 33.34, 'Org Harvest Fruit 4'),
(35775, 1705, 33.33, 'Org Harvest Boar 5'),
(35779, 1705, 33.33, 'Org Harvest Fish 5'),
(35781, 1705, 33.34, 'Org Harvest Fruit 5'),
(34047, 1706, 33.33, 'Org Harvest Boar 6'),
(35783, 1706, 33.33, 'Org Harvest Fish 6'),
(35856, 1706, 33.34, 'Org Harvest Fruit 6'),
(35787, 1707, 33.33, 'Org Harvest Boar 7'),
(34046, 1707, 33.33, 'Org Harvest Fish 7'),
(35857, 1707, 33.34, 'Org Harvest Fruit 7'),
(35851, 1708, 33.33, 'Org Harvest Boar 8'),
(34048, 1708, 33.33, 'Org Harvest Fish 8'),
(35788, 1708, 33.34, 'Org Harvest Fruit 8');

DELETE FROM pool_template WHERE entry BETWEEN 1701 AND 1708;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(1701, 1, 'Org Harvest Food 1'),
(1702, 1, 'Org Harvest Food 2'),
(1703, 1, 'Org Harvest Food 3'),
(1704, 1, 'Org Harvest Food 4'),
(1705, 1, 'Org Harvest Food 5'),
(1706, 1, 'Org Harvest Food 6'),
(1707, 1, 'Org Harvest Food 7'),
(1708, 1, 'Org Harvest Food 8');

/* Adding missing Tribute GO's for Gnomes, Night Elves, Orcs and Taurens */
DELETE FROM gameobject_template WHERE entry IN (180211, 180213, 180207, 180209);
INSERT INTO gameobject_template (entry, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, ScriptName) VALUES
(180211, 5, 6314, 'Uther\'s Gnome Tribute', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(180213, 5, 6315, 'Uther\'s Night Elf Tribute', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(180207, 5, 665, 'Grom\'s Orc Tribute', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(180209, 5, 6312, 'Grom\'s Tauren Tribute', 0, 0, 0.08, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

/* Removing temporary entries for Uther's Statue and Grom's Monument and adding correct entries (Thanks YTDB) */
DELETE FROM gameobject_template WHERE entry IN (300140, 300145, 1323, 1324);
INSERT INTO gameobject_template (entry, type, displayId, name, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, ScriptName) VALUES
(1323, 8, 299, 'Uther\'s Tomb Statue', 0, 0, 1, 1323, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1324, 8, 299, 'Grom\'s Monument', 0, 0, 1.5, 1324, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

UPDATE gameobject SET id = 1323 WHERE guid = 99865;
UPDATE gameobject SET id = 1324 WHERE guid = 99997;
