-- 8800
ALTER TABLE db_version CHANGE COLUMN required_8777_02_mangos_gameobject required_8800_01_mangos_spell_elixir bit;
DELETE FROM `spell_elixir` WHERE `entry` IN (67016,67017,67018);
/* Flasks added in 3.2.x */
INSERT INTO `spell_elixir` (`entry`, `mask`) VALUES
(67016,0x3),
(67017,0x3),
(67018,0x3);

-- 8803
ALTER TABLE db_version CHANGE COLUMN required_8800_01_mangos_spell_elixir required_8803_01_mangos_playercreateinfo_spell bit;
UPDATE `playercreateinfo_spell` SET `spell` = 26297 WHERE `spell` IN (20554,26296,50621);
ALTER TABLE db_version CHANGE COLUMN required_8803_01_mangos_playercreateinfo_spell required_8803_02_mangos_playercreateinfo_action bit;
UPDATE `playercreateinfo_action` 
 SET `action` = 26297
 WHERE `action` IN (20554,26296,50621) AND `type` = 0;

-- 8815
ALTER TABLE db_version CHANGE COLUMN required_8803_02_mangos_playercreateinfo_action required_8815_01_mangos_mangos_string bit;

-- this sql might delete some of your translated strings, if you translate them

DELETE FROM mangos_string WHERE entry in (718, 719);

