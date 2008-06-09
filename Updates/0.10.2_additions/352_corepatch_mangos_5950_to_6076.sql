-- 5986
DELETE FROM `spell_proc_event` WHERE `entry` IN (46832);
INSERT INTO `spell_proc_event` VALUES
(46832,0,0,0,7,0x0000000000000001,0x00004000,0);

-- 5965
DELETE FROM mangos_string WHERE entry in (468,470);
INSERT INTO `mangos_string` VALUES 
(468,'id: %d eff: %d type: %d duration: %d maxduration: %d name: %s%s%s caster: %s %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(470,'id: %d eff: %d name: %s%s%s caster: %s %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 5973
DELETE FROM `spell_proc_event` WHERE `entry` IN (44835);
INSERT INTO `spell_proc_event` VALUES
(44835,0,0,0,7,0x0000008000000000,0x00008000,0);

-- 5982
DROP TABLE playercreateinfo_skill;
DROP TABLE spell_learn_skill;

-- 5986
DELETE FROM `spell_proc_event` WHERE `entry` IN (46832);
INSERT INTO `spell_proc_event` VALUES
(46832,0,0,0,7,0x0000000000000001,0x00004000,0);

-- 5999
DELETE FROM `spell_proc_event` WHERE `entry` IN (37528);
INSERT INTO `spell_proc_event` VALUES
(37528,0,0,0,4,0x0000000000000004,0x00000001,0);

-- 6016
DELETE FROM `spell_proc_event` WHERE `entry` IN (37173);
INSERT INTO `spell_proc_event` VALUES
(37173,0,0,0,8,0x000001062cbc0598,0x000a0001,0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (30881,30883,30884,30885,30886);
INSERT INTO `spell_proc_event` VALUES
(30881,0,0,0,0,0x0000000000000000,0x00008000,0),
(30883,0,0,0,0,0x0000000000000000,0x00008000,0),
(30884,0,0,0,0,0x0000000000000000,0x00008000,0),
(30885,0,0,0,0,0x0000000000000000,0x00008000,0),
(30886,0,0,0,0,0x0000000000000000,0x00008000,0);

-- 6017
DELETE FROM `spell_proc_event` WHERE `entry` IN (37170);
INSERT INTO `spell_proc_event` VALUES
(37170,0,0,0,0,0x0000000000000000,0x00000001,1);

-- 6022
DELETE FROM `spell_proc_event` WHERE `entry` IN (12322,12999,13000,13001,13002);
INSERT INTO `spell_proc_event` VALUES
(12322,0,0,0,0,0x0000000000000000,0x00000001,2),
(12999,0,0,0,0,0x0000000000000000,0x00000001,4),
(13000,0,0,0,0,0x0000000000000000,0x00000001,6),
(13001,0,0,0,0,0x0000000000000000,0x00000001,8),
(13002,0,0,0,0,0x0000000000000000,0x00000001,10);

-- 6023
DELETE FROM `mangos_string` WHERE `entry` IN (314,315,316);
INSERT INTO `mangos_string` VALUES
(314, ' [peace forced]',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(315, ' [hidden]',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(316, ' [invisible forced]',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 6027
DELETE FROM `spell_affect` WHERE `entry` IN 
(12873,12872,11095,11252,12605,20244,20245,23565,16040,16113,16114,16115,16116,22804,14171,14172,14173,12290,12963,16858,16859,16860,16861,16862,
17815,17833,17834,17835,17836,21744,12866,12325,12863,12864,12865,12866,16194,16218,16219,16220,16221,23236,14143,14149,14151,26130,27848);
DELETE FROM `spell_affect` WHERE `entry` IN (12945,16544,18372) AND `effectId` = 0;
DELETE FROM `spell_affect` WHERE `entry` IN (14075,14074,14073,14072,14057,16544,23566) AND `effectId` = 1;
INSERT INTO `spell_affect` VALUES
(14143,0,0x0000000004000206),
(14149,0,0x0000000004000206);
 
-- 6032
ALTER TABLE `petcreateinfo_spell` DROP `FamilyPassive`;

-- 6037
-- (38398) Reduced Cleave Cost ()
DELETE FROM `spell_affect` WHERE `entry` IN (38398);
INSERT INTO `spell_affect` VALUES (38398, 0, 0x0000000020000000);
-- (40389) Crow Discount ()
DELETE FROM `spell_affect` WHERE `entry` IN (40389);
INSERT INTO `spell_affect` VALUES (40389, 0, 0x0000800000000000);

-- 6038
ALTER TABLE `creature_template` 
    ADD COLUMN `PetSpellDataId` mediumint(8) unsigned NOT NULL default '0' AFTER `spell4`;

-- 6049
INSERT INTO `spell_proc_event` VALUES 
(20784,0,0,0,0,0,4096,0),
(32850,0,0,0,0,0,1,0),
(34457,0,0,0,0,0,4096,0);

-- 6052
ALTER TABLE `creature_loot_template` 
  DROP freeforall;
ALTER TABLE `disenchant_loot_template` 
  DROP freeforall;
ALTER TABLE `fishing_loot_template`
  DROP freeforall;
ALTER TABLE `gameobject_loot_template`
  DROP freeforall;
ALTER TABLE `item_loot_template`
  DROP freeforall;
ALTER TABLE `pickpocketing_loot_template`
  DROP freeforall;
ALTER TABLE `prospecting_loot_template`
  DROP freeforall;
ALTER TABLE `skinning_loot_template` 
  DROP freeforall;

-- 6058
DELETE FROM `spell_learn_spell` WHERE `entry` = 71;
DELETE FROM `spell_learn_spell` WHERE `entry` = 2842;
INSERT INTO `spell_learn_spell` VALUES (2842,8681); 

-- 6061
DROP TABLE IF EXISTS `quest_mail_loot_template`;
CREATE TABLE `quest_mail_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `ChanceOrQuestChance` float NOT NULL default '100',
  `groupid` tinyint(3) unsigned NOT NULL default '0',
  `mincountOrRef` mediumint(9) NOT NULL default '1',
  `maxcount` tinyint(3) unsigned NOT NULL default '1',
  `lootcondition` tinyint(3) unsigned NOT NULL default '0',
  `condition_value1` mediumint(8) unsigned NOT NULL default '0',
  `condition_value2` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';
ALTER TABLE quest_template
  ADD COLUMN `RewMailTemplateId` mediumint(8) unsigned NOT NULL default '0' AFTER `RewSpellCast`,
  ADD COLUMN `RewMailDelaySecs` int(11) unsigned NOT NULL default '0' AFTER `RewMailTemplateId`;

-- 6062
DELETE FROM spell_proc_event WHERE entry = 13743 OR entry = 13875;
DELETE FROM spell_proc_event WHERE entry = 14076 OR entry = 14094;
UPDATE spell_proc_event SET Category = 0, SkillId = 0 WHERE entry = 12797 OR entry = 12799 OR entry = 12800;
UPDATE spell_proc_event SET Category = 0 WHERE entry = 13754 OR entry = 13867;
UPDATE spell_proc_event SET Category = 0 WHERE entry = 40458;
UPDATE spell_proc_event SET SkillId = 0 WHERE entry = 16850 OR entry = 16923 OR entry = 16924;
UPDATE spell_proc_event SET SkillId = 0 WHERE entry = 17793 OR entry = 17796 OR entry = 17801 OR entry = 17802 OR entry = 17803;
UPDATE spell_proc_event SET SkillId = 0, SchoolMask = 0 WHERE entry = 23721;
UPDATE spell_proc_event SET SkillId = 0, SchoolMask = 0 WHERE entry = 28809;
UPDATE spell_proc_event SET SkillId = 0, SchoolMask = 0 WHERE entry = 28823;
UPDATE spell_proc_event SET SkillId = 0 WHERE entry = 23695;
UPDATE spell_proc_event SET SchoolMask = 0, SpellFamilyMask = 0x8000000060 WHERE entry = 18073 OR entry = 18096;
UPDATE spell_proc_event SET SchoolMask = 0 WHERE entry = 19407 OR entry = 19412 OR entry = 19413 OR entry = 19414 OR entry = 19415;
UPDATE spell_proc_event SET SchoolMask = 0 WHERE entry = 20234 OR entry = 20235;
UPDATE spell_proc_event SET SchoolMask = 0 WHERE entry = 23551 OR entry = 23572;
UPDATE spell_proc_event SET SchoolMask = 0 WHERE entry = 38394;