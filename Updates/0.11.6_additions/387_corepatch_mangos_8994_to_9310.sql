-- 8995
ALTER TABLE db_version CHANGE COLUMN required_8993_01_mangos_spell_proc_event required_8995_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry=58677;
INSERT INTO spell_proc_event VALUES
(58677, 0x00000000, 15, 0x00002000, 0x00000000, 0x00000000, 0x00004000, 0x00000000, 0.000000, 0.000000, 0);

-- 8996
ALTER TABLE db_version CHANGE COLUMN required_8995_01_mangos_spell_proc_event required_8996_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry=61062;
INSERT INTO spell_proc_event VALUES
(61062, 0x00000000,  3, 0x00000000, 0x00000100, 0x00000000, 0x00004000, 0x00010000, 0.000000, 0.000000, 0);

-- 9001
ALTER TABLE db_version CHANGE COLUMN required_8996_01_mangos_spell_proc_event required_9001_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry=57345;
INSERT INTO spell_proc_event VALUES
(57345, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45);

-- 9005
ALTER TABLE db_version CHANGE COLUMN required_9001_01_mangos_spell_proc_event required_9005_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = '60487';
INSERT INTO spell_proc_event VALUES
(60487, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 15);

-- 9007
ALTER TABLE db_version CHANGE COLUMN required_9005_01_mangos_spell_proc_event required_9007_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (
20375, 33297, 34320, 38299, 38347, 50781, 51414, 54695, 54707, 54738, 54808,
54838, 54841, 58442, 58444, 58901, 59345, 59630, 60061, 60063, 60066, 60221,
60301, 60306, 60317, 60473, 60482, 60490, 60519, 60529, 60537, 61356, 61618);

INSERT INTO spell_proc_event(entry, SchoolMask, SpellFamilyName, SpellFamilyMask0, SpellFamilyMask1, SpellFamilyMask2, procFlags, procEx, ppmRate, CustomChance, Cooldown)  VALUES
(20375, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 7.000000, 0.000000,  1), -- Seal of Command
(33297, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45), -- Quagmirran's Eye
(34320, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 45), -- Shiffar's Nexus-Horn
(38299, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 12), -- Fel Reaver's Piston
(38347, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 45), -- Sextant of Unstable Currents
(50781, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  6), -- Fate Rune of Primal Energy
(51414, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45), -- Venomous Tome
(54695, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45), -- Death Knight's Anguish
(54707, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 60), -- Sonic Booster
(54738, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 45), -- Serrah's Star
(54808, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 60), -- Noise Machine
(54838, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45), -- Valonforth's Remembrance
(54841, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  3), -- Thunder Capacitor
(58442, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 15), -- Airy Pale Ale
(58444, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  5), -- Worg Tooth Oatmeal Stout
(58901, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 45), -- Tears of Bitter Anguish
(59345, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45), -- Crusader's Locket
(59630, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45), -- Black Magic
(60061, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45), -- Scarab of the Infinite Cycle
(60063, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45), -- Sundial of the Exiled
(60066, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45), -- Hourglass of the Unraveller
(60221, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45), -- Essence of Gossamer
(60301, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45), -- Meteorite Whetstone
(60306, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45), -- Vestige of Haldor
(60317, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45), -- Signet of Edward the Odd
(60473, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45), -- Forge Ember
(60482, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45), -- Pendulum of Telluric Currents
(60490, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45), -- Embrace of the Spider
(60519, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45), -- Spark of Life
(60529, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45), -- Forethought Talisman
(60537, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 45), -- Soul of the Dead
(61356, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x000002A8, 0x00000002, 0.000000, 0.000000, 45), -- Invigorating Earthsiege Diamond
(61618, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45); -- Chuchu's Tiny Box of Horrors

-- 9015
ALTER TABLE db_version CHANGE COLUMN required_9007_01_mangos_spell_proc_event required_9015_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry = 64085;
INSERT INTO spell_bonus_data  (entry, direct_bonus, dot_bonus, ap_bonus, comments) VALUES
(64085, 0, 0, 0, 'Priest - Vampiric Touch Dispel');

