-- 10906
ALTER TABLE db_version CHANGE COLUMN required_10883_01_mangos_spell_proc_event required_10906_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry=63335;
INSERT INTO spell_proc_event VALUES
(63335, 0x00, 15, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

ALTER TABLE db_version CHANGE COLUMN required_10906_01_mangos_spell_proc_event required_10906_02_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry=49184;
INSERT INTO spell_bonus_data VALUES
(49184, 0,      0,       0.2,   0,     'Death Knight - Howling Blast');

-- 10932
ALTER TABLE db_version CHANGE COLUMN required_10906_02_mangos_spell_bonus_data required_10932_01_mangos_game_event_creature_data bit;

DROP TABLE IF EXISTS game_event_creature_data;
RENAME TABLE game_event_model_equip TO game_event_creature_data;

ALTER TABLE game_event_creature_data
  ADD COLUMN entry_id mediumint(8) unsigned NOT NULL default '0' AFTER guid,
  ADD COLUMN spell_start mediumint(8) unsigned NOT NULL default '0' AFTER equipment_id,
  ADD COLUMN spell_end mediumint(8) unsigned NOT NULL default '0' AFTER spell_start;

ALTER TABLE game_event_creature_data
  DROP PRIMARY KEY,
  ADD PRIMARY KEY  (`guid`,`event`);

-- 10945
ALTER TABLE db_version CHANGE COLUMN required_10932_01_mangos_game_event_creature_data required_10945_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1166,1167,1168);

INSERT INTO mangos_string VALUES
(1166,'Scripting library not found or not accessable.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1167,'Scripting library has wrong list functions (outdated?).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1168,'Scripting library reloaded.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 10946
ALTER TABLE db_version CHANGE COLUMN required_10945_01_mangos_mangos_string required_10946_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (16257, 16277, 16278, 16279, 16280);
DELETE FROM spell_proc_event WHERE entry IN (12966, 12967, 12968, 12969, 12970);

-- 10949
ALTER TABLE db_version CHANGE COLUMN required_10946_01_mangos_spell_proc_event required_10949_01_mangos_mangos_string bit;

UPDATE mangos_string SET content_default='Scripting library not found or not accessible.' WHERE entry=1166;

-- 10950
ALTER TABLE db_version CHANGE COLUMN required_10949_01_mangos_mangos_string required_10950_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1169);

