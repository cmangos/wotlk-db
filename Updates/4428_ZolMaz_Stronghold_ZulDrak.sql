-- Zol'Maz Stronghold - Zul'Drak

-- Zol'Maz Stronghold Cache 190836
DELETE FROM `spawn_group` WHERE id = 30019;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(30019, 'Zul\'Drak - Zol\'Maz Stronghold Cache 190836', 1, 25, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 30019;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(30019,506290,0),(30019,506291,0),(30019,506292,0),(30019,506293,0),(30019,506294,0),
(30019,506295,0),(30019,506296,0),(30019,506297,0),(30019,506298,0),(30019,506299,0),
(30019,506300,0),(30019,506301,0),(30019,506302,0),(30019,506303,0),(30019,506304,0),
(30019,506305,0),(30019,506306,0),(30019,506307,0),(30019,506308,0),(30019,506309,0),
(30019,506310,0),(30019,506311,0),(30019,506312,0),(30019,506313,0),(30019,506314,0),
(30019,506315,0),(30019,512920,0),(30019,512921,0),(30019,513195,0),(30019,513196,0),
(30019,513197,0),(30019,513198,0),(30019,513199,0),(30019,513200,0),(30019,513201,0),
(30019,513202,0),(30019,513203,0),(30019,513204,0),(30019,513205,0),(30019,513206,0),
(30019,513207,0),(30019,513208,0),(30019,513209,0),(30019,513210,0),(30019,513211,0),
(30019,513212,0),(30019,513213,0),(30019,513466,0),(30019,513467,0),(30019,514498,0);

-- Gate Lever 190834
DELETE FROM dbscripts_on_go_template_use WHERE id IN (190834);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(190834,1,11,0,0,0,190784,100,7,0,0,0,0,0,0,0,0,'open door');

-- Zol'Maz Stronghold Cache 190836
DELETE FROM dbscripts_on_spell WHERE id IN (52644);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52644,1,15,52645,0,0,0,0,2,52647,52652,0,0,0,0,0,0,'cast random spell on Player');

-- Drek'Maz 28918
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` where `id` = 28918);
DELETE FROM `creature_template_addon` WHERE `entry` = 28918;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(28918,0,0,1,0,333,0,NULL);

-- Warlord Zol'Maz 28902
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` where `id` = 28902);
DELETE FROM `creature_template_addon` WHERE `entry` = 28902;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(28902,0,0,1,0,0,0,52679);

-- Enchanted Tiki Dervish 28927
UPDATE creature_template SET MinLevel = 77, MaxLevel = 77, MinLevelHealth = 22758, MaxLevelHealth = 22758, EquipmentTemplateId = 839 WHERE entry IN (28927);

