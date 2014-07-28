-- 12112
ALTER TABLE db_version CHANGE COLUMN required_12097_01_mangos_mangos_string required_12112_01_mangos_spell_template bit;

ALTER TABLE spell_template ADD COLUMN effect0_misc_value_b int(11) unsigned NOT NULL DEFAULT '0' AFTER effect0_misc_value;

-- 12113
ALTER TABLE db_version CHANGE COLUMN required_12112_01_mangos_spell_template required_12113_01_mangos_spell_template bit;

DELETE FROM spell_template WHERE id IN (34810, 34817, 34818, 34819, 35153, 35904, 35905, 35906);
INSERT INTO spell_template VALUES
(34810, 0x00000000, 101,  21,  28,  42,   8,   0, 20083,  64,    0,     'Summon Summoned Bloodwarder Mender behind of the caster'),
(34817, 0x00000000, 101,  21,  28,  44,   8,   0, 20078,  64,    0,     'Summon Summoned Bloodwarder Reservist right of the caster'),
(34818, 0x00000000, 101,  21,  28,  43,   8,   0, 20078,  64,    0,     'Summon Summoned Bloodwarder Reservist left of the caster'),
(34819, 0x00000000, 101,  21,  28,  41,   8,   0, 20078,  64,    0,     'Summon Summoned Bloodwarder Reservist front of the caster'),
(35153, 0x00000000, 101,  21,  28,  42,   8,   0, 20405,  64,    0,     'Summon Nether Charge behind of the caster'),
(35904, 0x00000000, 101,  21,  28,  44,   8,   0, 20405,  64,    0,     'Summon Nether Charge right of the caster'),
(35905, 0x00000000, 101,  21,  28,  43,   8,   0, 20405,  64,    0,     'Summon Nether Charge left of the caster'),
(35906, 0x00000000, 101,  21,  28,  41,   8,   0, 20405,  64,    0,     'Summon Nether Charge front of the caster');

-- 12148
ALTER TABLE db_version CHANGE COLUMN required_12113_01_mangos_spell_template required_12148_01_mangos_areatrigger_teleport bit;

ALTER TABLE areatrigger_teleport DROP COLUMN required_failed_text;

