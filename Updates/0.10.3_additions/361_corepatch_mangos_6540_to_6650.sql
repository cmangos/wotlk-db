-- 6540
DELETE FROM spell_proc_event WHERE entry IN(38319);
INSERT INTO `spell_proc_event` VALUES
(38319,0,0,0,0,0x0000000000000000,0x00004000,0,0);
-- 6544
DELETE FROM spell_proc_event WHERE entry IN (13983, 14070, 14071);
INSERT INTO `spell_proc_event` VALUES
(13983,0,0,0,0,0x0000000000000000,0x01000010,0,0),
(14070,0,0,0,0,0x0000000000000000,0x01000010,0,0),
(14071,0,0,0,0,0x0000000000000000,0x01000010,0,0);
-- 6545
DELETE FROM `command` WHERE name IN ('idleshutdown','info','shutdown','server info','server shutdown','server restart','server idleshutdown','server idlerestart');
INSERT INTO `command` VALUES
('server info',0,'Syntax: .server info\r\n\r\nDisplay server version and the number of connected players.'),
('server shutdown',3,'Syntax: .server shutdown seconds\r\n\r\nShut the server down after given seconds and show "Off server in X" or cancel the restart/shutdown if cancel value is used.'),
('server restart',3,'Syntax: .server restart seconds\r\n\r\nRestart the server after given seconds and show "Restart server in X" or cancel the restart/shutdown if cancel value is used.'),
('server idleshutdown',3,'Syntax: .server idleshutdown #delay|cancel\r\n\r\nShut the server down after #delay seconds if no active connections are present (no players) or cancel the restart/shutdown if cancel value is used.'),
('server idlerestart',3,'Syntax: .server idlerestart #delay|cancel\r\n\r\nRestart the server after #delay seconds if no active connections are present (no players) or cancel the restart/shutdown if cancel value is used.');
-- 6557
DELETE FROM command WHERE name = 'npc delete';
INSERT INTO `command` VALUES
('npc delete',2,'Syntax: .npc delete [#guid]\r\n\r\nDelete creature with guid #guid (or the selected if no guid is provided)');
-- 6574
DELETE FROM spell_proc_event WHERE entry IN (41989);
INSERT INTO `spell_proc_event` VALUES
(41989,0,0,0,0,0x0000000000000000,0x00000001,3,0);
-- 6585
DELETE FROM command WHERE name = 'reload config';
INSERT INTO `command` VALUES
('reload config',3,'Syntax: .reload config\r\n\r\nReload config settings (by default stored in mangosd.conf). Not all settings can be change at reload: some new setting values will be ignored until restart, some values will applied with delay or only to new objects/maps, some values will explicitly rejected to change at reload.');
-- 6588
DELETE FROM spell_proc_event WHERE entry = 41434;
INSERT INTO spell_proc_event (entry, SchoolMask, Category, SkillID, SpellFamilyName, SpellFamilyMask, procFlags, ppmRate, cooldown) VALUES 
(41434,0,0,0,0,0x0000000000000000,0x00000001,2,45);

-- 6609_mangos_mangos_string.sql
DELETE FROM mangos_string WHERE entry = 170;
INSERT INTO mangos_string VALUES
(170,'You try to hear sound %u but it doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 6613_mangos_mangos_string.sql
DELETE FROM `mangos_string` WHERE entry = 636;
INSERT INTO `mangos_string` VALUES
(636,'The Battle for Eye of the Storm begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

DELETE FROM `mangos_string` WHERE entry = 637;
INSERT INTO `mangos_string` VALUES
(637,'The Battle for Eye of the Storm begins in 30 seconds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

DELETE FROM `mangos_string` WHERE entry = 638;
INSERT INTO `mangos_string` VALUES
(638,'The Battle for Eye of the Storm has begun!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 6627_mangos_creature_movement.sql
ALTER TABLE creature_movement MODIFY COLUMN id int(10) unsigned NOT NULL COMMENT 'Creature GUID';

-- 6640_mangos_reference_loot_template.sql
-- 
--
-- Table structure for table `reference_loot_template`
--

DROP TABLE IF EXISTS `reference_loot_template`;
CREATE TABLE `reference_loot_template` (
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

--
-- Dumping data for table `reference_loot_template`
--

LOCK TABLES `reference_loot_template` WRITE;
/*!40000 ALTER TABLE `reference_loot_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_loot_template` ENABLE KEYS */;
UNLOCK TABLES;