-- 9018
ALTER TABLE db_version CHANGE COLUMN required_9015_01_mangos_spell_bonus_data required_9018_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry = 60089;
INSERT INTO spell_bonus_data VALUES
(60089,0,0,0.05,'Druid - Faerie Fire (Feral) Triggered');

-- 9019
ALTER TABLE db_version CHANGE COLUMN required_9018_01_mangos_spell_bonus_data required_9019_01_mangos_spell_threat bit;

DELETE FROM spell_threat WHERE entry IN (
-- Battle Shout
6673, 5242, 6192, 11549, 11550, 11551, 25289, 2048, 47436,
-- Commanding Shout
469, 47439, 47440, 
-- Demoralizing Shout
1160, 6190, 11554, 11555, 11556, 25202, 25203, 47437,
-- Cleave
845, 7369, 11608, 11609, 20569, 25231, 47519, 47520,
-- Devastate
47497, 47498,
-- Disarm
676,
-- Heroic Strike
47450, 47449,
-- Revenge
57823,
-- Shield Bash
72,
-- Shield Slam
47488, 47487,
-- Sunder Armor (remove only)
47467, 25225, 11597, 11596, 8380, 7405, 
-- Thunder Clap
47502, 47501,
-- Maul
6807, 6808, 6809, 8972, 9745, 9880, 9881, 26996, 48479, 48480,
-- Demoralizing Roar
99, 1735, 9490, 9747, 9898, 26998, 48559, 48560,
-- Lacerate
48567, 48568);

INSERT INTO spell_threat VALUES
-- Battle Shout
(6673, 18),
(5242, 26),
(6192, 32),
(11549, 40),
(11550, 48),
(11551, 56),
(25289, 62),
(2048, 70),
(47436, 78),
-- Commanding Shout
(469, 40),
(47439, 60),
(47440, 80),
-- Demoralizing Shout
(1160, 16),
(6190, 26),
(11554, 30),
(11555, 37),
(11556, 43),
(25202, 50),
(25203, 55),
(47437, 63),
-- Cleave
(845, 10),
(7369, 40),
(11608, 60),
(11609, 70),
(20569,100),
(25231,130),
(47519, 180),
(47520, 225),
-- Devastate
(47497, 101),
(47498, 101),
-- Disarm
(676, 104),
-- Heroic Strike
(47450, 259),
(47449, 236),
-- Revenge
(57823, 500),
-- Shield Bash
(72, 293),
-- Shield Slam
(47488, 770),
(47487, 520),
-- Thunder Clap
(47502, 260),
(47501, 235),
-- Maul
(6807, 322),
(6808, 322),
(6809, 322),
(8972, 322),
(9745, 322),
(9880, 322),
(9881, 322),
(26996, 322),
(48479, 322),
(48480, 322),
-- Demoralizing Roar
(99, 42),
(1735, 42),
(9490, 42),
(9747, 42),
(9898, 42),
(26998, 42),
(48559, 42),
(48560, 42),
-- Lacerate
(48567, 285),
(48568, 285);

