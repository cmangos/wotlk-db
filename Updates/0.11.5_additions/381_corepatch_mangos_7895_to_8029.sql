-- 7896
ALTER TABLE db_version CHANGE COLUMN required_7893_01_mangos_command required_7896_01_mangos_creature_template bit;
ALTER TABLE creature_template CHANGE COLUMN class trainer_class tinyint(3) unsigned NOT NULL default '0';
ALTER TABLE creature_template CHANGE COLUMN race trainer_race tinyint(3) unsigned NOT NULL default '0';

-- 7902
ALTER TABLE db_version CHANGE COLUMN required_7896_01_mangos_creature_template required_7902_01_mangos_pool_creature bit;
ALTER TABLE `pool_creature` 
   ADD INDEX `idx_guid`(`guid`);
ALTER TABLE db_version CHANGE COLUMN required_7902_01_mangos_pool_creature required_7902_02_mangos_pool_gameobject bit;
ALTER TABLE `pool_gameobject` 
   ADD INDEX `idx_guid`(`guid`);
   
-- 7904
ALTER TABLE db_version CHANGE COLUMN required_7902_02_mangos_pool_gameobject required_7904_01_mangos_creature_template bit;
ALTER TABLE creature_template
  ADD COLUMN dmg_multiplier float NOT NULL default '1' AFTER attackpower;
UPDATE creature_template SET mindmg      = round(mindmg + attackpower / 14);
UPDATE creature_template SET maxdmg      = round(maxdmg + attackpower / 14);
UPDATE creature_template SET attackpower = round((maxdmg + mindmg) * 0.3);
UPDATE creature_template SET mindmg      = round(mindmg * 0.7), maxdmg = round(maxdmg * 0.7);

-- 7908
ALTER TABLE db_version CHANGE COLUMN required_7904_01_mangos_creature_template required_7908_01_mangos_creature_template bit;
ALTER TABLE creature_template ADD COLUMN unit_class tinyint(3) unsigned NOT NULL default '0' AFTER rangeattacktime;
UPDATE creature_template ct
JOIN creature c ON ct.entry=c.id
JOIN creature_addon ad ON c.guid=ad.guid
SET ct.unit_class=(ad.bytes0 & 0x0000FF00) >> 8
WHERE ct.entry=c.id AND ct.unit_class=0;
UPDATE creature_template ct
JOIN creature_template_addon ad ON ct.entry=ad.entry
SET ct.unit_class=(ad.bytes0 & 0x0000FF00) >> 8
WHERE ct.entry=ad.entry AND ct.unit_class=0;
UPDATE creature_template a1, creature_template a2 SET a1.unit_class=a2.unit_class WHERE a1.unit_class=0 AND a2.unit_class!=0 AND a1.entry=a2.heroic_entry;
UPDATE creature_template a1, creature_template a2 SET a1.unit_class=a2.unit_class WHERE a1.unit_class=0 AND a2.unit_class!=0 AND a2.entry=a1.heroic_entry;
ALTER TABLE db_version CHANGE COLUMN required_7908_01_mangos_creature_template required_7908_02_mangos_creature_addon bit;
ALTER TABLE creature_addon
  DROP COLUMN bytes0;
ALTER TABLE db_version CHANGE COLUMN required_7908_02_mangos_creature_addon required_7908_03_mangos_creature_template_addon bit;
ALTER TABLE creature_template_addon
  DROP COLUMN bytes0;

