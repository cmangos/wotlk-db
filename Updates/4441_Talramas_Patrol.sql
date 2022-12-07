-- Borean Tundra - Talramas - Talramas Abomination 25684 - 2x Bone Warrior 26126 - Patrol

-- Bone Warrior 26126
-- missing added
DELETE FROM creature_addon WHERE guid IN (523843,523887);
DELETE FROM creature_movement WHERE id IN (523843,523887);
DELETE FROM game_event_creature WHERE guid IN (523843,523887);
DELETE FROM game_event_creature_data WHERE guid IN (523843,523887);
DELETE FROM creature_battleground WHERE guid IN (523843,523887);
DELETE FROM creature_linking WHERE guid IN (523843,523887)
OR master_guid IN (523843,523887);
DELETE FROM creature WHERE guid IN (523843,523887);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(523843,26126,571,1,1,0,0,4454.9585,4592.2236,84.96143,0,300,300,0,0,0,0,0,0),
(523887,26126,571,1,1,0,0,4454.9585,4592.2236,84.96143,0,300,300,0,0,0,0,0,0);
-- Moon Priestess Amara 2151 & Huntress Nhemai 10604 & Huntress Yaeliura 10606
UPDATE creature SET position_x = 4454.9585, position_y = 4592.2236, position_z = 84.96143, MovementType = 0, spawndist = 0 WHERE guid = 510892;
DELETE FROM `spawn_group` WHERE id = 30500;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(30500, 'Borean Tundra - Talramas - Talramas Abomination 25684 - 2x Bone Warrior 26126 - Patrol', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 30500;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(30500, 510892, 0), -- Talramas Abomination 25684
(30500, 523843, 1), -- Bone Warrior 26126
(30500, 523887, 2); -- Bone Warrior 26126
DELETE FROM `spawn_group_formation` WHERE id = 30500;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(30500, 3, 7, 0, 30500, 4, 'Borean Tundra - Talramas - Talramas Abomination 25684 - 2x Bone Warrior 26126 - Patrol');
DELETE FROM `waypoint_path_name` WHERE PathId = 30500;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(30500,'Borean Tundra - Talramas - Talramas Abomination 25684 - 2x Bone Warrior 26126 - Patrol');
DELETE FROM `waypoint_path` WHERE PathId = 30500;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(30500,1,4454.9585,4592.2236,84.96143,100,0,0),
(30500,2,4451.355,4619.928,65.967735,100,0,0),
(30500,3,4428.32,4659.13,49.3776,100,0,0),
(30500,4,4420.66,4688.46,38.0631,100,0,0),
(30500,5,4408.596,4717.127,23.028269,100,0,0),
(30500,6,4381.0522,4728.3984,20.926043,100,0,0),
(30500,7,4314.5337,4718.598,25.287563,100,0,0),
(30500,8,4295.725,4715.726,20.30733,100,0,0),
(30500,9,4273.89,4716.0625,11.737383,100,0,0),
(30500,10,4251.1875,4722.97,11.841642,100,0,0),
(30500,11,4226.979,4735.2207,11.822561,100,0,0),
(30500,12,4209.254,4740.4653,11.822561,100,0,0),
(30500,13,4182.888,4737.6685,11.7768955,100,0,0),
(30500,14,4166.42,4732.9463,11.841645,100,0,0),
(30500,15,4147.4946,4720.488,11.841645,100,0,0),
(30500,16,4132.0557,4701.5044,11.795987,100,0,0),
(30500,17,4116.2837,4679.295,11.841645,100,0,0),
(30500,18,4111.6196,4652.492,12.18979,100,0,0),
(30500,19,4105.8794,4625.4673,11.841645,100,0,0),
(30500,20,4106.5234,4605.687,11.841645,100,0,0),
(30500,21,4115.304,4586.7993,11.841645,100,0,0),
(30500,22,4130.648,4574.958,12.380219,100,0,0),
(30500,23,4153.1978,4567.546,11.841645,100,0,0),
(30500,24,4184.4453,4566.4834,12.928123,100,0,0),
(30500,25,4205.152,4561.4087,25.099194,100,0,0),
(30500,26,4218.5586,4545.5874,27.468578,100,0,0),
(30500,27,4234.188,4533.704,32.59323,100,0,0),
(30500,28,4252.2573,4513.5757,40.6485,100,0,0),
(30500,29,4266.2363,4499.9517,39.675545,100,0,0),
(30500,30,4285.6973,4488.523,47.97955,100,0,0),
(30500,31,4313.443,4473.155,60.28211,100,0,0),
(30500,32,4333.0205,4466.3022,67.24838,100,0,0),
(30500,33,4353.06,4467.3057,76.65552,100,0,0),
(30500,34,4371.3696,4465.4233,82.98289,100,0,0),
(30500,35,4385.01,4476.669,87.059525,100,0,0),
(30500,36,4380.082,4491.2446,83.760086,100,0,0),
(30500,37,4363.0034,4497.781,87.97925,100,0,0);
