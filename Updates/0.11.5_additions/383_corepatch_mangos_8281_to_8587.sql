-- 8294
ALTER TABLE db_version CHANGE COLUMN required_8254_01_mangos_spell_proc_event required_8294_01_mangos_playercreateinfo_action bit;
-- Remove Double attack icons for Night Elf Warrior
DELETE FROM playercreateinfo_action WHERE race=4 AND class=1 AND button=73;
-- Move Heroic Strike to correct location for Night Elf Warrior
DELETE FROM playercreateinfo_action WHERE race=4 AND class=1 AND button=74;
INSERT INTO playercreateinfo_action VALUES (4,1,73,78,0);
-- Moved Shadowmeld to correct location for Night Elf Warrior
DELETE FROM playercreateinfo_action WHERE race=4 AND class=1 AND button IN (82,83);
INSERT INTO playercreateinfo_action VALUES (4,1,82,58984,0);
-- Add correct Tough Jerky location for Night elf Warrior
DELETE FROM playercreateinfo_action WHERE race=4 AND class=1 AND button=84;
INSERT INTO playercreateinfo_action VALUES (4,1,83,117,128);
-- Moved Shadowmeld to correct location for Night Elf Druid
DELETE FROM playercreateinfo_action WHERE race=4 AND class=11 AND button IN (3,9);
INSERT INTO playercreateinfo_action VALUES (4,11,9,58984,0);
-- Moved Shadowmeld to correct location for Night Elf Rogue
DELETE FROM playercreateinfo_action WHERE race=4 AND class=4 AND button IN (4,10);
INSERT INTO playercreateinfo_action VALUES (4,4,10,58984,0);
-- Add Shadowmeld For Night Elf Rogue Shadow form bar
DELETE FROM playercreateinfo_action WHERE race=4 AND class=4 AND button = 82;
INSERT INTO playercreateinfo_action VALUES (4,4,82,58984,0);
-- Replace Tough Jerky for Gnome Death Knight Action Bar
DELETE FROM playercreateinfo_action WHERE race=7 AND class=6 AND button IN (11,83);
INSERT INTO playercreateinfo_action VALUES
(7,6,11,41751,128),
(7,6,83,41751,128);
-- Moved Gift of Naaru to correct location for Draenei Death Knight
DELETE FROM playercreateinfo_action WHERE race=11 AND class=6 AND button IN (6,10);
INSERT INTO playercreateinfo_action VALUES (11,6,10,59545,0);
-- Add Black Mushroom to Draenei Death Knight Action Bar
DELETE FROM playercreateinfo_action WHERE race=11 AND class=6 AND button IN (11);
INSERT INTO playercreateinfo_action VALUES
(11,6,11,41751,128);
-- Moved Blood Fury to correct action bar location for Orc Hunter
DELETE FROM playercreateinfo_action WHERE race=2 AND class=3 AND button IN (4,9);
INSERT INTO playercreateinfo_action VALUES (2,3,9,20572,0);
-- Moved Berserking to correct action bar location for Non-Heroic Troll classes 
DELETE FROM playercreateinfo_action WHERE race=8 AND class IN (3,5,7,8) AND button IN (3,76);
INSERT INTO playercreateinfo_action VALUES
(8,3,3,20554,0),
(8,5,3,20554,0),
(8,7,3,20554,0),
(8,8,3,20554,0);
-- Updated and moved Berserking skill for Troll Rogue
DELETE FROM playercreateinfo_action WHERE race=8 AND class=4 AND button IN (4,76);
INSERT INTO playercreateinfo_action VALUES (8,4,4,26297,0);

-- 8310
ALTER TABLE db_version CHANGE COLUMN required_8294_01_mangos_playercreateinfo_action required_8310_01_mangos_spell_proc_event bit;
DELETE FROM `spell_proc_event` WHERE `entry` IN (64928);
INSERT INTO `spell_proc_event` VALUES
(64928, 0x00000000, 11, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0);

-- 8342
ALTER TABLE db_version CHANGE COLUMN required_8310_01_mangos_spell_proc_event required_8342_01_mangos_spell_proc_event bit;
DELETE FROM spell_proc_event WHERE entry IN (53397);
INSERT INTO spell_proc_event VALUES
(53397, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);