-- Enchanted Tiki Warrior 28882
-- missing added
DELETE FROM creature_addon WHERE guid = 535262;
DELETE FROM creature_movement WHERE id = 535262;
DELETE FROM game_event_creature WHERE guid = 535262;
DELETE FROM game_event_creature_data WHERE guid = 535262;
DELETE FROM creature_battleground WHERE guid = 535262;
DELETE FROM creature_linking WHERE guid = 535262
OR master_guid = 535262;
DELETE FROM creature WHERE guid = 535262;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(535262,28882,571,1,1,0,0,6426.75,-3865.94,470.755,3.14862,300,300,7,0,0,0,0,1);
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` where `id` = 28882);
DELETE FROM `creature_template_addon` WHERE `entry` = 28882;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(28882,0,0,1,0,375,0,'52614 52619 54647');
UPDATE creature SET position_x = 6426.066406, position_y = -3935.365723, position_z = 470.720551, spawndist = 7, MovementType = 1 WHERE guid = 523793;
UPDATE creature SET position_x = 6488.478516, position_y = -3899.981689, position_z = 483.636139, spawndist = 10, MovementType = 1 WHERE guid = 523763;
UPDATE creature SET position_x = 6468.863281, position_y = -3929.798828, position_z = 482.336670, spawndist = 10, MovementType = 1 WHERE guid = 523774;
UPDATE creature SET position_x = 6506.950195, position_y = -3958.954102, position_z = 482.233185, spawndist = 10, MovementType = 1 WHERE guid = 523762;
UPDATE creature SET position_x = 6472.831543, position_y = -3866.178955, position_z = 482.236420, spawndist = 10, MovementType = 1 WHERE guid = 523776;
UPDATE creature SET position_x = 6494.484863, position_y = -4046.659424, position_z = 470.137634, spawndist = 10, MovementType = 1 WHERE guid = 523769;
UPDATE creature SET position_x = 6411.118164, position_y = -3901.208008, position_z = 470.715942, spawndist = 10, MovementType = 1 WHERE guid = 523787;
UPDATE creature SET position_x = 6534.953125, position_y = -4073.258789, position_z = 469.662994, spawndist = 10, MovementType = 1 WHERE guid = 523767;
UPDATE creature SET position_x = 6426.341797, position_y = -3831.322754, position_z = 470.715637, spawndist = 10, MovementType = 1 WHERE guid = 523779;
UPDATE creature SET position_x = 6433.228027, position_y = -3978.125977, position_z = 470.715820, spawndist = 15, MovementType = 1 WHERE guid = 523799; -- large rawdist between points
UPDATE creature SET position_x = 6554.081, position_y = -3890.057, position_z = 491.2933, orientation = 3.193953, spawndist = 0, MovementType = 0 WHERE guid = 523780;
UPDATE creature SET position_x = 6440.438, position_y = -3900.439, position_z = 470.8396, orientation = 2.984513, spawndist = 0, MovementType = 0 WHERE guid = 523784;
UPDATE creature SET position_x = 6545.776, position_y = -3860.771, position_z = 491.4198, orientation = 1.553343, spawndist = 0, MovementType = 0 WHERE guid = 523786;
UPDATE creature SET position_x = 6432.435, position_y = -3806.216, position_z = 470.7986, orientation = 4.677482, spawndist = 0, MovementType = 0 WHERE guid = 523778;
UPDATE creature SET position_x = 6390.466, position_y = -3772.855, position_z = 473.2102, orientation = 3.124139, spawndist = 0, MovementType = 0 WHERE guid = 523759;
UPDATE creature SET position_x = 6390.068, position_y = -3809.896, position_z = 473.1978, orientation = 3.089233, spawndist = 0, MovementType = 0 WHERE guid = 523781;
UPDATE creature SET position_x = 6389.129, position_y = -3839.675, position_z = 473.3501, orientation = 3.001966, spawndist = 0, MovementType = 0 WHERE guid = 523785;

-- q.12712 'The Key of Warlord Zol'Maz'
DELETE FROM dbscripts_on_event WHERE id IN (18940);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(18940,50,31,28902,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 28902 - terminate if not found'),
(18940,100,15,52353,0,0,28902,100,3,0,0,0,0,0,0,0,0,'buddy cast 52353 -> Player'),
(18940,101,0,0,0,0,28902,100,3,29040,0,0,0,0,0,0,0,'buddy Say -> Player'),
(18940,1001,1,15,0,0,28902,100,7,0,0,0,0,0,0,0,0,'buddy emote'),
(18940,6000,11,0,0,0,190784,100,7,0,0,0,0,0,0,0,0,'190784 - open door'),
(18940,8000,0,0,0,0,28902,100,3,29041,0,0,0,0,0,0,0,'buddy Say -> Player'),
(18940,8001,16,6200,0,0,28902,100,3,0,0,0,0,0,0,0,0,'buddy Sound -> Player'),
(18940,8010,48,256,0,0,28902,100,7,0,0,0,0,0,0,0,0,'buddy Sound Remove UnitFLags'),
(18940,8500,26,0,0,0,28902,100,3,0,0,0,0,0,0,0,0,'buddy attack -> Player');
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` IN (29040,29041);

