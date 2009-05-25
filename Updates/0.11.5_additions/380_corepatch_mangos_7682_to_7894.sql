-- 7705
ALTER TABLE db_version CHANGE COLUMN required_7662_02_mangos_spell_bonus_data required_7705_01_mangos_command bit;
DELETE FROM `command` WHERE `name` IN (
  'account lock','account password','chardelete','character customize','character delete',
  'character rename','customize','lockaccount','password','rename'
);
INSERT INTO `command` VALUES
('account lock',0,'Syntax: .account lock [on|off]\r\n\r\nAllow login from account only from current used IP or remove this requirement.'),
('account password',0,'Syntax: .account password $old_password $new_password $new_password\r\n\r\nChange your account password.'),
('character customize',2,'Syntax: .character customize [$name]\r\n\r\nMark selected in game or by $name in command character for customize at next login.'),
('character delete',4,'Syntax: .character delete $name\r\n\r\nDelete character $name.'),
('character rename',2,'Syntax: .character rename [$name]\r\n\r\nMark selected in game or by $name in command character for rename at next login.');

-- 7706
ALTER TABLE db_version CHANGE COLUMN required_7705_01_mangos_command required_7706_01_mangos_command bit;
DELETE FROM `command` WHERE `name` IN ('plimit','server plimit');
INSERT INTO `command` VALUES
('server plimit',3,'Syntax: .server plimit [#num|-1|-2|-3|reset|player|moderator|gamemaster|administrator]\r\n\r\nWithout arg show current player amount and security level limitations for login to server, with arg set player linit ($num > 0) or securiti limitation ($num < 0 or security leme name. With `reset` sets player limit to the one in the config file');

-- 7714
ALTER TABLE db_version CHANGE COLUMN required_7706_01_mangos_command required_7714_01_mangos_command bit;
DELETE FROM `command` WHERE `name` IN ('character level');
INSERT INTO `command` VALUES
('character level',3,'Syntax: .character level [$playername] [#level]\r\n\r\nSet the level of character with $playername (or the selected if not name provided) by #numberoflevels Or +1 if no #numberoflevels provided). If #numberoflevels is omitted, the level will be increase by 1. If #numberoflevels is 0, the same level will be restarted. If no character is selected and name not provided, increase your level. Command can be used for offline character. All stats and dependent values recalculated. At level decrease talents can be reset if need. Also at level decrease equipped items with greater level requirement can be lost.');

