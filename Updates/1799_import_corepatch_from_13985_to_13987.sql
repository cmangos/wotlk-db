-- 13985
ALTER TABLE db_version CHANGE COLUMN required_13984_01_mangos_creature_template_faction_removal required_13985_01_mangos_seal_of_righteousness_restored bit;

DELETE FROM `spell_chain` WHERE `spell_id` IN (20154, 21084);
UPDATE `playercreateinfo_action` SET `action` = 20154 WHERE `action` = 21084 AND `type` = 0;
UPDATE `playercreateinfo_spell` SET `Spell` = 20154 WHERE `Spell` = 21084;
UPDATE `npc_trainer_template` SET `spell` = 10321 WHERE `spell` = 20271;
UPDATE `npc_trainer` SET `spell` = 10321 WHERE `spell` = 20271;

-- 13986
ALTER TABLE db_version CHANGE COLUMN required_13985_01_mangos_seal_of_righteousness_restored required_13986_01_mangos_seal_of_righteousness_cleanup bit;

DELETE FROM `npc_trainer_template` WHERE `spell` IN (20154, 20271, 21084);
DELETE FROM `npc_trainer` WHERE `spell` IN (20154, 20271, 21084);


-- 13987
ALTER TABLE db_version CHANGE COLUMN required_13986_01_mangos_seal_of_righteousness_cleanup required_13987_01_mangos_seal_of_righteousness_wrath bit;

-- Revert Judgement traching spell back to Judgement based on video data for wrath
UPDATE `npc_trainer_template` SET `spell` = 20271 WHERE `spell` = 10321;
UPDATE `npc_trainer` SET `spell` = 20271 WHERE `spell` = 10321;
-- Insert Seal of Righteousness Rank 1.5 back to trainer lists for 20 copper available at lvl 1 based on video data for wrath
DELETE FROM `npc_trainer_template` WHERE `spell` = 21084;
INSERT INTO `npc_trainer_template` VALUES
(20,21084,20,0,0,0,0),
(21,21084,20,0,0,0,0);
-- Delete Seal of Righteousness Rank 1.5 from "spell learn spells" table: not needed, trained separately in wrath
DELETE FROM `spell_learn_spell` WHERE `SpellID` = 21084;