-- 7945
ALTER TABLE db_version CHANGE COLUMN required_7908_03_mangos_creature_template_addon required_7945_01_mangos_quest_template bit;
ALTER TABLE quest_template
  ADD COLUMN `DetailsEmoteDelay1` int(11) unsigned NOT NULL default '0' AFTER `DetailsEmote4`,
  ADD COLUMN `DetailsEmoteDelay2` int(11) unsigned NOT NULL default '0' AFTER `DetailsEmoteDelay1`,
  ADD COLUMN `DetailsEmoteDelay3` int(11) unsigned NOT NULL default '0' AFTER `DetailsEmoteDelay2`,
  ADD COLUMN `DetailsEmoteDelay4` int(11) unsigned NOT NULL default '0' AFTER `DetailsEmoteDelay3`,
  ADD COLUMN `OfferRewardEmoteDelay1` int(11) unsigned NOT NULL default '0' AFTER `OfferRewardEmote4`,
  ADD COLUMN `OfferRewardEmoteDelay2` int(11) unsigned NOT NULL default '0' AFTER `OfferRewardEmoteDelay1`,
  ADD COLUMN `OfferRewardEmoteDelay3` int(11) unsigned NOT NULL default '0' AFTER `OfferRewardEmoteDelay2`,
  ADD COLUMN `OfferRewardEmoteDelay4` int(11) unsigned NOT NULL default '0' AFTER `OfferRewardEmoteDelay3`;

