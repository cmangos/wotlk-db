-- 7536
ALTER TABLE db_version CHANGE COLUMN required_7503_01_mangos_command required_7536_01_mangos_spell_chain bit;
DELETE FROM spell_chain WHERE  spell_id in (13819,23214,34769,34767);
INSERT INTO `spell_chain` VALUES
 (13819,0,    13819,1,0    ),
 (23214,13819,13819,2,33391),
 (34769,0,    34769,1,0    ),
 (34767,34769,34769,2,33391);

-- 7544
ALTER TABLE db_version CHANGE COLUMN required_7536_01_mangos_spell_chain required_7544_01_mangos_uptime bit;
DROP TABLE IF EXISTS `uptime`;

-- 7558
ALTER TABLE db_version CHANGE COLUMN required_7544_01_mangos_uptime required_7558_01_mangos_mangos_string bit;
DELETE FROM mangos_string WHERE entry IN (1123,1124,1125,1126,1127);
INSERT INTO mangos_string VALUES
(1123,'Not pet found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1124,'Wrong pet type',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1125,'Your pet learned all talents',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1126,'Your pet talents have been reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1127,'Talents of %s\'s pet reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_7558_01_mangos_mangos_string required_7558_02_mangos_command bit;
DELETE FROM `command` WHERE `name` IN ('learn all_mypettalents');
INSERT INTO `command` VALUES
('learn all_mypettalents',3,'Syntax: .learn all_mypettalents\r\n\r\nLearn all talents for your pet available for his creature type (only for hunter pets).');

-- 7560
ALTER TABLE db_version CHANGE COLUMN required_7558_02_mangos_command required_7560_01_mangos_gameobject_template bit;
ALTER TABLE gameobject_template
  ADD COLUMN IconName varchar(100) NOT NULL default '' AFTER name;

-- 7565
ALTER TABLE db_version CHANGE COLUMN required_7560_01_mangos_gameobject_template required_7565_01_mangos_mangos_string bit;
DELETE FROM mangos_string WHERE entry IN(1010,1011,1012,1013,1014);
INSERT INTO mangos_string VALUES
(1010,'|    Account    |       Character      |       IP        | GM | Expansion |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1011,'|<Error>        | %20s |<Error>          |<Er>| <Error>   |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1012,'===========================================================================',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1013,'|%15s| %20s | %15s |%4d| %9d |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1014,'No online players.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 7568
ALTER TABLE db_version CHANGE COLUMN required_7565_01_mangos_mangos_string required_7568_01_mangos_spell_proc_event bit;
DELETE FROM `spell_proc_event` WHERE `entry` IN (53569);
INSERT INTO `spell_proc_event` VALUES (53569, 0x00, 10, 0x00200000, 0x00010000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (53576);
INSERT INTO `spell_proc_event` VALUES (53576, 0x00, 10, 0x00200000, 0x00010000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (54149);
INSERT INTO `spell_proc_event` VALUES (54149, 0x00, 10, 0x00200000, 0x00010000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (55776);
INSERT INTO `spell_proc_event` VALUES (55776, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45);
DELETE FROM `spell_proc_event` WHERE `entry` IN (55768);
INSERT INTO `spell_proc_event` VALUES (55768, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45);
DELETE FROM `spell_proc_event` WHERE `entry` IN (55640);
INSERT INTO `spell_proc_event` VALUES (55640, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45);
DELETE FROM `spell_proc_event` WHERE `entry` IN (55380);
INSERT INTO `spell_proc_event` VALUES (55380, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45);
DELETE FROM `spell_proc_event` WHERE `entry` IN (56355);
INSERT INTO `spell_proc_event` VALUES (56355, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000040, 0.000000, 0.000000, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (61345);
INSERT INTO `spell_proc_event` VALUES (61345, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (61346);
INSERT INTO `spell_proc_event` VALUES (61346, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (61356);
INSERT INTO `spell_proc_event` VALUES (61356, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (24905);
INSERT INTO `spell_proc_event` VALUES (24905, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 15.000000, 0.000000, 0);

-- 7615
ALTER TABLE db_version CHANGE COLUMN required_7568_01_mangos_spell_proc_event required_7615_01_mangos_command bit;
DELETE FROM `command` WHERE `name` IN ('senditems','sendmail','sendmoney','sendmessage','send items','send mail','send money','send message');
INSERT INTO `command` VALUES
('send items',3,'Syntax: .send items #playername "#subject" "#text" itemid1[:count1] itemid2[:count2] ... itemidN[:countN]\r\n\r\nSend a mail to a player. Subject and mail text must be in "". If for itemid not provided related count values then expected 1, if count > max items in stack then items will be send in required amount stacks. All stacks amount in mail limited to 12.'),
('send mail',1,'Syntax: .send mail #playername "#subject" "#text"\r\n\r\nSend a mail to a player. Subject and mail text must be in "".'),
('send message',3,'Syntax: .send message $playername $message\r\n\r\nSend screen message to player from ADMINISTRATOR.'),
('send money','3','Syntax: .send money #playername "#subject" "#text" #money\r\n\r\nSend mail with money to a player. Subject and mail text must be in "".');

-- 7616
ALTER TABLE db_version CHANGE COLUMN required_7615_01_mangos_command required_7616_01_mangos_mangos_string bit;
DELETE FROM mangos_string WHERE entry IN(1200,1201);
INSERT INTO mangos_string VALUES
(1200,'You try to view cinemitic %u but it doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1201,'You try to view movie %u but it doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_7616_01_mangos_mangos_string required_7616_02_mangos_command bit;
DELETE FROM `command` WHERE `name` IN ('debug playsound','debug play sound','debug play cinematic','debug play movie');
INSERT INTO `command` VALUES
('debug play cinematic',1,'Syntax: .debug play cinematic #cinematicid\r\n\r\nPlay cinematic #cinematicid for you. You stay at place while your mind fly.\r\n'),
('debug play movie',1,'Syntax: .debug play movie #movieid\r\n\r\nPlay movie #movieid for you.'),
('debug play sound',1,'Syntax: .debug play sound #soundid\r\n\r\nPlay sound with #soundid.\r\nSound will be play only for you. Other players do not hear this.\r\nWarning: client may have more 5000 sounds...');

-- 7622
ALTER TABLE db_version CHANGE COLUMN required_7616_02_mangos_command required_7622_01_mangos_creature_ai_scripts bit;
DROP TABLE IF EXISTS `creature_ai_scripts`;
CREATE TABLE `creature_ai_scripts` (
  `id` int(11) unsigned NOT NULL COMMENT 'Identifier' AUTO_INCREMENT,
  `creature_id` int(11) unsigned NOT NULL default '0' COMMENT 'Creature Template Identifier',
  `event_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Event Type',
  `event_inverse_phase_mask` int(11) signed NOT NULL default '0' COMMENT 'Mask which phases this event will not trigger in',
  `event_chance` int(3) unsigned NOT NULL default '100',
  `event_flags` int(3) unsigned NOT NULL default '0',
  `event_param1` int(11) signed NOT NULL default '0',
  `event_param2` int(11) signed NOT NULL default '0',
  `event_param3` int(11) signed NOT NULL default '0',
  `event_param4` int(11) signed NOT NULL default '0',
  `action1_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Action Type',
  `action1_param1` int(11) signed NOT NULL default '0',
  `action1_param2` int(11) signed NOT NULL default '0',
  `action1_param3` int(11) signed NOT NULL default '0',
  `action2_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Action Type',
  `action2_param1` int(11) signed NOT NULL default '0',
  `action2_param2` int(11) signed NOT NULL default '0',
  `action2_param3` int(11) signed NOT NULL default '0',
  `action3_type` tinyint(5) unsigned NOT NULL default '0' COMMENT 'Action Type',
  `action3_param1` int(11) signed NOT NULL default '0',
  `action3_param2` int(11) signed NOT NULL default '0',
  `action3_param3` int(11) signed NOT NULL default '0',
  `comment` varchar(255) NOT NULL default '' COMMENT 'Event Comment',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='EventAI Scripts';
ALTER TABLE db_version CHANGE COLUMN required_7622_01_mangos_creature_ai_scripts required_7622_02_mangos_creature_ai_summons bit;
DROP TABLE IF EXISTS `creature_ai_summons`;
CREATE TABLE `creature_ai_summons` (
  `id` int(11) unsigned NOT NULL COMMENT 'Location Identifier' AUTO_INCREMENT,
  `position_x` float NOT NULL default '0',
  `position_y` float NOT NULL default '0',
  `position_z` float NOT NULL default '0',
  `orientation` float NOT NULL default '0',
  `spawntimesecs` int(11) unsigned NOT NULL default '120',
  `comment` varchar(255) NOT NULL default '' COMMENT 'Summon Comment',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='EventAI Summoning Locations';
ALTER TABLE db_version CHANGE COLUMN required_7622_02_mangos_creature_ai_summons required_7622_03_mangos_creature_ai_texts bit;
DROP TABLE IF EXISTS `creature_ai_texts`;
CREATE TABLE `creature_ai_texts` (
  `entry` mediumint(8) NOT NULL,
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  `sound` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `emote` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Script Texts';

-- 7627
ALTER TABLE db_version CHANGE COLUMN required_7622_03_mangos_creature_ai_texts required_7627_01_mangos_achievement_criteria_data bit;
DROP TABLE IF EXISTS `achievement_criteria_data`;
CREATE TABLE `achievement_criteria_data` (
  `criteria_id` mediumint(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `value1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`criteria_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Achievment system';

-- 7633
ALTER TABLE db_version CHANGE COLUMN required_7627_01_mangos_achievement_criteria_data required_7633_01_mangos_achievement_criteria_data bit;
ALTER TABLE `achievement_criteria_data`
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (`criteria_id`,`type`);

-- 7643
ALTER TABLE db_version CHANGE COLUMN required_7633_01_mangos_achievement_criteria_data required_7643_01_mangos_db_version bit;
ALTER TABLE db_version
   ADD COLUMN creature_ai_version varchar(120) default NULL AFTER version;
UPDATE db_version
  SET creature_ai_version = 'Mangos default creature EventAI data.';
ALTER TABLE db_version CHANGE COLUMN required_7643_01_mangos_db_version required_7643_02_mangos_mangos_string bit;
DELETE FROM mangos_string WHERE entry IN(59);
INSERT INTO mangos_string VALUES
(59,'Using creature EventAI: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 7662
ALTER TABLE db_version CHANGE COLUMN required_7643_02_mangos_mangos_string required_7662_01_mangos_spell_chain bit;
DELETE FROM `spell_chain` WHERE spell_id IN (50288, 53191, 53194, 53195);
INSERT INTO `spell_chain` VALUES
(50288, 0, 50288, 1, 0),
(53191, 50288, 50288, 2, 0),
(53194, 53191, 50288, 3, 0),
(53195, 53194, 50288, 4, 0);
DELETE FROM `spell_chain` WHERE spell_id IN (50294, 53188, 53189, 53190);
INSERT INTO `spell_chain` VALUES
(50294, 0, 50294, 1, 0),
(53188, 50294, 50294, 2, 0),
(53189, 53188, 50294, 3, 0),
(53190, 53189, 50294, 4, 0);
ALTER TABLE db_version CHANGE COLUMN required_7662_01_mangos_spell_chain required_7662_02_mangos_spell_bonus_data bit;
DELETE FROM `spell_bonus_data` WHERE entry IN (50288, 50294);
INSERT INTO `spell_bonus_data` VALUES
(50288, 0.05, 0, 0, "Druid - Starfall"),
(50294, 0.012, 0, 0, "Druid - Starfall AOE");

