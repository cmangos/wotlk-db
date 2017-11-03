-- Missing Spell focuses for Teleport This quests
DELETE FROM `game_event_gameobject` WHERE `guid` IN (121994,121995,121996);
DELETE FROM `gameobject_battleground` WHERE `guid` IN (121994,121995,121996);
DELETE FROM `gameobject` WHERE guid IN (121994,121995,121996);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`,`animprogress`,`state`) VALUES
(121994, 300118, 530, 1, 4697.5, 3298.68, 178.892, 2.02823, 0, 0, 0.849013, 0.528372, 120, 120, 0, 1),
(121995, 300118, 530, 1, 4734.71, 3193.67, 161.48, 0.386745, 0, 0, 0.19217, 0.981362, 120, 120, 0, 1),
(121996, 300118, 530, 1, 4673.28, 3126.67, 166.725, 5.42979, 0, 0, 0.413867, -0.910337, 120, 120, 0, 1);
