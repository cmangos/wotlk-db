-- 18.10
DELETE FROM spell_proc_event where entry = 42083;
INSERT INTO spell_proc_event (entry, SchoolMask, Category, SkillID, SpellFamilyName, SpellFamilyMask, procFlags, ppmRate, cooldown) VALUES
(42083,0,0,0,0,0x0000000000000000,0x00401000,0,45);

-- 19.10
DELETE FROM spell_affect WHERE entry IN (30017,30280,44373) AND effectId = 0;
INSERT INTO spell_affect (entry, effectId, SpellFamilyMask) VALUES
(30017,0,0x0000000000000000),
(30280,0,0x0000000000000000),
(44373,0,0x0000000000000000);
DELETE FROM spell_affect WHERE entry IN (34520,37508) AND effectId = 1;
INSERT INTO spell_affect (entry, effectId, SpellFamilyMask) VALUES
(34520,1,0x0000000000000000),
(37508,1,0x0000000000000000);
DELETE FROM spell_proc_event WHERE entry IN (34139,42368,43726,46092);
INSERT INTO spell_proc_event (entry, SchoolMask, Category, SkillID, SpellFamilyName, SpellFamilyMask, procFlags, ppmRate, cooldown) VALUES
(34139,0,0,0,10,0x0000000040000000,0x08000000,0,0),
(42368,0,0,0,10,0x0000000040000000,0x08000000,0,0),
(43726,0,0,0,10,0x0000000040000000,0x08000000,0,0),
(46092,0,0,0,10,0x0000000040000000,0x08000000,0,0);
DELETE FROM spell_proc_event where entry IN (34598, 34584, 36488);
INSERT INTO spell_proc_event (entry, SchoolMask, Category, SkillID, SpellFamilyName, SpellFamilyMask, procFlags, ppmRate, cooldown) VALUES
(34598,0,0,0,0,0x0000000000000000,0x00020000,0,45),
(36488,0,0,0,0,0x0000000000000000,0x08000000,0,0),
(34584,0,0,0,0,0x0000000000000000,0x00004000,0,30);

