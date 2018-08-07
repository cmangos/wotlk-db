-- Ashtongue Mystic 22845 - Totems 22894,22896,22897
UPDATE `creature_template` SET `AIName` = 'TotemAI' WHERE `entry` IN (22896,22897,22894);
DELETE FROM `creature_template_spells` WHERE `entry` IN (22896,22897,22894);
INSERT INTO `creature_template_spells` (`entry`, `spell1`) VALUES
(22896, 39593),
(22897, 32911),
(22894, 39594);

-- Coilskar Geyser 23080
UPDATE `creature_template` SET `UnitFlags` = 33554432 WHERE `entry` = 23080;

-- Shadowmoon Riding Hound 23083
UPDATE `creature_template` SET `UnitFlags` = 32768, `MeleeBaseAttackTime` = 1500 WHERE `entry` = 23083; -- InhabitType already |2

-- Whirling Blade 23369
UPDATE `creature_template` SET `UnitFlags` = 33587216, `ExtraFlags` = 524288 WHERE `entry` = 23369;

-- Image of Dementia 23436
UPDATE `creature_template` SET `UnitFlags` = 32832 WHERE `entry` = 23436;

-- Dragonmaw Sky Stalker 23030
UPDATE `creature_template` SET `ModelId2` = 21544 WHERE `entry` = 23030;

-- Dragonmaw Wind Reaver 23330
UPDATE `creature_template` SET `ModelId2` = 21547 WHERE `entry` = 23330;

-- Teron Gorefiend 22871
UPDATE `creature_template` SET `Detection` = 26 WHERE `entry` = 22871;

-- Shadowy Construct 23111
UPDATE `creature_template` SET `Faction` = 16, `MeleeBaseAttackTime` = 2500 WHERE `entry` = 23111;

-- Doom Blossom 23123
UPDATE `creature_template` SET `UnitFlags` = 33554432, `ExtraFlags` = `ExtraFlags`|524288 WHERE `entry` = 23123;

-- Doom Blossom Move Target 23124
UPDATE `creature_template` SET `UnitFlags` = 33555200 WHERE `entry` = 23124;

-- Ashtongue Defender 23216
UPDATE `creature_template`  SET `Faction` = 1847, `UnitFlags` = 32768 WHERE `entry` = 23216;

-- Mutant War Hound 23232
UPDATE `creature_template` SET `UnitFlags` = 32768 WHERE `entry` = 23232;

-- Bonechewer Blade Fury 23235
UPDATE `creature_template` SET `UnitFlags` = 32832 WHERE `entry` = 23235;

-- Bonechewer Shield Disciple 23236
UPDATE `creature_template` SET `UnitFlags` = 32832 WHERE `entry` = 23236;

-- Bonechewer Blood Prophet 23237
UPDATE `creature_template` SET `UnitFlags` = 32832 WHERE `entry` = 23237;

-- Ashtongue Rogue 23318
UPDATE `creature_template` SET `Faction` = 16, `UnitFlags` = 32768, `MeleeBaseAttackTime` = 1600 WHERE `entry` = 23318;

-- Shadowmoon Fallen 23371
UPDATE `creature_template` SET `UnitFlags` = 32768 WHERE `entry` = 23371;

-- Arcane Charge 23429
UPDATE `creature_template` SET `UnitFlags` = 33554432 WHERE `entry` = 23429;

