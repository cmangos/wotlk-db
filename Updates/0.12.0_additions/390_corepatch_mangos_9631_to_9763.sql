-- 9636
ALTER TABLE db_version CHANGE COLUMN required_9622_01_mangos_gameobject required_9636_01_mangos_item_template bit;

ALTER TABLE item_template
  CHANGE COLUMN NonConsumable ExtraFlags tinyint(1) UNSIGNED DEFAULT '0' NOT NULL;

UPDATE item_template
  SET ExtraFlags = ExtraFlags | 0x2 WHERE Duration < 0 ;

UPDATE item_template
  SET Duration = abs(Duration);

ALTER TABLE item_template
  CHANGE COLUMN Duration Duration int(11) UNSIGNED DEFAULT '0' NOT NULL;

-- 9651
ALTER TABLE db_version CHANGE COLUMN required_9636_01_mangos_item_template required_9651_01_mangos_quest_poi bit;

-- Sorry, this was only way I knew, to avoid problems adding new primary key. Take backup if you don't want to loose your current data.
TRUNCATE quest_poi;
TRUNCATE quest_poi_points;

ALTER TABLE quest_poi ADD COLUMN poiId tinyint(3) UNSIGNED DEFAULT '0' NOT NULL AFTER questid;
ALTER TABLE quest_poi CHANGE COLUMN questid questId mediumint(8) UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE quest_poi CHANGE COLUMN unk1 mapAreaId mediumint(8) UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE quest_poi CHANGE COLUMN unk2 floorId tinyint(3) UNSIGNED DEFAULT '0' NOT NULL;

ALTER TABLE quest_poi_points ADD COLUMN poiId tinyint(3) UNSIGNED DEFAULT '0' NOT NULL AFTER questId;
ALTER TABLE quest_poi_points CHANGE COLUMN questId questId mediumint(8) UNSIGNED DEFAULT '0' NOT NULL;
ALTER TABLE quest_poi_points DROP COLUMN objIndex;

ALTER TABLE quest_poi DROP PRIMARY KEY,
  ADD PRIMARY KEY idx_poi (questId, poiId);

ALTER TABLE quest_poi_points DROP INDEX idx,
  ADD KEY idx_poip (questId, poiId);

-- 9656
ALTER TABLE db_version CHANGE COLUMN required_9651_01_mangos_quest_poi required_9656_01_mangos_command bit;

DELETE FROM command WHERE name IN ('list talents');
INSERT INTO command VALUES
('list talents',3,'Syntax: .list talents\r\n\r\nShow list all really known (as learned spells) talent rank spells for selected player or self.');

ALTER TABLE db_version CHANGE COLUMN required_9656_01_mangos_command required_9656_02_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry in (1135,1136);

