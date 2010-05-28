-- 9766
ALTER TABLE db_version CHANGE COLUMN required_9763_01_mangos_battleground_template required_9766_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 54936;

-- 9767
ALTER TABLE db_version CHANGE COLUMN required_9766_01_mangos_spell_proc_event required_9767_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026);
INSERT INTO mangos_string VALUES
(1016, '| GUID       | Name                 | Account                      | Delete Date         |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1017, '| %10u | %20s | %15s (%10u) | %19s |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1018, '==========================================================================================',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1019, 'No characters found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1020, 'Restoring the following characters:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1021, 'Deleting the following characters:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1022, 'ERROR: You can only assign a new name if you have only selected a single character!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1023, 'Character \'%s\' (GUID: %u Account %u) can\'t be restored: account not exist!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1024, 'Character \'%s\' (GUID: %u Account %u) can\'t be restored: account character list full!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1025, 'Character \'%s\' (GUID: %u Account %u) can\'t be restored: new name already used!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1026, 'GUID: %u Name: %s Account: %s (%u) Date: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

ALTER TABLE db_version CHANGE COLUMN required_9767_01_mangos_mangos_string required_9767_02_mangos_command bit;

DELETE FROM command WHERE name IN('character delete', 'character deleted list', 'character deleted restore', 'character deleted delete', 'character deleted old', 'character erase');
INSERT INTO command (name, security, help) VALUES
('character erase',4,'Syntax: .character erase $name\r\n\r\nDelete character $name. Character finally deleted in case any deleting options.'),
('character deleted delete', 4, 'Syntax: .character deleted delete $guid|$name\r\n\r\nCompletely deletes the selected characters.\r\nIf $name is supplied, only characters with that string in their name will be deleted, if $guid is supplied, only the character with that GUID will be deleted.'),
('character deleted list', 3, 'Syntax: .character deleted list [$guid|$name]\r\n\r\nShows a list with all deleted characters.\r\nIf $name is supplied, only characters with that string in their name will be selected, if $guid is supplied, only the character with that GUID will be selected.'),
('character deleted old', 4, 'Syntax: .character deleted old [$keepDays]\r\n\r\nCompletely deletes all characters with deleted time longer $keepDays. If $keepDays not provided the  used value from mangosd.conf option \'CharDelete.KeepDays\'. If referenced config option disabled (use 0 value) then command can\'t be used without $keepDays.'),
('character deleted restore', 3, 'Syntax: .character deleted restore #guid|$name [$newname] [#new account]\r\n\r\nRestores deleted characters.\r\nIf $name is supplied, only characters with that string in their name will be restored, if $guid is supplied, only the character with that GUID will be restored.\r\nIf $newname is set, the character will be restored with that name instead of the original one. If #newaccount is set, the character will be restored to specific account character list. This works only with one character!');

-- 9768
ALTER TABLE db_version CHANGE COLUMN required_9767_02_mangos_command required_9768_01_mangos_command bit;

DELETE FROM command WHERE name IN('character deleted list', 'character deleted delete', 'character deleted old');
INSERT INTO command (name, security, help) VALUES
('character deleted delete', 4, 'Syntax: .character deleted delete #guid|$name\r\n\r\nCompletely deletes the selected characters.\r\nIf $name is supplied, only characters with that string in their name will be deleted, if #guid is supplied, only the character with that GUID will be deleted.'),
('character deleted list', 3, 'Syntax: .character deleted list [#guid|$name]\r\n\r\nShows a list with all deleted characters.\r\nIf $name is supplied, only characters with that string in their name will be selected, if #guid is supplied, only the character with that GUID will be selected.'),
('character deleted old', 4, 'Syntax: .character deleted old [#keepDays]\r\n\r\nCompletely deletes all characters with deleted time longer #keepDays. If #keepDays not provided the  used value from mangosd.conf option \'CharDelete.KeepDays\'. If referenced config option disabled (use 0 value) then command can\'t be used without #keepDays.');

-- 9794
ALTER TABLE db_version CHANGE COLUMN required_9768_01_mangos_command required_9794_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1138, 1139, 1140, 1141);
INSERT INTO mangos_string VALUES
(1138, '=================================================================================',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1139, '| GUID       | Name                 | Race            | Class           | Level |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1140, '| %10u | %20s | %15s | %15s | %5u |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1141, '%u - |cffffffff|Hplayer:%s|h[%s]|h|r %s %s %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

ALTER TABLE db_version CHANGE COLUMN required_9794_01_mangos_mangos_string required_9794_02_mangos_command bit;

DELETE FROM command WHERE name IN('account characters','account set addon','account set gmlevel','account set password');
INSERT INTO command (name, security, help) VALUES
('account characters',3,'Syntax: .account characters [#accountId|$accountName]\r\n\r\nShow list all characters for account seelcted by provided #accountId or $accountName, or for selected player in game.'),
('account set addon',3,'Syntax: .account set addon [#accountId|$accountName] #addon\r\n\r\nSet user (possible targeted) expansion addon level allowed. Addon values: 0 - normal, 1 - tbc, 2 - wotlk.'),
('account set gmlevel',4,'Syntax: .account set gmlevel [#accountId|$accountName] #level\r\n\r\nSet the security level for targeted player (can''t be used at self) or for #accountId or $accountName to a level of #level.\r\n\r\n#level may range from 0 to 3.'),
('account set password',4,'Syntax: .account set password (#accountId|$accountName) $password $password\r\n\r\nSet password for account.');

-- 9803
ALTER TABLE db_version CHANGE COLUMN required_9794_02_mangos_command required_9803_01_mangos_spell_bonus_data bit;

delete from `spell_bonus_data` where `entry` = 64085;
insert into `spell_bonus_data` values (64085, 1.2, 0, 0, 'Priest - Vampiric Touch Dispel');

-- 9826
ALTER TABLE db_version CHANGE COLUMN required_9803_01_mangos_spell_bonus_data required_9826_01_mangos_spell_script_target bit;

DELETE FROM `spell_script_target` WHERE `entry` IN ('38736','38729');
INSERT INTO `spell_script_target` VALUES ('38736','1','22288'), ('38729','0','185191');

-- 9854
ALTER TABLE db_version CHANGE COLUMN required_9826_01_mangos_spell_script_target required_9854_01_mangos_spell_bonus_data bit;

DELETE FROM `spell_bonus_data` WHERE `entry` = 48743;
INSERT INTO `spell_bonus_data` VALUES (48743, 0, 0, 0, 'Death Knight - Death Pact');

-- 9881
ALTER TABLE db_version CHANGE COLUMN required_9854_01_mangos_spell_bonus_data required_9881_01_mangos_scripts bit;

ALTER TABLE event_scripts ADD COLUMN datalong3 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE event_scripts ADD COLUMN datalong4 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong3;
ALTER TABLE event_scripts ADD COLUMN data_flags TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong4;

ALTER TABLE gameobject_scripts ADD COLUMN datalong3 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE gameobject_scripts ADD COLUMN datalong4 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong3;
ALTER TABLE gameobject_scripts ADD COLUMN data_flags TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong4;

ALTER TABLE gossip_scripts ADD COLUMN datalong3 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE gossip_scripts ADD COLUMN datalong4 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong3;
ALTER TABLE gossip_scripts ADD COLUMN data_flags TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong4;

ALTER TABLE quest_end_scripts ADD COLUMN datalong3 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE quest_end_scripts ADD COLUMN datalong4 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong3;
ALTER TABLE quest_end_scripts ADD COLUMN data_flags TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong4;

ALTER TABLE quest_start_scripts ADD COLUMN datalong3 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE quest_start_scripts ADD COLUMN datalong4 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong3;
ALTER TABLE quest_start_scripts ADD COLUMN data_flags TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong4;

ALTER TABLE spell_scripts ADD COLUMN datalong3 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE spell_scripts ADD COLUMN datalong4 INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong3;
ALTER TABLE spell_scripts ADD COLUMN data_flags TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong4;

-- 9883
ALTER TABLE db_version CHANGE COLUMN required_9881_01_mangos_scripts required_9883_01_mangos_scripts bit;

-- convert to CHAT_TYPE_WHISPER
UPDATE event_scripts SET datalong=4 WHERE command=0 AND datalong=1;
UPDATE gameobject_scripts SET datalong=4 WHERE command=0 AND datalong=1;
UPDATE gossip_scripts SET datalong=4 WHERE command=0 AND datalong=1;
UPDATE quest_end_scripts SET datalong=4 WHERE command=0 AND datalong=1;
UPDATE quest_start_scripts SET datalong=4 WHERE command=0 AND datalong=1;
UPDATE spell_scripts SET datalong=4 WHERE command=0 AND datalong=1;

-- convert to CHAT_TYPE_YELL
UPDATE event_scripts SET datalong=1 WHERE command=0 AND datalong=2;
UPDATE gameobject_scripts SET datalong=1 WHERE command=0 AND datalong=2;
UPDATE gossip_scripts SET datalong=1 WHERE command=0 AND datalong=2;
UPDATE quest_end_scripts SET datalong=1 WHERE command=0 AND datalong=2;
UPDATE quest_start_scripts SET datalong=1 WHERE command=0 AND datalong=2;
UPDATE spell_scripts SET datalong=1 WHERE command=0 AND datalong=2;

-- convert to CHAT_TYPE_TEXT_EMOTE
UPDATE event_scripts SET datalong=2 WHERE command=0 AND datalong=3;
UPDATE gameobject_scripts SET datalong=2 WHERE command=0 AND datalong=3;
UPDATE gossip_scripts SET datalong=2 WHERE command=0 AND datalong=3;
UPDATE quest_end_scripts SET datalong=2 WHERE command=0 AND datalong=3;
UPDATE quest_start_scripts SET datalong=2 WHERE command=0 AND datalong=3;
UPDATE spell_scripts SET datalong=2 WHERE command=0 AND datalong=3;

-- 9886
ALTER TABLE db_version CHANGE COLUMN required_9883_01_mangos_scripts required_9886_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1011,1010,1012,1013,1142);
INSERT INTO mangos_string VALUES
(1010,'| ID         |    Account    |       Character      |       IP        | GM | Expansion |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1012,'========================================================================================',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1013,'| %10u |%15s| %20s | %15s |%4d| %9d |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1142,'%u - %s (Online:%s IP:%s GM:%u Expansion:%u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

ALTER TABLE db_version CHANGE COLUMN required_9886_01_mangos_mangos_string required_9886_02_mangos_command bit;

DELETE FROM command WHERE name IN('lookup account email','lookup account ip','lookup account name','lookup player account','lookup player ip','lookup player email');
INSERT INTO command (name, security, help) VALUES
('lookup account email',2,'Syntax: .lookup account email $emailpart [#limit] \r\n\r\n Searchs accounts, which email including $emailpart with optional parametr #limit of results. If #limit not provided expected 100.'),
('lookup account ip',2,'Syntax: lookup account ip $ippart [#limit] \r\n\r\n Searchs accounts, which last used ip inluding $ippart (textual) with optional parametr #$limit of results. If #limit not provided expected 100.'),
('lookup account name',2,'Syntax: .lookup account name $accountpart [#limit] \r\n\r\n Searchs accounts, which username including $accountpart with optional parametr #limit of results. If #limit not provided expected 100.'),
('lookup player account',2,'Syntax: .lookup player account $accountpart [#limit] \r\n\r\n Searchs players, which account username including $accountpart with optional parametr #limit of results. If #limit not provided expected 100.'),
('lookup player email',2,'Syntax: .lookup player email $emailpart [#limit] \r\n\r\n Searchs players, which account email including $emailpart with optional parametr #limit of results. If #limit not provided expected 100.'),
('lookup player ip',2,'Syntax: .lookup player ip $ippart [#limit] \r\n\r\n Searchs players, which account last used ip inluding $ippart (textual) with optional parametr #limit of results. If #limit not provided expected 100.');


-- 9891
ALTER TABLE db_version CHANGE COLUMN required_9886_02_mangos_command required_9891_01_mangos_creature_movement bit;

ALTER TABLE creature_movement ADD COLUMN script_id MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER waittime;

ALTER TABLE db_version CHANGE COLUMN required_9891_01_mangos_creature_movement required_9891_02_mangos_creature_movement_scripts bit;

DROP TABLE IF EXISTS `creature_movement_scripts`;
CREATE TABLE `creature_movement_scripts` (
  `id` mediumint(8) unsigned NOT NULL default '0',
  `delay` int(10) unsigned NOT NULL default '0',
  `command` mediumint(8) unsigned NOT NULL default '0',
  `datalong` mediumint(8) unsigned NOT NULL default '0',
  `datalong2` int(10) unsigned NOT NULL default '0',
  `datalong3` int(10) unsigned NOT NULL default '0',
  `datalong4` int(10) unsigned NOT NULL default '0',
  `data_flags` tinyint(3) unsigned NOT NULL default '0',
  `dataint` int(11) NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `z` float NOT NULL default '0',
  `o` float NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 9899
ALTER TABLE db_version CHANGE COLUMN required_9891_02_mangos_creature_movement_scripts required_9899_01_mangos_spell_bonus_data bit;

DELETE FROM `spell_bonus_data` WHERE `entry` IN (
  17,122,139,421,589,774,1064,1449,2060,2061,2136,2912,2948,8004,
  11426,19236,25912,30451,32379,32546,33110,34861,42463,44457,
  49821,51505,53739,61391);

INSERT INTO `spell_bonus_data` VALUES
(53739, 0,     0, 0.003, 'Paladin - Seal of Corruption (full stack proc)'),
(42463, 0,     0, 0.003, 'Paladin - Seal of Vengeance (full stack proc)'),
(49821, 0.2857,0, 0,     'Priest - Mind Sear Trigger');

-- 9924
ALTER TABLE db_version CHANGE COLUMN required_9899_01_mangos_spell_bonus_data required_9924_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1027,1028);
INSERT INTO mangos_string VALUES
(1027, 'Log filters state:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1028, 'All log filters set to: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

ALTER TABLE db_version CHANGE COLUMN required_9924_01_mangos_mangos_string required_9924_02_mangos_command bit;

DELETE FROM command WHERE name IN('server set loglevel','server log level','server log filter');
INSERT INTO command (name, security, help) VALUES
('server log filter',4,'Syntax: .server log filter [($filtername|all) (on|off)]\r\n\r\nShow or set server log filters. If used "all" then all filters will be set to on/off state.'),
('server log level',4,'Syntax: .server log level [#level]\r\n\r\nShow or set server log level (0 - errors only, 1 - basic, 2 - detail, 3 - debug).');

-- 9957
ALTER TABLE db_version CHANGE COLUMN required_9924_02_mangos_command required_9957_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (210);
INSERT INTO mangos_string VALUES
(210,'Item \'%i\' (with extended cost %i) already in vendor list.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

ALTER TABLE db_version CHANGE COLUMN required_9957_01_mangos_mangos_string required_9957_02_mangos_npc_vendor bit;

ALTER TABLE npc_vendor
  CHANGE COLUMN `ExtendedCost` `ExtendedCost` mediumint(8) NOT NULL default '0' COMMENT 'negative if cost must exclude normal money cost';

-- 9967
ALTER TABLE db_version CHANGE COLUMN required_9957_02_mangos_npc_vendor required_9967_01_mangos_spell_proc_event bit;

delete from `spell_proc_event` where entry = 16164;
insert into `spell_proc_event` values (16164, 0x0000001C, 11, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00000002, 0.000000, 0.000000,  0);

-- 9977
ALTER TABLE db_version CHANGE COLUMN required_9967_01_mangos_spell_proc_event required_9977_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (16180,16196,16198);
INSERT INTO `spell_proc_event` VALUES 
(16180,0x00000000,11,0x000001C0,0x00000000,0x00000010,0x00000000,0x00000002,0.000000,0.000000, 0),
(16196,0x00000000,11,0x000001C0,0x00000000,0x00000010,0x00000000,0x00000002,0.000000,0.000000, 0),
(16198,0x00000000,11,0x000001C0,0x00000000,0x00000010,0x00000000,0x00000002,0.000000,0.000000, 0);

-- 9978
ALTER TABLE db_version CHANGE COLUMN required_9977_01_mangos_spell_proc_event required_9978_01_mangos_spell_bonus_data bit;

DELETE FROM `spell_bonus_data` WHERE `entry` IN (55078,55095);

-- 9988
ALTER TABLE db_version CHANGE COLUMN required_9978_01_mangos_spell_bonus_data required_9988_01_mangos_spell_chain bit;

DELETE FROM  `spell_chain` WHERE `spell_id` IN (61024,61316);
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES
/*Dalaran Intellect*/
(61024,61024,61024,1,27126),
/*Dalaran Brilliance*/
(61316,61316,61316,1,27127);

-- 9990
ALTER TABLE db_version CHANGE COLUMN required_9988_01_mangos_spell_chain required_9990_01_mangos_spell_chain bit;

DELETE FROM  `spell_chain` WHERE `spell_id` IN (61024,61316);
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES
/*Dalaran Intellect*/
(61024,0,61024,1,27126),
/*Dalaran Brilliance*/
(61316,0,61316,1,27127);
