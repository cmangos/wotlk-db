/* DBScriptData
DBName: Eye of Eternity
DBScriptName: Eye_of_Eternity.sql
DB%Complete: 50% ? (exported)
DBComment: ReQ:
EndDBScriptData */

SET @CGUID := 6160000; -- creatures
SET @OGUID := 6160000; -- gameobjects
SET @PGUID := 53800;   -- pools

-- =========
-- CREATURES
-- =========

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
-- World Trigger (Large AOI) 22517
(@CGUID+0,22517,616,3,1,0,0,754.395,1301.27,266.254,1.0821,3600,3600,0,0,4120,0,0,0),
-- Malygos 28859
(@CGUID+1,28859,616,3,1,0,0,808.535,1213.55,295.972,3.22503,604800,604800,5,0,6972500,212900,0,2),
-- Vortex 30090
(@CGUID+2,30090,616,3,1,0,0,754.521,1301.23,279.524,0.680678,3600,3600,5,0,12600,0,0,1),
(@CGUID+3,30090,616,3,1,0,0,754.356,1301.48,285.733,5.96903,3600,3600,5,0,12600,0,0,1),
(@CGUID+4,30090,616,3,1,0,0,754.192,1301.18,281.851,5.75959,3600,3600,5,0,12600,0,0,1),
(@CGUID+5,30090,616,3,1,0,0,754.688,1301.8,287.295,1.25664,3600,3600,5,0,12600,0,0,1),
(@CGUID+6,30090,616,3,1,0,0,754.733,1301.51,283.379,5.58505,3600,3600,5,0,12600,0,0,1),
-- Portal (Malygos) 30118
(@CGUID+7,30118,616,3,1,0,0,652.417,1200.52,295.972,0.785398,3600,3600,0,0,7212,0,0,0),
(@CGUID+8,30118,616,3,1,0,0,847.67,1408.05,295.972,3.97935,3600,3600,0,0,7212,0,0,0),
(@CGUID+9,30118,616,3,1,0,0,647.675,1403.8,295.972,5.53269,3600,3600,0,0,7212,0,0,0),
(@CGUID+10,30118,616,3,1,0,0,843.182,1215.42,295.972,2.35619,3600,3600,0,0,7212,0,0,0),
-- Surge of Power 30334
(@CGUID+11,30334,616,3,1,0,0,754.294,1301.19,266.254,4.24115,3600,3600,5,0,12600,0,0,1),
-- Alexstrasza the Life-Binder 31253
(@CGUID+12,31253,616,3,1,0,0,754.255,1301.72,266.253,1.23918,3600,3600,5,0,3052,0,0,1),
-- Alexstrasza's Gift 32448
(@CGUID+13,32448,616,3,1,0,0,754.544,1301.71,220.083,3.9968,3600,3600,5,0,3052,0,0,1);

-- addons
DELETE FROM `creature_template_addon` WHERE entry IN (28859,30090,30118,30334,31253,32448);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(28859,0,50331648,1,0,0,0,NULL),
(30090,0,50331648,1,0,0,8192,'55883'),
(30118,0,50331648,1,0,0,8192,'55949'),
(30334,0,0,1,0,0,8192,NULL),
(31253,0,0,1,0,0,8192,NULL),
(32448,0,50331648,1,0,0,8192,NULL);

INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(@CGUID+11,0,0,1,0,0,8192,NULL);

DELETE FROM `creature_movement_template` WHERE entry IN (28859);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
-- Malygos 28859
(28859,0,1,812.73,1391.67,283.276,0,0,0),
(28859,0,2,848.291,1358.61,283.276,0,0,0),
(28859,0,3,853.923,1307.91,283.276,0,0,0),
(28859,0,4,847.144,1265.54,283.276,0,0,0),
(28859,0,5,839.923,1245.24,283.276,0,0,0),
(28859,0,6,827.346,1221.82,283.276,0,0,0),
(28859,0,7,803.273,1203.85,283.276,0,0,0),
(28859,0,8,772.937,1197.98,283.276,0,0,0),
(28859,0,9,732.114,1200.65,283.276,0,0,0),
(28859,0,10,693.876,1217.99,283.276,0,0,0),
(28859,0,11,664.504,1256.54,283.276,0,0,0),
(28859,0,12,650.15,1303.48,283.276,0,0,0),
(28859,0,13,662.911,1350.29,283.276,0,0,0),
(28859,0,14,677.639,1377.61,283.276,0,0,0),
(28859,0,15,704.82,1401.16,283.276,0,0,0),
(28859,0,16,755.264,1417.1,283.276,0,0,0);

-- INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES

INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(30245,616,28859,4096,0),
(30249,616,28859,4096,0);

-- INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES


-- ===========
-- GAMEOBJECTS
-- ===========

INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(@OGUID+0,193070,616,3,1,754.346,1300.87,256.249,3.14159,0,0,1,0.00000126759,180,180,255,1),
(@OGUID+1,193908,616,3,1,724.684,1332.92,267.234,-0.802851,0,0,-0.390731,0.920505,180,180,0,1),
(@OGUID+2,193958,616,1,1,754.255,1301.72,266.17,-1.6057,0,0,-0.719339,0.694659,180,180,255,1), -- normal
(@OGUID+3,193960,616,2,1,754.255,1301.72,266.17,-1.6057,0,0,-0.719339,0.694659,180,180,255,1); -- heroic

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

DELETE FROM `dbscripts_on_creature_death` WHERE `id` IN (28859);
INSERT INTO `dbscripts_on_creature_death` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(28859,0,18,10000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Despawn Self');

-- INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
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