INSERT INTO mangos_string VALUES
(1135,'List known talents:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1136,'   (Found talents: %u used talent points: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 9663
ALTER TABLE db_version CHANGE COLUMN required_9656_02_mangos_mangos_string required_9663_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry=517;
INSERT INTO mangos_string VALUES (517,'%d, Entry %d - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 9690
ALTER TABLE db_version CHANGE COLUMN required_9663_01_mangos_mangos_string required_9690_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` = 67361;
INSERT INTO `spell_proc_event` VALUES
(67361, 0x00000040,  7, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  6);

-- 9692
ALTER TABLE db_version CHANGE COLUMN required_9690_01_mangos_spell_proc_event required_9692_03_mangos_spell_proc_event bit;

-- Rampage: now passive instead of being a proc
DELETE FROM `spell_proc_event` WHERE `entry` = 29801;
-- Unleashed Rage: now passive instead of being a proc
DELETE FROM `spell_proc_event` WHERE `entry` IN (30802, 30803, 30804, 30805, 30808, 30809);
-- Endless Winter: now passive instead of being a proc
DELETE FROM `spell_proc_event` WHERE `entry` IN (49137, 49657);
-- Elemental Oath: now passive instead of being a proc
DELETE FROM `spell_proc_event` WHERE `entry` IN (51466);
-- Abomination's Might: now passive instead of being a proc
DELETE FROM `spell_proc_event` WHERE `entry` IN (53137, 53138);
-- Incanter's Absorption: now triggering at specific spells absorbing.
DELETE FROM `spell_proc_event` WHERE `entry` IN (44394, 44395, 44396);
-- Ferocious Inspiration: now passive instead of being a proc
DELETE FROM `spell_proc_event` WHERE `entry` = 34457;

-- 9704
ALTER TABLE db_version CHANGE COLUMN required_9692_03_mangos_spell_proc_event required_9704_01_mangos_achievement_reward bit;

ALTER TABLE achievement_reward
  ADD COLUMN gender TINYINT(3) DEFAULT '2' after entry,
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (entry,gender);

ALTER TABLE locales_achievement_reward
  ADD COLUMN gender TINYINT(3) DEFAULT '2' after entry,
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (entry,gender);

-- 9710
ALTER TABLE db_version CHANGE COLUMN required_9704_01_mangos_achievement_reward required_9710_01_mangos_command bit;

DELETE FROM command WHERE name IN ('reset specs','reset talents');
INSERT INTO command VALUES
('reset specs',3,'Syntax: .reset specs [Playername]\r\n  Removes all talents (for all specs) of the targeted player or named player. Playername can be name of offline character. With player talents also will be reset talents for all character\'s pets if any.'),
('reset talents',3,'Syntax: .reset talents [Playername]\r\n  Removes all talents (current spec) of the targeted player or pet or named player. With player talents also will be reset talents for all character\'s pets if any.');

-- 9716
ALTER TABLE db_version CHANGE COLUMN required_9710_01_mangos_command required_9716_01_mangos_npc_vendor bit;

ALTER TABLE npc_vendor
  DROP PRIMARY KEY,
  ADD PRIMARY KEY  (`entry`,`item`,`ExtendedCost`);

ALTER TABLE db_version CHANGE COLUMN required_9716_01_mangos_npc_vendor required_9716_02_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry in (210);

INSERT INTO mangos_string VALUES
(210,'Item \'%i\' (with extended cost %u) already in vendor list.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 9720
ALTER TABLE db_version CHANGE COLUMN required_9716_02_mangos_mangos_string required_9720_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` = 63108;
INSERT INTO `spell_proc_event` VALUES (63108, 0x00, 5, 0x00000002, 0x00000000, 0x00000000, 0x00040000, 0x00000000, 0.000000, 0.000000, 0);

-- 9728
ALTER TABLE db_version CHANGE COLUMN required_9720_01_mangos_spell_proc_event required_9728_01_mangos_gossip_menu_option bit;

UPDATE gossip_menu_option SET option_icon=0 WHERE menu_id=0 AND option_id=16;

-- 9735
ALTER TABLE db_version CHANGE COLUMN required_9728_01_mangos_gossip_menu_option required_9735_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (53709, 53710, 53711);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(53709, 0x00000000, 10, 0x00004000, 0x00000000, 0x00000000, 0x00000100, 0x00000000, 0.000000, 0.000000,  0);
ALTER TABLE db_version CHANGE COLUMN required_9735_01_mangos_spell_proc_event required_9735_02_mangos_spell_chain bit;

DELETE FROM  `spell_chain` WHERE `spell_id` IN (53709, 53710, 53711);
INSERT INTO `spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`) VALUES
('53709', '0', '53709', '1', '0'),
('53710', '53709', '53709','2', '0'),
('53711', '53710', '53709', '3', '0');

-- 9747
ALTER TABLE db_version CHANGE COLUMN required_9735_02_mangos_spell_chain required_9747_01_mangos_battleground_template bit;

UPDATE battleground_template
  SET MinPlayersPerTeam=5, MaxPlayersPerTeam=5 WHERE id IN (4,5,6,8,32);

-- 9752
ALTER TABLE db_version CHANGE COLUMN required_9747_01_mangos_battleground_template required_9752_01_mangos_gameobject_template bit;

ALTER TABLE gameobject_template ADD COLUMN mingold MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER data23;
ALTER TABLE gameobject_template ADD COLUMN maxgold MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER mingold;

-- 9753
ALTER TABLE db_version CHANGE COLUMN required_9752_01_mangos_gameobject_template required_9753_01_mangos_instance_template bit;

ALTER TABLE instance_template CHANGE COLUMN parent parent smallint(5) unsigned NOT NULL default '0';

-- 9755
ALTER TABLE db_version CHANGE COLUMN required_9753_01_mangos_instance_template required_9755_01_mangos_instance_template bit;

ALTER TABLE instance_template
  DROP COLUMN startLocX,
  DROP COLUMN startLocY,
  DROP COLUMN startLocZ,
  DROP COLUMN startLocO;

-- 9761
ALTER TABLE db_version CHANGE COLUMN required_9755_01_mangos_instance_template required_9761_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry=1137;
INSERT INTO mangos_string VALUES (1137,'%d - |cffffffff|Hgameobject:%d|h[%s X:%f Y:%f Z:%f MapId:%d]|h|r ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 9763
ALTER TABLE db_version CHANGE COLUMN required_9761_01_mangos_mangos_string required_9763_01_mangos_battleground_template bit;

ALTER TABLE battleground_template
  DROP COLUMN MinLvl,
  DROP COLUMN MaxLvl;

DELETE FROM `battleground_template`;
INSERT INTO `battleground_template` VALUES
(1,40,40,611,2.72532,610,2.27452),
(2,10,10,769,3.14159,770,3.14159),
(3,15,15,890,3.40156,889,0.263892),
(4,5,5,929,0,936,3.14159),
(5,5,5,939,0,940,3.14159),
(6,5,5,0,0,0,0),
(7,15,15,1103,3.40156,1104,0.263892),
(8,5,5,1258,0,1259,3.14159),
(9,15,15,1367,0,1368,0),
(10,5,5,1362,0,1363,0),
(11,5,5,1364,0,1365,0),
(30,40,40,1485,0,1486,0),
(32,5,40,0,0,0,0);
