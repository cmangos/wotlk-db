-- Naxxramas - Grobbulus 10/25
DELETE FROM `creature_spell_list` WHERE (`Id` = 1593100) AND (`Position` = 0);
DELETE FROM `creature_spell_list` WHERE (`Id` = 2937300) AND (`Position` = 0);
DELETE FROM `creature_spell_list` WHERE (`Id` = 1593100) AND (`Position` = 1);
DELETE FROM `creature_spell_list` WHERE (`Id` = 2937300) AND (`Position` = 1);
DELETE FROM `creature_spell_list` WHERE (`Id` = 1593100) AND (`Position` = 2);
DELETE FROM `creature_spell_list` WHERE (`Id` = 2937300) AND (`Position` = 2);
DELETE FROM `creature_spell_list` WHERE (`Id` = 1593100) AND (`Position` = 3);
DELETE FROM `creature_spell_list` WHERE (`Id` = 2937300) AND (`Position` = 3);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(1593100, 0, 28157, 20000, 30000, 20000, 30000, 0, 0, 0, 100, 1, 'Grobbulus (10) - Slime Spray'),
(1593100, 1, 28240, 20000, 25000, 15000, 15000, 0, 0, 0, 100, 1, 'Grobbulus (10) - Poison Cloud'),
(1593100, 2, 28169, 13000, 13000, 13000, 13000, 0, 101, 0, 100, 1, 'Grobbulus (10) - Mutating Injection (Timer WIP/NYI)'),
(1593100, 3, 26662, 720000, 720000, 720000, 720000, 0, 0, 0, 100, 1, 'Grobbulus (10) - Berserk (12min)'),
(2937300, 0, 54364, 20000, 30000, 20000, 30000, 0, 0, 0, 100, 1, 'Grobbulus (25) - Slime Spray'),
(2937300, 1, 28240, 20000, 25000, 15000, 15000, 0, 0, 0, 100, 1, 'Grobbulus (25) - Poison Cloud'),
(2937300, 2, 28169, 13000, 13000, 13000, 13000, 0, 101, 0, 100, 1, 'Grobbulus (25) - Mutating Injection (Timer WIP/NYI)'),
(2937300, 3, 26662, 540000, 540000, 540000, 540000, 0, 0, 0, 100, 1, 'Grobbulus (25) - Berserk (9min)');

INSERT INTO `creature_spell_list_entry` VALUES
(1593100, 'Naxxramas - Grobbulus (10)', 100, 100),
(2937300, 'Naxxramas - Grobbulus (25)', 100, 100);

UPDATE `creature_template` SET `SpellList`=1593100 WHERE `entry`=15931;
UPDATE `creature_template` SET `SpellList`=2937300 WHERE `entry`=29373;