ALTER TABLE db_version CHANGE COLUMN required_12148_01_mangos_areatrigger_teleport required_12148_02_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry=818;
INSERT INTO mangos_string VALUES
(818,'You can\'t enter Black Morass until you rescue Thrall from Durnholde Keep.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 12188
ALTER TABLE db_version CHANGE COLUMN required_12148_02_mangos_mangos_string required_12188_01_mangos_vehicle_accessory bit;

DROP TABLE IF EXISTS vehicle_accessory;
CREATE TABLE `vehicle_accessory` (
  `vehicle_entry` int(10) UNSIGNED NOT NULL COMMENT 'entry of the npc who has some accessory as vehicle',
  `seat` mediumint(8) UNSIGNED NOT NULL COMMENT 'onto which seat shall the passenger be boarded',
  `accessory_entry` int(10) UNSIGNED NOT NULL COMMENT 'entry of the passenger that is to be boarded',
  `comment` varchar(255) NOT NULL,
  PRIMARY KEY  (`vehicle_entry`, `seat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Vehicle Accessory (passengers that are auto-boarded onto a vehicle)';

ALTER TABLE db_version CHANGE COLUMN required_12188_01_mangos_vehicle_accessory required_12189_01_mangos_creature_template_spells bit;

--  12189
DROP TABLE IF EXISTS `creature_template_spells`;
CREATE TABLE `creature_template_spells` (
  `entry` mediumint(8) unsigned NOT NULL,
  `spell1` mediumint(8) unsigned NOT NULL,
  `spell2` mediumint(8) unsigned NOT NULL default '0',
  `spell3` mediumint(8) unsigned NOT NULL default '0',
  `spell4` mediumint(8) unsigned NOT NULL default '0',
  `spell5` mediumint(8) unsigned NOT NULL default '0',
  `spell6` mediumint(8) unsigned NOT NULL default '0',
  `spell7` mediumint(8) unsigned NOT NULL default '0',
  `spell8` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System (Spells used by creature)';

--
-- Dumping data for table `creature_template_spells`
--
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) SELECT entry, spell1, spell2, spell3, spell4 FROM creature_template WHERE spell1!=0;

-- 12233
ALTER TABLE db_version CHANGE COLUMN required_12189_01_mangos_creature_template_spells required_12233_01_mangos_mangos_string bit;

DELETE FROM `mangos_string` WHERE `entry`=175;
INSERT INTO `mangos_string` (`entry`,`content_default`) VALUES
(175, 'Liquid level: %f, ground: %f, type flags %u, status: %d.');

-- 12235
ALTER TABLE db_version CHANGE COLUMN required_12233_01_mangos_mangos_string required_12235_01_mangos_mangos_string bit;

INSERT INTO mangos_string VALUES
(1194,'Current State Information: GOState %u, LootState %u. Collision %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1195,'Current State Information: GOState %u, LootState %u. Collision %s, (door %s by default)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 12258
ALTER TABLE db_version CHANGE COLUMN required_12235_01_mangos_mangos_string required_12258_01_mangos_mangos_string bit;

INSERT INTO mangos_string VALUES
(1509,'Pool %u not found (Maximal pool entry is %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 12268
ALTER TABLE db_version CHANGE COLUMN required_12258_01_mangos_mangos_string required_12268_01_mangos_dbscripts bit;

DROP TABLE IF EXISTS dbscripts_on_creature_movement;
RENAME TABLE creature_movement_scripts TO dbscripts_on_creature_movement;
DROP TABLE IF EXISTS dbscripts_on_event;
RENAME TABLE event_scripts TO dbscripts_on_event;
DROP TABLE IF EXISTS dbscripts_on_go_use;
RENAME TABLE gameobject_scripts TO dbscripts_on_go_use;
DROP TABLE IF EXISTS dbscripts_on_go_template_use;
RENAME TABLE gameobject_template_scripts TO dbscripts_on_go_template_use;
DROP TABLE IF EXISTS dbscripts_on_gossip;
RENAME TABLE gossip_scripts TO dbscripts_on_gossip;
DROP TABLE IF EXISTS dbscripts_on_quest_end;
RENAME TABLE quest_end_scripts TO dbscripts_on_quest_end;
DROP TABLE IF EXISTS dbscripts_on_quest_start;
RENAME TABLE quest_start_scripts TO dbscripts_on_quest_start;
DROP TABLE IF EXISTS dbscripts_on_spell;
RENAME TABLE spell_scripts TO dbscripts_on_spell;

DELETE FROM command WHERE name LIKE 'reload all_scripts';
INSERT INTO command VALUES
('reload all_scripts',3,'Syntax: .reload all_scripts\r\n\r\nReload `dbscripts_on_*` tables.');

-- 12269
ALTER TABLE db_version CHANGE COLUMN required_12268_01_mangos_dbscripts required_12269_01_mangos_creature_loot_template bit;
ALTER TABLE creature_loot_template DROP COLUMN lootcondition, DROP COLUMN condition_value1, DROP COLUMN condition_value2;

ALTER TABLE db_version CHANGE COLUMN required_12269_01_mangos_creature_loot_template required_12269_02_mangos_gameobject_loot_template bit;
ALTER TABLE gameobject_loot_template DROP COLUMN lootcondition, DROP COLUMN condition_value1, DROP COLUMN condition_value2;

ALTER TABLE db_version CHANGE COLUMN required_12269_02_mangos_gameobject_loot_template required_12269_03_mangos_fishing_loot_template bit;
ALTER TABLE fishing_loot_template DROP COLUMN lootcondition, DROP COLUMN condition_value1, DROP COLUMN condition_value2;

ALTER TABLE db_version CHANGE COLUMN required_12269_03_mangos_fishing_loot_template required_12269_04_mangos_reference_loot_template bit;
ALTER TABLE reference_loot_template DROP COLUMN lootcondition, DROP COLUMN condition_value1, DROP COLUMN condition_value2;

ALTER TABLE db_version CHANGE COLUMN required_12269_04_mangos_reference_loot_template required_12269_05_mangos_skinning_loot_template bit;
ALTER TABLE skinning_loot_template DROP COLUMN lootcondition, DROP COLUMN condition_value1, DROP COLUMN condition_value2;

ALTER TABLE db_version CHANGE COLUMN required_12269_05_mangos_skinning_loot_template required_12269_06_mangos_item_loot_template bit;
ALTER TABLE item_loot_template DROP COLUMN lootcondition, DROP COLUMN condition_value1, DROP COLUMN condition_value2;

ALTER TABLE db_version CHANGE COLUMN required_12269_06_mangos_item_loot_template required_12269_07_mangos_disenchant_loot_template bit;
ALTER TABLE disenchant_loot_template DROP COLUMN lootcondition, DROP COLUMN condition_value1, DROP COLUMN condition_value2;

ALTER TABLE db_version CHANGE COLUMN required_12269_07_mangos_disenchant_loot_template required_12269_08_mangos_milling_loot_template bit;
ALTER TABLE milling_loot_template DROP COLUMN lootcondition, DROP COLUMN condition_value1, DROP COLUMN condition_value2;

ALTER TABLE db_version CHANGE COLUMN required_12269_08_mangos_milling_loot_template required_12269_09_mangos_spell_loot_template bit;
ALTER TABLE spell_loot_template DROP COLUMN lootcondition, DROP COLUMN condition_value1, DROP COLUMN condition_value2;

ALTER TABLE db_version CHANGE COLUMN required_12269_09_mangos_spell_loot_template required_12269_10_mangos_prospecting_loot_template bit;
ALTER TABLE prospecting_loot_template DROP COLUMN lootcondition, DROP COLUMN condition_value1, DROP COLUMN condition_value2;

ALTER TABLE db_version CHANGE COLUMN required_12269_10_mangos_prospecting_loot_template required_12269_11_mangos_mail_loot_template bit;
ALTER TABLE pickpocketing_loot_template DROP COLUMN lootcondition, DROP COLUMN condition_value1, DROP COLUMN condition_value2;

ALTER TABLE db_version CHANGE COLUMN required_12269_11_mangos_mail_loot_template required_12269_12_mangos_pickpocketing_loot_template bit;
ALTER TABLE mail_loot_template DROP COLUMN lootcondition, DROP COLUMN condition_value1, DROP COLUMN condition_value2;

ALTER TABLE db_version CHANGE COLUMN required_12269_12_mangos_pickpocketing_loot_template required_12269_13_mangos_gossip_menu bit;
ALTER TABLE gossip_menu DROP COLUMN cond_2_val_2, DROP COLUMN cond_2_val_1, DROP COLUMN cond_2,
                        DROP COLUMN cond_1_val_2, DROP COLUMN cond_1_val_1, DROP COLUMN cond_1;
						
ALTER TABLE db_version CHANGE COLUMN required_12269_13_mangos_gossip_menu required_12269_14_mangos_gossip_menu_option bit;
ALTER TABLE gossip_menu_option DROP COLUMN cond_3_val_2, DROP COLUMN cond_3_val_1, DROP COLUMN cond_3,
                               DROP COLUMN cond_2_val_2, DROP COLUMN cond_2_val_1, DROP COLUMN cond_2,
                               DROP COLUMN cond_1_val_2, DROP COLUMN cond_1_val_1, DROP COLUMN cond_1;

-- 12278
ALTER TABLE db_version CHANGE COLUMN required_12269_14_mangos_gossip_menu_option required_12278_01_mangos_creature_template bit;
ALTER TABLE creature_template DROP COLUMN spell1, DROP COLUMN spell2, DROP COLUMN spell3, DROP COLUMN spell4;

-- 12279
ALTER TABLE db_version CHANGE COLUMN required_12278_01_mangos_creature_template required_12279_01_mangos_creature_template bit;
UPDATE creature_template SET flags_extra=flags_extra & ~0x800;

-- 12279
ALTER TABLE db_version CHANGE COLUMN required_12279_01_mangos_creature_template required_12338_01_mangos_character_calendar bit;

DROP TABLE IF EXISTS `calendar_events`;
CREATE TABLE `calendar_events` (
  `eventId` bigint(10) unsigned NOT NULL DEFAULT '0',
  `creatorGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `guildId` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '4',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `dungeonId` int(10) NOT NULL DEFAULT '-1',
  `eventTime` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(128) NOT NULL DEFAULT '',
  `description` varchar(1024) NOT NULL DEFAULT '',
  PRIMARY KEY  (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `calendar_invites`;
CREATE TABLE `calendar_invites` (
  `inviteId` bigint(10) unsigned NOT NULL DEFAULT '0',
  `eventId` bigint(10) unsigned NOT NULL DEFAULT '0',
  `inviteeGuid` int(10) unsigned NOT NULL DEFAULT '0',
  `senderGuid` int(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `lastUpdateTime` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY  (`inviteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 12339
ALTER TABLE db_version CHANGE COLUMN required_12338_01_mangos_character_calendar required_12339_01_mangos_calendar bit;

DROP TABLE IF EXISTS `calendar_events`;
DROP TABLE IF EXISTS `calendar_invites`;

-- 12344
ALTER TABLE db_version CHANGE COLUMN required_12339_01_mangos_calendar required_12344_01_mangos_command bit;

INSERT INTO `command` VALUES ('wp show', '2', 'Syntax: .wp show [#creature_guid or Select a Creature]\r\nwhere command can have one of the following values\r\non (to show all related wp)\r\nfirst (to see only first one)\r\nlast (to see only last one)\r\noff (to hide all related wp)\r\ninfo (to get more info about theses wp)\r\n\r\nFor using info you have to do first show on and than select a Visual-Waypoint and do the show info!')
ON DUPLICATE KEY UPDATE help=VALUES(help);

-- 12349
ALTER TABLE db_version CHANGE COLUMN required_12344_01_mangos_command required_12349_01_mangos_dbscripts_on_creature_death bit;


--
-- Table structure for table `dbscripts_on_creature_death`
--

DROP TABLE IF EXISTS `dbscripts_on_creature_death`;
CREATE TABLE `dbscripts_on_creature_death` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `delay` int(10) unsigned NOT NULL default '0',
  `command` mediumint(8) unsigned NOT NULL default '0',
  `datalong` mediumint(8) unsigned NOT NULL default '0',
  `datalong2` int(10) unsigned NOT NULL default '0',
  `buddy_entry` int(10) unsigned NOT NULL default '0',
  `search_radius` int(10) unsigned NOT NULL default '0',
  `data_flags` tinyint(3) unsigned NOT NULL default '0',
  `dataint` int(11) NOT NULL default '0',
  `dataint2` int(11) NOT NULL default '0',
  `dataint3` int(11) NOT NULL default '0',
  `dataint4` int(11) NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `o` float NOT NULL default '0',
  `comments` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 12357

ALTER TABLE db_version CHANGE COLUMN required_12349_01_mangos_dbscripts_on_creature_death required_12357_01_mangos_spell_script_target bit;

ALTER TABLE spell_script_target ADD COLUMN `inverseEffectMask` mediumint(8) unsigned NOT NULL DEFAULT '0' AFTER `targetEntry`;

-- 12363
ALTER TABLE db_version CHANGE COLUMN required_12357_01_mangos_spell_script_target required_12363_01_mangos_npc_vendor bit;
ALTER TABLE npc_vendor ADD COLUMN `condition_id` mediumint(8) unsigned NOT NULL default '0' AFTER ExtendedCost;

ALTER TABLE db_version CHANGE COLUMN required_12363_01_mangos_npc_vendor required_12363_02_mangos_npc_vendor_template bit;
ALTER TABLE npc_vendor_template ADD COLUMN `condition_id` mediumint(8) unsigned NOT NULL default '0' AFTER ExtendedCost;

-- 12401
ALTER TABLE db_version CHANGE COLUMN required_12363_02_mangos_npc_vendor_template required_12401_01_mangos_spell_template bit;

DELETE FROM spell_template WHERE id IN (37264, 37278, 37365);
INSERT INTO spell_template VALUES
(37264, 0x00000000, 101,  21,  28,  18,   7,   0, 21729, 64,     0,     'Power Converters: Summon Electromental (from cata)'),
(37278, 0x00000000, 101,  21,  28,  18,   1,   0, 21737, 64,     0,     'Power Converters: Summon Mini-Electromental (from cata)'),
(37365, 0x00000000, 101,  21,  28,  18,   1,   0, 21757, 64,     0,     'Power Converters: Summon Big Flavor Electromental (from cata)');

-- 12434
ALTER TABLE db_version CHANGE COLUMN required_12401_01_mangos_spell_template required_12434_01_mangos_spell_template bit;

ALTER TABLE spell_template ADD COLUMN attr int(11) unsigned NOT NULL DEFAULT '0' AFTER id;
ALTER TABLE spell_template ADD COLUMN attr_ex int(11) unsigned NOT NULL DEFAULT '0' AFTER attr;
ALTER TABLE spell_template ADD COLUMN attr_ex2 int(11) unsigned NOT NULL DEFAULT '0' AFTER attr_ex;
ALTER TABLE spell_template ADD COLUMN effect0_implicit_target_b int(11) unsigned NOT NULL DEFAULT '0' AFTER effect0_implicit_target_a;

DELETE FROM spell_template WHERE id IN (21387, 23363, 25192, 26133, 37264, 37278, 37365, 58630, 59046, 59450, 64899, 64985, 65074, 65195, 68184, 72845);
INSERT INTO spell_template VALUES
(21387, 0x00000140, 0x10000000, 0x00000000, 0x00000028,  15,  21,   6,   1,    0,   0,  42, 0,       0,    21388, 'Melt-Weapon trigger aura related used by Ragnaros'),
(23363, 0x00000100, 0x00000000, 0x00000000, 0x00000000, 101,  21,  76,  18,    0,   0,   0, 179804,  0,    0,     'Summon Drakonid Corpse Trigger'),
(25192, 0x00000100, 0x00000000, 0x00000004, 0x00000000, 101,  21,  76,  18,    0,   0,   0, 180619,  0,    0,     'Summon Ossirian Crystal'),
(26133, 0x00000100, 0x00000000, 0x00000000, 0x00000000, 101,  21,  76,  18,    0,   0,   0, 180795,  0,    0,     'Summon Sandworm Base'),
(37264, 0x00000180, 0x00000000, 0x00000004, 0x00000000, 101,  21,  28,  18,    0,   7,   0, 21729,  64,    0,     'Power Converters: Summon Electromental (from cata)'),
(37278, 0x00000180, 0x00000000, 0x00000004, 0x00000000, 101,  21,  28,  18,    0,   1,   0, 21737,  64,    0,     'Power Converters: Summon Mini-Electromental (from cata)'),
(37365, 0x00000180, 0x00000000, 0x00000004, 0x00000000, 101,  21,  28,  18,    0,   1,   0, 21757,  64,    0,     'Power Converters: Summon Big Flavor Electromental (from cata)'),
(58630, 0x00800180, 0x00000000, 0x00000005, 0x00000000, 101,  37,   6,  22,    7,  28,   4, 0,       0,    0,     'Achievement check - Mal\'Ganis'),
(59046, 0x00800180, 0x00000000, 0x00000005, 0x00000000, 101,  37,   6,  22,    7,  28,   4, 0,       0,    0,     'Achievement check - Tribunal of Ages'),
(59450, 0x00800180, 0x00000000, 0x00000005, 0x00000000, 101,  37,   6,  22,    7,  28,   4, 0,       0,    0,     'Achievement check - The Four Horsemen'),
(64899, 0x00800180, 0x00000000, 0x00000005, 0x00000000, 101,  37,   6,  22,    7,  28,   4, 0,       0,    0,     'Achievement check - Hodir'),
(64985, 0x00800180, 0x00000000, 0x00000005, 0x00000000, 101,  37,   6,  22,    7,  28,   4, 0,       0,    0,     'Achievement check - Thorim'),
(65074, 0x00800180, 0x00000000, 0x00000005, 0x00000000, 101,  37,   6,  22,    7,  28,   4, 0,       0,    0,     'Achievement check - Freya'),
(65195, 0x00800180, 0x00000000, 0x00000005, 0x00000000, 101,  37,   6,  22,    7,  28,   4, 0,       0,    0,     'Achievement check - Assembly of Iron'),
(68184, 0x00800180, 0x00000000, 0x00000005, 0x00000000, 101,  37,   6,  22,    7,  28,   4, 0,       0,    0,     'Achievement check - Faction Champions'),
(72845, 0x00800180, 0x00000000, 0x00000005, 0x00000000, 101,  37,   6,  22,    7,  28,   4, 0,       0,    0,     'Achievement check - Pit of Saron - Don\'t Look Up');

-- 12440
ALTER TABLE db_version CHANGE COLUMN required_12434_01_mangos_spell_template required_12440_01_mangos_spell_area bit;

ALTER TABLE spell_area ADD COLUMN `condition_id` mediumint(8) unsigned NOT NULL default '0' AFTER quest_end;

-- 12441
ALTER TABLE db_version CHANGE COLUMN required_12440_01_mangos_spell_area required_12441_01_mangos_npc_spellclick_spells bit;

ALTER TABLE npc_spellclick_spells ADD COLUMN `condition_id` mediumint(8) unsigned NOT NULL default '0' AFTER cast_flags;
