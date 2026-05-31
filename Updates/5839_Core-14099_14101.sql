-- 14099
ALTER TABLE db_version CHANGE COLUMN required_14098_01_mangos_wmogroupgen required_14099_01_mangos_quest_template_additions bit;
ALTER TABLE `quest_template` ADD COLUMN `RewFactionFlags` INT UNSIGNED DEFAULT '0' AFTER `RewMaxRepValue5`;
ALTER TABLE `quest_template` ADD COLUMN `RewReputationMask` INT UNSIGNED DEFAULT '0' AFTER `RewFactionFlags`;
ALTER TABLE `quest_template` ADD COLUMN `RewArenaPoints` INT UNSIGNED DEFAULT '0' AFTER `RewHonorMultiplier`;

-- 14100
ALTER TABLE db_version CHANGE COLUMN required_14099_01_mangos_quest_template_additions required_14100_01_mangos_spillover_drop bit;
-- column i added is official naming
UPDATE quest_template SET RewFactionFlags=ReputationSpilloverMask WHERE ReputationSpilloverMask> 0;
ALTER TABLE `quest_template` DROP COLUMN `ReputationSpilloverMask`;

-- 14101
ALTER TABLE db_version CHANGE COLUMN required_14100_01_mangos_spillover_drop required_14101_01_mangos_quest_template_mistake_rename bit;
ALTER TABLE `quest_template` CHANGE `RewReputationMask` `RewUnk` INT UNSIGNED DEFAULT '0';
UPDATE quest_template SET RewUnk=8 WHERE RewUnk=0; -- unused in client and always sends 8 in 3.3.5
