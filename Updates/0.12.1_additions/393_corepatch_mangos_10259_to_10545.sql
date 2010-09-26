-- 10263
ALTER TABLE db_version CHANGE COLUMN required_10257_01_mangos_command required_10263_01_mangos_pool_creature bit;

DROP TABLE IF EXISTS pool_creature_temp;
CREATE TABLE pool_creature_temp
SELECT guid, pool_entry, chance, description FROM pool_creature GROUP BY guid;

ALTER TABLE pool_creature_temp
  ADD PRIMARY KEY  (guid),
  ADD INDEX pool_idx (pool_entry);

DROP TABLE IF EXISTS pool_creature;
RENAME TABLE pool_creature_temp TO pool_creature;

ALTER TABLE db_version CHANGE COLUMN required_10263_01_mangos_pool_creature required_10263_02_mangos_pool_gameobject bit;

DROP TABLE IF EXISTS pool_gameobject_temp;
CREATE TABLE pool_gameobject_temp
SELECT guid, pool_entry, chance, description FROM pool_gameobject GROUP BY guid;

ALTER TABLE pool_gameobject_temp
  ADD PRIMARY KEY  (guid),
  ADD INDEX pool_idx (pool_entry);

DROP TABLE IF EXISTS pool_gameobject;
RENAME TABLE pool_gameobject_temp TO pool_gameobject;

ALTER TABLE db_version CHANGE COLUMN required_10263_02_mangos_pool_gameobject required_10263_03_mangos_pool_pool bit;

DROP TABLE IF EXISTS pool_pool_temp;
CREATE TABLE pool_pool_temp
SELECT pool_id, mother_pool, chance, description FROM pool_pool GROUP BY pool_id;

ALTER TABLE pool_pool_temp
  ADD PRIMARY KEY  (pool_id),
  ADD INDEX pool_idx (mother_pool);

DROP TABLE IF EXISTS pool_pool;
RENAME TABLE pool_pool_temp TO pool_pool;

-- 10270
ALTER TABLE db_version CHANGE COLUMN required_10263_03_mangos_pool_pool required_10270_01_mangos_reputation_spillover_template bit;

