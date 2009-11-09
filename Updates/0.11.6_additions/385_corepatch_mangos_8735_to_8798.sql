-- 8749
ALTER TABLE db_version CHANGE COLUMN required_8731_01_mangos_creature_template required_8749_01_mangos_mail_loot_template bit;

RENAME TABLE quest_mail_loot_template TO mail_loot_template;

UPDATE mail_loot_template, quest_template
  SET mail_loot_template.entry = quest_template.RewMailTemplateId WHERE mail_loot_template.entry = quest_template.entry;

-- 8769
ALTER TABLE db_version CHANGE COLUMN required_8749_01_mangos_mail_loot_template required_8769_01_mangos_mail_level_reward bit;

DROP TABLE IF EXISTS `mail_level_reward`;
CREATE TABLE `mail_level_reward` (
  `level` tinyint(3) unsigned NOT NULL default '0',
  `raceMask` mediumint(8) unsigned NOT NULL default '0',
  `mailTemplateId` mediumint(8) unsigned NOT NULL default '0',
  `senderEntry`    mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`level`,`raceMask`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Mail System';

-- 8770
ALTER TABLE db_version CHANGE COLUMN required_8769_01_mangos_mail_level_reward required_8770_01_mangos_quest_template bit;

ALTER TABLE quest_template
  CHANGE COLUMN QuestLevel QuestLevel smallint(6) NOT NULL DEFAULT 0;

-- 8775
ALTER TABLE db_version CHANGE COLUMN required_8770_01_mangos_quest_template required_8775_01_mangos_creature_template bit;

ALTER TABLE `creature_template` ADD `difficulty_entry_2` MEDIUMINT(8) unsigned
 NOT NULL default 0 AFTER `difficulty_entry_1`;
ALTER TABLE `creature_template` ADD `difficulty_entry_3` MEDIUMINT(8) unsigned
 NOT NULL default 0 AFTER `difficulty_entry_2`;

ALTER TABLE db_version CHANGE COLUMN required_8775_01_mangos_creature_template required_8775_02_mangos_creature bit;

-- cause bgs now have different spawnmodes all creatures on those maps must go
-- to all spwanmodes.. maybe this isn't valid for all creatures - but i won't
-- destroy again all bgs :p
-- 0x1 = 2^0 - normal
-- 0x2 = 2^1 - difficulty_1
-- 0x4 = 2^2 - difficulty_2
-- 0x8 = 2^3 - difficulty_3
UPDATE creature SET spawnMask = (0x1 | 0x2 | 0x4 | 0x8) WHERE map IN (30, 489, 529, 566);

ALTER TABLE db_version CHANGE COLUMN required_8775_02_mangos_creature required_8775_03_mangos_gameobject bit;

-- cause bgs now have different spawnmodes all gameobjects on those maps must go
-- to all spwanmodes.. maybe this isn't valid for all gameobjects - but i won't
-- destroy again all bgs :p
UPDATE gameobject SET spawnMask = (0x1 | 0x2 | 0x4 | 0x8) WHERE map IN (30, 489, 529, 566);

-- 8777
ALTER TABLE db_version CHANGE COLUMN required_8775_03_mangos_gameobject required_8777_01_mangos_creature bit;

UPDATE creature SET spawnMask = 0x1 WHERE map IN (489, 529, 566);
UPDATE creature SET spawnMask = (0x1 | 0x2 | 0x4) WHERE map IN (30);

ALTER TABLE db_version CHANGE COLUMN required_8777_01_mangos_creature required_8777_02_mangos_gameobject bit;

UPDATE gameobject SET spawnMask = 0x1 WHERE map IN (489, 529, 566);
UPDATE gameobject SET spawnMask = (0x1 | 0x2 | 0x4) WHERE map IN (30);