INSERT INTO mangos_string VALUES
(1169,'Scripting library build for different mangosd revision.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 10951
ALTER TABLE db_version CHANGE COLUMN required_10950_01_mangos_mangos_string required_10951_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (70652,70727,70730,70756,70761);
INSERT INTO spell_proc_event VALUES
(70652, 0x00, 15, 0x00000008, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
-- Item - Hunter T10 2P Bonus
(70727, 0x01,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
-- Item - Hunter T10 4P Bonus
(70730, 0x00,  9, 0x00004000, 0x00000000, 0x00000000, 0x00000100, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
-- Item - Paladin T10 Holy 4P Bonus
(70756, 0x00, 10, 0x00200000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
-- Item - Paladin T10 Protection 4P Bonus
(70761, 0x00, 10, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- 10972
ALTER TABLE db_version CHANGE COLUMN required_10951_01_mangos_spell_proc_event required_10972_01_mangos_command bit;

DELETE FROM command WHERE name IN ('send mass items','send mass mail','send mass money');

INSERT INTO command (name, security, help) VALUES
('send mass items',3,'Syntax: .send mass items #racemask|$racename|alliance|horde|all "#subject" "#text" itemid1[:count1] itemid2[:count2] ... itemidN[:countN]\r\n\r\nSend a mail to players. Subject and mail text must be in "". If for itemid not provided related count values then expected 1, if count > max items in stack then items will be send in required amount stacks. All stacks amount in mail limited to 12.'),
('send mass mail',1,'Syntax: .send mass mail #racemask|$racename|alliance|horde|all "#subject" "#text"\r\n\r\nSend a mail to players. Subject and mail text must be in "".'),
('send mass money','3','Syntax: .send mass money #racemask|$racename|alliance|horde|all "#subject" "#text" #money\r\n\r\nSend mail with money to players. Subject and mail text must be in "".');

-- 10973
ALTER TABLE db_version CHANGE COLUMN required_10972_01_mangos_command required_10973_01_mangos_game_event_mail bit;

DROP TABLE IF EXISTS `game_event_mail`;
CREATE TABLE `game_event_mail` (
  `event` smallint(6) NOT NULL default '0' COMMENT 'Negatives value to send at event stop, positive value for send at event start.',
  `raceMask` mediumint(8) unsigned NOT NULL default '0',
  `quest`    mediumint(8) unsigned NOT NULL default '0',
  `mailTemplateId` mediumint(8) unsigned NOT NULL default '0',
  `senderEntry`    mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`event`,`raceMask`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Game event system';

-- 10988
ALTER TABLE db_version CHANGE COLUMN required_10973_01_mangos_game_event_mail required_10988_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (65,66);

INSERT INTO mangos_string VALUES
(65,'Using script library: <Unknown Script Library>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(66,'Using script library: <No Script Library Loaded>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 10989
ALTER TABLE db_version CHANGE COLUMN required_10988_01_mangos_mangos_string required_10989_01_mangos_loot_template bit;

ALTER TABLE creature_loot_template
  CHANGE COLUMN entry entry mediumint(8) unsigned NOT NULL default '0' COMMENT 'entry 0 used for player insignia loot';

ALTER TABLE fishing_loot_template
  CHANGE COLUMN entry entry mediumint(8) unsigned NOT NULL default '0' COMMENT 'entry 0 used for junk loot at fishing fail (if allowed by config option';

-- 10993
ALTER TABLE db_version CHANGE COLUMN required_10989_01_mangos_loot_template required_10993_01_mangos_loot_template bit;

ALTER TABLE fishing_loot_template
  CHANGE COLUMN entry entry mediumint(8) unsigned NOT NULL default '0' COMMENT 'entry 0 used for junk loot at fishing fail (if allowed by config option)';

-- 10998
ALTER TABLE db_version CHANGE COLUMN required_10993_01_mangos_loot_template required_10998_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (64440, 71564);
INSERT INTO spell_proc_event VALUES
(71564, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(64440, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000020, 0.000000, 0.000000,  0);

-- 11002
ALTER TABLE db_version CHANGE COLUMN required_10998_01_mangos_spell_proc_event required_11002_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (23582);
INSERT INTO spell_proc_event VALUES
(23582, 0x00,  8, 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00004000, 0x00000000, 0.000000, 0.000000,  0);

-- 11018
ALTER TABLE db_version CHANGE COLUMN required_11002_01_mangos_spell_proc_event required_11018_01_mangos_command bit;

DELETE FROM command WHERE name IN ('send mass mail');

INSERT INTO command (name, security, help) VALUES
('send mass mail',3,'Syntax: .send mass mail #racemask|$racename|alliance|horde|all "#subject" "#text"\r\n\r\nSend a mail to players. Subject and mail text must be in "".');

-- 11023
ALTER TABLE db_version CHANGE COLUMN required_11018_01_mangos_command required_11023_01_mangos_spell_threat bit;

ALTER TABLE spell_threat ADD COLUMN multiplier FLOAT NOT NULL DEFAULT 1.0 COMMENT 'threat multiplier for damage/healing' AFTER Threat;

ALTER TABLE spell_threat ADD COLUMN ap_bonus FLOAT NOT NULL DEFAULT 0.0 COMMENT 'additional threat bonus from attack power' AFTER multiplier;

-- 11036
ALTER TABLE db_version CHANGE COLUMN required_11023_01_mangos_spell_threat required_11036_01_mangos_spell_threat bit;

-- wrong pet spells, have EFFECT_THREAT
DELETE FROM spell_threat WHERE entry IN (11775,14921,24583);
-- Thunder Clap, x1.75 for all ranks
DELETE FROM spell_threat WHERE entry IN (6343,8198,8204,8205,11580,11581,25264,47501,47502);
-- Devastate, 5% AP for all ranks
DELETE FROM spell_threat WHERE entry IN (20243,30016,30022,47497,47498);
-- new: Swipe (Bear), Searing Pain, Death and Decay, Rune Strike, Heroic Throw
DELETE FROM spell_threat WHERE entry IN (779,5676,52212,56815,57755);

INSERT INTO spell_threat VALUES
(  779,   0, 1.50, 0.0), -- Swipe (Bear)
( 5676,   0, 2.00, 0.0), -- Searing Pain
( 6343,   0, 1.75, 0.0), -- Thunder Clap
(20243,   0, 1.00, 0.05), -- Devastate (Rank1)
(52212,   0, 1.90, 0.0), -- Death and Decay
(56815,   0, 1.75, 0.0), -- Rune Strike
(57755,   0, 1.50, 0.0); -- Heroic Throw

-- Lacerate
DELETE FROM spell_threat WHERE entry IN (33745,48567,48568);
INSERT INTO spell_threat VALUES
(33745, 182, 0.50, 0.0),
(48567, 409, 0.50, 0.0),
(48568, 515, 0.50, 0.0);

-- Maul
DELETE FROM spell_threat WHERE entry IN (6807,6808,6809,8972,9745,9880,9881,26996,48479,48480);
INSERT INTO spell_threat VALUES
( 6807,  13, 1.00, 0.0),
( 6808,  20, 1.00, 0.0),
( 6809,  27, 1.00, 0.0),
( 8972,  47, 1.00, 0.0),
( 9745,  75, 1.00, 0.0),
( 9880, 106, 1.00, 0.0),
( 9881, 140, 1.00, 0.0),
(26996, 212, 1.00, 0.0),
(48479, 345, 1.00, 0.0),
(48480, 422, 1.00, 0.0);

-- Demoralizing Roar
DELETE FROM spell_threat WHERE entry IN (99,1735,9490,9747,9898,26998,48559,48560);
INSERT INTO spell_threat VALUES
(   99, 15, 1.00, 0.0),
( 1735, 25, 1.00, 0.0),
( 9490, 29, 1.00, 0.0),
( 9747, 36, 1.00, 0.0),
( 9898, 42, 1.00, 0.0),
(26998, 49, 1.00, 0.0),
(48559, 54, 1.00, 0.0),
(48560, 62, 1.00, 0.0);

-- 11040
ALTER TABLE db_version CHANGE COLUMN required_11036_01_mangos_spell_threat required_11040_01_mangos_spell_chain bit;

DELETE FROM `spell_chain` WHERE `first_spell` IN (5672);

INSERT INTO `spell_chain` VALUES
/* Healing Stream Totem Aura */
(5672,0,5672,1,0),
(6371,5672,5672,2,0),
(6372,6371,5672,3,0),
(10460,6372,5672,4,0),
(10461,10460,5672,5,0),
(25566,10461,5672,6,0),
(58763,25566,5672,7,0),
(58764,58763,5672,8,0),
(58765,58764,5672,9,0);

-- 11040
ALTER TABLE db_version CHANGE COLUMN required_11040_01_mangos_spell_chain required_11040_02_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry IN (52042, 5672);
INSERT INTO spell_bonus_data VALUES
(5672, 0.08272,  0,       0,     0,     'Shaman - Healing Stream Totem Aura');

-- 11058
ALTER TABLE db_version CHANGE COLUMN required_11040_02_mangos_spell_bonus_data required_11058_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (70830,70841);
INSERT INTO spell_proc_event VALUES
(70830, 0x00, 11, 0x00000000, 0x00000000, 0x00000000, 0x00020000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00004000, 0x00000000, 0.000000, 0.000000,  0),
(70841, 0x00,  5, 0x00000004, 0x00000000, 0x00000000, 0x00000100, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);
