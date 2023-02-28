-- Remove hackfixes in creature_spawn_data_template that were snuck in

-- remove unneeded creature_spawn_data_template "100", fix in creature_template
-- https://github.com/cmangos/tbc-db/commit/526fb9c97f2023c65e8b124ccb6e42bab51636e7
DELETE FROM `creature_spawn_data_template` WHERE `entry` = 100; -- set faction 132, default faction for c.5723 should be 132
UPDATE `creature_template` SET `Faction` = 132 WHERE `entry` = 5723; -- 914 - Warug's Target Dummy
UPDATE dbscripts_on_quest_end SET dataint4=0 WHERE id = 1371 AND command=10 AND datalong = 5723;

-- remove unneeded creature_spawn_data_template "5", fix in creature_template
-- https://github.com/cmangos/tbc-db/commit/e523030ae7399dad5e5d6c2f49dc8990b2e31afd
DELETE FROM `creature_spawn_data_template` WHERE `entry` = 5; -- set correct npcflags in creature_template instead of messing around like this
DELETE FROM `creature_spawn_data` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 18898);
UPDATE `creature_template` SET `NpcFlags` = 128 WHERE `entry` = 18898;

REPLACE INTO `creature_spawn_data_template` (`entry`, `EquipmentId`) VALUES (5, 0); -- no equipment, legit good generic _template, above cases were hackfixes.

-- ===========
-- TBC TBC TBC
-- ===========
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 18048; -- Bleeding Hollow Archer (1)	1488
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 18049; -- Bleeding Hollow Darkcaster (1)	572
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 18052; -- Bonechewer Destroyer (1)	315
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 18053; -- Bonechewer Hungerer (1)	1486
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 18054; -- Bonechewer Ravener (1)	1487
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 18057; -- Hellfire Sentry (1)	293
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 18058; -- Hellfire Watcher (1)	310
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 18434; -- Vazruden (1)	997
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` = 18927;	-- Human Commoner	67
UPDATE `creature_template` SET `EquipmentTemplateId` = 0 WHERE `entry` IN (19148,19172); -- Dwarf Commoner & Gnome Commoner 203

