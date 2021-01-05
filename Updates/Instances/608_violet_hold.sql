/* DBScriptData
DBName: The Violet Hold
DBScriptName: 608_violet_hold.sql
DB%Complete: 50%
DBComment: ReQ:
EndDBScriptData */

SET @CGUID := 6080000; -- creatures
SET @OGUID := 6080000; -- gameobjects
SET @PGUID := 53700;   -- pools

-- =========
-- CREATURES
-- =========

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
-- Black Rat 2110
(@CGUID+0,2110,608,3,1,0,0,1925.69,806.789,38.766,4.79734,3600,3600,0,0,1,0,0,0),
(@CGUID+1,2110,608,3,1,0,0,1839,842.296,38.6467,3.65793,3600,3600,5,0,1,0,0,1),
(@CGUID+2,2110,608,3,1,0,0,1922.98,842.169,38.5812,3.76191,3600,3600,5,0,1,0,0,1),
-- Rat 4075
(@CGUID+3,4075,608,3,1,0,0,1924.91,838.38,38.7241,2.82743,3600,3600,0,0,8,0,0,0),
-- Spider 14881
(@CGUID+4,14881,608,3,1,0,0,1835.06,787.226,44.2852,5.46028,3600,3600,5,0,8,0,0,1),
(@CGUID+5,14881,608,3,1,0,0,1938.05,886.081,47.2639,2.718,3600,3600,0,0,8,0,0,0),
(@CGUID+6,14881,608,3,1,0,0,1834.85,833.03,44.0783,3.75114,3600,3600,5,0,8,0,0,1),
(@CGUID+7,14881,608,3,1,0,0,1970.97,823.359,52.4492,4.6867,3600,3600,0,0,8,0,0,0),
-- Xevozz 29266
(@CGUID+8,29266,608,3,1,0,0,1908.42,845.85,38.7195,4.85202,86400,86400,0,0,227580,0,0,0),
-- Ethereal Summon Target 29276
(@CGUID+9,29276,608,3,1,0,0,1836.51,805.971,80.1289,5.70723,3600,3600,0,0,11379,0,0,0),
-- Lavanthor 29312
(@CGUID+10,29312,608,3,1,0,0,1844.56,748.708,38.742,0.820305,86400,86400,0,0,227580,0,0,0),
-- Ichoron 29313
(@CGUID+11,29313,608,3,1,0,0,1942.04,749.523,30.9523,2.30383,86400,86400,0,0,227580,69658,0,0),
-- Zuramat the Obliterator 29314 
(@CGUID+12,29314,608,3,1,0,0,1934.15,860.946,47.295,3.97935,86400,86400,0,0,227580,0,0,0),
-- Erekem 29315
(@CGUID+13,29315,608,3,1,0,0,1871.46,871.036,43.4152,5.11381,86400,86400,0,0,136548,74500,0,0),
-- Moragg 29316
(@CGUID+14,29316,608,3,1,0,0,1893.9,728.126,47.7502,1.6057,86400,86400,0,0,227580,0,0,0),
-- Ichoron Summon Target 29326
(@CGUID+15,29326,608,3,1,0,0,1886.24,757.733,47.7502,5.20108,3600,3600,0,0,11379,0,0,0),
(@CGUID+16,29326,608,3,1,0,0,1840.64,795.407,44.079,1.67552,3600,3600,0,0,11379,0,0,0),
(@CGUID+17,29326,608,3,1,0,0,1935.5,796.224,52.4921,4.2237,3600,3600,0,0,11379,0,0,0),
(@CGUID+18,29326,608,3,1,0,0,1918.97,850.645,47.2245,4.13643,3600,3600,0,0,11379,0,0,0),
(@CGUID+19,29326,608,3,1,0,0,1877.91,845.915,43.4168,3.56047,3600,3600,0,0,11379,0,0,0),
-- Erekem Guard 29395
(@CGUID+20,29395,608,3,1,0,0,1892.42,872.283,43.4156,4.55531,3600,3600,0,0,44004,0,0,0),
(@CGUID+21,29395,608,3,1,0,0,1853.75,862.453,43.4161,5.11381,3600,3600,0,0,44004,0,0,0),
-- Erekem Controller 29425
(@CGUID+22,29425,608,3,1,0,0,1951.92,791.495,76.4556,2.56563,3600,3600,0,0,11379,0,0,0),
-- Lieutenant Sinclari 30658
(@CGUID+23,30658,608,3,1,0,0,1830.95,799.463,44.418,2.3911,3600,3600,0,0,50400,3994,0,0),
-- Violet Hold Guard 30659
(@CGUID+24,30659,608,3,1,0,0,1854.82,805.873,44.0081,0.054694,3600,3600,0,0,42540,0,0,0),
(@CGUID+25,30659,608,3,1,0,0,1853.95,810.462,44.0088,0.239263,3600,3600,0,0,42540,0,0,0),
(@CGUID+26,30659,608,3,1,0,0,1854.32,798.053,44.0087,6.0355,3600,3600,0,0,42540,0,0,0),
(@CGUID+27,30659,608,3,1,0,0,1854.54,802.147,44.0078,6.22792,3600,3600,0,0,42540,0,0,0),
-- Defense Dummy Target 30857
(@CGUID+28,30857,608,3,1,0,0,1907.28,802.305,38.6457,4.32879,3600,3600,0,0,10635,0,0,0),
(@CGUID+29,30857,608,3,1,0,0,1881.36,809.781,38.53,6.19563,3600,3600,0,0,10635,0,0,0),
(@CGUID+30,30857,608,3,1,0,0,1891.98,752.688,47.6668,0.204083,3600,3600,0,0,10635,0,0,0),
(@CGUID+31,30857,608,3,1,0,0,1858.19,825.697,38.6467,5.19835,3600,3600,0,0,10635,0,0,0),
(@CGUID+32,30857,608,3,1,0,0,1942.85,812.676,52.4026,1.5377,3600,3600,0,0,10635,0,0,0),
(@CGUID+33,30857,608,3,1,0,0,1895.93,835.542,38.6466,3.7765,3600,3600,0,0,10635,0,0,0),
(@CGUID+34,30857,608,3,1,0,0,1929.48,831.058,45.51,1.49259,3600,3600,0,0,10635,0,0,0),
(@CGUID+35,30857,608,3,1,0,0,1916.23,850.416,47.1447,5.93601,3600,3600,0,0,10635,0,0,0),
(@CGUID+36,30857,608,3,1,0,0,1858.38,766.677,38.6528,1.36797,3600,3600,0,0,10635,0,0,0),
(@CGUID+37,30857,608,3,1,0,0,1840.36,813.598,44.1575,5.86559,3600,3600,0,0,10635,0,0,0),
(@CGUID+38,30857,608,3,1,0,0,1876.5,782.456,38.9272,2.81455,3600,3600,0,0,10635,0,0,0),
(@CGUID+39,30857,608,3,1,0,0,1852.57,848.215,43.3335,0.434143,3600,3600,0,0,10635,0,0,0),
-- Dalaran Prison Event Controller 30883
(@CGUID+40,30883,608,3,1,0,0,1849.88,792.488,44.1064,2.11185,3600,3600,0,0,5589,3155,0,0),
-- Prison Door Seal 30896
(@CGUID+41,30896,608,3,1,0,0,1823.72,803.856,48.9341,0,3600,3600,0,0,10635,0,0,0),
-- Teleportation Portal (Intro) 31011
(@CGUID+42,31011,608,3,1,0,0,1890.64,753.471,48.7224,1.71042,3600,3600,0,0,10635,0,0,0),
(@CGUID+43,31011,608,3,1,0,0,1877.51,850.104,44.6599,4.7822,3600,3600,0,0,10635,0,0,0),
(@CGUID+44,31011,608,3,1,0,0,1936.07,803.198,53.3749,3.12414,3600,3600,0,0,10635,0,0,0),
-- Azure Raider 31118
(@CGUID+45,31118,608,3,1,0,0,1966.76,780.918,52.4429,1.55334,3600,3600,0,0,42540,0,0,0),
-- Lieutenant Sinclari 32204
(@CGUID+46,32204,608,3,1,0,0,1927.72,800.949,38.721,5.0091,3600,3600,0,0,50400,3994,0,0);

