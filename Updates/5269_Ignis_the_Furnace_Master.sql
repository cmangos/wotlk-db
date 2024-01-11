-- Ulduar - Ignis the Furnace Master
-- spell lists
DELETE FROM `creature_spell_list` WHERE `Id` IN (3311800, 3319000);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(3311800, 0, 62680, 20000,  20000,  20000,   30000,   0, -1,  0,   29100, 100, 1, 'Ignis 10 - Flame Jets'),
(3311800, 1, 62707, 25000,  25000,  15000,   30000,   0, 105, 101, 29101, 100, 1, 'Ignis 10 - Grab'),
(3311800, 2, 62546, 15000,  15000,  20000,   25000,   0, -1,  0,   0,     100, 1, 'Ignis 10 - Scorch'),
(3311800, 3, 62488, 10000,  10000,  30000,   40000,   0, -1,  0,   29103, 100, 1, 'Ignis 10 - Activate Construct'),
(3311800, 4, 26662, 600000, 600000, 6000000, 6000000, 0, -1,  0,   29105, 100, 1, 'Ignis 10 - Berserk'),
(3319000, 0, 63472, 20000,  20000,  20000,   30000,   0, -1,  0,   29100, 100, 1, 'Ignis 25 - Flame Jets'),
(3319000, 1, 62707, 25000,  25000,  15000,   30000,   0, 105, 101, 29101, 100, 1, 'Ignis 25 - Grab'),
(3319000, 2, 63474, 15000,  15000,  20000,   25000,   0, -1,  0,   0,     100, 1, 'Ignis 25 - Scorch'),
(3319000, 3, 62488, 10000,  10000,  30000,   40000,   0, -1,  0,   29103, 100, 1, 'Ignis 25 - Activate Construct'),
(3319000, 4, 26662, 600000, 600000, 6000000, 6000000, 0, -1,  0,   29105, 100, 1, 'Ignis 25 - Berserk');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (3311800, 3319000);
INSERT INTO `creature_spell_list_entry` VALUES
(3311800, 'Ulduar - Ignis the Furnace Master (10)', 100, 100),
(3319000, 'Ulduar - Ignis the Furnace Master (25)', 100, 100);

UPDATE `creature_template` SET `SpellList`=3311800 WHERE `entry`=33118;
UPDATE `creature_template` SET `SpellList`=3319000 WHERE `entry`=33190;

DELETE FROM `dbscripts_on_relay` WHERE `id` IN (29100, 29101, 29103, 29105);
INSERT INTO `dbscripts_on_relay` (`id`, `command`, `dataint`, `comments`) VALUES
(29100, 0, 34308, 'Ignis - Say Flame Jets'),
(29100, 0, 33465, 'Ignis - Emote Flame Jets'),
(29101, 0, 34310, 'Ignis - Say Slagpot'),
(29103, 0, 34307, 'Ignis - Say Constructs'),
(29105, 0, 33871, 'Ignis - Say Berserk');

UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=15564 WHERE Id=34306;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=15566 WHERE Id=34308;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=15567 WHERE Id=34309;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=15568 WHERE Id=34310;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=15565 WHERE Id=34307;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=15569 WHERE Id=34311;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=15570 WHERE Id=34312;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=15571 WHERE Id=33871;
UPDATE broadcast_text SET ChatTypeID=1,SoundEntriesID1=15572 WHERE Id=34313;
UPDATE broadcast_text SET ChatTypeID=3 WHERE Id=33465;
UPDATE broadcast_text SET ChatTypeID=2 WHERE Id=34471;

DELETE FROM `string_id` WHERE `Id`=6030101;
INSERT INTO `string_id` (`Id`, `Name`) VALUES
(6030101,'ULDUAR_IGNIS_ADDS');

UPDATE `creature_template` SET `StringId1`=6030101 WHERE `entry`=33121;
UPDATE `creature_template` SET `Leash`=230 WHERE `entry`=33118;

DELETE FROM `worldstate_name` WHERE `Id` IN (31500, 31501);
INSERT INTO `worldstate_name` VALUES
(31501, 'Ulduar - Respawn Ignis together with adds');

DELETE FROM `conditions` WHERE `condition_entry` IN (31500, 31501);
INSERT INTO `conditions` VALUES
(31501, 42, 4834, 1, 0, 0, 0, 'Worldstate: Ignis not Dead');

DELETE FROM `spawn_group` WHERE `Id`=33101;
INSERT INTO `spawn_group` VALUES
(33101, 'Ulduar - Ignis Encounter - Ignis and Iron Constructs', 0, 0, 31501, 0, 2, 0);

DELETE FROM `spawn_group_spawn` WHERE `Id`=33101;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`)
VALUES
(33101, 6030270),
(33101, 6030271),
(33101, 6030272),
(33101, 6030273),
(33101, 6030274),
(33101, 6030275),
(33101, 6030276),
(33101, 6030277),
(33101, 6030278),
(33101, 6030279),
(33101, 6030280),
(33101, 6030281),
(33101, 6030282),
(33101, 6030283),
(33101, 6030284),
(33101, 6030285),
(33101, 6030286),
(33101, 6030287),
(33101, 6030288),
(33101, 6030289),
(33101, 6030269);