-- 9025
ALTER TABLE db_version CHANGE COLUMN required_9019_01_mangos_spell_threat required_9025_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` = 63373;
INSERT INTO `spell_proc_event` VALUES
(63373, 0x00000000,11, 0x80000000, 0x00000000, 0x00000000, 0x00010000, 0x00000000, 0.000000, 0.000000,  0);

-- 9034
ALTER TABLE db_version CHANGE COLUMN required_9025_01_mangos_spell_proc_event required_9034_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = '67667';
INSERT INTO spell_proc_event VALUES
(67667, 0x00000000, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45);

-- 9045
ALTER TABLE db_version CHANGE COLUMN required_9034_01_mangos_spell_proc_event required_9045_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (48545,48544,48539);
INSERT INTO spell_proc_event (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES 
(48539, 0x00000000, 7, 0x00000010, 0x04000000, 0x00000000, 0x00040000, 0x00000000, 0.000000, 0.000000, 0);

ALTER TABLE db_version CHANGE COLUMN required_9045_01_mangos_spell_proc_event required_9045_02_mangos_spell_chain bit;

/*Revitalize*/
DELETE FROM spell_chain WHERE first_spell = 48539;
INSERT INTO spell_chain VALUES
(48539, 0, 48539, 1, 0),
(48544, 48539, 48539, 2, 0),
(48545, 48544, 48539, 3, 0);

-- 9064
ALTER TABLE db_version CHANGE COLUMN required_9045_02_mangos_spell_chain required_9064_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (45355,67672,67702,67771);
INSERT INTO spell_proc_event VALUES
(45355, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
(67672, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 50),
(67702, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
(67771, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45);

-- 9068
ALTER TABLE db_version CHANGE COLUMN required_9064_01_mangos_spell_proc_event required_9068_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (53380,53381,53382);
INSERT INTO spell_proc_event VALUES
(53380, 0x00000000, 10, 0x00800000, 0x00028000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0);

DELETE FROM spell_proc_event WHERE entry IN (53486,53488);
INSERT INTO spell_proc_event VALUES
(53486, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0);

ALTER TABLE db_version CHANGE COLUMN required_9068_01_mangos_spell_proc_event required_9068_02_mangos_spell_chain bit;

/*Righteous Vengeance*/
DELETE FROM spell_chain WHERE first_spell = 53380;
INSERT INTO spell_chain VALUES
(53380, 0, 53380, 1, 0),
(53381, 53380, 53380, 2, 0),
(53382, 53381, 53380, 3, 0);

/*The Art of War*/
DELETE FROM spell_chain WHERE first_spell = 53486;
INSERT INTO spell_chain VALUES
(53486, 0, 53486, 1, 0),
(53488, 53486, 53486, 2, 0);

-- 9070
ALTER TABLE db_version CHANGE COLUMN required_9068_02_mangos_spell_chain required_9070_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (58597);
INSERT INTO `spell_proc_event` VALUES
(58597, 0x00000000, 10, 0x40000000, 0x00000000, 0x00000000, 0x00008000, 0x00000000, 0.000000, 100.000000,6);

-- 9074
ALTER TABLE db_version CHANGE COLUMN required_9070_01_mangos_spell_proc_event required_9074_01_mangos_command bit;

DELETE FROM command where name IN ('server shutdown');

INSERT INTO `command` VALUES
('server shutdown',3,'Syntax: .server shutdown #delay [#exit_code]\r\n\r\nShut the server down after #delay seconds. Use #exit_code or 0 as program exit code.');

-- 9095
ALTER TABLE db_version CHANGE COLUMN required_9074_01_mangos_command required_9095_01_mangos_command bit;

DELETE FROM command where name IN ('modify scale');

INSERT INTO `command` VALUES
('modify scale',1,'Syntax: .modify scale #scale\r\n\r\nChange model scale for targeted player (util relogin) or creature (until respawn).');

-- 9121
ALTER TABLE db_version CHANGE COLUMN required_9095_01_mangos_command required_9121_01_mangos_npc_spellclick_spells bit;

UPDATE npc_spellclick_spells SET cast_flags=1 WHERE spell_id IN (50926,51026,51592,51961);
DELETE FROM npc_spellclick_spells WHERE spell_id IN (50927,50737,51593,51037);

-- 9125
ALTER TABLE db_version CHANGE COLUMN required_9121_01_mangos_npc_spellclick_spells required_9125_01_mangos_npc_spellclick_spells bit;

UPDATE npc_spellclick_spells SET cast_flags=1 WHERE spell_id=46167;
DELETE FROM npc_spellclick_spells WHERE spell_id=46773;

-- 9133
ALTER TABLE db_version CHANGE COLUMN required_9125_01_mangos_npc_spellclick_spells required_9133_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (11129);
INSERT INTO `spell_proc_event` VALUES
(11129, 0x00000004,  3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- START 3.3.0

-- 9136

ALTER TABLE db_version CHANGE COLUMN required_9133_01_mangos_spell_proc_event required_9136_02_mangos_quest_poi bit;

DROP TABLE IF EXISTS `quest_poi`;
CREATE TABLE `quest_poi` (
  `questid` int(11) unsigned NOT NULL DEFAULT '0',
  `objIndex` int(11) NOT NULL DEFAULT '0',
  `mapId` int(11) unsigned NOT NULL DEFAULT '0',
  `unk1` int(11) unsigned NOT NULL DEFAULT '0',
  `unk2` int(11) unsigned NOT NULL DEFAULT '0',
  `unk3` int(11) unsigned NOT NULL DEFAULT '0',
  `unk4` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`questid`,`objIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `quest_poi_points`;
