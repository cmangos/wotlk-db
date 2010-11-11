-- 10551
ALTER TABLE db_version CHANGE COLUMN required_10537_01_mangos_command required_10551_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 50880;
INSERT INTO spell_proc_event VALUES (50880, 0x10, 15, 0x00000000, 0x00000000, 0x00000000, 0x00000800, 0x00000800, 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00000000, 0.000000, 0.000000,  0);

-- 10582
ALTER TABLE db_version CHANGE COLUMN required_10551_01_mangos_spell_proc_event required_10582_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (67356, 67363, 67365, 67379, 67381, 67384, 67386, 67389, 67392);
INSERT INTO spell_proc_event(entry, SchoolMask, SpellFamilyName, 
    SpellFamilyMaskA0, SpellFamilyMaskA1, SpellFamilyMaskA2,
    SpellFamilyMaskB0, SpellFamilyMaskB1, SpellFamilyMaskB2,
    SpellFamilyMaskC0, SpellFamilyMaskC1, SpellFamilyMaskC2,
    procFlags, procEx, ppmRate, CustomChance, Cooldown) VALUES
(67356, 0x00,  7, 0x00000010, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00040000, 0.000000, 0.000000,  5),
(67363, 0x00, 10, 0x80000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 10),
(67365, 0x00, 10, 0x00000000, 0x00000000, 0x00000000, 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  6),
(67379, 0x00, 10, 0x00000000, 0x00000000, 0x00000000, 0x00040000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(67381, 0x00, 15, 0x00000000, 0x00000000, 0x00000000, 0x20000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 10),
(67384, 0x00, 15, 0x00000010, 0x00000000, 0x00000000, 0x08020000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 10),
(67386, 0x00, 11, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  6),
(67389, 0x00, 11, 0x00000100, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  8),
(67392, 0x00, 11, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- 10604
ALTER TABLE db_version CHANGE COLUMN required_10582_01_mangos_spell_proc_event required_10604_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN 
(57907,62147,64952,64964,71174,71176,71178,71186,71191,71194,71198,71217,71226,71228);

INSERT INTO spell_proc_event(entry, SchoolMask, SpellFamilyName, 
    SpellFamilyMaskA0, SpellFamilyMaskA1, SpellFamilyMaskA2,
    SpellFamilyMaskB0, SpellFamilyMaskB1, SpellFamilyMaskB2,
    SpellFamilyMaskC0, SpellFamilyMaskC1, SpellFamilyMaskC2,
    procFlags, procEx, ppmRate, CustomChance, Cooldown) VALUES
(57907, 0x00,  7, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.0, 0.0,  0),
(62147, 0x00, 15, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00000000, 0.0, 0.0,  0),
(64952, 0x00,  7, 0x00000000, 0x00000000, 0x00000000, 0x00000440, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.0, 0.0,  0),
(64964, 0x00, 15, 0x00000000, 0x00000000, 0x00000000, 0x20000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.0, 0.0,  0),
(71174, 0x00,  7, 0x00001000, 0x00000000, 0x00000000, 0x00000100, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.0, 0.0,  0),
(71176, 0x00,  7, 0x00200002, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.0, 0.0,  0),
(71178, 0x00,  7, 0x00000010, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00040000, 0.0, 0.0,  0),
(71186, 0x00, 10, 0x00000000, 0x00000000, 0x00000000, 0x00008000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.0, 0.0,  0),
(71191, 0x00, 10, 0x00200000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.0, 0.0,  0),
(71194, 0x00, 10, 0x00000000, 0x00000000, 0x00000000, 0x00100000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.0, 0.0,  0),
(71198, 0x00, 11, 0x10000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.0, 0.0,  0),
(71217, 0x00, 11, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000010, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.0, 0.0,  0),
(71226, 0x00, 15, 0x00000010, 0x00000000, 0x00000000, 0x08020000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.0, 0.0,  0),
(71228, 0x00, 15, 0x00000000, 0x00000000, 0x00000000, 0x20000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.0, 0.0,  0);

-- 10621
ALTER TABLE db_version CHANGE COLUMN required_10604_01_mangos_spell_proc_event required_10621_01_mangos_quest_template bit;

ALTER TABLE quest_template ADD COLUMN RequiredClasses smallint(5) unsigned NOT NULL default '0' AFTER Type;

UPDATE quest_template
  SET RequiredClasses = RequiredClasses|
    CASE SkillOrClass
      WHEN  -1 THEN    1 -- warrior
      WHEN  -2 THEN    2 -- paladin
      WHEN  -3 THEN    4 -- hunter
      WHEN  -4 THEN    8 -- rogue
      WHEN  -5 THEN   16 -- priest
      WHEN  -6 THEN   32 -- dk
      WHEN  -7 THEN   64 -- shaman
      WHEN  -8 THEN  128 -- mage
      WHEN  -9 THEN  256 -- warlock
      WHEN -11 THEN 1024 -- druid
      ELSE 0
    END
  WHERE SkillOrClass < 0;

UPDATE quest_template
  SET RequiredClasses = RequiredClasses|
    CASE ZoneOrSort
      WHEN  -81 THEN    1 -- warrior
      WHEN -141 THEN    2 -- paladin
      WHEN -261 THEN    4 -- hunter
      WHEN -162 THEN    8 -- rogue
      WHEN -262 THEN   16 -- priest
      WHEN -372 THEN   32 -- dk
      WHEN  -82 THEN   64 -- shaman
      WHEN -161 THEN  128 -- mage
      WHEN  -61 THEN  256 -- warlock
      WHEN -263 THEN 1024 -- druid
      ELSE 0
    END
  WHERE ZoneOrSort < 0;

UPDATE quest_template SET SkillOrClass=0 WHERE SkillOrClass<0;
ALTER TABLE quest_template CHANGE COLUMN SkillOrClass RequiredSkill smallint(5) unsigned NOT NULL default '0' AFTER RequiredRaces;

-- 10628
ALTER TABLE db_version CHANGE COLUMN required_10621_01_mangos_quest_template required_10628_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (201);

INSERT INTO mangos_string VALUES
(201,'Object GUID is: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 10629
ALTER TABLE db_version CHANGE COLUMN required_10628_01_mangos_mangos_string required_10629_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (470);

INSERT INTO mangos_string VALUES
(470,'id: %d eff: %d name: %s%s%s caster: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 10654
ALTER TABLE db_version CHANGE COLUMN required_10629_01_mangos_mangos_string required_10654_01_mangos_game_event_creature_quest bit;

ALTER TABLE game_event_creature_quest DROP PRIMARY KEY;
ALTER TABLE game_event_creature_quest ADD PRIMARY KEY (id,quest,event);

-- 10660
ALTER TABLE db_version CHANGE COLUMN required_10654_01_mangos_game_event_creature_quest required_10660_01_mangos_game_event_quest bit;

DROP TABLE IF EXISTS game_event_quest;
CREATE TABLE game_event_quest (
  quest mediumint(8) unsigned NOT NULL default '0' COMMENT 'entry from quest_template',
  event smallint(5) unsigned NOT NULL default '0' COMMENT 'entry from game_event',
  PRIMARY KEY  (quest,event)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Game event system';

INSERT INTO game_event_quest SELECT DISTINCT quest, event FROM game_event_creature_quest;

DROP TABLE game_event_creature_quest;

-- 10679
ALTER TABLE db_version CHANGE COLUMN required_10660_01_mangos_game_event_quest required_10679_01_mangos_npc_vendor_template bit;

DROP TABLE IF EXISTS `npc_vendor_template`;
CREATE TABLE `npc_vendor_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `maxcount` tinyint(3) unsigned NOT NULL default '0',
  `incrtime` int(10) unsigned NOT NULL default '0',
  `ExtendedCost` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`item`,`ExtendedCost`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Npc System';

ALTER TABLE db_version CHANGE COLUMN required_10679_01_mangos_npc_vendor_template required_10679_02_mangos_creature_template bit;

ALTER TABLE creature_template
  ADD COLUMN vendor_id mediumint(8) unsigned NOT NULL default '0' AFTER equipment_id;

-- 10682
ALTER TABLE db_version CHANGE COLUMN required_10679_02_mangos_creature_template required_10682_01_mangos_item_convert bit;

DROP TABLE IF EXISTS `item_convert`;
CREATE TABLE `item_convert` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Npc System';

-- 10704
ALTER TABLE db_version CHANGE COLUMN required_10682_01_mangos_item_convert required_10704_01_mangos_gossip_menu_option bit;

ALTER TABLE gossip_menu_option CHANGE COLUMN action_menu_id action_menu_id MEDIUMINT(8) NOT NULL DEFAULT '0';
