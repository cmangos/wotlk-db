-- Heb'Drakkar - Zul'Drak

-- Heb'Jin 28636 & Heb'Jin's Bat 28639
-- summoned via script
DELETE FROM creature WHERE guid IN (523130,523131,523132,523133);
DELETE FROM creature_addon WHERE guid IN (523130,523131,523132,523133);
DELETE FROM creature_movement WHERE Id IN (523130,523131,523132,523133);
DELETE FROM game_event_creature WHERE guid IN (523130,523131,523132,523133);
DELETE FROM game_event_creature_data WHERE guid IN (523130,523131,523132,523133);
DELETE FROM creature_battleground WHERE guid IN (523130,523131,523132,523133);
DELETE FROM creature_linking WHERE guid IN (523130,523131,523132,523133)
 OR master_guid IN (523130,523131,523132,523133);

-- Heb'Drakkar Headhunter 28600
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 535237 AND 535239;
DELETE FROM creature_movement WHERE id BETWEEN 535237 AND 535239;
DELETE FROM game_event_creature WHERE guid BETWEEN 535237 AND 535239;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535237 AND 535239;
DELETE FROM creature_battleground WHERE guid BETWEEN 535237 AND 535239;
DELETE FROM creature_linking WHERE guid BETWEEN 535237 AND 535239
OR master_guid BETWEEN 535237 AND 535239;
DELETE FROM creature WHERE guid BETWEEN 535237 AND 535239;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(535237,28600,571,1,1,0,0,6046.528,-4035.256,363.8747,4.799655,300,300,0,0,0,0,0,0),
(535238,28600,571,1,1,0,0,5879.156,-3678.521,373.5202,2.435495,300,300,0,0,0,0,0,2),
(535239,28600,571,1,1,0,0,6081.336,-4017.902,364.1266,5.393067,300,300,0,0,0,0,0,0);
-- addon
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` where `id` = 28600);
DELETE FROM `creature_template_addon` WHERE `entry` = 28600;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(28600,0,0,1,0,333,0,NULL);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (523114,523120,523119,535238);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(523114,0,0,1,0,0,0,NULL),
(523120,0,0,1,0,0,0,NULL),
(523119,0,0,1,0,375,0,NULL), -- near Drum
(535238,0,0,1,0,0,0,NULL);
-- one has diff equipment
DELETE FROM `creature_spawn_data_template` WHERE entry IN (20039);
INSERT INTO `creature_spawn_data_template` (`Entry`, `EquipmentId`) VALUES 
(20039,354);
DELETE FROM `creature_spawn_data` WHERE `Guid` IN (523119);
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES
(523119,20039);
UPDATE creature SET position_x = 5901.876, position_y = -3688.484, position_z = 368.9826, orientation = 0, spawndist = 0, MovementType = 4 WHERE guid = 523114;
UPDATE creature SET position_x = 6005.937, position_y = -3797.642, position_z = 362.3418, orientation = 0, spawndist = 0, MovementType = 4 WHERE guid = 523120;
-- waypoints
DELETE FROM creature_movement WHERE id IN (535238,523114,523120);
INSERT INTO creature_movement (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
-- 535238
(535238,1,5879.156,-3678.521,373.5202,100,5000,5),
(535238,2,5861.944,-3650.029,373.1118,100,0,0),
(535238,3,5851.053,-3640.044,377.6118,100,10000,20),
-- 523114
(523114,1,5901.876,-3688.484,368.9826,100,0,0),
(523114,2,5885.608,-3702.736,368.0851,100,0,0),
(523114,3,5868.632,-3720.228,364.5851,100,0,0),
(523114,4,5855.248,-3733.588,363.8351,100,0,0),
(523114,5,5835.647,-3756.13,363.8351,100,0,0),
(523114,6,5819.815,-3781.046,362.0851,100,0,0),
(523114,7,5801.563,-3802.158,362.0851,100,0,0),
-- 523120
(523120,1,6005.937,-3797.642,362.3418,100,0,0),
(523120,2,6029.78,-3804.448,365.692,100,0,0),
(523120,3,6055.831,-3830.752,367.4436,100,0,0),
(523120,4,6079.955,-3858.63,370.3512,100,0,0),
(523120,5,6095.668,-3877.434,373.7966,100,0,0),
(523120,6,6096.148,-3902.963,373.3476,100,0,0);

-- Heb'Drakkar Striker 28465
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 535240 AND 535242;
DELETE FROM creature_movement WHERE id BETWEEN 535240 AND 535242;
DELETE FROM game_event_creature WHERE guid BETWEEN 535240 AND 535242;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535240 AND 535242;
DELETE FROM creature_battleground WHERE guid BETWEEN 535240 AND 535242;
DELETE FROM creature_linking WHERE guid BETWEEN 535240 AND 535242
OR master_guid BETWEEN 535240 AND 535242;
DELETE FROM creature WHERE guid BETWEEN 535240 AND 535242;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(535240,28465,571,1,1,0,0,6060.52,-3926.778,371.7226,2.4353,300,300,10,0,0,0,0,1),
(535241,28465,571,1,1,0,0,6046.955,-3987.342,364.4018,5.592615,300,300,10,0,0,0,0,1),
(535242,28465,571,1,1,0,0,6100.415,-3969.635,375.2794,4.048677,300,300,10,0,0,0,0,1);
-- addon
UPDATE creature_template SET InhabitType=3 WHERE entry IN(28465);
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` where `id` = 28465);
DELETE FROM `creature_template_addon` WHERE `entry` = 28465;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES
(28465,9074,0,1,0,0,0,NULL);
UPDATE `creature_model_info` SET `modelid_alternative` = 27816 WHERE `modelid` = 27817;
UPDATE `creature_model_info` SET `modelid_alternative` = 27817 WHERE `modelid` = 27816;
UPDATE creature SET position_x = 5921.605, position_y = -3728.166, position_z = 400.3763, orientation = 3.95, spawndist = 0, MovementType = 3 WHERE guid = 522884;
UPDATE creature SET position_x = 5879.123, position_y = -3724.102, position_z = 372.4887, orientation = 0.85, spawndist = 0, MovementType = 3 WHERE guid = 522890;
UPDATE creature SET position_x = 5921.5, position_y = -3765.989, position_z = 374.9324, orientation = 3.917, spawndist = 0, MovementType = 3 WHERE guid = 522877;
UPDATE creature SET position_x = 5875.630859, position_y = -3786.325439, position_z = 361.960602, spawndist = 10, MovementType = 1 WHERE guid = 522891;
DELETE FROM `creature_spawn_data` WHERE `Guid` IN (522884,522890,522877);
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES
(522884,3),
(522890,3),
(522877,3);
-- waypoints
DELETE FROM creature_movement WHERE id IN (522884,522890,522877);
INSERT INTO creature_movement (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
-- 522884
(522884,1,5921.605,-3728.166,400.3763,100,0,0),
(522884,2,5884.76,-3766.253,400.3763,100,0,0),
(522884,3,5829.903,-3816.363,400.3763,100,0,0),
(522884,4,5780.513,-3826.902,400.3763,100,0,0),
(522884,5,5757.299,-3777.361,400.3763,100,0,0),
(522884,6,5768.036,-3712.474,400.3763,100,0,0),
(522884,7,5829.484,-3646.066,400.3763,100,0,0),
(522884,8,5890.646,-3624.876,400.3763,100,0,0),
(522884,9,5934.203,-3649.108,400.3763,100,0,0),
(522884,10,5945.9,-3694.907,400.3763,100,0,0),
-- 522890
(522890,1,5879.123,-3724.102,372.4887,100,0,0),
(522890,2,5879.842,-3723.407,372.4887,100,0,0),
(522890,3,5879.836,-3723.375,375.2218,100,0,0),
(522890,4,5906.519,-3689.992,375.2218,100,0,0),
(522890,5,5948.156,-3694.748,375.2218,100,0,0),
(522890,6,5986.213,-3743.16,378.7217,100,0,0),
(522890,7,5997.71,-3803.245,384.4437,100,0,0),
(522890,8,5971.092,-3866.247,390.9993,100,0,0),
(522890,9,5896.79,-3922.004,386.9997,100,0,0),
(522890,10,5846.834,-3912.559,378.9444,100,0,0),
(522890,11,5803.362,-3868.981,376.3888,100,0,0),
(522890,12,5803.009,-3817.947,376.0551,100,0,0),
(522890,13,5839.454,-3767.71,375.8884,100,0,0),
-- 522877
(522877,1,5921.5,-3765.989,374.9324,100,0,0),
(522877,2,5892.009,-3795.872,373.1823,100,0,0),
(522877,3,5894.135,-3870.949,381.9322,100,0,0),
(522877,4,5936.053,-3933.146,399.9323,100,0,0),
(522877,5,5992.458,-3987.915,399.9323,100,0,0),
(522877,6,6035.393,-3982.346,382.6824,100,0,0),
(522877,7,6084.954,-3923.611,382.6824,100,0,0),
(522877,8,6090.311,-3870.813,401.8766,100,0,0),
(522877,9,6015.035,-3792.965,401.8766,100,0,0),
(522877,10,5975.414,-3758.667,379.6266,100,0,0);