-- Ulduar - XT-002 Deconstructor
-- spell lists
DELETE FROM `creature_spell_list` WHERE `Id` IN (3329300, 3388500, 3329301, 3388501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(3329300, 0, 63018, 8000,   8000,   16000,   16000,   2, 0, 0,     100, 0, 'XT-002 Deconstructor 10N - Searing Light'),
(3329300, 1, 63024, 16000,  16000,  16000,   16000,   2, 0, 0,     100, 0, 'XT-002 Deconstructor 10N - Gravity Bomb'),
(3329300, 2, 62776, 40000,  40000,  65000,   65000,   0, 0, 29110, 100, 0, 'XT-002 Deconstructor 10N - Tympanic Tantrum'),
(3329300, 3, 26662, 600000, 600000, 6000000, 6000000, 0, 0, 29111, 100, 0, 'XT-002 Deconstructor 10N - Berserk'),
(3329301, 0, 63018, 8000,   8000,   16000,   16000,   2, 0, 0,     100, 0, 'XT-002 Deconstructor 10N - Searing Light'),
(3329301, 1, 63024, 16000,  16000,  16000,   16000,   2, 0, 0,     100, 0, 'XT-002 Deconstructor 10N - Gravity Bomb'),
(3329301, 2, 62776, 0,      0,      65000,   65000,   0, 0, 29110, 100, 0, 'XT-002 Deconstructor 10N - Tympanic Tantrum'),
(3329301, 3, 26662, 600000, 600000, 6000000, 6000000, 0, 0, 29111, 100, 0, 'XT-002 Deconstructor 10N - Berserk'),
(3388500, 0, 65121, 8000,   8000,   16000,   16000,   2, 0, 0,     100, 0, 'XT-002 Deconstructor 25N - Searing Light'),
(3388500, 1, 64234, 16000,  16000,  16000,   16000,   2, 0, 0,     100, 0, 'XT-002 Deconstructor 25N - Gravity Bomb'),
(3388500, 2, 62776, 40000,  40000,  65000,   65000,   0, 0, 29110, 100, 0, 'XT-002 Deconstructor 25N - Tympanic Tantrum'),
(3388500, 3, 26662, 600000, 600000, 6000000, 6000000, 0, 0, 29111, 100, 0, 'XT-002 Deconstructor 25N - Berserk'),
(3388501, 0, 65121, 8000,   8000,   16000,   16000,   2, 0, 0,     100, 0, 'XT-002 Deconstructor 25N - Searing Light'),
(3388501, 1, 64234, 16000,  16000,  16000,   16000,   2, 0, 0,     100, 0, 'XT-002 Deconstructor 25N - Gravity Bomb'),
(3388501, 2, 62776, 0,      0,      65000,   65000,   0, 0, 29110, 100, 0, 'XT-002 Deconstructor 25N - Tympanic Tantrum'),
(3388501, 3, 26662, 600000, 600000, 6000000, 6000000, 0, 0, 29111, 100, 0, 'XT-002 Deconstructor 25N - Berserk');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (3329300, 3388500, 3329301, 3388501);
INSERT INTO `creature_spell_list_entry` VALUES
(3329300, 'Ulduar - XT-002 Deconstructor (10)', 100, 100),
(3388500, 'Ulduar - XT-002 Deconstructor (25)', 100, 100),
(3329301, 'Ulduar - XT-002 Deconstructor (10-HM)', 100, 100),
(3388501, 'Ulduar - XT-002 Deconstructor (25-HM)', 100, 100);

UPDATE `creature_template` SET `SpellList`=3329300 WHERE `entry`=33293;
UPDATE `creature_template` SET `SpellList`=3388500 WHERE `entry`=33885;

UPDATE `broadcast_text` SET `ChatTypeID`=1,`SoundEntriesID1`=15724 WHERE `Id`=33508;
UPDATE `broadcast_text` SET `ChatTypeID`=1,`SoundEntriesID1`=15725 WHERE `Id`=33446;
UPDATE `broadcast_text` SET `ChatTypeID`=1,`SoundEntriesID1`=15726 WHERE `Id`=33448;
UPDATE `broadcast_text` SET `ChatTypeID`=1,`SoundEntriesID1`=15727 WHERE `Id`=33453;
UPDATE `broadcast_text` SET `ChatTypeID`=1,`SoundEntriesID1`=15728 WHERE `Id`=33509;
UPDATE `broadcast_text` SET `ChatTypeID`=1,`SoundEntriesID1`=15729 WHERE `Id`=33510;
UPDATE `broadcast_text` SET `ChatTypeID`=1,`SoundEntriesID1`=15730 WHERE `Id`=33512;
UPDATE `broadcast_text` SET `ChatTypeID`=1,`SoundEntriesID1`=15731 WHERE `Id`=33511;
UPDATE `broadcast_text` SET `ChatTypeID`=3 WHERE `Id`=33447;
UPDATE `broadcast_text` SET `ChatTypeID`=3 WHERE `Id`=33856;
UPDATE `broadcast_text` SET `ChatTypeID`=3 WHERE `Id`=34023;
UPDATE `broadcast_text` SET `ChatTypeID`=3 WHERE `Id`=33454;

DELETE FROM `dbscripts_on_relay` WHERE `id` IN (29110, 29111);
INSERT INTO `dbscripts_on_relay` (`id`, `command`, `dataint`, `comments`) VALUES
(29110, 0, 33453, 'XT-002 - Say Tantrum'),
(29110, 0, 33454, 'XT-002 - Emote Earthquake'),
(29111, 0, 33512, 'XT-002 - Say Berserk');