-- addons
DELETE FROM `creature_template_addon` WHERE entry IN (29266,29276,29312,29313,29314,29315,29316,29326,29395,29425,30658,30857,30883,30896,31011,31118,32204);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(29266,0,0,1,0,0,0,NULL),
(29276,0,0,1,0,0,0,NULL),
(29312,0,0,1,0,0,0,NULL),
(29313,0,0,1,0,0,0,NULL),
(29314,0,0,1,0,0,0,NULL),
(29315,0,0,1,0,0,0,NULL),
(29316,0,0,1,0,0,0,NULL),
(29326,0,0,1,0,0,0,NULL),
(29395,0,0,1,0,0,0,NULL),
(29425,0,0,1,0,0,0,NULL),
(30658,0,0,1,0,0,0,NULL),
(30857,0,0,1,0,0,0,NULL),
(30883,0,0,1,0,0,0,NULL),
(30896,0,50331648,1,0,0,8192,NULL),
(31011,0,50331648,1,0,0,8192,NULL),
(31118,0,0,1,0,0,0,NULL),
(32204,0,0,1,0,0,0,NULL);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(@CGUID+7,0,0,1,0,0,0,NULL),
(@CGUID+6,0,0,1,0,0,0,NULL),
(@CGUID+5,0,0,1,0,0,0,NULL),
(@CGUID+44,0,0,1,0,0,0,NULL);

-- INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
-- INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES

INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
-- Erekem Guard 29395 to Erekem 29315
(29395,608,29315,7,0),
-- x to Lieutenant Sinclari 30658
(30660,608,30658,16,0),
(30661,608,30658,16,0),
(30662,608,30658,16,0),
(30663,608,30658,16,0),
(30664,608,30658,16,0),
(30665,608,30658,16,0),
(30666,608,30658,16,0),
(30667,608,30658,16,0),
(30668,608,30658,16,0),
(30695,608,30658,16,0),
(31079,608,30658,16,0),
(31134,608,30658,16,0),
(32191,608,30658,16,0);

-- INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES



-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID+0,191556,608,3,1,1908.06,844.885,41.1377,-0.444615,0,0,-0.220481,0.975391,180,180,0,1),
(@OGUID+1,191557,608,3,1,1921.51,797.133,41.5831,-1.35222,0,0,-0.625764,0.780013,180,180,0,1),
(@OGUID+2,191558,608,3,1,1954.73,822.575,57.172,-1.26667,0,0,-0.591836,0.806058,180,180,0,1),
(@OGUID+3,191559,608,3,1,1957.5,803.284,57.172,-1.60814,0,0,-0.720186,0.693781,180,180,0,1),
(@OGUID+4,191560,608,3,1,1954.31,784.77,57.172,-1.91064,0,0,-0.816499,0.577348,180,180,0,1),
(@OGUID+5,191562,608,3,1,1854.57,860.96,47.6405,0.546741,0,0,0.269978,0.962866,180,180,0,1),
(@OGUID+6,191563,608,3,1,1892.01,871.239,47.6405,-0.05735,0,0,-0.0286711,0.999589,180,180,0,1),
(@OGUID+7,191564,608,3,1,1872.45,868.998,47.6405,0.289969,0,0,0.144477,0.989508,180,180,0,1),
(@OGUID+8,191565,608,3,1,1931.87,859.01,54.923,-0.698129,0,0,-0.342019,0.939693,180,180,0,1),
(@OGUID+9,191566,608,3,1,1847.81,752.476,49.3023,2.44346,0,0,0.939692,0.342021,180,180,0,1),
(@OGUID+10,191606,608,3,1,1895.07,733.715,57.6715,3.14159,0,0,1,0.00000126759,180,180,0,1),
(@OGUID+11,191722,608,3,1,1938.43,754.695,28.7801,2.37934,0,0,0.928246,0.371966,180,180,0,1),
(@OGUID+12,191723,608,3,1,1822.59,803.928,44.3647,3.14159,0,0,1,0.00000126759,180,180,0,0),
(@OGUID+13,192528,608,3,1,1799.99,803.646,45.4529,0,0,0,0,1,180,180,0,1),
(@OGUID+14,192529,608,3,1,1799.99,803.646,45.4529,0,0,0,0,1,180,180,0,1),
(@OGUID+15,193611,608,3,1,1911.34,860.6,48.3596,-2.02458,0,0,-0.848048,0.52992,180,180,0,1),
(@OGUID+16,193611,608,3,1,1917.58,802.5,39,-2.32129,0,0,-0.91706,0.398748,180,180,0,1),
(@OGUID+17,193611,608,3,1,1855,844,40.6313,-1.0821,0,0,-0.515036,0.857168,180,180,0,1),
(@OGUID+18,193611,608,3,1,1846,780.629,40.5764,-0.541051,0,0,-0.267238,0.963631,180,180,0,1),
(@OGUID+19,193611,608,3,1,1940.8,774,53.592,2.49582,0,0,0.948324,0.317305,180,180,0,1),
(@OGUID+20,193615,608,3,1,1828.3,797.309,46.1355,1.48353,0,0,0.67559,0.737277,180,180,0,1);



-- ======
-- EVENTS
-- ======

-- INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
-- INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
-- INSERT INTO `game_event_creature_data` (`guid`, `entry_id`, `modelid`, `equipment_id`, `spell_start`, `spell_end`, `event`) VALUES

-- =======
-- POOLING
-- =======

-- INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
-- INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
-- INSERT INTO `pool_pool` (`entry`, `max_limit`, `description`) VALUES
-- INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
-- INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
-- INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES

-- =========
-- DBSCRIPTS
-- =========

-- INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_spell` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- INSERT INTO `dbscript_string` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
-- INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