CREATE TABLE `quest_poi_points` (
  `questId` int(11) unsigned NOT NULL DEFAULT '0',
  `objIndex` int(11) NOT NULL DEFAULT '0',
  `x` int(11) NOT NULL DEFAULT '0',
  `y` int(11) NOT NULL DEFAULT '0',
  KEY `idx` (`questId`,`objIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE db_version CHANGE COLUMN required_9136_02_mangos_quest_poi required_9136_04_mangos_spell_chain bit;

DELETE FROM spell_chain WHERE first_spell = 8443;

/* Desecration */
DELETE FROM spell_chain WHERE spell_id in (55666,55667);
INSERT INTO spell_chain VALUES
(55666,0,55666,1,0),
(55667,55666,55666,2,0);

ALTER TABLE db_version CHANGE COLUMN required_9136_04_mangos_spell_chain required_9136_05_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry = 8443;

ALTER TABLE db_version CHANGE COLUMN required_9136_05_mangos_spell_bonus_data required_9136_06_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (55668,55669,55670,55667,58631,63320);


INSERT INTO `spell_proc_event` VALUES
(63320, 0x00000000,  5, 0x00040000, 0x00000000, 0x00008000, 0x00004000, 0x00000001, 0.000000, 0.000000,  0);

-- 9148
ALTER TABLE db_version CHANGE COLUMN required_9136_06_mangos_spell_proc_event required_9148_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry IN (31935,24275);

-- 9149
ALTER TABLE db_version CHANGE COLUMN required_9148_01_mangos_spell_bonus_data required_9149_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry IN (31893,31898,32220,32221,53718,53719,53725,53726);

-- 9150
ALTER TABLE db_version CHANGE COLUMN required_9149_01_mangos_spell_bonus_data required_9150_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry IN (20187,31803,53742);

-- 9153
ALTER TABLE db_version CHANGE COLUMN required_9150_01_mangos_spell_bonus_data required_9153_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry IN (20167);

-- 9155
ALTER TABLE db_version CHANGE COLUMN required_9153_01_mangos_spell_bonus_data required_9155_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (20375,21084,31801);
INSERT INTO `spell_proc_event` VALUES
(20375, 0x00000001,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  1),
(21084, 0x00000001,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(31801, 0x00000001,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- 9156
ALTER TABLE db_version CHANGE COLUMN required_9155_01_mangos_spell_proc_event required_9156_01_mangos_spell_chain bit;

/*Aspect of the Dragonhawk*/
DELETE FROM spell_chain WHERE first_spell = 61846;
INSERT INTO spell_chain VALUES
(61846, 0, 61846, 1, 0),
(61847, 61846, 61846, 2, 0);

ALTER TABLE db_version CHANGE COLUMN required_9156_01_mangos_spell_chain required_9156_02_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (61846, 61847);
INSERT INTO `spell_proc_event` VALUES
(61846, 0x00000000,  9, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- 9160
ALTER TABLE db_version CHANGE COLUMN required_9156_02_mangos_spell_proc_event required_9160_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (31244,31245);
INSERT INTO `spell_proc_event` VALUES
(31244, 0x00000000,  8, 0x003E0000, 0x00000009, 0x00000000, 0x00000000, 0x00002034, 0.000000, 0.000000,  0);

ALTER TABLE db_version CHANGE COLUMN required_9160_01_mangos_spell_proc_event required_9160_02_mangos_spell_chain bit;

/*Quick Recovery*/
DELETE FROM spell_chain WHERE first_spell = 31244;
INSERT INTO spell_chain VALUES
(31244, 0, 31244, 1, 0),
(31245, 31244, 31244, 2, 0);

-- 9198
ALTER TABLE db_version CHANGE COLUMN required_9160_02_mangos_spell_chain required_9198_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry in (1132,1133,1134);

INSERT INTO mangos_string VALUES
(1132,'   Follow player %s (lowguid %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1133,'   Follow creature %s (lowguid %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1134,'   Follow <NULL>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 9220
ALTER TABLE db_version CHANGE COLUMN required_9198_01_mangos_mangos_string required_9220_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (53527, 53530);
INSERT INTO `spell_proc_event` VALUES
(53527, 0x00000000, 10, 0x00000000, 0x00000000, 0x00000004, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

ALTER TABLE db_version CHANGE COLUMN required_9220_01_mangos_spell_proc_event required_9220_02_mangos_spell_chain bit;

/*Divine Guardian*/
DELETE FROM spell_chain WHERE first_spell = 53527;
INSERT INTO spell_chain VALUES
(53527, 0, 53527, 1, 0),
(53530, 53527, 53527, 2, 0);

-- 9222
ALTER TABLE db_version CHANGE COLUMN required_9220_02_mangos_spell_chain required_9222_01_mangos_playercreateinfo_spell bit;

-- sstaves for priest:
DELETE FROM `playercreateinfo_spell` WHERE `class`=5 AND `Spell`=227;
INSERT INTO `playercreateinfo_spell` (`race`,`class`,`Spell`,`Note`) VALUES
(1,5,227,'Staves'),
(3,5,227,'Staves'),
(4,5,227,'Staves'),
(5,5,227,'Staves'),
(8,5,227,'Staves'),
(10,5,227,'Staves'),
(11,5,227,'Staves');

-- Two-Handed Swords for warrior
DELETE FROM `playercreateinfo_spell` WHERE `class`=1 AND `Spell`=202;
INSERT INTO `playercreateinfo_spell` (`race`,`class`,`Spell`,`Note`) VALUES
(1,1,202,'Two-Handed Swords'),
(4,1,202,'Two-Handed Swords'),
(5,1,202,'Two-Handed Swords'),
(7,1,202,'Two-Handed Swords'),
(8,1,202,'Two-Handed Swords'),
(11,1,202,'Two-Handed Swords');

-- Dual Wield for rogue:
DELETE FROM `playercreateinfo_spell` WHERE `class`=4 AND `Spell`=674;
INSERT INTO `playercreateinfo_spell` (`race`,`class`,`Spell`,`Note`) VALUES
(1,4,674,'Dual Wield'),
(2,4,674,'Dual Wield'),
(3,4,674,'Dual Wield'),
(4,4,674,'Dual Wield'),
(5,4,674,'Dual Wield'),
(7,4,674,'Dual Wield'),
(8,4,674,'Dual Wield'),
(10,4,674,'Dual Wield');

-- Two-Hands Axe for hunter:
DELETE FROM `playercreateinfo_spell` WHERE `class`=3 AND `Spell`=197;
INSERT INTO `playercreateinfo_spell` (`race`,`class`,`Spell`,`Note`) VALUES
(2,3,197,'Two-Handed Axes'),
(3,3,197,'Two-Handed Axes'),
(4,3,197,'Two-Handed Axes'),
(6,3,197,'Two-Handed Axes'),
(8,3,197,'Two-Handed Axes'),
(10,3,197,'Two-Handed Axes'),
(11,3,197,'Two-Handed Axes');

-- staves for warlock:
DELETE FROM `playercreateinfo_spell` WHERE `class`=9 AND `Spell`=227;
INSERT INTO `playercreateinfo_spell` (`race`,`class`,`Spell`,`Note`) VALUES
(1,9,227,'Staves'),
(2,9,227,'Staves'),
(5,9,227,'Staves'),
(7,9,227,'Staves'),
(10,9,227,'Staves');

-- 9244
ALTER TABLE db_version CHANGE COLUMN required_9222_01_mangos_playercreateinfo_spell required_9244_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (49188,56822,59057);
INSERT INTO `spell_proc_event` VALUES
(49188, 0x00000000, 15, 0x00000000, 0x00020000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

ALTER TABLE db_version CHANGE COLUMN required_9244_01_mangos_spell_proc_event required_9244_02_mangos_spell_chain bit;

INSERT INTO `spell_chain` VALUES
(49188, 0, 49188, 1, 0),
(56822, 49188, 49188, 2, 0),
(59057, 56822, 49188, 3, 0);

-- 9262
ALTER TABLE db_version CHANGE COLUMN required_9244_02_mangos_spell_chain required_9262_01_mangos_quest_template bit;

ALTER TABLE quest_template CHANGE COLUMN QuestFlags QuestFlags mediumint(8) UNSIGNED NOT NULL default '0';

-- 9277
ALTER TABLE db_version CHANGE COLUMN required_9262_01_mangos_quest_template required_9277_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry = 60089;
INSERT INTO spell_bonus_data VALUES
(60089,0,0,0.15,'Druid - Faerie Fire (Feral) Triggered');

-- 9288
ALTER TABLE db_version CHANGE COLUMN required_9277_01_mangos_spell_bonus_data required_9288_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry IN (31024,38395,5707,17712);
INSERT INTO spell_bonus_data VALUES
(31024,0,0,0,'Item - Living Ruby Pedant'),
(38395,0,0,0,'Item - Siphon Essence'),
(5707,0,0,0,'Item - Lifestone Regeneration'),
(17712,0,0,0,'Item - Lifestone Healing');

-- 9289
ALTER TABLE db_version CHANGE COLUMN required_9288_01_mangos_spell_bonus_data required_9289_01_mangos_spell_proc_event bit;
DELETE FROM `spell_proc_event` WHERE `entry` IN (57870);
INSERT INTO `spell_proc_event` VALUES
(57870, 0x00000000, 9, 0x00800000, 0x00000000, 0x00000000, 0x00040000, 0x00000000, 0.000000, 0.000000, 0);

-- 9291
ALTER TABLE db_version CHANGE COLUMN required_9289_01_mangos_spell_proc_event required_9291_01_mangos_quest_template bit;

ALTER TABLE quest_template ADD COLUMN CompletedText text AFTER EndText;

ALTER TABLE db_version CHANGE COLUMN required_9291_01_mangos_quest_template required_9291_02_mangos_locales_quest bit;

ALTER TABLE locales_quest ADD COLUMN CompletedText_loc1 text AFTER EndText_loc8;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc2 text AFTER CompletedText_loc1;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc3 text AFTER CompletedText_loc2;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc4 text AFTER CompletedText_loc3;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc5 text AFTER CompletedText_loc4;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc6 text AFTER CompletedText_loc5;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc7 text AFTER CompletedText_loc6;
ALTER TABLE locales_quest ADD COLUMN CompletedText_loc8 text AFTER CompletedText_loc7;

-- 9296
ALTER TABLE db_version CHANGE COLUMN required_9291_02_mangos_locales_quest required_9296_01_mangos_spell_chain bit;


/*Black Arrow*/
DELETE FROM spell_chain WHERE spell_id IN (3674,63668,63669,63670,63671,63672);

INSERT INTO spell_chain VALUES
(3674,0,3674,1,0),
(63668,3674,3674,2,0),
(63669,63668,3674,3,0),
(63670,63669,3674,4,0),
(63671,63670,3674,5,0),
(63672,63671,3674,6,0);

-- 9297
ALTER TABLE db_version CHANGE COLUMN required_9296_01_mangos_spell_chain required_9297_01_mangos_item_template bit;

ALTER TABLE item_template CHANGE COLUMN spellcharges_1 spellcharges_1 smallint(5) NOT NULL default '0';
ALTER TABLE item_template CHANGE COLUMN spellcharges_2 spellcharges_2 smallint(5) NOT NULL default '0';
ALTER TABLE item_template CHANGE COLUMN spellcharges_3 spellcharges_3 smallint(5) NOT NULL default '0';
ALTER TABLE item_template CHANGE COLUMN spellcharges_4 spellcharges_4 smallint(5) NOT NULL default '0';
ALTER TABLE item_template CHANGE COLUMN spellcharges_5 spellcharges_5 smallint(5) NOT NULL default '0';

-- 9309
ALTER TABLE db_version CHANGE COLUMN required_9297_01_mangos_item_template required_9309_01_mangos_quest_template bit;

ALTER TABLE quest_template ADD COLUMN RewXPId tinyint(3) unsigned NOT NULL default '0' AFTER NextQuestInChain;

-- 9310
ALTER TABLE db_version CHANGE COLUMN required_9309_01_mangos_quest_template required_9310_01_mangos_spell_elixir bit;

DELETE FROM `spell_elixir` WHERE `entry`=17624;
