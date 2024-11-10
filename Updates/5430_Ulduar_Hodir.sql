-- Ulduar: Boss encounter Hodir
DELETE FROM `creature_spell_list` WHERE `Id`  IN (3284500, 3284600);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(3284500, 0, 61968, 50000, 50000, 40000, 40000, 2,   0,     0, 100, 1, 'Hodir 10 - Flash Freeze'),
(3284500, 1, 62478, 70000, 70000, 60000, 60000, 0,   0, 29281, 100, 1, 'Hodir 10 - Frozen Blows'),
(3284500, 2, 62469, 25000, 30000, 15000, 15000, 2, 100,     0, 100, 1, 'Hodir 10 - Freeze'),
(3284600, 0, 61968, 50000, 50000, 40000, 40000, 2,   0,     0, 100, 1, 'Hodir 25 - Flash Freeze'),
(3284600, 1, 63512, 70000, 70000, 60000, 60000, 0,   0, 29281, 100, 1, 'Hodir 25 - Frozen Blows'),
(3284600, 2, 62469, 25000, 30000, 15000, 15000, 2, 100,     0, 100, 1, 'Hodir 25 - Freeze');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (3284500, 3284600);
INSERT INTO `creature_spell_list_entry` VALUES
(3284500, 'Ulduar - Hodir (10)', 100, 100),
(3284600, 'Ulduar - Hodir (25)', 100, 100);

DELETE FROM `string_id` WHERE `Name`='ULDUAR_HODIR_HELPERS';
INSERT INTO `string_id` VALUES
(6030701,'ULDUAR_HODIR_HELPERS');

DELETE FROM `string_id` WHERE `Name`='ULDUAR_HODIR_FIRES';
INSERT INTO `string_id` VALUES
(6030702,'ULDUAR_HODIR_FIRES');

-- Hodir
UPDATE `creature_template` SET `SpellList`=3284500 WHERE `entry`=32845; -- Hodir (10)
UPDATE `creature_template` SET `SpellList`=3284600 WHERE `entry`=32846; -- Hodir (25)
-- Snowpacked Icicle Target
UPDATE `creature_template` SET `StaticFlags1`=`StaticFlags1`|0x00000100|0x02000000 WHERE `entry`=33174;
-- Hodir's Helper NPCs
UPDATE `creature_template` SET `StringId1`=6030701 WHERE `entry` IN (32941, 33333, 32950, 33332, 32946, 33331, 32948, 33330, 32901, 33325, 32900, 33328, 32893, 33327, 32897, 33326, 33342);
-- Toasty Fire
UPDATE `creature_template` SET `StringId2`=6030702 WHERE `entry`=33342;

UPDATE `broadcast_text` SET `ChatTypeID`=3 WHERE `Id`=33314;
UPDATE `broadcast_text` SET `ChatTypeID`=3 WHERE `Id`=33313;
UPDATE `broadcast_text` SET `ChatTypeID`=1,`SoundEntriesID1`=15552 WHERE `Id`=34336;
UPDATE `broadcast_text` SET `ChatTypeID`=1,`SoundEntriesID1`=15553 WHERE `Id`=34337;
UPDATE `broadcast_text` SET `ChatTypeID`=1,`SoundEntriesID1`=15554 WHERE `Id`=34338;
UPDATE `broadcast_text` SET `ChatTypeID`=1,`SoundEntriesID1`=15555 WHERE `Id`=34339;
UPDATE `broadcast_text` SET `ChatTypeID`=1,`SoundEntriesID1`=15557 WHERE `Id`=33484;
UPDATE `broadcast_text` SET `ChatTypeID`=1,`SoundEntriesID1`=15558 WHERE `Id`=34340;
