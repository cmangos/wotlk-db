-- 7290
ALTER TABLE db_version CHANGE COLUMN required_7252_02_mangos_mangos_string required_7290_01_mangos_command bit;
DELETE FROM `command` WHERE `name` = 'npc setdeathstate';
INSERT INTO `command` VALUES
('npc setdeathstate',2,'Syntax: .npc setdeathstate on/off\r\n\r\nSet default death state (dead/alive) for npc at spawn.');

-- 7292
ALTER TABLE db_version CHANGE COLUMN required_7290_01_mangos_command required_7292_01_mangos_points_of_interest bit;
DROP TABLE IF EXISTS `points_of_interest`; 
CREATE TABLE `points_of_interest` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `icon` mediumint(8) unsigned NOT NULL default '0',
  `flags` mediumint(8) unsigned NOT NULL default '0',
  `data` mediumint(8) unsigned NOT NULL default '0',
  `icon_name` text NOT NULL,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
ALTER TABLE db_version CHANGE COLUMN required_7292_01_mangos_points_of_interest required_7292_02_mangos_locales_points_of_interest bit;
DROP TABLE IF EXISTS `locales_points_of_interest`; 
CREATE TABLE `locales_points_of_interest` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `icon_name_loc1` text,
  `icon_name_loc2` text,
  `icon_name_loc3` text,
  `icon_name_loc4` text,
  `icon_name_loc5` text,
  `icon_name_loc6` text,
  `icon_name_loc7` text,
  `icon_name_loc8` text,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 7303