DROP TABLE IF EXISTS `reputation_spillover_template`;
CREATE TABLE `reputation_spillover_template` (
  `faction` smallint(6) unsigned NOT NULL default '0' COMMENT 'faction entry',
  `faction1` smallint(6) unsigned NOT NULL default '0' COMMENT 'faction to give spillover for',
  `rate_1` float NOT NULL default '0' COMMENT 'the given rep points * rate',
  `rank_1` tinyint(3) unsigned NOT NULL default '0' COMMENT 'max rank, above this will not give any spillover',
  `faction2` smallint(6) unsigned NOT NULL default '0',
  `rate_2` float NOT NULL default '0',
  `rank_2` tinyint(3) unsigned NOT NULL default '0',
  `faction3` smallint(6) unsigned NOT NULL default '0',
  `rate_3` float NOT NULL default '0',
  `rank_3` tinyint(3) unsigned NOT NULL default '0',
  `faction4` smallint(6) unsigned NOT NULL default '0',
  `rate_4` float NOT NULL default '0',
  `rank_4` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`faction`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Reputation spillover reputation gain';

-- 10286
ALTER TABLE db_version CHANGE COLUMN required_10270_01_mangos_reputation_spillover_template required_10286_01_mangos_creature_addon bit;

ALTER TABLE creature_addon
  CHANGE `guid` `guid` int(10) unsigned NOT NULL default '0';

-- 10289
ALTER TABLE db_version CHANGE COLUMN required_10286_01_mangos_creature_addon required_10289_01_mangos_creature_template bit;

ALTER TABLE creature_template CHANGE COLUMN modelid_A modelid_1 mediumint(8) unsigned NOT NULL default '0';
ALTER TABLE creature_template CHANGE COLUMN modelid_A2 modelid_2 mediumint(8) unsigned NOT NULL default '0';
ALTER TABLE creature_template CHANGE COLUMN modelid_H modelid_3 mediumint(8) unsigned NOT NULL default '0';
ALTER TABLE creature_template CHANGE COLUMN modelid_H2 modelid_4 mediumint(8) unsigned NOT NULL default '0';

UPDATE creature_template SET modelid_3=0 WHERE entry=1;

ALTER TABLE db_version CHANGE COLUMN required_10289_01_mangos_creature_template required_10289_02_mangos_creature_model_info bit;

ALTER TABLE creature_model_info ADD COLUMN modelid_alternative mediumint(8) unsigned NOT NULL default '0' AFTER modelid_other_gender;
ALTER TABLE creature_model_info ADD COLUMN modelid_other_team mediumint(8) unsigned NOT NULL default '0' AFTER modelid_alternative;

-- 10299
ALTER TABLE db_version CHANGE COLUMN required_10289_02_mangos_creature_model_info required_10299_01_mangos_event_id_scripts bit;

DROP TABLE IF EXISTS `event_id_scripts`;
CREATE TABLE `event_id_scripts` (
  `id` mediumint(8) NOT NULL,
  `ScriptName` char(64) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Script library scripted events';

-- 10307
ALTER TABLE db_version CHANGE COLUMN required_10299_01_mangos_event_id_scripts required_10307_01_mangos_instance_template bit;

ALTER TABLE instance_template CHANGE COLUMN `script` `ScriptName` varchar(128) NOT NULL default '';

ALTER TABLE db_version CHANGE COLUMN required_10307_01_mangos_instance_template required_10307_02_mangos_scripted_areatrigger bit;

RENAME TABLE areatrigger_scripts TO scripted_areatrigger;

ALTER TABLE db_version CHANGE COLUMN required_10307_02_mangos_scripted_areatrigger required_10307_03_mangos_scripted_event_id bit;

RENAME TABLE event_id_scripts TO scripted_event_id;

-- 10314
ALTER TABLE db_version CHANGE COLUMN required_10307_03_mangos_scripted_event_id required_10314_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,512,1105,1152);

INSERT INTO mangos_string VALUES
(357,'Areatrigger %u not has target coordinates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(358,'No areatriggers found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(359,'%s|cffffffff|Hareatrigger_target:%u|h[Trigger target %u]|h|r Map %u X:%f Y:%f Z:%f%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(360,'%s[Trigger target %u] Map %u X:%f Y:%f Z:%f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(361,'|cffffffff|Hareatrigger:%u|h[Trigger %u]|h|r Map %u X:%f Y:%f Z:%f%s%s%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(362,'[Trigger %u] Map %u X:%f Y:%f Z:%f%s%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(363,' (Dist %f)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(364,' [Tavern]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(365,' [Quest]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(366,'Explore quest:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(367,'Required level %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(368,'Required Items:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(369,'Required quest (normal difficulty):',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(370,'Required heroic keys:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(371,'Required quest (heroic difficulty):',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(512,'%d - |cffffffff|Hitem:%d:0:0:0:0:0:0:0:0|h[%s]|h|r %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1105,'%d - %s %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1152,'[usable]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

ALTER TABLE db_version CHANGE COLUMN required_10314_01_mangos_mangos_string required_10314_02_mangos_command bit;

DELETE FROM command WHERE name IN ('trigger','trigger active','trigger near','go trigger');
INSERT INTO command (name, security, help) VALUES
('go trigger',1,'Syntax: .go trigger (#trigger_id|$trigger_shift-link|$trigger_target_shift-link) [target]\r\n\r\nTeleport your character to areatrigger with id #trigger_id or trigger id associated with shift-link. If additional arg "target" provided then character will telported to areatrigger target point.'),
('trigger',2,'Syntax: .trigger [#trigger_id|$trigger_shift-link|$trigger_target_shift-link]\r\n\r\nShow detail infor about areatrigger with id #trigger_id or trigger id associated with shift-link. If areatrigger id or shift-link not provided then selected nearest areatrigger at current map.'),
('trigger active',2,'Syntax: .trigger active\r\n\r\nShow list of areatriggers wiht activation zone including current character position.'),
('trigger near',2,'Syntax: .trigger near [#distance]\r\n\r\nOutput areatriggers at distance #distance from player. If #distance not provided use 10 as default value.');

-- 10323
ALTER TABLE db_version CHANGE COLUMN required_10314_02_mangos_command required_10323_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (372);

INSERT INTO mangos_string VALUES
(372,'No achievement!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

ALTER TABLE db_version CHANGE COLUMN required_10323_01_mangos_mangos_string required_10323_02_mangos_command bit;

DELETE FROM command WHERE name IN ('lookup achievement','character achievements');
INSERT INTO command (name, security, help) VALUES
('character achievements',2,'Syntax: .character achievements [$player_name]\r\n\r\nShow completed achievments for selected player or player find by $player_name.'),
('lookup achievement',2,'Syntax: .lookup $name\r\nLooks up a achievement by $namepart, and returns all matches with their quest ID\'s. Achievement shift-links generated with information about achievment state for selected player. Also for completed achievments in list show complete date.');

-- 10331
ALTER TABLE db_version CHANGE COLUMN required_10323_02_mangos_command required_10331_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (131,132,562,563,564,565,566,567,568,569,570,571,572,575,576,1153,1154,1155,1156,1157,1158,1159,1160);

INSERT INTO mangos_string VALUES
(131,'You changed the %s spellmod %u to value %i for spell with family bit %u for %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(132,'%s changed your spellmod %u to value %i for spell with family bit %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(564,'The value index %u is too big to %s (count: %u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(565,'Set for %s field:%u to uint32 value:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(566,'You set for %s field:%u to uint32 value: %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(567,'Set for %s field:%u to to float value:%f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(568,'You set for %s field:%u to float value: %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(569,'Get %s uint32 value:[FIELD]:%u [VALUE]:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(570,'%s has uint32 value:[FIELD]:%u [VALUE]:%u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(571,'Get %s float value:[FIELD]:%u [VALUE]:%f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(572,'%s has float value:[FIELD]:%u [VALUE]:%f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(575,'Modify %s uint32 field:%u to sum with:%i = %u (%i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(576,'You modify for %s uint32 field:%u to sum with:%i = %u (%i)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1153,'Get %s bitstr value:[FIELD]:%u [VALUE]:%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1154,'%s has bitstr value:[FIELD]:%u [VALUE]:%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1155,'Get %s hex value:[FIELD]:%u [VALUE]:%x',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1156,'%s has hex value:[FIELD]:%u [VALUE]:%x',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1157,'Modify %s hex field:%u %s %x = %x (hex)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1158,'You modify for %s hex field:%u %s %x = %x (hex)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1159,'Modify %s float field:%u to sum with:%f = %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1160,'You modify for %s float field:%u to sum with:%f = %f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

ALTER TABLE db_version CHANGE COLUMN required_10331_01_mangos_mangos_string required_10331_02_mangos_command bit;

DELETE FROM command WHERE name IN (
  'debug update','debug Mod32Value','debug modvalue','modify spell','debug spellmods','modify bit',
  'debug getvalue','debug getitemvalue','debug setvalue','debug setitemvalue','debug moditemvalue'
);

INSERT INTO command (name, security, help) VALUES
('debug getitemvalue',3,'Syntax: .debug getitemvalue #itemguid #field [int|hex|bit|float]\r\n\r\nGet the field #field of the item #itemguid in your inventroy.\r\n\r\nUse type arg for set output format: int (decimal number), hex (hex value), bit (bitstring), float. By default use integer output.'),
('debug getvalue',3,'Syntax: .debug getvalue #field [int|hex|bit|float]\r\n\r\nGet the field #field of the selected target. If no target is selected, get the content of your field.\r\n\r\nUse type arg for set output format: int (decimal number), hex (hex value), bit (bitstring), float. By default use integer output.'),
('debug moditemvalue',3,'Syntax: .debug modvalue #guid #field [int|float| &= | |= | &=~ ] #value\r\n\r\nModify the field #field of the item #itemguid in your inventroy by value #value. \r\n\r\nUse type arg for set mode of modification: int (normal add/subtract #value as decimal number), float (add/subtract #value as float number), &= (bit and, set to 0 all bits in value if it not set to 1 in #value as hex number), |= (bit or, set to 1 all bits in value if it set to 1 in #value as hex number), &=~ (bit and not, set to 0 all bits in value if it set to 1 in #value as hex number). By default expect integer add/subtract.'),
('debug modvalue',3,'Syntax: .debug modvalue #field [int|float| &= | |= | &=~ ] #value\r\n\r\nModify the field #field of the selected target by value #value. If no target is selected, set the content of your field.\r\n\r\nUse type arg for set mode of modification: int (normal add/subtract #value as decimal number), float (add/subtract #value as float number), &= (bit and, set to 0 all bits in value if it not set to 1 in #value as hex number), |= (bit or, set to 1 all bits in value if it set to 1 in #value as hex number), &=~ (bit and not, set to 0 all bits in value if it set to 1 in #value as hex number). By default expect integer add/subtract.'),
('debug setitemvalue',3,'Syntax: .debug setitemvalue #guid #field [int|hex|bit|float] #value\r\n\r\nSet the field #field of the item #itemguid in your inventroy to value #value.\r\n\r\nUse type arg for set input format: int (decimal number), hex (hex value), bit (bitstring), float. By default expect integer input format.'),
('debug setvalue',3,'Syntax: .debug setvalue #field [int|hex|bit|float] #value\r\n\r\nSet the field #field of the selected target to value #value. If no target is selected, set the content of your field.\r\n\r\nUse type arg for set input format: int (decimal number), hex (hex value), bit (bitstring), float. By default expect integer input format.'),
('debug spellmods',3,'Syntax: .debug spellmods (flat|pct) #spellMaskBitIndex #spellModOp #value\r\n\r\nSet at client side spellmod affect for spell that have bit set with index #spellMaskBitIndex in spell family mask for values dependent from spellmod #spellModOp to #value.');

-- 10342
ALTER TABLE db_version CHANGE COLUMN required_10331_02_mangos_command required_10342_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1161,1162,1163,1164);

INSERT INTO mangos_string VALUES
(1161,'Criteria:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1162,' [counter]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1163,'Achievement %u doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1164,'Achievement criteria %u doesn\'t exist.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

ALTER TABLE db_version CHANGE COLUMN required_10342_01_mangos_mangos_string required_10342_02_mangos_command bit;

DELETE FROM command WHERE name IN (
  'achievement','achievement add','achievement remove','achievement criteria add','achievement criteria remove'
);

INSERT INTO command (name, security, help) VALUES
('achievement',3,'Syntax: .achievement $playername #achivementid\r\n\r\nShow state achievment #achivmentid (can be shift link) and list of achievement criteria with progress data for selected player in game or by player name.'),
('achievement add',3,'Syntax: .achievement add $playername #achivementid\r\n\r\nComplete achievement and all it\'s criteria for selected player in game or by player name. Command can\'t be used for counter achievements.'),
('achievement remove',3,'Syntax: .achievement remove $playername #achivementid\r\n\r\nRemove complete state for achievement #achivmentid and reset all achievement\'s criteria for selected player in game or by player name. Also command can be used for reset counter achievements.'),
('achievement criteria add',3,'Syntax: .achievement criteria add $playername #criteriaid #change\r\n\r\nIncrease progress for non-completed criteria at #change for selected player in game or by player name. If #chnage not provided then non-counter criteria progress set to completed state. For counter criteria increased at 1.'),
('achievement criteria remove',3,'Syntax: .achievement criteria remove $playername #criteriaid #change\r\n\r\necrease progress for criteria at #change for selected player in game or by player name. If #chnage not provided then criteria progress reset to 0.');

-- 10349
ALTER TABLE db_version CHANGE COLUMN required_10342_02_mangos_command required_10349_01_mangos_spell_proc_event bit;

delete from `spell_proc_event` where entry IN (71406, 71545);
insert into `spell_proc_event` values
(71406, 0x00,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0000000, 0.000000,45.000000,  0),
(71545, 0x00,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0000000, 0.000000,45.000000,  0);

-- 10350
ALTER TABLE db_version CHANGE COLUMN required_10349_01_mangos_spell_proc_event required_10350_02_mangos_command bit;

DELETE FROM command WHERE name IN ('trigger active','go trigger');
INSERT INTO command (name, security, help) VALUES
('go trigger',1,'Syntax: .go trigger (#trigger_id|$trigger_shift-link|$trigger_target_shift-link) [target]\r\n\r\nTeleport your character to areatrigger with id #trigger_id or trigger id associated with shift-link. If additional arg "target" provided then character will teleported to areatrigger target point.'),
('trigger active',2,'Syntax: .trigger active\r\n\r\nShow list of areatriggers with activation zone including current character position.');

-- 10353
ALTER TABLE db_version CHANGE COLUMN required_10350_02_mangos_command required_10353_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (373, 374, 375);

INSERT INTO mangos_string VALUES
(373,'Response:\n%s ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(374,'Tickets count: %i\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(375,'Player %s not have tickets.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

ALTER TABLE db_version CHANGE COLUMN required_10353_01_mangos_mangos_string required_10353_02_mangos_command bit;

DELETE FROM command WHERE name IN ('ticket');
INSERT INTO command (name, security, help) VALUES
('ticket',2,'Syntax: .ticket on\r\n        .ticket off\r\n        .ticket #num\r\n        .ticket $character_name\r\n        .ticket respond #num $response\r\n        .ticket respond $character_name $response\r\n\r\non/off for GMs to show or not a new ticket directly, $character_name to show ticket of this character, #num to show ticket #num.');

-- 10362
ALTER TABLE db_version CHANGE COLUMN required_10353_02_mangos_command required_10362_01_mangos_creature_movement_template bit;

DROP TABLE IF EXISTS `creature_movement_template`;
CREATE TABLE `creature_movement_template` (
  `entry` mediumint(8) unsigned NOT NULL COMMENT 'Creature entry',
  `point` mediumint(8) unsigned NOT NULL default '0',
  `position_x` float NOT NULL default '0',
  `position_y` float NOT NULL default '0',
  `position_z` float NOT NULL default '0',
  `waittime` int(10) unsigned NOT NULL default '0',
  `script_id` mediumint(8) unsigned NOT NULL default '0',
  `textid1` int(11) NOT NULL default '0',
  `textid2` int(11) NOT NULL default '0',
  `textid3` int(11) NOT NULL default '0',
  `textid4` int(11) NOT NULL default '0',
  `textid5` int(11) NOT NULL default '0',
  `emote` mediumint(8) unsigned NOT NULL default '0',
  `spell` mediumint(8) unsigned NOT NULL default '0',
  `wpguid` int(11) NOT NULL default '0',
  `orientation` float NOT NULL default '0',
  `model1` mediumint(9) NOT NULL default '0',
  `model2` mediumint(9) NOT NULL default '0',
  PRIMARY KEY  (`entry`,`point`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature waypoint system';

-- 10365
ALTER TABLE db_version CHANGE COLUMN required_10362_01_mangos_creature_movement_template required_10365_01_mangos_creature_ai_scripts bit;

UPDATE creature_ai_scripts SET action1_type=43, action1_param1=0 WHERE action1_type=17 AND action1_param1=68;
UPDATE creature_ai_scripts SET action2_type=43, action2_param1=0 WHERE action2_type=17 AND action2_param1=68;
UPDATE creature_ai_scripts SET action3_type=43, action3_param1=0 WHERE action3_type=17 AND action3_param1=68;

-- 10381
ALTER TABLE db_version CHANGE COLUMN required_10365_01_mangos_creature_ai_scripts required_10381_01_mangos_creature_model_race bit;

DROP TABLE IF EXISTS `creature_model_race`;
CREATE TABLE `creature_model_race` (
  `modelid` mediumint(8) unsigned NOT NULL default '0',
  `racemask` mediumint(8) unsigned NOT NULL default '0',
  `creature_entry` mediumint(8) unsigned NOT NULL default '0' COMMENT 'option 1, modelid_N from creature_template',
  `modelid_racial` mediumint(8) unsigned NOT NULL default '0' COMMENT 'option 2, explicit modelid',
  PRIMARY KEY  (`modelid`,`racemask`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Model system';

-- Data from removed hard coded shapeshift models. Mangos will not provide updates in the future.
INSERT INTO creature_model_race VALUES (892, 690, 0, 8571),(2281, 690, 0, 2289),(21243, 690, 0, 21244),(20857, 690, 0, 20872);

-- Drop no longer needed field
ALTER TABLE creature_model_info DROP COLUMN modelid_other_team;

-- 10400
ALTER TABLE db_version CHANGE COLUMN required_10381_01_mangos_creature_model_race required_10400_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1165);

INSERT INTO mangos_string VALUES
(1165,'Spell %u not have auras.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 10409
ALTER TABLE db_version CHANGE COLUMN required_10400_01_mangos_mangos_string required_10409_01_mangos_spell_chain bit;

INSERT INTO spell_chain VALUES
(47230, 0, 47230, 1, 0),
(47231, 47230, 47230, 2, 0);

ALTER TABLE db_version CHANGE COLUMN required_10409_01_mangos_spell_chain required_10409_02_mangos_spell_proc_event bit;

-- 10410
ALTER TABLE db_version CHANGE COLUMN required_10409_02_mangos_spell_proc_event required_10410_01_mangos_spell_chain bit;

DELETE FROM spell_chain WHERE spell_id IN (47230, 47231);

-- 10411
ALTER TABLE db_version CHANGE COLUMN required_10410_01_mangos_spell_chain required_10411_01_mangos_spell_proc_event bit;

insert into spell_proc_event values (47230, 0x7F,  5, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- 10416
ALTER TABLE db_version CHANGE COLUMN required_10411_01_mangos_spell_proc_event required_10416_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 71611;
INSERT INTO spell_proc_event VALUES (71611, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- 10419
ALTER TABLE db_version CHANGE COLUMN required_10416_01_mangos_spell_proc_event required_10419_01_mangos_spell_chain bit;

DELETE FROM spell_chain WHERE first_spell = 50464;

-- 10422
ALTER TABLE db_version CHANGE COLUMN required_10419_01_mangos_spell_chain required_10422_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 71642;
INSERT INTO spell_proc_event VALUES (71642, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- 10423
ALTER TABLE db_version CHANGE COLUMN required_10422_01_mangos_spell_proc_event required_10423_01_mangos_spell_chain bit;

DELETE FROM spell_chain WHERE spell_id IN (
 100, 6178, 11578, 78, 284, 285, 1608, 11564, 11565, 11566, 11567, 25286, 29707,
 30324, 47449, 47450, 12294, 21551, 21552, 21553, 25248, 30330, 47485, 47486,
 772, 6546, 6547, 6548, 11572, 11573, 11574, 25208, 46845, 47465, 6343, 8198,
 8204, 8205, 11580, 11581, 25264, 47501, 47502, 53, 2589, 2590, 2591, 8721, 11279,
 11280, 11281, 25300, 26863, 48656, 48657, 5277, 26669, 1966, 6768, 8637, 11303,
 25302, 27448, 48658, 48659, 1752, 1757, 1758, 1759, 1760, 8621, 11293, 11294,
 26861, 26862, 48637, 48638, 2983, 8696, 11305, 16511, 17347, 17348, 26864, 48660,
 6770, 2070, 11297, 51724, 1856, 1857, 26889, 5211, 6798, 8983, 5487, 9634, 1082,
 3029, 5201, 9849, 9850, 27000, 48569, 48570, 8998, 9000, 9892, 31709, 27004,
 48575, 1850, 9821, 33357, 99, 1735, 9490, 9747, 9898, 26998, 48559, 48560, 22568,
 22827, 22828, 22829, 31018, 24248, 48576, 48577, 33943, 40120, 33745, 48567,
 48568, 22570, 49802, 33878, 33986, 33987, 48563, 48564, 33876, 33982, 33983,
 48565, 48566, 6807, 6808, 6809, 8972, 9745, 9880, 9881, 26996, 48479, 48480,
 9005, 9823, 9827, 27006, 49803, 1822, 1823, 1824, 9904, 27003, 48573, 48574,
 6785, 6787, 9866, 9867, 27005, 48578, 48579, 1079, 9492, 9493, 9752, 9894, 9896,
 27008, 49799, 49800, 5221, 6800, 8992, 9829, 9830, 27001, 27002, 48571, 48572,
 779, 780, 769, 9754, 9908, 26997, 48561, 48562, 5217, 6793, 9845, 9846, 50212,
 50213, 7294, 10298, 10299, 10300, 10301, 27150, 54043, 6307, 7804, 7805, 11766,
 11767, 27268, 47982, 2947, 8316, 8317, 11770, 11771, 27269, 47983, 3110, 7799,
 7800, 7801, 7802, 11762, 11763, 27267, 47964, 19505, 19731, 19734, 19736, 27276,
 27277, 48011, 54049, 54050, 54051, 54052, 54053, 19244, 19647, 17253, 17255,
 17256, 17257, 17258, 17259, 17260, 17261, 27050, 52473, 52474, 17767, 17850,
 17851, 17852, 17853, 17854, 27272, 47987, 47988, 7812, 19438, 19440, 19441,
 19442, 19443, 27273, 47985, 47986, 17735, 17750, 17751, 17752, 27271, 33701,
 47989, 47990, 3716, 7809, 7810, 7811, 11774, 11775, 27270, 47984, 7814, 7815,
 7816, 11778, 11779, 11780, 27274, 47991, 47992, 6360, 7813, 11784, 11785, 27275,
 24450, 24452, 24453, 59881, 59882, 59883, 59884, 59885, 59886, 50256, 53526,
 53528, 53529, 53532, 53533, 35290, 35291, 35292, 35293, 35294, 35295, 24423,
 24577, 24578, 24579, 27051, 55487, 49966, 49967, 49968, 49969, 49970, 49971,
 49972, 49973, 49974, 52475, 52476, 50498, 53578, 53579, 53580, 53581, 53582,
 16827, 16828, 16829, 16830, 16831, 16832, 3010, 3009, 27049, 52471, 52472, 24640,
 24583, 24586, 24587, 27060, 55728, 8676, 8724, 8725, 11267, 11268, 11269, 27441,
 48689, 48690, 48691, 26679, 48673, 48674, 32645, 32684, 57992, 57993, 2098, 6760,
 6761, 6762, 8623, 8624, 11299, 11300, 31016, 26865, 48667, 48668, 703, 8631,
 8632, 8633, 11289, 11290, 26839, 26884, 48675, 48676, 408, 8643, 1329, 34411,
 34412, 34413, 48663, 48666, 1943, 8639, 8640, 11273, 11274, 11275, 26867, 48671,
 48672, 5171, 6774, 6673, 5242, 6192, 11549, 11550, 11551, 25289, 2048, 47436,
 845, 7369, 11608, 11609, 20569, 25231, 47519, 47520, 469, 47439, 47440, 1160,
 6190, 11554, 11555, 11556, 25202, 25203, 47437, 5308, 20658, 20660, 20661, 20662,
 25234, 25236, 47470, 47471, 1464, 8820, 11604, 11605, 25241, 25242, 47474, 47475,
 20243, 30016, 30022, 47497, 47498, 6572, 6574, 7379, 11600, 11601, 25288, 25269,
 30357, 57823, 23922, 23923, 23924, 23925, 25258, 30356, 47487, 47488, 465, 10290,
 643, 10291, 1032, 10292, 10293, 27149, 48941, 48942, 19891, 19899, 19900, 27153,
 48947, 19888, 19897, 19898, 27152, 48945, 19876, 19895, 19896, 27151, 48943,
 2649, 14916, 14917, 14918, 14919, 14920, 14921, 27047, 61676, 633, 2800, 10310,
 27154, 48788, 50271, 53571, 53572, 53573, 53574, 53575, 50541, 53537, 53538,
 53540, 53542, 53543, 24844, 25008, 25009, 25010, 25011, 25012, 33698, 33699,
 33700, 47993, 30213, 30219, 30223, 47994, 30151, 30194, 30198, 47996, 34889,
 35323, 55482, 55483, 55484, 55485, 50274, 53593, 53594, 53596, 53597, 53598,
 35387, 35389, 35392, 55555, 55556, 55557, 48721, 49939, 49940, 49941, 45902,
 49926, 49927, 49928, 49929, 49930, 55050, 55258, 55259, 55260, 55261, 55262,
 49143, 51416, 51417, 51418, 51419, 55268, 45477, 49896, 49903, 49904, 49909,
 49020, 51423, 51424, 51425, 49158, 51325, 51326, 51327, 51328, 43265, 49936,
 49937, 49938, 47541, 49895, 49894, 49893, 49892, 49998, 49999, 45463, 49923,
 49924, 45462, 49917, 49918, 49919, 49920, 49921, 55090, 55265, 55270, 55271,
 54644, 55488, 55489, 55490, 55491, 55492, 54680, 55495, 55496, 55497, 55498,
 55499, 55749, 55750, 55751, 55752, 55753, 55754, 56626, 56627, 56628, 56629,
 56630, 56631, 58604, 58607, 58608, 58609, 58610, 58611, 61193, 61194, 61195,
 61196, 61197, 61198, 2259, 3101, 3464, 11611, 28596, 51304, 2018, 3100, 3538,
 9785, 29844, 51300, 2550, 3102, 3413, 18260, 33359, 51296, 7411, 7412, 7413,
 13920, 28029, 51313, 4036, 4037, 4038, 12656, 30350, 51306, 3273, 3274, 7924,
 10846, 27028, 45542, 7620, 7731, 7732, 18248, 33095, 51294, 2366, 2368, 3570,
 11993, 28695, 50300, 45357, 45358, 45359, 45360, 45361, 45363, 25229, 25230,
 28894, 28895, 28897, 51311, 2108, 3104, 3811, 10662, 32549, 51302, 2575, 2576,
 3564, 10248, 29354, 50310, 33388, 33391, 34090, 34091, 8613, 8617, 8618, 10768,
 32678, 50305, 3908, 3909, 3910, 12180, 26790, 51309, 55428, 55480, 55500, 55501,
 55502, 55503, 53120, 53121, 53122, 53123, 53124, 53040, 53125, 53662, 53663,
 53664, 53665, 53666, 54424, 57564, 57565, 57566, 57567, 21084, 20154, 50518,
 53558, 53559, 53560, 53561, 53562, 24604, 64491, 64492, 64493, 64494, 64495,
 50519, 53564, 53565, 53566, 53567, 53568, 50245, 53544, 53545, 53546, 53547,
 53548
);

-- 10427
ALTER TABLE db_version CHANGE COLUMN required_10423_01_mangos_spell_chain required_10427_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (16954, 16961);

-- 10430
ALTER TABLE db_version CHANGE COLUMN required_10427_01_mangos_spell_proc_event required_10430_01_mangos_spell_chain bit;

DELETE FROM spell_chain WHERE first_spell IN (1742, 1784, 5215, 8647, 47476, 50842);

-- 10454
ALTER TABLE db_version CHANGE COLUMN required_10430_01_mangos_spell_chain required_10454_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 54821;
INSERT INTO spell_proc_event VALUES (54821, 0x00,  7, 0x00001000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000010, 0x00000000, 0.000000, 0.000000,  0);

-- 10457
ALTER TABLE db_version CHANGE COLUMN required_10454_01_mangos_spell_proc_event required_10457_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 51692;
INSERT INTO spell_proc_event VALUES (51692, 0x00,  8, 0x00000204, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- 10500
ALTER TABLE db_version CHANGE COLUMN required_10457_01_mangos_spell_proc_event required_10500_01_mangos_scripts bit;

ALTER TABLE creature_movement_scripts ADD COLUMN dataint2 int(11) NOT NULL default '0' AFTER dataint;
ALTER TABLE creature_movement_scripts ADD COLUMN dataint3 int(11) NOT NULL default '0' AFTER dataint2;
ALTER TABLE creature_movement_scripts ADD COLUMN dataint4 int(11) NOT NULL default '0' AFTER dataint3;
ALTER TABLE creature_movement_scripts ADD COLUMN comments varchar(255) NOT NULL AFTER o;

ALTER TABLE event_scripts ADD COLUMN dataint2 int(11) NOT NULL default '0' AFTER dataint;
ALTER TABLE event_scripts ADD COLUMN dataint3 int(11) NOT NULL default '0' AFTER dataint2;
ALTER TABLE event_scripts ADD COLUMN dataint4 int(11) NOT NULL default '0' AFTER dataint3;
ALTER TABLE event_scripts ADD COLUMN comments varchar(255) NOT NULL AFTER o;

ALTER TABLE gameobject_scripts ADD COLUMN dataint2 int(11) NOT NULL default '0' AFTER dataint;
ALTER TABLE gameobject_scripts ADD COLUMN dataint3 int(11) NOT NULL default '0' AFTER dataint2;
ALTER TABLE gameobject_scripts ADD COLUMN dataint4 int(11) NOT NULL default '0' AFTER dataint3;
ALTER TABLE gameobject_scripts ADD COLUMN comments varchar(255) NOT NULL AFTER o;

ALTER TABLE gossip_scripts ADD COLUMN dataint2 int(11) NOT NULL default '0' AFTER dataint;
ALTER TABLE gossip_scripts ADD COLUMN dataint3 int(11) NOT NULL default '0' AFTER dataint2;
ALTER TABLE gossip_scripts ADD COLUMN dataint4 int(11) NOT NULL default '0' AFTER dataint3;
ALTER TABLE gossip_scripts ADD COLUMN comments varchar(255) NOT NULL AFTER o;

ALTER TABLE quest_end_scripts ADD COLUMN dataint2 int(11) NOT NULL default '0' AFTER dataint;
ALTER TABLE quest_end_scripts ADD COLUMN dataint3 int(11) NOT NULL default '0' AFTER dataint2;
ALTER TABLE quest_end_scripts ADD COLUMN dataint4 int(11) NOT NULL default '0' AFTER dataint3;
ALTER TABLE quest_end_scripts ADD COLUMN comments varchar(255) NOT NULL AFTER o;

ALTER TABLE quest_start_scripts ADD COLUMN dataint2 int(11) NOT NULL default '0' AFTER dataint;
ALTER TABLE quest_start_scripts ADD COLUMN dataint3 int(11) NOT NULL default '0' AFTER dataint2;
ALTER TABLE quest_start_scripts ADD COLUMN dataint4 int(11) NOT NULL default '0' AFTER dataint3;
ALTER TABLE quest_start_scripts ADD COLUMN comments varchar(255) NOT NULL AFTER o;

ALTER TABLE spell_scripts ADD COLUMN dataint2 int(11) NOT NULL default '0' AFTER dataint;
ALTER TABLE spell_scripts ADD COLUMN dataint3 int(11) NOT NULL default '0' AFTER dataint2;
ALTER TABLE spell_scripts ADD COLUMN dataint4 int(11) NOT NULL default '0' AFTER dataint3;
ALTER TABLE spell_scripts ADD COLUMN comments varchar(255) NOT NULL AFTER o;

-- 10503
ALTER TABLE db_version CHANGE COLUMN required_10500_01_mangos_scripts required_10503_03_mangos_creature_respawn bit;

DROP TABLE IF EXISTS `creature_respawn`;

ALTER TABLE db_version CHANGE COLUMN required_10503_03_mangos_creature_respawn required_10503_04_mangos_gameobject_respawn bit;

DROP TABLE IF EXISTS `gameobject_respawn`;

-- 10537
ALTER TABLE db_version CHANGE COLUMN required_10503_04_mangos_gameobject_respawn required_10537_01_mangos_command bit;

DELETE FROM command WHERE name IN ('account characters');

INSERT INTO command (name, security, help) VALUES
('account characters',3,'Syntax: .account characters [#accountId|$accountName]\r\n\r\nShow list all characters for account selected by provided #accountId or $accountName, or for selected player in game.');