-- 8361
ALTER TABLE db_version CHANGE COLUMN required_8342_01_mangos_spell_proc_event required_8361_01_mangos_spell_bonus_data bit;
DELETE FROM `spell_bonus_data` where entry in (40293);
INSERT INTO `spell_bonus_data` VALUES
(40293, 0, 0, 0, 'Item - Siphon Essence');

-- 8364
ALTER TABLE db_version CHANGE COLUMN required_8361_01_mangos_spell_bonus_data required_8364_01_mangos_db_version bit;
ALTER TABLE db_version
  ADD COLUMN cache_id int(10) default '0' AFTER creature_ai_version;

-- 8377
ALTER TABLE db_version CHANGE COLUMN required_8364_01_mangos_db_version required_8377_01_mangos_spell_area bit;
DELETE FROM `spell_area` where spell in (40216,42016);

-- 8392
ALTER TABLE db_version CHANGE COLUMN required_8377_01_mangos_spell_area required_8392_01_mangos_spell_proc_event bit;
DELETE FROM `spell_proc_event` WHERE `entry` IN (47569); 
INSERT INTO `spell_proc_event` VALUES 
(47569, 0x00000000,  6, 0x00004000, 0x00000000, 0x00000000, 0x00004000, 0x00000000, 0.000000, 0.000000, 0); 
ALTER TABLE db_version CHANGE COLUMN required_8392_01_mangos_spell_proc_event required_8392_02_mangos_spell_chain bit;
DELETE FROM `spell_chain` WHERE `spell_id` IN (47569,47570); 
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES
/*Improved Shadowform*/
(47569,0,47569,1,0),
(47570,47569,47569,2,0);

-- 8394
ALTER TABLE db_version CHANGE COLUMN required_8392_02_mangos_spell_chain required_8394_01_mangos_spell_proc_event bit;
DELETE FROM `spell_proc_event` WHERE `entry` IN (54646); 
INSERT INTO `spell_proc_event` VALUES 
(54646, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x00015400, 0x00000002, 0.000000, 0.000000, 0); 

-- 8397
ALTER TABLE db_version CHANGE COLUMN required_8394_01_mangos_spell_proc_event required_8397_01_mangos_spell_chain bit;
DELETE FROM spell_chain WHERE first_spell=7386;
ALTER TABLE db_version CHANGE COLUMN required_8397_01_mangos_spell_chain required_8397_02_mangos_spell_threat bit;
DELETE FROM spell_threat WHERE entry IN (7405,8380,11596,11597,25225);

-- 8399
ALTER TABLE db_version CHANGE COLUMN required_8397_02_mangos_spell_threat required_8399_01_mangos_spell_elixir bit;
-- Well Fed (SPELLFAMILY_POTION)
DELETE FROM spell_elixir WHERE entry IN (18191, 18192, 18193, 18194, 18222, 22730, 25661);
INSERT INTO spell_elixir (entry, mask) VALUES
(18191,0x10),
(18192,0x10),
(18193,0x10),
(18194,0x10),
(18222,0x10),
(22730,0x10),
(25661,0x10);