ALTER TABLE db_version CHANGE COLUMN required_7292_02_mangos_locales_points_of_interest required_7303_01_mangos_pools bit;
DROP TABLE IF EXISTS `pool_creature`;
CREATE TABLE `pool_creature` (
  `guid` int(10) unsigned NOT NULL default '0',
  `pool_entry` mediumint(8) unsigned NOT NULL default '0',
  `chance` float unsigned NOT NULL default '0',
  PRIMARY KEY  (`pool_entry`,`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `pool_gameobject`;
CREATE TABLE `pool_gameobject` (
  `guid` int(10) unsigned NOT NULL default '0',
  `pool_entry` mediumint(8) unsigned NOT NULL default '0',
  `chance` float unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`pool_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `pool_pool`;
CREATE TABLE `pool_pool` (
  `pool_id` mediumint(8) unsigned NOT NULL default '0',
  `mother_pool` mediumint(8) unsigned NOT NULL default '0',
  `chance` float NOT NULL default '0',
  PRIMARY KEY  (`pool_id`,`mother_pool`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `pool_template`;
CREATE TABLE `pool_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Pool entry',
  `max_limit` int(10) unsigned NOT NULL default '0' COMMENT 'Max number of objects (0) is no limit',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `game_event_pool`;
CREATE TABLE `game_event_pool` (
  `pool_entry` mediumint(8) unsigned NOT NULL default '0' COMMENT 'Id of the pool',
  `event` smallint(6) NOT NULL default '0' COMMENT 'Put negatives values to remove during event',
  PRIMARY KEY  (`pool_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 7312
ALTER TABLE db_version CHANGE COLUMN required_7303_01_mangos_pools required_7312_01_mangos_mangos_string bit;
DELETE FROM `mangos_string` WHERE entry = 810;
INSERT INTO `mangos_string` VALUES
(810,'|Hplayer:$N|h[$N]|h has earned the achievement $a!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 7331
ALTER TABLE db_version CHANGE COLUMN required_7312_01_mangos_mangos_string required_7331_01_mangos_command bit;
DELETE FROM `command` WHERE `name` = 'account set addon';
DELETE FROM `command` WHERE `name` = 'ban account';
DELETE FROM `command` WHERE `name` = 'ban character';
DELETE FROM `command` WHERE `name` = 'ban ip';
DELETE FROM `command` WHERE `name` = 'baninfo account';
DELETE FROM `command` WHERE `name` = 'baninfo character';
DELETE FROM `command` WHERE `name` = 'baninfo ip';
DELETE FROM `command` WHERE `name` = 'banlist account';
DELETE FROM `command` WHERE `name` = 'banlist character';
DELETE FROM `command` WHERE `name` = 'banlist ip';
DELETE FROM `command` WHERE `name` = 'gm fly';
/* next command deleted even in case it has been already corrected (trailing space) */
DELETE FROM `command` WHERE `name` = 'gobject near ';
DELETE FROM `command` WHERE `name` = 'gobject near';
DELETE FROM `command` WHERE `name` = 'lookup player account';
DELETE FROM `command` WHERE `name` = 'lookup player ip';
DELETE FROM `command` WHERE `name` = 'lookup player email';
DELETE FROM `command` WHERE `name` = 'modify money';
DELETE FROM `command` WHERE `name` = 'modify mount';
DELETE FROM `command` WHERE `name` = 'modify speed';
DELETE FROM `command` WHERE `name` = 'modify titles';
DELETE FROM `command` WHERE `name` = 'pdump write';
DELETE FROM `command` WHERE `name` = 'pdump load';
DELETE FROM `command` WHERE `name` = 'reset honor';
DELETE FROM `command` WHERE `name` = 'reset level';
DELETE FROM `command` WHERE `name` = 'reset spells';
DELETE FROM `command` WHERE `name` = 'reset stats';
DELETE FROM `command` WHERE `name` = 'reset talents';
DELETE FROM `command` WHERE `name` = 'unban account';
DELETE FROM `command` WHERE `name` = 'unban character';
DELETE FROM `command` WHERE `name` = 'unban ip';
INSERT INTO `command` VALUES
('account set addon',3,'Syntax: .account set addon [$account] #addon\r\n\r\nSet user (possible targeted) expansion addon level allowed. Addon values: 0 - normal, 1 - tbc, 2 - wotlk.'),
('ban account',3,'Syntax: .ban account $Name $bantime $reason\r\nBan account kick player.\r\n$bantime: negative value leads to permban, otherwise use a timestring like \"4d20h3s\".'),
('ban character',3,'Syntax: .ban character $Name $bantime $reason\r\nBan account and kick player.\r\n$bantime: negative value leads to permban, otherwise use a timestring like \"4d20h3s\".'),
('ban ip',3,'Syntax: .ban ip $Ip $bantime $reason\r\nBan IP.\r\n$bantime: negative value leads to permban, otherwise use a timestring like \"4d20h3s\".'),
('baninfo account',3,'Syntax: .baninfo account\r\nWatch full information about a specific ban.'),
('baninfo character',3,'Syntax: .baninfo character\r\nWatch full information about a specific ban.'),
('baninfo ip',3,'Syntax: .baninfo ip\r\nWatch full information about a specific ban.'),
('banlist account',3,'Syntax: .banlist account [$Name]\r\nSearches the banlist for a account name pattern or show full list account bans.'),
('banlist character',3,'Syntax: .banlist character $Name\r\nSearches the banlist for a character name pattern. Pattern required.'),
('banlist ip',3,'Syntax: .banlist ip [$Ip]\r\nSearches the banlist for a IP pattern or show full list of IP bans.'),
('gm fly',3,'Syntax: .gm fly [on/off]\r\nEnable/disable gm fly mode.'),
('gobject near',3,'Syntax: .gobject near  [#distance]\r\n\r\nOutput gameobjects at distance #distance from player. Output gameobject guids and coordinates sorted by distance from character. If #distance not provided use 10 as default value.'),
('lookup player account',2,'Syntax: .lookup player account $account ($limit) \r\n\r\n Searchs players, which account username is $account with optional parametr $limit of results.'),
('lookup player ip',2,'Syntax: .lookup player ip $ip ($limit) \r\n\r\n Searchs players, which account ast_ip is $ip with optional parametr $limit of results.'),
('lookup player email',2,'Syntax: .lookup player email $email ($limit) \r\n\r\n Searchs players, which account email is $email with optional parametr $limit of results.'),
('modify money',1,'Syntax: .modify money #money\r\n.money #money\r\n\r\nAdd or remove money to the selected player. If no player is selected, modify your money.\r\n\r\n #gold can be negative to remove money.'),
('modify mount',1,'Syntax: .modify mount #id #speed\r\nDisplay selected player as mounted at #id creature and set speed to #speed value.'),
('modify speed',1,'Syntax: .modify speed #rate\r\n.speed #rate\r\n\r\nModify the running speed of the selected player to \"normal base run speed\"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 10.'),
('modify titles',1,'Syntax: .modify titles #mask\r\n\r\nAllows user to use all titles from #mask.\r\n\r\n #mask=0 disables the title-choose-field'),
('pdump write',3,'Syntax: .pdump write $filename $playerNameOrGUID\r\nWrite character dump with name/guid $playerNameOrGUID to file $filename.'),
('pdump load',3,'Syntax: .pdump load $filename $account [$newname] [$newguid]\r\nLoad character dump from dump file into character list of $account with saved or $newname, with saved (or first free) or $newguid guid.'),
('reset honor',3,'Syntax: .reset honor [Playername]\r\n  Reset all honor data for targeted character.'),
('reset level',3,'Syntax: .reset level [Playername]\r\n  Reset level to 1 including reset stats and talents.  Equipped items with greater level requirement can be lost.'),
('reset spells',3,'Syntax: .reset spells [Playername]\r\n  Removes all non-original spells from spellbook.\r\n. Playername can be name of offline character.'),
('reset stats',3,'Syntax: .reset stats [Playername]\r\n  Resets(recalculate) all stats of the targeted player to their original VALUESat current level.'),
('reset talents',3,'Syntax: .reset talents [Playername]\r\n  Removes all talents of the targeted player. Playername can be name of offline character.'),
('unban account',3,'Syntax: .unban account $Name\r\nUnban accounts for account name pattern.'),
('unban character',3,'Syntax: .unban character $Name\r\nUnban accounts for character name pattern.'),
('unban ip',3,'Syntax : .unban ip $Ip\r\nUnban accounts for IP pattern.');

-- 7332
ALTER TABLE db_version CHANGE COLUMN required_7331_01_mangos_command required_7332_01_mangos_command bit;
DELETE FROM `command` WHERE `name` = 'distance';
INSERT INTO `command` VALUES
('distance',3,'Syntax: .distance [$name/$link]\r\n\r\nDisplay the distance from your character to the selected creature/player, or player with name $name, or player/creature/gameobject pointed to shift-link with guid.');

-- 7349
ALTER TABLE db_version CHANGE COLUMN required_7332_01_mangos_command required_7349_01_mangos_spell_area bit;
DROP TABLE IF EXISTS `spell_area`;
CREATE TABLE `spell_area` (
  `spell`              mediumint(8) unsigned NOT NULL default '0',
  `area`               mediumint(8) unsigned NOT NULL default '0',
  `quest_start`        mediumint(8) unsigned NOT NULL default '0',
  `quest_start_active` tinyint(1) unsigned NOT NULL default '0',
  `quest_end`          mediumint(8) unsigned NOT NULL default '0',
  `aura_spell`         mediumint(8) unsigned NOT NULL default '0',
  `racemask`           mediumint(8) unsigned NOT NULL default '0',
  `gender`             tinyint(1) unsigned NOT NULL default '2',
  `autocast`           tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`spell`,`area`,`quest_start`,`quest_start_active`,`aura_spell`,`racemask`,`gender`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 7369
ALTER TABLE db_version CHANGE COLUMN required_7349_01_mangos_spell_area required_7369_01_mangos_quest_template bit;
ALTER TABLE quest_template
  DROP COLUMN ReqSourceRef1,
  DROP COLUMN ReqSourceRef2,
  DROP COLUMN ReqSourceRef3,
  DROP COLUMN ReqSourceRef4;

-- 7376
ALTER TABLE db_version CHANGE COLUMN required_7369_01_mangos_quest_template required_7376_01_mangos_spell_area bit;
ALTER TABLE spell_area
  CHANGE COLUMN `aura_spell`  `aura_spell` mediumint(8) NOT NULL default '0';

-- 7382
ALTER TABLE db_version CHANGE COLUMN required_7376_01_mangos_spell_area required_7382_01_mangos_creature_template bit;
ALTER TABLE creature_template
  ADD COLUMN unk16 float NOT NULL default '1' AFTER InhabitType,
  ADD COLUMN unk17 float NOT NULL default '1' AFTER unk16;

-- 7388
ALTER TABLE db_version CHANGE COLUMN required_7382_01_mangos_creature_template required_7388_01_mangos_mangos_string bit;
DELETE FROM mangos_string WHERE entry IN (750,751);
INSERT INTO mangos_string VALUES (750,'Not enough players. This game will close in %u mins.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO mangos_string VALUES (751,'Not enough players. This game will close in %u seconds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 7390
ALTER TABLE db_version CHANGE COLUMN required_7388_01_mangos_mangos_string required_7390_01_mangos_areatrigger_teleport bit;
ALTER TABLE areatrigger_teleport
  ADD COLUMN required_quest_done_heroic int(11) unsigned NOT NULL default '0' AFTER required_quest_done;

-- 7993
ALTER TABLE db_version CHANGE COLUMN required_7390_01_mangos_areatrigger_teleport required_7393_01_mangos_game_event bit;
ALTER TABLE game_event
  ADD COLUMN holiday mediumint(8) unsigned NOT NULL default '0' COMMENT 'Client side holiday id' AFTER length;

-- 7399
ALTER TABLE db_version CHANGE COLUMN required_7393_01_mangos_game_event required_7399_01_mangos_mangos_string bit;
DELETE FROM mangos_string WHERE entry in (753, 754, 755);
INSERT INTO mangos_string VALUES (753,'The battle for Warsong Gulch begins in 2 minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO mangos_string VALUES (754,'The battle for Arathi Basin begins in 2 minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO mangos_string VALUES (755,'The battle for Eye of the Storm begins in 2 minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 7422
ALTER TABLE db_version CHANGE COLUMN required_7399_01_mangos_mangos_string required_7422_01_mangos_mangos_string bit;
DELETE FROM mangos_string WHERE entry in (811, 812, 813, 814, 815);
INSERT INTO mangos_string VALUES
 (811,'Guild Master',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (812,'Officer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (813,'Veteran',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (814,'Member',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (815,'Initiate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 7439
ALTER TABLE db_version CHANGE COLUMN required_7422_01_mangos_mangos_string required_7439_01_mangos_mangos_string bit;
DELETE FROM mangos_string WHERE entry in (175);
INSERT INTO mangos_string VALUES
 (175,'Liquid level: %f, ground: %f, type: %d, status: %d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
