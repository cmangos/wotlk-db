-- common
ALTER TABLE db_version CHANGE COLUMN required_2008_10_31_01_mangos_creature_template required_2008_11_29_02_mangos_spell_elixir bit;

-- 31.10 
DELETE FROM mangos_string WHERE entry IN (343,344);
INSERT INTO mangos_string VALUES
(343,'Creature (Entry: %u) cannot be tamed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(344,'You already have pet.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM command WHERE name IN ('npc tame');
INSERT INTO command VALUES
('npc tame',2,'Syntax: .npc tame\r\n\r\nTame selected creature (tameable non pet creature). You don''t must have pet.');

-- 1.11 
DELETE FROM mangos_string WHERE entry IN (1119,1120,1121);
INSERT INTO mangos_string VALUES
(1119,'You must use male or female as gender.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1120,'You change gender of %s to %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1121,'Your gender changed to %s by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM command WHERE name IN ('modify gender');
INSERT INTO command VALUES
('modify gender',2,'Syntax: .modify gender male/female\r\n\r\nChange gender of selected player.');

-- 9.11  
delete from `command` where `name` IN ('senditems','sendmail');
insert into `command` (`name`, `security`, `help`) values
('senditems',3,'Syntax: .senditems #playername "#subject" "#text" itemid1[:count1] itemid2[:count2] ... itemidN[:countN]\r\n\r\nSend a mail to a player. Subject and mail text must be in "". If for itemid not provided related count values then expected 1, if count > max items in stack then items will be send in required amount stacks. All stacks amount in mail limited to 12.'),
('sendmail',1,'Syntax: .sendmail #playername "#subject" "#text"\r\n\r\nSend a mail to a player. Subject and mail text must be in "".');
delete from `command` where `name` = 'sendmoney';
insert into `command` (`name`, `security`, `help`) values
('sendmoney',3,'Syntax: .sendmoney #playername "#subject" "#text" #money\r\n\r\nSend mail with money to a player. Subject and mail text must be in "".');
DELETE FROM mangos_string WHERE entry IN (453);

-- 11.11 
DROP TABLE IF EXISTS `db_script_string`;
CREATE TABLE `db_script_string` (
  `entry` int(11) unsigned NOT NULL default '0',
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE event_scripts
  DROP datatext,
  ADD COLUMN dataint int(11) NOT NULL default '0'; 
ALTER TABLE gameobject_scripts
  DROP datatext,
  ADD COLUMN dataint int(11) NOT NULL default '0'; 
ALTER TABLE quest_end_scripts
  DROP datatext,
  ADD COLUMN dataint int(11) NOT NULL default '0'; 
ALTER TABLE quest_start_scripts
  DROP datatext,
  ADD COLUMN dataint int(11) NOT NULL default '0'; 
ALTER TABLE spell_scripts
  DROP datatext,
  ADD COLUMN dataint int(11) NOT NULL default '0'; 

-- 14.11 
ALTER TABLE event_scripts
  CHANGE COLUMN dataint dataint int(11) NOT NULL default '0' AFTER datalong2; 
ALTER TABLE gameobject_scripts
  CHANGE COLUMN dataint dataint int(11) NOT NULL default '0' AFTER datalong2; 
ALTER TABLE quest_end_scripts
  CHANGE COLUMN dataint dataint int(11) NOT NULL default '0' AFTER datalong2; 
ALTER TABLE quest_start_scripts
  CHANGE COLUMN dataint dataint int(11) NOT NULL default '0' AFTER datalong2; 
ALTER TABLE spell_scripts
  CHANGE COLUMN dataint dataint int(11) NOT NULL default '0' AFTER datalong2; 

-- 16.11 
DELETE FROM `command` WHERE `name` IN ('server exit','server idleshutdown','server idleshutdown cancel','server idlerestart','server idlerestart cancel','server restart','server restart cancel','server shutdown','server shutdown cancel');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('server exit',4,'Syntax: .server exit\r\n\r\nTerminate mangosd NOW. Exit code 0.'),
('server idleshutdown',3,'Syntax: .server idleshutdown #delay [#exist_code]\r\n\r\nShut the server down after #delay seconds if no active connections are present (no players). Use #exist_code or 0 as program exist code.'),
('server idleshutdown cancel',3,'Syntax: .server idleshutdown cancel\r\n\r\nCancel the restart/shutdown timer if any.'),
('server idlerestart',3,'Syntax: .server idlerestart #delay\r\n\r\nRestart the server after #delay seconds if no active connections are present (no players). Use #exist_code or 2 as program exist code.'),
('server idlerestart cancel',3,'Syntax: .server idlerestart cancel\r\n\r\nCancel the restart/shutdown timer if any.'),
('server restart',3,'Syntax: .server restart #delay\r\n\r\nRestart the server after #delay seconds. Use #exist_code or 2 as program exist code.'),
('server restart cancel',3,'Syntax: .server restart cancel\r\n\r\nCancel the restart/shutdown timer if any.'),
('server shutdown',3,'Syntax: .server shutdown #delay [#exist_code]\r\n\r\nShut the server down after #delay seconds. Use #exist_code or 0 as program exist code.'),
('server shutdown cancel',3,'Syntax: .server shutdown cancel\r\n\r\nCancel the restart/shutdown timer if any.');

-- 18.11
ALTER TABLE creature_movement
  DROP `text1`,
  DROP `text2`,
  DROP `text3`,
  DROP `text4`,
  DROP `text5`,
  ADD COLUMN textid1 int(11) NOT NULL default '0' AFTER waittime,
  ADD COLUMN textid2 int(11) NOT NULL default '0' AFTER textid1,
  ADD COLUMN textid3 int(11) NOT NULL default '0' AFTER textid2,
  ADD COLUMN textid4 int(11) NOT NULL default '0' AFTER textid3,
  ADD COLUMN textid5 int(11) NOT NULL default '0' AFTER textid4;
DELETE FROM mangos_string WHERE entry IN (251);
INSERT INTO mangos_string VALUES
(251,'Text%d (ID: %i): %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 27.11
TRUNCATE  TABLE playercreateinfo_item;

-- 29.11
DELETE FROM spell_proc_event where entry = 35080;
INSERT INTO spell_proc_event (entry, SchoolMask, Category, SkillID, SpellFamilyName, SpellFamilyMask, procFlags, ppmRate, cooldown) VALUES
(35080,0,0,0,0,0x0000000000000000,0x00080001,0,60);
DELETE FROM `spell_elixir` WHERE `entry` = 45373;
INSERT INTO `spell_elixir` VALUES
(45373,0x1);