-- 7980
ALTER TABLE db_version CHANGE COLUMN required_7945_01_mangos_quest_template required_7980_01_mangos_item_required_target bit;
DROP TABLE IF EXISTS `item_required_target`;
CREATE TABLE `item_required_target` (
  `entry` mediumint(8) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL default '0',
  `targetEntry` mediumint(8) unsigned NOT NULL default '0',
  UNIQUE KEY `entry_type_target` (`entry`,`type`,`targetEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- 7988
ALTER TABLE db_version CHANGE COLUMN required_7980_01_mangos_item_required_target required_7988_01_mangos_item_template bit;
alter table `item_template`
    drop column `dmg_type3`,
    drop column `dmg_max3`,
    drop column `dmg_min3`,
    drop column `dmg_type4`,
    drop column `dmg_max4`,
    drop column `dmg_min4`,
    drop column `dmg_type5`,
    drop column `dmg_max5`,
    drop column `dmg_min5`;
ALTER TABLE db_version CHANGE COLUMN required_7988_01_mangos_item_template required_7988_03_mangos_spell_chain bit;
DELETE FROM spell_chain WHERE first_spell IN (
  704,   /* Curse of Recklessness removed */
  770,   /* Faerie Fire non ranked now */
  16857, /* Faerie Fire (Feral) non ranked now */
  17962, /* Conflagrate non ranked now */
  18265, /* Siphon Life removed (replaced by different talent */
  26090, /* Thunderstomp non ranked now (rank 6 only O.o) */
  49184, /* Howling Blast skip old rank 2 */
  49224  /* Magic Suppression lost 2 ranks */
);
INSERT INTO spell_chain VALUES
/*------------------
--(8)Fire
------------------*/
/*Fiery Payback*/
(64353,0,64353,1,0),
(64357,64353,64353,2,0),
/*------------------
-- (56) Holy (Priest)
------------------*/
/*Body and Soul*/
(64127,0,64127,1,0),
(64129,64127,64127,2,0),
/*Empowered Renew*/
(63534,0,63534,1,0),
(63542,63534,63534,2,0),
(63543,63542,63534,3,0),
/*Serendipity*/
(63730,0,63730,1,0),
(63733,63730,63730,2,0),
(63737,63733,63730,3,0),
/*------------------
-- (78) Shadow Magic
------------------*/
/*Improved Devouring Plague*/
(63625,0,63625,1,0),
(63626,63625,63625,2,0),
(63627,63626,63625,3,0),
/*------------------
-- (267) Protection (Paladin)
------------------*/
/*Divinity*/
(63646,0,63646,1,0),
(63647,63646,63646,2,0),
(63648,63647,63646,3,0),
(63649,63648,63646,4,0),
(63650,63649,63646,5,0),
/*------------------
--(270)Pet-GenericHunter
------------------*/
/*Shark Attack*/
(62759,0,62759,1,0),
(62760,62759,62759,2,0),
/*Silverback*/
(62764,0,62764,1,0),
(62765,62764,62764,2,0),
/*Wild Hunt*/
(62758,0,62758,1,0),
(62762,62758,62758,2,0),
/*------------------
--(354)Demonology
------------------*/
/*Decimation*/
(63156,0,63156,1,0),
(63158,63156,63156,2,0),
/*Nemesis*/
(63117,0,63117,1,0),
(63121,63117,63117,2,0),
(63123,63121,63117,3,0),
/*------------------
--(373) Enhancement
------------------*/
/*Frozen Power*/
(63373,0,63373,1,0),
(63374,63373,63373,2,0),
/*------------------
-- (375) Elemental Combat
------------------*/
/*Booming Echoes*/
(63370,0,63370,1,0),
(63372,63370,63370,2,0),
/*------------------
--(573)Restoration
------------------*/
/*Improved Barkskin*/
(63410,0,63410,1,0),
(63411,63410,63410,2,0),
/*------------------
--(593)Destruction
------------------*/
/*Molten Skin*/
(63349,0,63349,1,0),
(63350,63349,63349,2,0),
(63351,63350,63349,3,0),
/*------------------
--(613)Discipline
------------------*/
/*Improved Flash Heal*/
(63504,0,63504,1,0),
(63505,63504,63504,2,0),
(63506,63505,63504,3,0),
/*------------------
--(770)Blood
------------------*/
/*Death Coil*/
(62900,0,62900,1,0),
(62901,62900,62900,2,0),
(62902,62901,62900,3,0),
(62903,62902,62900,4,0),
(62904,62903,62900,5,0),
/*Improved Blood Presence*/
(50365,0,50365,1,0),
(50371,50365,50365,2,0),
/*Improved Death Strike*/
(62905,0,62905,1,0),
(62908,62905,62905,2,0),
/*------------------
--(771)Frost
------------------*/
/*Howling Blast*/
(49184,0,49184,1,0),
(51409,49184,49184,2,0),
(51410,51409,49184,3,0),
(51411,51410,49184,4,0),
/*Improved Frost Presence*/
(50384,0,50384,1,0),
(50385,50384,50384,2,0),
/*------------------
--(772)Unholy
------------------*/
/*Improved Unholy Presence*/
(50391,0,50391,1,0),
(50392,50391,50391,2,0),
/*Magic Suppression*/
(49224,0,49224,1,0),
(49610,49224,49224,2,0),
(49611,49610,49224,3,0);
ALTER TABLE db_version CHANGE COLUMN required_7988_03_mangos_spell_chain required_7988_04_mangos_creature_template bit;
alter table `creature_template`
    add column `unk1` int(11) UNSIGNED DEFAULT '0' NOT NULL after `heroic_entry`,
    add column `unk2` int(11) UNSIGNED DEFAULT '0' NOT NULL after `unk1`,
    add column `questItem1` int(11) UNSIGNED DEFAULT '0' NOT NULL after `RacialLeader`,
    add column `questItem2` int(11) UNSIGNED DEFAULT '0' NOT NULL after `questItem1`,
    add column `questItem3` int(11) UNSIGNED DEFAULT '0' NOT NULL after `questItem2`,
    add column `questItem4` int(11) UNSIGNED DEFAULT '0' NOT NULL after `questItem3`,
    add column `movementId` int(11) UNSIGNED DEFAULT '0' NOT NULL after `questItem4`;
ALTER TABLE db_version CHANGE COLUMN required_7988_04_mangos_creature_template required_7988_05_mangos_item_template bit;
alter table `item_template`
    add column `HolidayId` int(11) UNSIGNED DEFAULT '0' NOT NULL after `ItemLimitCategory`;
ALTER TABLE db_version CHANGE COLUMN required_7988_05_mangos_item_template required_7988_06_mangos_gameobject_template bit;
alter table `gameobject_template`
    add column `unk1` varchar(100) NOT NULL default ''            after `castBarCaption`,
    add column `questItem1` int(11) UNSIGNED DEFAULT '0' NOT NULL after `size`,
    add column `questItem2` int(11) UNSIGNED DEFAULT '0' NOT NULL after `questItem1`,
    add column `questItem3` int(11) UNSIGNED DEFAULT '0' NOT NULL after `questItem2`,
    add column `questItem4` int(11) UNSIGNED DEFAULT '0' NOT NULL after `questItem3`;
ALTER TABLE db_version CHANGE COLUMN required_7988_06_mangos_gameobject_template required_7988_08_mangos_spell_bonus_data bit;
DELETE FROM `spell_bonus_data` WHERE `entry` IN (18265);
ALTER TABLE db_version CHANGE COLUMN required_7988_08_mangos_spell_bonus_data required_7988_09_mangos_spell_proc_event bit;
/* Blackout removed */
DELETE FROM spell_proc_event WHERE entry IN (15268, 15269, 15323, 15324, 15325, 15326);
/* Improved Wing Clip removed */
DELETE FROM spell_proc_event WHERE entry IN (19228, 19232, 19233);
/* Shadow Mastery, not have charges now */
DELETE FROM spell_proc_event WHERE entry IN (17794,17797,17798,17799,17800);
/* Lightning Overload have 3 ranks now, 2 dropped */
DELETE FROM spell_proc_event WHERE entry IN (30680,30681);
/* Unleashed Rage have 3 ranks now, 2 dropped */
DELETE FROM spell_proc_event WHERE entry IN (30806,30807,30810,30811);
/* Concussive Barrage have 2 ranks now, 1 dropped */
DELETE FROM spell_proc_event WHERE entry IN (35103);
/* Demonic Empathy, removed */
DELETE FROM spell_proc_event WHERE entry IN (47232,47234,47235);
/* Rapture have 3 ranks now, 2 dropped */
DELETE FROM spell_proc_event WHERE entry IN (47538,47539);
/* Psychic Horror have 1 rank now, 1 dropped */
DELETE FROM spell_proc_event WHERE entry IN (47572);
/* Sudden Doom have 3 ranks now, 2 dropped */
DELETE FROM spell_proc_event WHERE entry IN (49531,49532);
/* Hunting Party have 3 ranks now, 2 dropped */
DELETE FROM spell_proc_event WHERE entry IN (53293,53294);
/* Righteous Vengeance have 3 ranks now, 2 dropped */
DELETE FROM spell_proc_event WHERE entry IN (53383,53384);
/* Night of the Dead not have charges now */
DELETE FROM spell_proc_event WHERE entry IN (55620,55623);
/* Pandemic have 1 rank, 2 dropped */
DELETE FROM spell_proc_event WHERE entry IN (58436,58437);
/* Improved Holy Concentration, removed */
DELETE FROM spell_proc_event WHERE entry IN (47549,47551,47552);
/* Serendipity, replace by aanother spell ids */
DELETE FROM spell_proc_event WHERE entry IN (47555,47556,47557);
/* T.N.T. non triggring now */
DELETE FROM spell_proc_event WHERE entry IN (56333,56336,56337);

-- 8016
ALTER TABLE db_version CHANGE COLUMN required_7988_09_mangos_spell_proc_event required_8016_01_mangos_npc_spellclick_spells bit;
ALTER TABLE npc_spellclick_spells
  CHANGE COLUMN quest_id quest_start mediumint(8) unsigned NOT NULL COMMENT 'reference to quest_template',
  ADD COLUMN    quest_start_active   tinyint(1) unsigned NOT NULL default '0' AFTER quest_start,
  ADD COLUMN    quest_end            mediumint(8) unsigned NOT NULL default '0' AFTER quest_start_active;
/* compatibility with old data */
UPDATE npc_spellclick_spells
  SET quest_end = quest_start, quest_start_active = 1
  WHERE quest_start <> 0;

-- 8021
ALTER TABLE db_version CHANGE COLUMN required_8016_01_mangos_npc_spellclick_spells required_8021_01_mangos_spell_proc_event bit;
DELETE FROM `spell_proc_event` WHERE `entry` IN (51483,51485,51486);
INSERT INTO `spell_proc_event` VALUES
(51483, 0x00000001, 11, 0x20000000, 0x00000000, 0x00000000, 0x00004000, 0x00000000, 0.000000, 0.000000,  0),
(51485, 0x00000001, 11, 0x20000000, 0x00000000, 0x00000000, 0x00004000, 0x00000000, 0.000000, 0.000000,  0),
(51486, 0x00000001, 11, 0x20000000, 0x00000000, 0x00000000, 0x00004000, 0x00000000, 0.000000, 0.000000,  0);
