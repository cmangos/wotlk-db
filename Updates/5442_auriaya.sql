DELETE FROM `creature_spell_list` WHERE `Id` IN (3403500, 3417100);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(3403500, 0, 64478, 9000, 12000, 13000, 16000, 0, 100, 0, 100, 0, 'Feral Defender 10 - Feral Pounce'),
(3417100, 0, 64669, 9000, 12000, 13000, 16000, 0, 100, 0, 100, 0, 'Feral Defender 25 - Feral Pounce');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (3403500, 3417100);
INSERT INTO `creature_spell_list_entry` VALUES
(3403500, 'Ulduar - Feral Defender (10)', 100, 100),
(3417100, 'Ulduar - Feral Defender (25)', 100, 100);

UPDATE `creature_template` SET `SpellList`=3403500 WHERE `entry` IN (34035);
UPDATE `creature_template` SET `SpellList`=3417100 WHERE `entry` IN (34171);

DELETE FROM `creature_spell_list` WHERE `Id`  IN (3351500, 3417500);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(3351500, 0, 64396, 50000,  50000,  37000,   37000,   0, 100,     0, 100, 1, 'Auriaya 10 - Swarm'),
(3351500, 1, 64422, 58000,  58000,  27000,   27000,   0,   0,     0, 100, 1, 'Auriaya 10 - Sonic Screech'),
(3351500, 2, 64386, 38000,  38000,  35000,   35000,   0,   0, 29270, 100, 1, 'Auriaya 10 - Terrifying Screech'),
(3351500, 3, 47008, 600000, 600000, 1800000, 1800000, 0,   0, 29271, 100, 1, 'Auriaya 10 - Berserk'),
(3417500, 0, 64396, 50000,  50000,  37000,   37000,   0, 100,     0, 100, 1, 'Auriaya 25 - Swarm'),
(3417500, 1, 64688, 58000,  58000,  27000,   27000,   0,   0,     0, 100, 1, 'Auriaya 25 - Sonic Screech'),
(3417500, 2, 64386, 38000,  38000,  35000,   35000,   0,   0, 29270, 100, 1, 'Auriaya 25 - Terrifying Screech'),
(3417500, 3, 47008, 600000, 600000, 1800000, 1800000, 0,   0, 29271, 100, 1, 'Auriaya 25 - Berserk');

DELETE FROM `creature_spell_list_entry` WHERE `Id`  IN (3351500, 3417500);
INSERT INTO `creature_spell_list_entry` VALUES
(3351500, 'Ulduar - Auriaya (10)', 100, 100),
(3417500, 'Ulduar - Auriaya (25)', 100, 100);

UPDATE `creature_template` SET `SpellList`=3351500 WHERE `entry`=33515;
UPDATE `creature_template` SET `SpellList`=3417500 WHERE `entry`=34175;

DELETE FROM dbscripts_on_relay WHERE Id IN(29270,29271) AND command = 0;
INSERT INTO `dbscripts_on_relay` (id, command, dataint, comments) VALUES
(29270, 0, 34450, 'Auriaya - Emote Screech'),
(29271, 0, 34358, 'Auriaya - Say Berserk');

UPDATE `broadcast_text` SET `ChatTypeID`=3 WHERE `Id`=34450;
UPDATE `broadcast_text` SET `ChatTypeID`=3 WHERE `Id`=34162;
UPDATE `broadcast_text` SET `ChatTypeID`=1, `SoundEntriesID1`=15473 WHERE `Id`=34341;
UPDATE `broadcast_text` SET `ChatTypeID`=1, `SoundEntriesID1`=15475 WHERE `Id`=34355;
UPDATE `broadcast_text` SET `ChatTypeID`=1, `SoundEntriesID1`=15474 WHERE `Id`=34354;
UPDATE `broadcast_text` SET `ChatTypeID`=1, `SoundEntriesID1`=15477 WHERE `Id`=34358;

UPDATE `spell_template` SET `InterruptFlags`=8, `ChannelInterruptFlags`=0 WHERE `Id` IN (64389, 64678);
UPDATE `creature_template` SET `MechanicImmuneMask`=`MechanicImmuneMask`&~0x2000000 WHERE `entry` IN (33515, 34175);
UPDATE `creature_addon` SET `moveflags`=0 WHERE `guid`=6031179;

UPDATE `creature_template` SET `DisplayIdProbability2`=50,`DisplayIdProbability3`=50 WHERE `Entry` IN (34014,34166);

UPDATE `creature_ai_scripts` SET `event_param1`=100,`event_param2`=1000 WHERE `id` IN (3401404, 3401405);

DELETE FROM `creature_spell_list` WHERE `Id` IN (3401400, 3416600);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(3401400, 0, 64375, '5000','10000','5000','10000', 0, 1, 0, 100, 0, 'Sanctum Sentry 10 - Rip Flesh on Target'),
(3401400, 1, 64666, '10000','15000','10000','15000', 0, 100, 0, 100, 0, 'Sanctum Sentry 10 - Feral Pounce on Random'),
(3416600, 0, 64375, '5000','10000','5000','10000', 0, 1, 0, 100, 0, 'Sanctum Sentry 25 - Rip Flesh on Target'),
(3416600, 1, 64666, '10000','15000','10000','15000', 0, 100, 0, 100, 0, 'Sanctum Sentry 25 - Feral Pounce on Random');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (3401400, 3416600);
INSERT INTO `creature_spell_list_entry` VALUES
(3401400, 'Ulduar - Sanctum Sentry (10)', 100, 100),
(3416600, 'Ulduar - Sanctum Sentry (25)', 100, 100);

UPDATE `creature_template` SET `SpellList`=3401400 WHERE `entry` IN (34014);
UPDATE `creature_template` SET `SpellList`=3416600 WHERE `entry` IN (34166);