-- 8412
ALTER TABLE db_version CHANGE COLUMN required_8399_01_mangos_spell_elixir required_8412_01_mangos_mangos_string bit;
DELETE FROM mangos_string WHERE entry IN(512,513);
INSERT INTO mangos_string VALUES
(512,'%d - |cffffffff|Hitem:%d:0:0:0:0:0:0:0:0|h[%s]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(513,'%d - |cffffffff|Hquest:%d:%d|h[%s]|h|r %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 8416
ALTER TABLE db_version CHANGE COLUMN required_8412_01_mangos_mangos_string required_8416_01_mangos_spell_learn_spell bit;
/* All form passives */
DELETE FROM spell_learn_spell WHERE SpellID in (
1178,  /* Bear Form (Passive) */
3025,  /* Cat Form (Passive) */
5419,  /* Travel Form (Passive) */
5420,  /* Tree of Life _passive_ */
5421,  /* Aquatic Form (Passive) */
7376,  /* Defensive Stance Passive */
7381,  /* Berserker Stance Passive */
9635,  /* Dire Bear Form (Passive) */
21156, /* Battle Stance Passive */
21178, /* Bear Form (Passive2) */
24905, /* Moonkin Form (Passive) */
34123, /* Tree of Life _pasive_ */
33948, /* Flight Form (Passive) */
34764, /* Flight Form (Passive) */
40121, /* Swift Flight Form (Passive) */
40122  /* Swift Flight Form (Passive) */
);

-- 8444
ALTER TABLE db_version CHANGE COLUMN required_8416_01_mangos_spell_learn_spell required_8444_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN(348,522);
INSERT INTO mangos_string VALUES
(348,'Game Object (Entry: %u) have invalid data and can\'t be spawned',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(522,'Game Object (Entry: %u) not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 8451

ALTER TABLE db_version CHANGE COLUMN required_8444_01_mangos_mangos_string required_8451_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 53646;
INSERT INTO spell_proc_event VALUES
(53646, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0);

-- 8462
ALTER TABLE db_version CHANGE COLUMN required_8451_01_mangos_spell_proc_event required_8462_01_mangos_creature_ai_texts bit;

ALTER TABLE creature_ai_texts CHANGE emote emote smallint(5) unsigned NOT NULL default '0';

-- 8482
ALTER TABLE db_version CHANGE COLUMN required_8462_01_mangos_creature_ai_texts required_8482_01_mangos_spell_elixir bit;

DELETE FROM `spell_elixir` WHERE `entry` IN
(53752,53755,53758,53760,54212,62380);

/* Flasks added in 3.x */
INSERT INTO `spell_elixir` (`entry`, `mask`) VALUES
(53752,0x3),
(53755,0x3),
(53758,0x3),
(53760,0x3),
(54212,0x3),
(62380,0x3);

-- 8487 
ALTER TABLE db_version CHANGE COLUMN required_8482_01_mangos_spell_elixir required_8487_01_mangos_spell_bonus_data bit;

DELETE FROM `spell_bonus_data` where entry in (20424, 20467, 42463, 53739, 31803, 53742, 31804, 53733, 31893, 32221, 32220, 31898, 53719, 53718, 53725, 53726);
INSERT INTO `spell_bonus_data` VALUES
(20424, 0, 0, 0, "Paladin - Seal of Command Proc"),
(20467, 0.25, 0, 0.16, "Paladin - Judgement of Command"),
(42463, 0, 0.00156, 0.003, "Paladin - Seal of Vengeance (full stack proc)"),
(53739, 0, 0.00156, 0.003, "Paladin - Seal of Corruption (full stack proc)"),
(31803, 0, 0.0156, 0.03, "Paladin - Holy Vengeance"),
(53742, 0, 0.0156, 0.03, "Paladin - Blood Corruption"),
(31804, 0, 0, 0, "Paladin - Judgement of Vengeance"),
(53733, 0, 0, 0, "Paladin - Judgement of Corruption"),
(31893, 0, 0, 0, "Paladin - Seal of Blood Proc Enemy"),
(32221, 0, 0, 0, "Paladin - Seal of Blood Proc Self"),
(31898, 0.18, 0, 0.11, "Paladin - Judgement of Blood Enemy"), 
(32220, 0.0594, 0, 0.0363, "Paladin - Judgement of Blood Self"),
(53719, 0, 0, 0, "Paladin - Seal of the Martyr Proc Enemy"),
(53718, 0, 0, 0, "Paladin - Seal of the Martyr Proc Self"),
(53726, 0.18, 0, 0.11, "Paladin - Judgement of the Martyr Enemy"),
(53725, 0.0594, 0, 0.0363, "Paladin - Judgement of the Martyr Self");

ALTER TABLE db_version CHANGE COLUMN required_8487_01_mangos_spell_bonus_data required_8487_02_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (31801, 53736);

-- 8488
ALTER TABLE db_version CHANGE COLUMN required_8487_02_mangos_spell_proc_event required_8488_01_mangos_spell_chain bit;

DELETE FROM `spell_chain` WHERE `spell_id` IN (27813, 27817, 27818, 61391, 61390, 61388, 61387, 53227, 47960, 61291);

INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES
/*Blessed Recovery Proc*/
('27813', '0', '27813', '1', '0'),
('27817', '27813', '27813', '2', '0'),
('27818', '27817', '27813', '3', '0'),
/*Typhoon Triggered*/
('61391', '0', '61391', '1', '0'),
('61390', '61391', '61391', '2', '0'),
('61388', '61390', '61391', '3', '0'),
('61387', '61388', '61391', '4', '0'),
('53227', '61387', '61391', '5', '0'),
/*Shadowflame Triggered DoT*/
('47960','0','47960','1','0'),
('61291','47960','47960','2','0');

ALTER TABLE db_version CHANGE COLUMN required_8488_01_mangos_spell_chain required_8488_02_mangos_spell_bonus_data bit;

DELETE FROM `spell_bonus_data` WHERE `entry` IN
-- Spells that would be better off using default calculations (and should be removed from base MaNGOS tables)
(689, 30108, 6789, 29722, 5676, 686, 17877, 30283, 11113, 31661, 120, 25914, 596, 8092, 15407,
-- Spells that are getting entries below
18790, 42223, 27243, 30294, 47960, 47897, 44425, 42208, 19750, 635, 20167, 20267, 20187, 53600, 25997, 2944, 58381, 27813, 33619, 5570, 61391);

INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `comments`) VALUES
('18790', '0', '0', '0','Warlock - Fel Stamina'),
('42223', '0.285714', '0', '0', 'Warlock - Rain of Fire Triggered'), -- should be same as default calc (2/7), but this is a triggered spell
('27243', '0.2129', '0.25', '0', 'Warlock - Seed of Corruption'),
('30294', '0', '0', '0', 'Warlock - Soul Leech'),
('47960', '0', '0.06666', '0', 'Warlock - Shadowflame DoT'),
('47897', '0.1064', '0', '0', 'Warlock - Shadowflame Direct'),
('44425', '0.714286', '0', '0', 'Mage - Arcane Barrage'), -- treat as 2.5 second cast time (as of 3.0.9)
('42208', '0.1437', '0', '0', 'Mage - Blizzard Triggered'),
('19750', '1', '0', '0', 'Paladin - Flash of Light'),
('635', '1.66', '0', '0', 'Paladin - Holy Light'), -- These two Paladin heals are their default calculations multiplied by 7/3, not sure why that is
('20167', '0.15', '0', '0.15', 'Paladin - Seal of Light Proc'),
('20267', '0.1', '0', '0.1', 'Paladin - Judgement of Light Proc'),
('20187', '0.32', '0', '0', 'Paladin - Judgement of Righteousness'),
('53600', '0', '0', '0', 'Paladin - Shield of Righteousness'),
('25997', '0', '0', '0', 'Paladin - Eye for an Eye'),
('2944', '0', '0.1849', '0', 'Priest - Devouring Plague'),
('58381', '0.257143', '0', '0', 'Priest - Mind Flay Triggered'), -- Treated as 2.7 sec channel instead of 3?
('27813', '0', '0', '0', 'Priest - Blessed Recovery'),
('33619', '0', '0', '0', 'Priest - Reflective Shield'),
('5570', '0', '0.2', '0', 'Druid - Insect Swarm'),
('61391', '0.193', '0', '0', 'Druid - Typhoon');

-- 8498
ALTER TABLE db_version CHANGE COLUMN required_8488_02_mangos_spell_bonus_data required_8498_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (53234, 53237, 53238);

INSERT INTO spell_proc_event VALUES
(53234, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(53237, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(53238, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0);

-- 8499
ALTER TABLE db_version CHANGE COLUMN required_8498_01_mangos_spell_proc_event required_8499_01_mangos_spell_elixir bit;

/* Elexirs added in 3.x */
DELETE FROM `spell_elixir` WHERE `entry` IN
(53747,53748,53746,53749,53751,53763,53764,54452,54494,54497,60340,60341,60343,60344,60345,60346,60347);

INSERT INTO `spell_elixir` (`entry`, `mask`) VALUES
(53747,0x2),
(53748,0x1),
(53746,0x1),
(53749,0x1),
(53751,0x2),
(53763,0x2),
(53764,0x2),
(54452,0x1),
(54494,0x1),
(54497,0x2),
(60340,0x1),
(60341,0x1),
(60343,0x2),
(60344,0x1),
(60345,0x1),
(60346,0x1),
(60347,0x2);

-- 8504
ALTER TABLE db_version CHANGE COLUMN required_8499_01_mangos_spell_elixir required_8504_01_mangos_playercreateinfo_spell bit;

UPDATE `playercreateinfo_spell`
 SET `spell` = 21084
 WHERE `spell` = 20154;

ALTER TABLE db_version CHANGE COLUMN required_8504_01_mangos_playercreateinfo_spell required_8504_02_mangos_playercreateinfo_action bit;

UPDATE `playercreateinfo_action`
 SET `action` = 21084
 WHERE `action` = 20154 AND `type` = 0;

-- 8511
ALTER TABLE db_version CHANGE COLUMN required_8504_02_mangos_playercreateinfo_action required_8511_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (57470, 57472);

INSERT INTO spell_proc_event VALUES
(57470, 0x00000000,  6, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(57472, 0x00000000,  6, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- 8514
ALTER TABLE db_version CHANGE COLUMN required_8511_01_mangos_spell_proc_event required_8514_01_mangos_spell_bonus_data bit;

DELETE FROM `spell_bonus_data` WHERE `entry` IN (54158);

INSERT INTO `spell_bonus_data` VALUES
(54158, 0.25, 0, 0, 'Paladin - Judgement');

-- 8521
ALTER TABLE db_version CHANGE COLUMN required_8514_01_mangos_spell_bonus_data required_8521_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` = 56372;

INSERT INTO `spell_proc_event` VALUES
(56372, 0x00, 3, 0x00000000, 0x00000080, 0x00000000, 0x00004000, 0x00000000, 0.000000, 0.000000, 0);

-- 8548 
ALTER TABLE db_version CHANGE COLUMN required_8521_01_mangos_spell_proc_event required_8548_01_mangos_creature_battleground bit;

DROP TABLE IF EXISTS `creature_battleground`;
CREATE TABLE `creature_battleground` (
    `guid` int(10) unsigned NOT NULL COMMENT 'Creature\'s GUID',
    `event1` tinyint(3) unsigned NOT NULL COMMENT 'main event',
    `event2` tinyint(3) unsigned NOT NULL COMMENT 'sub event',
    PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Creature battleground indexing system';

ALTER TABLE db_version CHANGE COLUMN required_8548_01_mangos_creature_battleground required_8548_02_mangos_gameobject_battleground bit;

DROP TABLE IF EXISTS `gameobject_battleground`;
CREATE TABLE `gameobject_battleground` (
    `guid` int(10) unsigned NOT NULL COMMENT 'GameObject\'s GUID',
    `event1` tinyint(3) unsigned NOT NULL COMMENT 'main event',
    `event2` tinyint(3) unsigned NOT NULL COMMENT 'sub event',
    PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='GameObject battleground indexing system';

-- 8549
ALTER TABLE db_version CHANGE COLUMN required_8548_02_mangos_gameobject_battleground required_8549_03_mangos_battleground_events bit;

DROP TABLE IF EXISTS `battleground_events`;
CREATE TABLE `battleground_events` (
  `map` smallint(5) NOT NULL,
  `event1` tinyint(3) unsigned NOT NULL,
  `event2` tinyint(3) unsigned NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY  (`map`,`event1`,`event2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



SET @WS_MAP = 489;
SET @AB_MAP = 529;
SET @EY_MAP = 566;
SET @NA_MAP = 559;
SET @BE_MAP = 562;
SET @RL_MAP = 572;

INSERT INTO battleground_events (map, event1, event2, description) VALUES
    (@WS_MAP, 0, 0, 'Alliance Flag'),
    (@WS_MAP, 1, 0, 'Horde Flag'),
    (@WS_MAP, 2, 0, 'Spirit Guides'),
    (@WS_MAP, 254, 0, 'Doors'),

-- arathi
    (@AB_MAP, 0, 0, 'Stables - neutral'),
    (@AB_MAP, 0, 1, 'Stables - alliance contested'),
    (@AB_MAP, 0, 2, 'Stables - horde contested'),
    (@AB_MAP, 0, 3, 'Stables - alliance owned'),
    (@AB_MAP, 0, 4, 'Stables - horde owned'),

    (@AB_MAP, 1, 0, 'Blacksmith - neutral'),
    (@AB_MAP, 1, 1, 'Blacksmith - alliance contested'),
    (@AB_MAP, 1, 2, 'Blacksmith - horde contested'),
    (@AB_MAP, 1, 3, 'Blacksmith - alliance owned'),
    (@AB_MAP, 1, 4, 'Blacksmith - horde owned'),

    (@AB_MAP, 2, 0, 'Farm - neutral'),
    (@AB_MAP, 2, 1, 'Farm - alliance contested'),
    (@AB_MAP, 2, 2, 'Farm - horde contested'),
    (@AB_MAP, 2, 3, 'Farm - alliance owned'),
    (@AB_MAP, 2, 4, 'Farm - horde owned'),

    (@AB_MAP, 3, 0, 'Lumber Mill - neutral'),
    (@AB_MAP, 3, 1, 'Lumber Mill - alliance contested'),
    (@AB_MAP, 3, 2, 'Lumber Mill - horde contested'),
    (@AB_MAP, 3, 3, 'Lumber Mill - alliance owned'),
    (@AB_MAP, 3, 4, 'Lumber Mill - horde owned'),

    (@AB_MAP, 4, 0, 'Gold Mine - neutral'),
    (@AB_MAP, 4, 1, 'Gold Mine - alliance contested'),
    (@AB_MAP, 4, 2, 'Gold Mine - horde contested'),
    (@AB_MAP, 4, 3, 'Gold Mine - alliance owned'),
    (@AB_MAP, 4, 4, 'Gold Mine - horde owned'),

    (@AB_MAP, 254, 0, 'doors'),
-- eye of the storm
    (@EY_MAP, 0, 0, 'Fel Reaver - alliance'),
    (@EY_MAP, 0, 1, 'Fel Reaver - horde'),
    (@EY_MAP, 0, 2, 'Fel Reaver - neutral'),

    (@EY_MAP, 1, 0, 'Blood Elf - alliance'),
    (@EY_MAP, 1, 1, 'Blood Elf - horde'),
    (@EY_MAP, 1, 2, 'Blood Elf - neutral'),

    (@EY_MAP, 2, 0, 'Draenei Ruins - alliance'),
    (@EY_MAP, 2, 1, 'Draenei Ruins - horde'),
    (@EY_MAP, 2, 2, 'Draenei Ruins - neutral'),

    (@EY_MAP, 3, 0, 'Mage Tower - alliance'),
    (@EY_MAP, 3, 1, 'Mage Tower - horde'),
    (@EY_MAP, 3, 2, 'Mage Tower - neutral'),

    (@EY_MAP, 4, 0, 'capture flag - Fel Reaver'),
    (@EY_MAP, 4, 1, 'capture flag - Blood Elf'),
    (@EY_MAP, 4, 2, 'capture flag - Draenei Ruins'),
    (@EY_MAP, 4, 3, 'capture flag - Mage Tower'),
    (@EY_MAP, 4, 4, 'capture flag - center'),

    (@EY_MAP, 254, 0, 'doors'),

-- arenas
    (@NA_MAP, 253, 0, 'buffs'),
    (@NA_MAP, 254, 0, 'doors'),

    (@RL_MAP, 253, 0, 'buffs'),
    (@RL_MAP, 254, 0, 'doors'),

    (@BE_MAP, 253, 0, 'buffs'),
    (@BE_MAP, 254, 0, 'doors');
-- 8573

ALTER TABLE db_version CHANGE COLUMN required_8549_03_mangos_battleground_events required_8573_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN(573,574);