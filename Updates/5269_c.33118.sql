-- Ulduar
-- Ignis the Furnace Master 33118
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
