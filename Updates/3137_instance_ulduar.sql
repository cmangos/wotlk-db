
-- Ulduar teleport
-- Antechamber, Shattered walkway, Conservatory of Life, Spark of Imagination
DELETE FROM spell_script_target WHERE entry IN (64014,64032,64031,64028,64030,64029,64024,65061,65042);
INSERT INTO spell_script_target VALUES
-- Expedition camp
(64014,3,6030010,0),
-- Formattion grounds
(64032,3,6030011,0),
-- Colossal Forge
(64028,3,6030008,0),
-- Scapyard
(64031,3,6030012,0),
-- Antechamber of Ulduar
(64030,3,6030013,0),
-- Conservatory of Life
(64024,3,6030009,0),
-- Shattered Hallway
(64029,3,6030007,0),
-- Spart of Imagination
(65061,3,6031366,0),
-- Prison of Yogg
(65042,3,6031402,0);

-- Missing invis trigger
DELETE FROM `creature` WHERE guid=6031402;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecsmin`,`spawntimesecsmax`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(6031402, 32780, 603, 3, 1, 0, 0, 1855.07288, -11.4878473, 334.258972, 0, 180, 180, 0, 0, 42, 0, 0, 0);

-- Set creature as active
UPDATE creature_template SET ExtraFlags=ExtraFlags|4096 WHERE entry=32780;