-- 21.10
DELETE FROM mangos_string WHERE entry IN (
  25,54,55,56,171,401,413,593,594,595,596,597,598,599,
  1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1100,1101,1102
);
INSERT INTO mangos_string VALUES
(25,'Password not changed (unknown error)!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(54,'The new passwords do not match',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(55,'Your password can\'t be longer than 16 characters (client limit), password not changed!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(56,'Current Message of the day: \r\n%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(171,'You are being teleported by server console command.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(401,'You change security level of account %s to %i.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(413,'Account not exist: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(593,'Currently Banned Accounts:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(594,'|    Account    |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(595,'Currently Banned IPs:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(596,'|      IP       |   BanDate    |   UnbanDate  |  Banned By    |   Ban Reason  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(597,'Current gamemasters:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(598,'|    Account    |  GM  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(599,'No gamemasters.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1000,'Exiting daemon...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1001,'Account deleted: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1002,'Account %s NOT deleted (probably sql file format was updated)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1003,'Account %s NOT deleted (unknown error)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1004,'Account created: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1005,'Account name can\'t be longer than 16 characters (client limit), account not created!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1006,'Account with this name already exist!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1007,'Account %s NOT created (probably sql file format was updated)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1008,'Account %s NOT created (unknown error)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1009,'Player %s (Guid: %u) Account %s (Id: %u) deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1010,'|    Account    |       Character      |       IP        | GM | TBC |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1011,'|<Error>        | %20s |<Error>          |<Er>|<Err>|',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1100,'Account %s (Id: %u) have up to %u expansion allowed now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1101,'Message of the day changed to:\r\n%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1102,'Message sent to %s: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM command WHERE name IN (
  'acct','account','account create','account delete','account onlinelist',
  'account set addon','account set gmlevel','account set password',
  'chardelete','gm list','gm online','sendmessage','server corpses','server exit','server motd',
  'server set loglevel','server set motd','security'
);
INSERT INTO `command` VALUES
('account',0,'Syntax: .account\r\n\r\nDisplay the access level of your account.'),
('account create',4,'Syntax: .account create $account $password\r\n\r\nCreate account and set password to it.'),
('account delete',4,'Syntax: .account delete $account\r\n\r\nDelete account with all characters.'),
('account onlinelist',4,'Syntax: .account onlinelist\r\n\r\nShow list of online accounts.'),
('account set addon',3,'Syntax: .account set addon [$account] #addon\r\n\r\nSet user (posible targeted) expansion addon level allowed. Addon values: 0 - normal, 1 - tbc, 2 - wotlk.'),
('account set gmlevel',4,'Syntax: .account set gmlevel [$account] #level\r\n\r\nSet the security level for targeted player (can''t be used at self) or for account $name to a level of #level.\r\n\r\n#level may range from 0 to 3.'),
('account set password',4,'Syntax: .account set password $account $password $password\r\n\r\nSet password for account.'),
('chardelete',4,'Syntax: .chardelete $charactername\r\n\r\nDelete character.'),
('gm list',3,'Syntax: .gm list\r\n\r\nDisplay a list of all Game Masters accounts and security levels.'),
('gm online',0,'Syntax: .gm online\r\n\r\nDisplay a list of available Game Masters.'),
('sendmessage',3,'Syntax: .sendmessage $playername $message\r\n\r\nSend screen message to player from ADMINISTRATOR.'),
('server corpses',2,'Syntax: .server corpses\r\n\r\nTriggering corpses expire check in world.'),
('server exit',4,'Syntax: .server exit\r\n\r\nTerminate mangosd NOW.'),
('server motd',0,'Syntax: .server motd\r\n\r\nShow server Message of the day.'),
('server set loglevel',4,'Syntax: .server set loglevel #level\r\n\r\nSet server log level (0 - errors only, 1 - basic, 2 - detail, 3 - debug).'),
('server set motd',3,'Syntax: .server set motd $MOTD\r\n\r\nSet server Message of the day.');
DELETE FROM command WHERE name IN (
  'gm ingame','gm online',
  'ban','ban account','ban character','ban ip',
  'baninfo','baninfo account','baninfo character','baninfo ip',
  'banlist','banlist account','banlist character','banlist ip',
  'unban','unban account','unban character','unban ip'
);
INSERT INTO command VALUES
('gm ingame',0,'Syntax: .gm ingame\r\n\r\nDisplay a list of available in game Game Masters.'),
('ban account',3,'Syntax is: ban account $Name $bantime $reason\r\nBan account kick player.\r\n$bantime: negative value leads to permban, otherwise use a timestring like \"4d20h3s\".'),
('ban character',3,'Syntax is: ban character $Name $bantime $reason\r\nBan account and kick player.\r\n$bantime: negative value leads to permban, otherwise use a timestring like \"4d20h3s\".'),
('ban ip',3,'Syntax is: ban ip $Ip $bantime $reason\r\nBan IP.\r\n$bantime: negative value leads to permban, otherwise use a timestring like \"4d20h3s\".'),
('baninfo account',3,'Syntax is: baninfo account\r\nWatch full information about a specific ban.'),
('baninfo character',3,'Syntax is: baninfo character\r\nWatch full information about a specific ban.'),
('baninfo ip',3,'Syntax is: baninfo ip\r\nWatch full information about a specific ban.'),
('banlist account',3,'Syntax is: banlist account [$Name]\r\nSearches the banlist for a account name pattern or show full list account bans.'),
('banlist character',3,'Syntax is: banlist character $Name\r\nSearches the banlist for a character name pattern. Pattern required.'),
('banlist ip',3,'Syntax is: banlist ip [$Ip]\r\nSearches the banlist for a IP pattern or show full list of IP bans.'),
('unban account',3,'Syntax is: unban account $Name\r\nUnban accounts for account name pattern.'),
('unban character',3,'Syntax is: unban character $Name\r\nUnban accounts for character name pattern.'),
('unban ip',3,'Syntax is: unban ip $Ip\r\nUnban accounts for IP pattern.');

-- 22.10
ALTER TABLE `quest_template`
    ADD `RewHonorableKills` INT UNSIGNED NOT NULL AFTER `RewRepValue5`;
DELETE FROM mangos_string WHERE entry IN (1103,1104,1105,1106,1107,1108,1109,1110,1111);
INSERT INTO mangos_string VALUES
(1103,'%d - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1104,'%d - %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1105,'%d - %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1106,'%d - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1107,'%d - %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1108,'%d - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1109,'%d - %s %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1110,'%d - %s X:%f Y:%f Z:%f MapId:%d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1111,'%d - %s X:%f Y:%f Z:%f MapId:%d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 23.10
DELETE FROM command WHERE name IN ('pdump write','pdump load');
INSERT INTO command VALUES
('pdump write',3,'Syntax is: pdump write $filename $playerNameOrGUID\r\nWrite character dump with name/guid $playerNameOrGUID to file $filename.'),
('pdump load',3,'Syntax is: pdump load $filename $account [$newname] [$newguid]\r\nLoad character dump from dump file into character list of $account with saved or $newname, with saved (or first free) or $newguid guid.');
DELETE FROM mangos_string WHERE entry IN (1112,1113,1114,1115,1116,1117);
INSERT INTO mangos_string VALUES
(1112,'Failed to open file: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1113,'Account %s (%u) have max amount allowed characters (client limit)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1114,'Dump file have broken data!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1115,'Invalid character name!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1116,'Invalid character guid!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1117,'Character guid %u in use!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM mangos_string WHERE entry IN (438,1118);
INSERT INTO mangos_string VALUES
(438,'Found items %u: %u ( inventory %u mail %u auction %u guild %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1118,'%d - guild: %s (guid: %u) %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM command WHERE name IN ('list item');
INSERT INTO command VALUES
('list item',3,'Syntax: .list item #item_id [#max_count]\r\n\r\nOutput items with item id #item_id found in all character inventories, mails, auctions, and guild banks. Output item guids, item owner guid, owner account and owner name (guild name and guid in case guild bank). Will be output maximum #max_count items. If #max_count not provided use 10 as default value.');
DELETE FROM command WHERE name IN ('help','transport');
INSERT INTO command VALUES
('help',0,'Syntax: .help [$command]\r\n\r\nDisplay usage instructions for the given $command. If no $command provided show list available commands.');

-- 26.10
DELETE FROM mangos_string WHERE entry IN (57,58);
INSERT INTO mangos_string VALUES
(57,'Using World DB: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(58,'Using script library: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 27.10
ALTER TABLE `npc_option`
  CHANGE COLUMN `id` `id` mediumint(8) unsigned NOT NULL default '0',
  CHANGE COLUMN `gossip_id` `gossip_id` mediumint(8) unsigned NOT NULL default '0',
  CHANGE COLUMN `action` `action` mediumint(8) unsigned NOT NULL default '0',
  ADD COLUMN `box_money` int(10) unsigned NOT NULL default '0' AFTER `action`,
  ADD COLUMN `coded` tinyint(3) unsigned NOT NULL default '0' AFTER `box_money`,
  ADD COLUMN `box_text` text AFTER `option_text`;
DROP TABLE IF EXISTS `locales_npc_option`;
CREATE TABLE `locales_npc_option` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `option_text_loc1` text,
  `option_text_loc2` text,
  `option_text_loc3` text,
  `option_text_loc4` text,
  `option_text_loc5` text,
  `option_text_loc6` text,
  `option_text_loc7` text,
  `option_text_loc8` text,
  `box_text_loc1` text,
  `box_text_loc2` text,
  `box_text_loc3` text,
  `box_text_loc4` text,
  `box_text_loc5` text,
  `box_text_loc6` text,
  `box_text_loc7` text,
  `box_text_loc8` text,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 28.10
DELETE FROM mangos_string WHERE entry IN (171,172);
INSERT INTO mangos_string VALUES
(172,'server console command',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM mangos_string WHERE entry IN (336,337);
INSERT INTO mangos_string VALUES
(336,'You repair all %s''s items.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(337,'All your items repaired by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM command WHERE name IN ('repairitems');
INSERT INTO command VALUES
('repairitems',2,'Syntax: .repairitems\r\n\r\nRepair all selected player''s items.');
DELETE FROM command WHERE name IN ('respawn');
INSERT INTO command VALUES
('respawn',3,'Syntax: .respawn\r\n\r\nRespawn selected creature or respawn all nearest creatures (if none selected) and GO without waiting respawn time expiration.');

-- 29.10
DELETE FROM mangos_string WHERE entry IN (338,339);
INSERT INTO mangos_string VALUES
(338,'You set waterwalk mode %s for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(339,'Your waterwalk mode %s by %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM command WHERE name IN ('waterwalk');
INSERT INTO command VALUES
('waterwalk',3,'Syntax: .waterwalk on/off\r\n\r\nSet on/off waterwalk state for selected player.');
ALTER TABLE db_version ADD COLUMN required_2008_10_29_03_mangos_db_version bit;
ALTER TABLE db_version CHANGE COLUMN required_2008_10_29_03_mangos_db_version required_2008_10_29_04_mangos_mangos_string bit;
DELETE FROM mangos_string WHERE entry IN (340,341,342);
INSERT INTO mangos_string VALUES
(340,'%s is now following you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(341,'%s is not following you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(342,'%s is now not following you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_2008_10_29_04_mangos_mangos_string required_2008_10_29_05_mangos_command bit;
DELETE FROM command WHERE name IN ('npc follow','npc unfollow','waterwalk');
INSERT INTO command VALUES
('npc follow',2,'Syntax: .npc follow\r\n\r\nSelected creature start follow you until death/fight/etc.'),
('npc unfollow',2,'Syntax: .npc unfollow\r\n\r\nSelected creature (non pet) stop follow you.'),
('waterwalk',2,'Syntax: .waterwalk on/off\r\n\r\nSet on/off waterwalk state for selected player.');

-- 31.10
ALTER TABLE db_version CHANGE COLUMN required_2008_10_29_05_mangos_command required_2008_10_31_01_mangos_creature_template bit;
 ALTER TABLE `creature_template`
  CHANGE COLUMN `flags` `unit_flags` int(10) unsigned NOT NULL default '0',
  CHANGE COLUMN `flag1` `type_flags` int(10) unsigned NOT NULL default '0';