-- 7720
ALTER TABLE db_version CHANGE COLUMN required_7714_01_mangos_command required_7720_01_mangos_mangos_string bit;
DELETE FROM mangos_string WHERE entry IN(557,558,559);
INSERT INTO mangos_string VALUES
(557,'%s level up you to (%i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(558,'%s level down you to (%i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(559,'%s reset your level progress.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 7776
ALTER TABLE db_version CHANGE COLUMN required_7720_01_mangos_mangos_string required_7776_01_mangos_npc_spellclick_spells bit;
CREATE TABLE IF NOT EXISTS `npc_spellclick_spells` (
    `npc_entry` INT UNSIGNED NOT NULL COMMENT 'reference to creature_template',
    `spell_id` INT UNSIGNED NOT NULL COMMENT 'spell which should be casted ',
    `quest_id` INT UNSIGNED NOT NULL COMMENT 'reference to quest_template',
    `cast_flags` TINYINT UNSIGNED NOT NULL COMMENT 'first bit defines caster: 1=player, 0=creature; second bit defines target, same mapping as caster bit'
) ENGINE = MYISAM DEFAULT CHARSET=utf8;

-- 7777
ALTER TABLE db_version CHANGE COLUMN required_7776_01_mangos_npc_spellclick_spells required_7777_01_mangos_spell_proc_event bit;
DELETE FROM spell_proc_event WHERE entry IN (30299,30301,30302);
INSERT INTO spell_proc_event VALUES (30299, 0x0000007E,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);
INSERT INTO spell_proc_event VALUES (30301, 0x0000007E,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);
INSERT INTO spell_proc_event VALUES (30302, 0x0000007E,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- 7782
ALTER TABLE db_version CHANGE COLUMN required_7777_01_mangos_spell_proc_event required_7782_01_mangos_spell_proc_event bit;
DELETE FROM spell_proc_event WHERE entry = 34074;
INSERT INTO spell_proc_event VALUES (34074, 0, 9, 522819, 8917121, 513, 0, 0, 0, 0, 0);

-- 7796
ALTER TABLE db_version CHANGE COLUMN required_7782_01_mangos_spell_proc_event required_7796_01_mangos_command bit;
DELETE FROM `command` WHERE `name` IN ('go taxinode','lookup taxinode');
INSERT INTO `command` VALUES
('go taxinode',1,'Syntax: .go taxinode #taxinode\r\n\r\nTeleport player to taxinode coordinates. You can look up zone using .lookup taxinode $namepart'),
('lookup taxinode',3,'Syntax: .lookup taxinode $substring\r\n\r\nSearch and output all taxinodes with provide $substring in name.');
ALTER TABLE db_version CHANGE COLUMN required_7796_01_mangos_command required_7796_02_mangos_mangos_string bit;
DELETE FROM mangos_string WHERE entry IN(347,466,1128,1129);
INSERT INTO mangos_string VALUES
(347,'TaxiNode ID %u not found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(466,'No taxinodes found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1128,'%d - |cffffffff|Htaxinode:%u|h[%s %s]|h|r (Map:%u X:%f Y:%f Z:%f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1129,'%d - %s %s (Map:%u X:%f Y:%f Z:%f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 7823
ALTER TABLE db_version CHANGE COLUMN required_7796_02_mangos_mangos_string required_7823_01_mangos_item_template bit;
ALTER TABLE item_template
CHANGE COLUMN ScalingStatValue ScalingStatValue int(6) unsigned NOT NULL default '0';

-- 7830
ALTER TABLE db_version CHANGE COLUMN required_7823_01_mangos_item_template required_7830_01_mangos_spell_chain bit;
DELETE FROM spell_chain WHERE  spell_id in (54424,57564,57565,57566,57567);
INSERT INTO `spell_chain` VALUES
 (54424,0,    54424,1,0),
 (57564,54424,54424,2,0),
 (57565,57564,54424,3,0),
 (57566,57565,54424,4,0),
 (57567,57566,54424,5,0);

 -- 7839
ALTER TABLE db_version CHANGE COLUMN required_7830_01_mangos_spell_chain required_7839_01_mangos_mangos_string bit;
DELETE FROM mangos_string WHERE entry IN(171,283);
INSERT INTO mangos_string VALUES
(171,'You can\'t teleport self to self!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
ALTER TABLE db_version CHANGE COLUMN required_7839_01_mangos_mangos_string required_7839_02_mangos_command bit;
DELETE FROM `command` WHERE `name` IN (
   'baninfo account','baninfo character','baninfo ip','goname','groupgo',
   'guild create','guild invite','guild rank','guild uninvite','mute',
   'namego','tele name','unmute'
);
INSERT INTO `command` VALUES
('baninfo account',3,'Syntax: .baninfo account $accountid\r\nWatch full information about a specific ban.'),
('baninfo character',3,'Syntax: .baninfo character $charactername \r\nWatch full information about a specific ban.'),
('baninfo ip',3,'Syntax: .baninfo ip $ip\r\nWatch full information about a specific ban.'),
('goname',1,'Syntax: .goname [$charactername]\r\n\r\nTeleport to the given character. Either specify the character name or click on the character\'s portrait, e.g. when you are in a group. Character can be offline.'),
('groupgo',1,'Syntax: .groupgo [$charactername]\r\n\r\nTeleport the given character and his group to you. Teleported only online characters but original selected group member can be offline.'),
('guild create',2,'Syntax: .guild create [$GuildLeaderName] $GuildName\r\n\r\nCreate a guild named $GuildName with the player $GuildLeaderName (or selected) as leader.'),
('guild invite',2,'Syntax: .guild invite [$CharacterName] $GuildName\r\n\r\nAdd player $CharacterName (or selected) into a guild $GuildName.'),
('guild rank',2,'Syntax: .guild rank [$CharacterName] #Rank\r\n\r\nSet for player $CharacterName (or selected) rank #Rank in a guild.'),
('guild uninvite',2,'Syntax: .guild uninvite [$CharacterName]\r\n\r\nRemove player $CharacterName (or selected) from a guild.'),
('mute',1,'Syntax: .mute [$playerName] $timeInMinutes\r\n\r\nDisible chat messaging for any character from account of character $playerName (or currently selected) at $timeInMinutes minutes. Player can be offline.'),
('namego',1,'Syntax: .namego [$charactername]\r\n\r\nTeleport the given character to you. Character can be offline.'),
('tele name',1,'Syntax: .tele name [#playername] #location\r\n\r\nTeleport the given character to a given location. Character can be offline.'),
('unmute',1,'Syntax: .unmute [$playerName]\r\n\r\nRestore chat messaging for any character from account of character $playerName (or selected). Character can be ofline.');

-- 7850
ALTER TABLE db_version CHANGE COLUMN required_7839_02_mangos_command required_7850_01_mangos_command bit;
DELETE FROM `command` WHERE `name` IN ('character reputation','pinfo');
INSERT INTO `command` VALUES
('pinfo',2,'Syntax: .pinfo [$player_name]\r\n\r\nOutput account information for selected player or player find by $player_name.'),
('character reputation',2,'Syntax: .character reputation [$player_name]\r\n\r\nShow reputation information for selected player or player find by $player_name.');

-- 7855
ALTER TABLE db_version CHANGE COLUMN required_7850_01_mangos_command required_7855_01_mangos_pools bit;
ALTER TABLE pool_creature
  ADD COLUMN description varchar(255) NOT NULL AFTER chance;
ALTER TABLE pool_gameobject
  ADD COLUMN description varchar(255) NOT NULL AFTER chance;
ALTER TABLE pool_pool
  ADD COLUMN description varchar(255) NOT NULL AFTER chance;
ALTER TABLE pool_template
  ADD COLUMN description varchar(255) NOT NULL AFTER max_limit;

-- 7879
ALTER TABLE db_version CHANGE COLUMN required_7855_01_mangos_pools required_7879_01_mangos_spell_proc_event bit;
DELETE FROM spell_proc_event WHERE entry IN (31571, 31572);
INSERT INTO spell_proc_event VALUES
(31571, 0x00, 3, 0x00000000, 0x00000022, 0x00000000, 0x00004000, 0x00000000, 0.000000, 0.000000, 0),
(31572, 0x00, 3, 0x00000000, 0x00000022, 0x00000000, 0x00004000, 0x00000000, 0.000000, 0.000000, 0);

-- 7884
ALTER TABLE db_version CHANGE COLUMN required_7879_01_mangos_spell_proc_event required_7884_01_mangos_playercreateinfo_spell bit;
DELETE FROM playercreateinfo_spell WHERE Spell = '28734';
ALTER TABLE db_version CHANGE COLUMN required_7884_01_mangos_playercreateinfo_spell required_7884_02_mangos_playercreateinfo_action bit;
DELETE FROM playercreateinfo_action WHERE action = '28734';
UPDATE playercreateinfo_action SET button = '3' WHERE race = '10' AND class IN ('8', '9', '5', '2', '3') AND button = '4';
UPDATE playercreateinfo_action SET button = '4' WHERE race = '10' AND class = '4' AND button = '5';

-- 7886
ALTER TABLE db_version CHANGE COLUMN required_7884_02_mangos_playercreateinfo_action required_7886_01_mangos_petcreateinfo_spell bit;
DROP TABLE IF EXISTS `petcreateinfo_spell`;

-- 7893
ALTER TABLE db_version CHANGE COLUMN required_7886_01_mangos_petcreateinfo_spell required_7893_01_mangos_command bit;
DELETE FROM `command` WHERE `name` IN (
   'guild create','guild delete','guild invite'
);
INSERT INTO `command` VALUES
('guild create',2,'Syntax: .guild create [$GuildLeaderName] "$GuildName"\r\n\r\nCreate a guild named $GuildName with the player $GuildLeaderName (or selected) as leader.  Guild name must in quotes.'),
('guild invite',2,'Syntax: .guild invite [$CharacterName] "$GuildName"\r\n\r\nAdd player $CharacterName (or selected) into a guild $GuildName. Guild name must in quotes.'),
('guild delete',2,'Syntax: .guild delete "$GuildName"\r\n\r\nDelete guild $GuildName. Guild name must in quotes.');