INSERT INTO mangos_string VALUES (718,'|cffff0000[Arena Queue Announcer]:|r All Arenas -- Joined : %ux%u : %u|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO mangos_string VALUES (719,'|cffff0000[Arena Queue Announcer]:|r All Arenas -- Left : %ux%u : %u|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 8818
ALTER TABLE db_version CHANGE COLUMN required_8815_01_mangos_mangos_string required_8818_01_mangos_mangos_string bit;

-- this sql might delete some of your translated strings, if you translated them

DELETE FROM mangos_string WHERE entry in (714, 716, 752, 753, 754, 755, 757, 758, 783);

INSERT INTO mangos_string VALUES (752,'Only the Alliance can use that portal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO mangos_string VALUES (753,'Only the Horde can use that portal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 8828
ALTER TABLE db_version CHANGE COLUMN required_8818_01_mangos_mangos_string required_8828_02_mangos_instance_template bit;

ALTER TABLE instance_template
  DROP COLUMN maxPlayers,
  DROP COLUMN maxPlayersHeroic,
  DROP COLUMN reset_delay;

-- 8833
ALTER TABLE db_version CHANGE COLUMN required_8828_02_mangos_instance_template required_8833_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry in (349, 350, 351, 352, 353, 354, 355, 356);

INSERT INTO mangos_string VALUES
 (349,'%d (idx:%d) - |cffffffff|Htitle:%d|h[%s %s]|h|r %s %s ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (350,'%d (idx:%d) - [%s %s] %s %s ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (351,'No titles found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (352,'Invalid title id: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (353,'Title %u (%s) added to known titles list for player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (354,'Title %u (%s) removed from known titles list for player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (355,'Title %u (%s) set as current seelcted title for player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (356,'Current selected title for player %s reset as not known now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

ALTER TABLE db_version CHANGE COLUMN required_8833_01_mangos_mangos_string required_8833_02_mangos_command bit;

DELETE FROM command where name IN ('character titles','modify titles','titles add','titles current','titles remove','titles setmask');

INSERT INTO `command` VALUES
('character titles',2,'Syntax: .character titles [$player_name]\r\n\r\nShow known titles list for selected player or player find by $player_name.'),
('titles add',2,'Syntax: .titles add #title\r\nAdd title #title (id or shift-link) to known titles list for selected player.'),
('titles current',2,'Syntax: .titles current #title\r\nSet title #title (id or shift-link) as current selected titl for selected player. If title not in known title list for player then it will be added to list.'),
('titles remove',2,'Syntax: .titles remove #title\r\nRemove title #title (id or shift-link) from known titles list for selected player.'),
('titles setmask',2,'Syntax: .titles setmask #mask\r\n\r\nAllows user to use all titles from #mask.\r\n\r\n #mask=0 disables the title-choose-field');

-- 8835
ALTER TABLE db_version CHANGE COLUMN required_8833_02_mangos_command required_8835_01_mangos_command bit;

DELETE FROM command where name IN ('lookup title');

INSERT INTO `command` VALUES
('lookup title',2,'Syntax: .lookup title $$namepart\r\n\r\nLooks up a title by $namepart, and returns all matches with their title ID\'s and index\'s.');

-- 8840
ALTER TABLE db_version CHANGE COLUMN required_8835_01_mangos_command required_8840_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry`=53601;

INSERT INTO spell_proc_event VALUES
(53601, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x000A02A8, 0x00000000, 0.000000, 0.000000,  6);

-- 8841
ALTER TABLE db_version CHANGE COLUMN required_8840_01_mangos_spell_proc_event required_8841_01_mangos_spell_proc_event bit;

ALTER TABLE `spell_proc_event`
 CHANGE `entry` `entry` mediumint(8) unsigned NOT NULL default '0';

DELETE FROM `spell_proc_event` WHERE `entry` IN (65661);

INSERT INTO `spell_proc_event` VALUES
 (65661, 0, 15, 0x00400010, 0x20020004, 0x00000000, 0x00000010, 0x00000000, 0.000000, 100.000000, 0);

ALTER TABLE db_version CHANGE COLUMN required_8841_01_mangos_spell_proc_event required_8841_02_mangos_spell_chain bit;

DELETE FROM spell_chain WHERE first_spell = 65661;

INSERT INTO spell_chain VALUES
(65661,0,65661,1,0),
(66191,65661,65661,2,0),
(66192,66191,65661,3,0);

-- 8847
ALTER TABLE db_version CHANGE COLUMN required_8841_02_mangos_spell_chain required_8847_01_mangos_spell_proc_event bit;

-- (20335) Heart of the Crusader (Rank 1)
DELETE FROM `spell_proc_event` WHERE `entry` IN (20335);
INSERT INTO `spell_proc_event` VALUES
 (20335, 0x00, 10, 0x00800000, 0x00000000, 0x00000008, 0x00000100, 0x00000000, 0.000000, 100.000000, 0);

ALTER TABLE db_version CHANGE COLUMN required_8847_01_mangos_spell_proc_event required_8847_02_mangos_spell_chain bit;

DELETE FROM spell_chain WHERE first_spell = 20335;

INSERT INTO spell_chain VALUES
 (20335, 0, 20335, 1, 0),
 (20336, 20335, 20335, 2, 0),
 (20337, 20336, 20335, 3, 0);

-- 8851
ALTER TABLE db_version CHANGE COLUMN required_8847_02_mangos_spell_chain required_8851_01_mangos_spell_proc_event bit;

-- Taste for Blood (1/2/3 ranks)
DELETE FROM spell_proc_event WHERE entry IN (56636, 56637, 56638);
INSERT INTO spell_proc_event VALUES
(56636, 0x00000000,  4, 0x00000020, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  6),
(56637, 0x00000000,  4, 0x00000020, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  6),
(56638, 0x00000000,  4, 0x00000020, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  6);

-- 8856
ALTER TABLE db_version CHANGE COLUMN required_8851_01_mangos_spell_proc_event required_8856_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (58617);
INSERT INTO `spell_proc_event` VALUES
(58617, 0x00000000, 15, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- 8863
ALTER TABLE db_version CHANGE COLUMN required_8856_01_mangos_spell_proc_event required_8863_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (58616,58617);
INSERT INTO `spell_proc_event` VALUES
(58616, 0x00000000, 15, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- 8873
ALTER TABLE db_version CHANGE COLUMN required_8863_01_mangos_spell_proc_event required_8873_01_mangos_spell_proc_event bit;

-- (56816) Rune Strike ()
DELETE FROM `spell_proc_event` WHERE `entry` IN (56816);
INSERT INTO `spell_proc_event` VALUES
(56816, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000030, 0.000000, 0.000000, 0);

ALTER TABLE db_version CHANGE COLUMN required_8873_01_mangos_spell_proc_event required_8873_02_mangos_spell_learn_spell bit;

DELETE FROM spell_learn_spell WHERE SpellID = 56816;
INSERT INTO spell_learn_spell VALUES (56815, 56816, 0);

-- 8882
ALTER TABLE db_version CHANGE COLUMN required_8873_02_mangos_spell_learn_spell required_8882_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (63625);
INSERT INTO `spell_proc_event` VALUES
(63625, 0x00000000, 6, 0x02000000, 0x00000000, 0x00000000, 0x00010000, 0x00000000, 0.000000, 0.000000, 0);

DELETE FROM spell_proc_event WHERE entry IN (56637, 56638);

ALTER TABLE db_version CHANGE COLUMN required_8882_01_mangos_spell_proc_event required_8882_02_mangos_spell_chain bit;

DELETE FROM spell_chain WHERE first_spell = 56636;

/*Taste for Blood*/
INSERT INTO spell_chain VALUES
 (56636, 0, 56636, 1, 0),
 (56637, 56636, 56636, 2, 0),
 (56638, 56637, 56636, 3, 0);

ALTER TABLE db_version CHANGE COLUMN required_8882_02_mangos_spell_chain required_8882_03_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry = 63675;
INSERT INTO spell_bonus_data VALUES
(63675, 0, 0, 0, 'Priest - Improved Devouring Plague Triggered');

-- 8883
ALTER TABLE db_version CHANGE COLUMN required_8882_03_mangos_spell_bonus_data required_8883_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (63534);
INSERT INTO `spell_proc_event` VALUES
(63534, 0x00000000, 6, 0x00000040, 0x00000000, 0x00000000, 0x00004000, 0x00000000, 0.000000, 0.000000, 0);

ALTER TABLE db_version CHANGE COLUMN required_8883_01_mangos_spell_proc_event required_8883_02_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry = 63544;
INSERT INTO spell_bonus_data VALUES
(63544, 0, 0, 0, 'Priest - Empowered Renew Triggered');

-- 8886
ALTER TABLE db_version CHANGE COLUMN required_8883_02_mangos_spell_bonus_data required_8886_01_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN(60,61,62);
INSERT INTO mangos_string VALUES
(60,'I\'m busy right now, come back later.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(61,'Username: ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(62,'Password: ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 8889
ALTER TABLE db_version CHANGE COLUMN required_8886_01_mangos_string required_8889_01_mangos_spell_pet_auras bit;

DELETE FROM spell_pet_auras WHERE aura = 57989;

INSERT INTO `spell_pet_auras` VALUES
(58228, 0, 19668, 57989);

-- 8891
ALTER TABLE db_version CHANGE COLUMN required_8889_01_mangos_spell_pet_auras required_8891_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (64976);
INSERT INTO `spell_proc_event` VALUES
(64976, 0x00000000, 4, 0x00000001, 0x00000000, 0x00000000, 0x00010000, 0x00000000, 0.000000, 0.000000, 0);

-- 8893
ALTER TABLE db_version CHANGE COLUMN required_8891_01_mangos_spell_proc_event required_8893_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry in (355);

INSERT INTO mangos_string VALUES
 (355,'Title %u (%s) set as current selected title for player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 8899
ALTER TABLE db_version CHANGE COLUMN required_8893_01_mangos_mangos_string required_8899_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (57989);
INSERT INTO `spell_proc_event` VALUES
(57989, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0.000000, 0.000000, 0);

-- 8908
ALTER TABLE db_version CHANGE COLUMN required_8899_01_mangos_spell_proc_event required_8908_01_mangos_spell_chain bit;

DELETE FROM spell_chain WHERE spell_id IN (27681,32999,48074);
INSERT INTO spell_chain VALUES
(27681,14752,14752,2,0),
(32999,27681,14752,3,0),
(48074,32999,14752,4,0);

-- 8909
ALTER TABLE db_version CHANGE COLUMN required_8908_01_mangos_spell_chain required_8909_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (64127);
INSERT INTO `spell_proc_event` VALUES
(64127, 0x00000000, 6, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

-- 8912
ALTER TABLE db_version CHANGE COLUMN required_8909_01_mangos_spell_proc_event required_8912_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (67353);
INSERT INTO `spell_proc_event` VALUES
(67353, 0x00000000, 7, 0x00008000, 0x00100500, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

-- 8917
ALTER TABLE db_version CHANGE COLUMN required_8912_01_mangos_spell_proc_event required_8917_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (65661);
INSERT INTO `spell_proc_event` VALUES
(65661, 0x00000000, 15, 0x00400011, 0x00020004, 0x00000000, 0x00000010, 0x00000001, 0.000000, 100.000000,0);

-- 8923
ALTER TABLE db_version CHANGE COLUMN required_8917_01_mangos_spell_proc_event required_8923_01_mangos_gossip bit;

DROP TABLE IF EXISTS gossip_menu;
CREATE TABLE gossip_menu (
  entry smallint(6) unsigned NOT NULL default '0',
  text_id mediumint(8) unsigned NOT NULL default '0',
  cond_1 tinyint(3) unsigned NOT NULL default '0',
  cond_1_val_1 mediumint(8) unsigned NOT NULL default '0',
  cond_1_val_2 mediumint(8) unsigned NOT NULL default '0',
  cond_2 tinyint(3) unsigned NOT NULL default '0',
  cond_2_val_1 mediumint(8) unsigned NOT NULL default '0',
  cond_2_val_2 mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY (entry, text_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS gossip_menu_option;
CREATE TABLE gossip_menu_option (
  menu_id smallint(6) unsigned NOT NULL default '0',
  id smallint(6) unsigned NOT NULL default '0',
  option_icon mediumint(8) unsigned NOT NULL default '0',
  option_text text,
  option_id tinyint(3) unsigned NOT NULL default '0',
  npc_option_npcflag int(10) unsigned NOT NULL default '0',
  action_menu_id mediumint(8) unsigned NOT NULL default '0',
  action_poi_id mediumint(8) unsigned NOT NULL default '0',
  action_script_id mediumint(8) unsigned NOT NULL default '0',
  box_coded tinyint(3) unsigned NOT NULL default '0',
  box_money int(11) unsigned NOT NULL default '0',
  box_text text,
  cond_1 tinyint(3) unsigned NOT NULL default '0',
  cond_1_val_1 mediumint(8) unsigned NOT NULL default '0',
  cond_1_val_2 mediumint(8) unsigned NOT NULL default '0',
  cond_2 tinyint(3) unsigned NOT NULL default '0',
  cond_2_val_1 mediumint(8) unsigned NOT NULL default '0',
  cond_2_val_2 mediumint(8) unsigned NOT NULL default '0',
  cond_3 tinyint(3) unsigned NOT NULL default '0',
  cond_3_val_1 mediumint(8) unsigned NOT NULL default '0',
  cond_3_val_2 mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY (menu_id, id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DELETE FROM gossip_menu_option WHERE menu_id=0;
INSERT INTO gossip_menu_option VALUES
(0,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,1,1,'GOSSIP_OPTION_VENDOR',3,128,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,2,2,'GOSSIP_OPTION_TAXIVENDOR',4,8192,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,3,3,'GOSSIP_OPTION_TRAINER',5,16,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,4,4,'GOSSIP_OPTION_SPIRITHEALER',6,16384,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,5,4,'GOSSIP_OPTION_SPIRITGUIDE',7,32768,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,6,5,'GOSSIP_OPTION_INNKEEPER',8,65536,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,7,6,'GOSSIP_OPTION_BANKER',9,131072,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,8,7,'GOSSIP_OPTION_PETITIONER',10,262144,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,9,8,'GOSSIP_OPTION_TABARDDESIGNER',11,524288,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,10,9,'GOSSIP_OPTION_BATTLEFIELD',12,1048576,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,11,6,'GOSSIP_OPTION_AUCTIONEER',13,2097152,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,12,0,'GOSSIP_OPTION_STABLEPET',14,4194304,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,13,1,'GOSSIP_OPTION_ARMORER',15,4096,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,14,2,'GOSSIP_OPTION_UNLEARNTALENTS',16,16,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0),
(0,15,2,'GOSSIP_OPTION_UNLEARNPETSKILLS',17,16,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0);

ALTER TABLE creature_template ADD gossip_menu_id mediumint(8) unsigned NOT NULL default 0 AFTER IconName;

ALTER TABLE locales_npc_option CHANGE COLUMN entry id smallint(6) unsigned NOT NULL default '0';
ALTER TABLE locales_npc_option ADD menu_id smallint(6) unsigned NOT NULL default '0' FIRST;

ALTER TABLE locales_npc_option DROP PRIMARY KEY;
ALTER TABLE locales_npc_option ADD PRIMARY KEY (menu_id, id);

RENAME TABLE locales_npc_option TO locales_gossip_menu_option;

DROP TABLE IF EXISTS npc_option;
DROP TABLE IF EXISTS npc_gossip_textid;

-- 8929
ALTER TABLE db_version CHANGE COLUMN required_8923_01_mangos_gossip required_8929_01_mangos_gossip_scripts bit;

DROP TABLE IF EXISTS `gossip_scripts`;
CREATE TABLE `gossip_scripts` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `delay` int(10) unsigned NOT NULL default '0',
  `command` mediumint(8) unsigned NOT NULL default '0',
  `datalong` mediumint(8) unsigned NOT NULL default '0',
  `datalong2` int(10) unsigned NOT NULL default '0',
  `dataint` int(11) NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `o` float NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 8930
ALTER TABLE db_version CHANGE COLUMN required_8929_01_mangos_gossip_scripts required_8930_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (58597);
INSERT INTO `spell_proc_event` VALUES
(58597, 0x00000000, 10, 0x40000000, 0x00000000, 0x00000000, 0x00008000, 0x00000000, 0.000000, 100.000000,0);

-- 8931
ALTER TABLE db_version CHANGE COLUMN required_8930_01_mangos_spell_proc_event required_8931_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry = 172;
INSERT INTO spell_bonus_data  (entry, direct_bonus, dot_bonus, ap_bonus, comments) VALUES
(172, 0, 0.2, 0, 'Warlock - Corruption');

-- 8932
ALTER TABLE db_version CHANGE COLUMN required_8931_01_mangos_spell_bonus_data required_8932_01_mangos_spell_chain bit;

DELETE FROM spell_chain WHERE spell_id IN (50518,53558,53559,53560,53561,53562);
INSERT INTO spell_chain VALUES
(50518,0,50518,1,0),
(53558,50518,50518,2,0),
(53559,53558,50518,3,0),
(53560,53559,50518,4,0),
(53561,53560,50518,5,0),
(53562,53561,50518,6,0);

-- 8938
ALTER TABLE db_version CHANGE COLUMN required_8932_01_mangos_spell_chain required_8938_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (50880);
INSERT INTO `spell_proc_event` VALUES
(50880, 0x00000010, 15, 0x00000000, 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

-- 8943
ALTER TABLE db_version CHANGE COLUMN required_8938_01_mangos_spell_proc_event required_8943_01_mangos_spell_chain bit;

DELETE FROM spell_chain WHERE spell_id IN (24604,64491,64492,64493,64494,64495);
-- Furious Howl
INSERT INTO spell_chain VALUES
(24604,0,24604,1,0),
(64491,24604,24604,2,0),
(64492,64491,24604,3,0),
(64493,64492,24604,4,0),
(64494,64493,24604,5,0),
(64495,64494,24604,6,0);

-- 8946
ALTER TABLE db_version CHANGE COLUMN required_8943_01_mangos_spell_chain required_8946_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (57499);
INSERT INTO `spell_proc_event` VALUES
(57499, 0x00000000,  4, 0x40000001, 0x00010000, 0x00000000, 0x00014000, 0x00000000, 0.000000, 0.000000,0);

-- 8950
ALTER TABLE db_version CHANGE COLUMN required_8946_01_mangos_spell_proc_event required_8950_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (55166);
INSERT INTO `spell_proc_event` VALUES
(55166, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000,0);

-- not Mangos sql, but UDB bug (possible missed an update somewhere)
DELETE FROM `spell_proc_event` WHERE `entry` IN (57352);
INSERT INTO `spell_proc_event` VALUES (57352, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x00010154, 0x00000003, 0.000000, 0.000000, 45);

-- 8965
ALTER TABLE db_version CHANGE COLUMN required_8950_01_mangos_spell_proc_event required_8965_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry in (1015);

INSERT INTO mangos_string VALUES
 (1015,'Used not fully typed quit command, need type it fully (quit), or command used not in RA command line.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

ALTER TABLE db_version CHANGE COLUMN required_8965_01_mangos_mangos_string required_8965_02_mangos_command bit;

DELETE FROM command where name IN ('quit');

INSERT INTO `command` VALUES
('quit',4,'Syntax: quit\r\n\r\nClose RA connection. Command must be typed fully (quit).');

-- 8980
ALTER TABLE db_version CHANGE COLUMN required_8965_02_mangos_command required_8980_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry = 56160;
INSERT INTO spell_bonus_data  (entry, direct_bonus, dot_bonus, ap_bonus, comments) VALUES
(56160, 0, 0, 0, 'Item - Glyph of Power Word: Shield');

-- 8981
ALTER TABLE db_version CHANGE COLUMN required_8980_01_mangos_spell_bonus_data required_8981_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` = 57352;
INSERT INTO `spell_proc_event` VALUES
(57352, 0x00000000,  0, 0x00000001, 0x00000040, 0x00000000, 0x00010154, 0x00000003, 0.000000, 0.000000, 45);

-- 8988
ALTER TABLE db_version CHANGE COLUMN required_8981_01_mangos_spell_proc_event required_8988_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (53817);
INSERT INTO `spell_proc_event` VALUES
(53817, 0x00000000, 11, 0x00000143, 0x00008000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,0);

-- 8992
ALTER TABLE db_version CHANGE COLUMN required_8988_01_mangos_spell_proc_event required_8992_01_mangos_spell_proc_event bit;

/*Ferocious Inspiration*/
DELETE FROM `spell_proc_event` WHERE `entry` IN (34457);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(34457, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);

/*Frenzy*/
DELETE FROM `spell_proc_event` WHERE `entry` IN (20784);
INSERT INTO `spell_proc_event` (`entry` ,`SchoolMask` ,`SpellFamilyName` ,`SpellFamilyMask0` ,`SpellFamilyMask1` ,`SpellFamilyMask2` ,`procFlags` ,`procEx` ,`ppmRate` ,`CustomChance` ,`Cooldown`)VALUES 
(20784, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);

/*Master Tactician*/
DELETE FROM `spell_proc_event` WHERE `entry` IN (34506, 34507, 34508, 34838, 34839);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(34506, 0x00000000,  9, 0x0007FA01, 0x00801081, 0x08000201, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

/*Hunting Party*/
DELETE FROM `spell_proc_event` WHERE entry IN (53290, 53291, 53292);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(53290, 0x00000000,  9, 0x00000800, 0x00000001, 0x00000200, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);

/*Bloodsurge*/
DELETE FROM `spell_proc_event` WHERE `entry` IN (46913, 46914, 46915);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `cooldown`) VALUES
(46913, 0x00000000,  4, 0x00000040, 0x00000404, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

/*Entrapment*/
DELETE FROM `spell_proc_event` WHERE `entry` IN (19184, 19387, 19388);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(19184, 0x00000000,  9, 0x00000010, 0x00002000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

/*Concussive Barrage*/
DELETE FROM `spell_proc_event` WHERE `entry` IN (35100, 35102);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(35100, 0x00000000,  9, 0x00001000, 0x00000000, 0x00000001, 0x00000100, 0x00000000, 0.000000, 0.000000, 0);

/*Improved Stormstrike*/
DELETE FROM `spell_proc_event` WHERE `entry` IN (51521, 51522);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(51521, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 1);

ALTER TABLE db_version CHANGE COLUMN required_8992_01_mangos_spell_proc_event required_8992_02_mangos_spell_chain bit;

/*Master Tactician*/
DELETE FROM spell_chain WHERE first_spell = 34506;
INSERT INTO spell_chain VALUES
(34506, 0, 34506, 1, 0),
(34507, 34506, 34506, 2, 0),
(34508, 34507, 34506, 3, 0),
(34838, 34508, 34506, 4, 0),
(34839, 34838, 34506, 5, 0);

/*Hunting Party*/
DELETE FROM spell_chain WHERE first_spell = 53290;
INSERT INTO spell_chain VALUES
(53290, 0, 53290, 1, 0),
(53291, 53290, 53290, 2, 0),
(53292, 53291, 53290, 3, 0);

/*Bloodsurge*/
DELETE FROM spell_chain WHERE first_spell = 46913;
INSERT INTO spell_chain VALUES
(46913, 0, 46913, 1, 0),
(46914, 46913, 46913, 2, 0),
(46915, 46914, 46913, 3, 0);

/*Entrapment*/
DELETE FROM spell_chain WHERE first_spell = 19184;
INSERT INTO spell_chain VALUES
(19184, 0, 19184, 1, 0),
(19387, 19184, 19184, 2, 0),
(19388, 19387, 19184, 3, 0);

/*Concussive Barrage*/
DELETE FROM spell_chain WHERE first_spell = 35100;
INSERT INTO spell_chain VALUES
(35100, 0, 35100, 1, 0),
(35102, 35100, 35100, 2, 0);

/*Improved Stormstrike*/
DELETE FROM spell_chain WHERE first_spell = 51521;
INSERT INTO spell_chain VALUES
(51521, 0, 51521, 1, 0),
(51522, 51521, 51521, 2, 0);

-- 8993
ALTER TABLE db_version CHANGE COLUMN required_8992_02_mangos_spell_chain required_8993_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (53817);
INSERT INTO `spell_proc_event` VALUES
(53817, 0x00000000, 11, 0x000001C3, 0x00008000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,0);
