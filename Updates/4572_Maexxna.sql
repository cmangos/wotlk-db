-- Maexxna 10/25
DELETE FROM `creature_spell_list` WHERE (`Id` = 1595200) AND (`Position` = 0);
DELETE FROM `creature_spell_list` WHERE (`Id` = 2927800) AND (`Position` = 0);
DELETE FROM `creature_spell_list` WHERE (`Id` = 1595200) AND (`Position` = 1);
DELETE FROM `creature_spell_list` WHERE (`Id` = 2927800) AND (`Position` = 1);
DELETE FROM `creature_spell_list` WHERE (`Id` = 1595200) AND (`Position` = 2);
DELETE FROM `creature_spell_list` WHERE (`Id` = 2927800) AND (`Position` = 2);
DELETE FROM `creature_spell_list` WHERE (`Id` = 1595200) AND (`Position` = 3);
DELETE FROM `creature_spell_list` WHERE (`Id` = 2927800) AND (`Position` = 3);
DELETE FROM `creature_spell_list` WHERE (`Id` = 1595200) AND (`Position` = 4);
DELETE FROM `creature_spell_list` WHERE (`Id` = 2927800) AND (`Position` = 4);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(1595200, 0, 28673, 20000, 20000, 40000, 40000, 0, 0, 0, 100, 1, 'Maexxna (10) - Web Wrap'),
(1595200, 1, 29484, 40000, 40000, 40000, 40000, 0, 0, 0, 100, 1, 'Maexxna (10) - Web Spray'),
(1595200, 2, 28741, 10000, 20000, 10000, 20000, 0, 0, 0, 100, 1, 'Maexxna (10) - Poison Shock'),
(1595200, 3, 54121, 20000, 30000, 10000, 30000, 0, 1, 0, 100, 1, 'Maexxna (10) - Necrotic Poison'),
(1595200, 4, 54130, 30000, 30000, 40000, 40000, 0, 0, 0, 100, 1, 'Maexxna (10) - Summon Spiderlings'),
(2927800, 0, 54127, 20000, 20000, 40000, 40000, 0, 0, 0, 100, 1, 'Maexxna (25) - Web Wrap'),
(2927800, 1, 54125, 40000, 40000, 40000, 40000, 0, 0, 0, 100, 1, 'Maexxna (25) - Web Spray'),
(2927800, 2, 54122, 10000, 20000, 10000, 20000, 0, 0, 0, 100, 1, 'Maexxna (25) - Poison Shock'),
(2927800, 3, 28776, 20000, 30000, 10000, 30000, 0, 1, 0, 100, 1, 'Maexxna (25) - Necrotic Poison'),
(2927800, 4, 29434, 30000, 30000, 40000, 40000, 0, 0, 0, 100, 1, 'Maexxna (25) - Summon Spiderlings');

INSERT INTO `creature_spell_list_entry` VALUES
(1595200, 'Naxxramas - Maexxna (10)', 100, 100),
(2927800, 'Naxxramas - Maexxna (25)', 100, 100);

UPDATE `creature_template` SET `SpellList`=1595200 WHERE `entry`=15952;
UPDATE `creature_template` SET `SpellList`=2927800 WHERE `entry`=29278;
