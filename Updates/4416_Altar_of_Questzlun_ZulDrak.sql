-- Altar of Questz'lun - Zul'Drak

-- Spirit of Quetz'lun 28785
-- summoned via script
DELETE FROM creature WHERE guid=523466;
DELETE FROM creature_addon WHERE guid=523466;
DELETE FROM creature_movement WHERE Id=523466;
DELETE FROM game_event_creature WHERE guid=523466;
DELETE FROM game_event_creature_data WHERE guid=523466;
DELETE FROM creature_battleground WHERE guid=523466;
DELETE FROM creature_linking WHERE guid=523466
 OR master_guid=523466;

-- Scion of Quetz'lun 28477
-- missing added
DELETE FROM creature_addon WHERE guid IN (535229,535230);
DELETE FROM creature_movement WHERE id IN (535229,535230);
DELETE FROM game_event_creature WHERE guid IN (535229,535230);
DELETE FROM game_event_creature_data WHERE guid IN (535229,535230);
DELETE FROM creature_battleground WHERE guid IN (535229,535230);
DELETE FROM creature_linking WHERE guid IN (535229,535230)
OR master_guid IN (535229,535230);
DELETE FROM creature WHERE guid IN (535229,535230);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(535229,28477,571,1,1,0,0,5815.07,-4312.76,373.996,4.93954,300,300,7,0,0,0,0,1),
(535230,28477,571,1,1,0,0,5838.88,-4238.73,361.861,1.30731,300,300,7,0,0,0,0,1);
UPDATE creature SET position_x = 5652.625488, position_y = -4371.879883, position_z = 386.285370, spawndist = 7, MovementType = 1 WHERE guid = 522938;
UPDATE creature SET position_x = 5716.925781, position_y = -4277.476074, position_z = 373.995209, spawndist = 7, MovementType = 1 WHERE guid = 522949;
UPDATE creature SET position_x = 5590.375488, position_y = -4478.975098, position_z = 373.995941, spawndist = 7, MovementType = 1 WHERE guid = 522948;
UPDATE creature SET position_x = 5649.468750, position_y = -4453.186523, position_z = 385.801666, spawndist = 7, MovementType = 1 WHERE guid = 522939;
UPDATE creature SET position_x = 5784.157227, position_y = -4456.673340, position_z = 385.801880, spawndist = 7, MovementType = 1 WHERE guid = 522934;
UPDATE creature SET position_x = 5656.455078, position_y = -4277.182617, position_z = 374.246704, spawndist = 7, MovementType = 1 WHERE guid = 522936;
UPDATE creature SET position_x = 5840.522461, position_y = -4416.951172, position_z = 374.110962, spawndist = 7, MovementType = 1 WHERE guid = 522937;
UPDATE creature SET position_x = 5554.464844, position_y = -4217.584961, position_z = 367.507568, spawndist = 10, MovementType = 1 WHERE guid = 522946;
UPDATE creature SET position_x = 5716.424, position_y = -4076.297, position_z = 353.2688, spawndist = 0, MovementType = 4 WHERE guid = 522942;
UPDATE creature SET position_x = 5566.362, position_y = -4218.522, position_z = 367.6009, spawndist = 0, MovementType = 4 WHERE guid = 522932;
-- waypoints
DELETE FROM creature_movement WHERE id IN (522942,522932); -- moved to formations
INSERT INTO creature_movement (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
-- 522942
(522942,1,5716.424,-4076.297,353.2688,100,0,0),
(522942,2,5716.905,-4099.453,353.2688,100,0,0),
(522942,3,5716.278,-4118.028,353.2688,100,0,0),
(522942,4,5715.866,-4133.016,353.2688,100,0,0),
(522942,5,5716.534,-4165.779,353.9121,100,0,0),
(522942,6,5715.816,-4183.864,354.3399,100,0,0),
(522942,7,5717.188,-4208.333,362.7362,100,0,0),
(522942,8,5716.556,-4220.69,362.8612,100,0,0);
-- Spawn group + formation
-- Scion of Quetz'lun 28477 & Altar Warden 28784
DELETE FROM `spawn_group` WHERE id = 30015;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(30015, 'Zul\'Drak - Altar of Questz\'lun: Scion of Quetz\'lun 28477 - Altar Warden 28784 - Patrol', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 30015;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(30015, 522932, 0), -- Scion of Quetz'lun 28477
(30015, 523449, 1); -- Altar Warden 28784
DELETE FROM `spawn_group_formation` WHERE id = 30015;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(30015, 1, 7, 0, 30015, 0, 'Zul\'Drak - Altar of Questz\'lun: Scion of Quetz\'lun 28477 - Altar Warden 28784 - Patrol');
DELETE FROM `waypoint_path_name` WHERE PathId = 30015;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(30015,'Zul\'Drak - Altar of Questz\'lun: Scion of Quetz\'lun 28477 - Altar Warden 28784 - Patrol');
DELETE FROM `waypoint_path` WHERE PathId = 30015;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(30015,1,5566.362,-4218.522,367.6009,100,0,0),
(30015,2,5586.893,-4219.031,368.6462,100,0,0),
(30015,3,5600.557,-4219.778,366.9977,100,0,0),
(30015,4,5618.124,-4219.374,363.4977,100,0,0),
(30015,5,5633.584,-4219.686,362.8758,100,0,0),
(30015,6,5652.746,-4219.533,362.8758,100,0,0),
(30015,7,5683.596,-4220.363,362.8123,100,0,0),
(30015,8,5699.571,-4220.678,362.8123,100,0,0),
(30015,9,5715.237,-4221.083,362.8612,100,0,0),
(30015,10,5741.47,-4221.41,362.651,100,0,0),
(30015,11,5766.562,-4221.095,361.516,100,0,0),
(30015,12,5783.814,-4220.904,361.266,100,0,0),
(30015,13,5798.88,-4221.15,362.108,100,0,0),
(30015,14,5820.34,-4221.45,362.63,100,0,0),
(30015,15,5848.9,-4221.36,360.878,100,0,0);

-- Altar Warden 28784
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 535231 AND 535236;
DELETE FROM creature_movement WHERE id BETWEEN 535231 AND 535236;
DELETE FROM game_event_creature WHERE guid BETWEEN 535231 AND 535236;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535231 AND 535236;
DELETE FROM creature_battleground WHERE guid BETWEEN 535231 AND 535236;
DELETE FROM creature_linking WHERE guid BETWEEN 535231 AND 535236
OR master_guid BETWEEN 535231 AND 535236;
DELETE FROM creature WHERE guid BETWEEN 535231 AND 535236;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(535231,28784,571,1,1,0,0,5790.74,-4270.35,373.026,0.9948376,300,300,0,0,0,0,0,0),
(535232,28784,571,1,1,0,0,5646.833,-4378.769,385.9265,1.58825,300,300,0,0,0,0,0,4),
(535233,28784,571,1,1,0,0,5840.596,-4345.647,374.0784,1.553343,300,300,0,0,0,0,0,0),
(535234,28784,571,1,1,0,0,5849.13,-4294.457,368.9546,5.986479,300,300,0,0,0,0,0,0),
(535235,28784,571,1,1,0,0,5597.746,-4151.425,362.7222,3.141593,300,300,0,0,0,0,0,0),
(535236,28784,571,1,1,0,0,5755.827,-4312.339,374.0784,1.58825,300,300,0,0,0,0,0,0);
UPDATE creature SET position_x = 5815.66, position_y = -4177.14, position_z = 353.73, orientation = 3.110503, spawndist = 0, MovementType = 4 WHERE guid = 523455;
UPDATE creature SET position_x = 5566.362, position_y = -4218.522, position_z = 367.6009, spawndist = 0, MovementType = 0 WHERE guid = 523449;
UPDATE creature SET position_x = 5788.87, position_y = -4383.762, position_z = 386.4994, spawndist = 0, MovementType = 4 WHERE guid = 523458;
UPDATE creature SET position_x = 5814.34, position_y = -4115.92, position_z = 353.162, spawndist = 0, MovementType = 4 WHERE guid = 523461;
UPDATE creature SET position_x = 5590.89, position_y = -4360.1, position_z = 373.996, spawndist = 0, MovementType = 4 WHERE guid = 523450;
UPDATE creature SET position_x = 5590.89, position_y = -4360.1, position_z = 373.996, spawndist = 0, MovementType = 4 WHERE guid = 523457;
-- waypoints
DELETE FROM creature_movement WHERE id IN (535232,523450,523458,523461,523455,523457);
INSERT INTO creature_movement (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
-- 535232
(535232,1,5646.833,-4378.769,385.9265,100,0,0),
(535232,2,5645.918,-4399.209,385.9265,100,0,0),
(535232,3,5645.585,-4417.915,385.8067,100,0,0),
(535232,4,5645.652,-4433.37,385.8267,100,0,0),
(535232,5,5645.97,-4449.309,385.8267,100,0,0),
(535232,6,5645.405,-4466.635,386.0767,100,0,0),
(535232,7,5644.552,-4488.913,385.9549,100,0,0),
-- 523450
(523450,1,5590.89,-4360.1,373.996,100,0,0),
(523450,2,5591.22,-4378.5,373.996,100,0,0),
(523450,3,5590.9,-4395.97,373.996,100,0,0),
(523450,4,5589.676,-4417.629,375.6486,100,0,0),
(523450,5,5589.184,-4432.455,374.0443,100,0,0),
(523450,6,5589.366,-4450.836,374.1485,100,0,0),
(523450,7,5589.078,-4465.982,374.0235,100,0,0),
(523450,8,5588.974,-4482.908,374.0142,100,0,0),
-- 523455;
(523455,1,5815.66,-4177.14,353.73,100,0,0),
(523455,2,5782.63,-4177.32,353.434,100,0,0),
(523455,3,5766.62,-4176.847,353.2013,100,0,0),
(523455,4,5750.304,-4176.135,354.0763,100,0,0),
(523455,5,5735.139,-4177.029,355.7013,100,0,0),
(523455,6,5719.562,-4176.542,354.3399,100,0,0),
(523455,7,5681.787,-4178.457,353.5242,100,0,0),
(523455,8,5668.155,-4179.481,353.2742,100,0,0),
(523455,9,5652.489,-4180.12,353.9466,100,0,0),
(523455,10,5633.114,-4180.623,358.1201,100,0,0),
(523455,11,5607.682,-4179.538,364.6201,100,0,0),
-- 523457
(523457,1,5842.63,-4508,376.168,100,0,0),
(523457,2,5843.19,-4489.91,375.578,100,0,0),
(523457,3,5843.46,-4472.42,375.386,100,0,0),
(523457,4,5843.483,-4448.838,374.0789,100,0,0),
(523457,5,5843.611,-4433.374,374.0789,100,0,0),
(523457,6,5845.159,-4416.106,374.7704,100,0,0),
(523457,7,5844.595,-4400.002,374.5204,100,0,0),
(523457,8,5844.48,-4373.26,373.995,100,0,0),
-- 523458
(523458,1,5788.87,-4383.762,386.4994,100,0,0),
(523458,2,5789.05,-4399.803,386.6244,100,0,0),
(523458,3,5789.546,-4416.627,386.4262,100,0,0),
(523458,4,5789.12,-4433.648,386.8014,100,0,0),
(523458,5,5789.221,-4451.756,385.9264,100,0,0),
(523458,6,5788.772,-4467.588,385.8587,100,0,0),
(523458,7,5789.116,-4483.338,385.9837,100,0,0),
(523458,8,5788.136,-4500.305,387.941,100,0,0),
-- 523461
(523461,1,5814.34,-4115.92,353.162,100,0,0),
(523461,2,5799.894,-4115.554,353.2197,100,0,0),
(523461,3,5782.043,-4115.694,353.2197,100,0,0),
(523461,4,5766.734,-4115.959,353.2197,100,0,0),
(523461,5,5752.041,-4115.97,353.2023,100,0,0),
(523461,6,5733.34,-4115.068,353.2023,100,0,0),
(523461,7,5717.967,-4114.791,353.5188,100,0,0),
(523461,8,5699.671,-4115.588,353.3376,100,0,0),
(523461,9,5682.364,-4115.136,353.2126,100,0,0),
(523461,10,5666.541,-4116.042,353.3477,100,0,0),
(523461,11,5649.379,-4115.086,353.2227,100,0,0),
(523461,12,5633.37,-4114.1,353.2227,100,0,0),
(523461,13,5618.664,-4115.493,353.1671,100,0,0);

-- Altar of Quetz'lun Gateway 28478
UPDATE creature SET spawndist=0, MovementType=0 WHERE guid=522951;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28478);
UPDATE creature_template_addon SET auras = 51715 WHERE entry = 28478;
