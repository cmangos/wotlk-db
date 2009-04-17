-- 7118
ALTER TABLE db_version CHANGE COLUMN required_7107_01_mangos_string required_7118_01_mangos_skill_discovery_template bit;
ALTER TABLE skill_discovery_template
   DROP PRIMARY KEY,
   ADD PRIMARY KEY (`spellId`,`reqSpell`),
   ADD COLUMN reqClass tinyint(2) unsigned NOT NULL default '0' COMMENT 'class requirement' AFTER reqSpell;

-- 7133
ALTER TABLE db_version CHANGE COLUMN required_7118_01_mangos_skill_discovery_template required_7133_01_mangos_skill_discovery_template bit;
ALTER TABLE skill_discovery_template
   DROP `reqClass`,
   ADD COLUMN `reqSkillValue` smallint(5) unsigned NOT NULL default '0' COMMENT 'skill points requirement' AFTER reqSpell;
ALTER TABLE db_version CHANGE COLUMN required_7133_01_mangos_skill_discovery_template required_7133_02_mangos_spell_loot_template bit;
DROP TABLE IF EXISTS `spell_loot_template`;
CREATE TABLE `spell_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  `ChanceOrQuestChance` float NOT NULL default '100',
  `groupid` tinyint(3) unsigned NOT NULL default '0',
  `mincountOrRef` mediumint(9) NOT NULL default '1',
  `maxcount` tinyint(3) unsigned NOT NULL default '1',
  `lootcondition` tinyint(3) unsigned NOT NULL default '0',
  `condition_value1` mediumint(8) unsigned NOT NULL default '0',
  `condition_value2` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';

-- 7141
ALTER TABLE db_version CHANGE COLUMN required_7133_02_mangos_spell_loot_template required_7141_01_mangos_instance_template bit;
ALTER TABLE instance_template ADD maxPlayersHeroic tinyint(3) unsigned NOT NULL default '0' AFTER maxPlayers;
UPDATE instance_template SET maxPlayersHeroic = maxPlayers;
DELETE FROM instance_template WHERE map IN (533,615,616,624);
INSERT INTO instance_template VALUES
(533,0,80,0,10,25,0,NULL,NULL,NULL,NULL,''),
(615,0,80,0,10,25,0,NULL,NULL,NULL,NULL,''),
(616,0,80,0,10,25,0,NULL,NULL,NULL,NULL,''),
(624,0,80,0,10,25,0,NULL,NULL,NULL,NULL,'');

-- 7147
ALTER TABLE db_version CHANGE COLUMN required_7141_01_mangos_instance_template required_7147_01_mangos_creature_template bit;
UPDATE creature_template
  SET family = 0 WHERE entry = 1;
  
-- 7149
ALTER TABLE db_version CHANGE COLUMN required_7147_01_mangos_creature_template required_7149_01_mangos_spell_proc_event bit;
-- (53501) Sheath of Light (Rank 1)
DELETE FROM `spell_proc_event` WHERE `entry` IN (53501);
INSERT INTO `spell_proc_event` VALUES (53501, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
-- (53502) Sheath of Light (Rank 2)
DELETE FROM `spell_proc_event` WHERE `entry` IN (53502);
INSERT INTO `spell_proc_event` VALUES (53502, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
-- (53503) Sheath of Light (Rank 3)
DELETE FROM `spell_proc_event` WHERE `entry` IN (53503);
INSERT INTO `spell_proc_event` VALUES (53503, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 0);
-- (53228) Rapid Recuperation (Rank 1)
DELETE FROM `spell_proc_event` WHERE `entry` IN (53228);
INSERT INTO `spell_proc_event` VALUES (53228, 0x00, 9, 0x00000020, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);
-- (53232) Rapid Recuperation (Rank 2)
DELETE FROM `spell_proc_event` WHERE `entry` IN (53232);
INSERT INTO `spell_proc_event` VALUES (53232, 0x00, 9, 0x00000020, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

-- 7150
ALTER TABLE db_version CHANGE COLUMN required_7149_01_mangos_spell_proc_event required_7150_01_mangos_playercreateinfo_spell bit;
DELETE FROM `playercreateinfo_spell` WHERE Spell = 58284;
INSERT INTO `playercreateinfo_spell` VALUES
(1,9,58284,'Chaos Bolt Passive'),
(2,9,58284,'Chaos Bolt Passive'),
(5,9,58284,'Chaos Bolt Passive'),
(7,9,58284,'Chaos Bolt Passive'),
(10,9,58284,'Chaos Bolt Passive');

-- 7156
ALTER TABLE db_version CHANGE COLUMN required_7150_01_mangos_playercreateinfo_spell required_7156_01_mangos_spell_proc_event bit;
-- (44401) Missile Barrage ()
DELETE FROM `spell_proc_event` WHERE `entry` IN (44401);
INSERT INTO `spell_proc_event` VALUES (44401, 0x00, 3, 0x00200000, 0x00000000, 0x00000000, 0x00000000, 0x00000FFF, 0.000000, 0.000000, 0);

-- 7168
ALTER TABLE db_version CHANGE COLUMN required_7156_01_mangos_spell_proc_event required_7168_01_mangos_command bit;
DELETE FROM `command` WHERE `name` IN ('learn','unlearn');
INSERT INTO `command` VALUES
('learn',3,'Syntax: .learn #spell [all]\r\n\r\nSelected character learn a spell of id #spell. If \'all\' provided then all ranks learned.'),
('unlearn',3,'Syntax: .unlearn #spell [all]\r\n\r\nUnlearn for selected player a spell #spell.  If \'all\' provided then all ranks unlearned.');

-- 7175
ALTER TABLE db_version CHANGE COLUMN required_7168_01_mangos_command required_7175_01_mangos_spell_proc_event bit;
-- (56333) T.N.T. (Rank 1)
DELETE FROM `spell_proc_event` WHERE `entry` IN (56333);
INSERT INTO `spell_proc_event` VALUES (56333, 0x00, 9, 0x00000004, 0x00000000, 0x00000200, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);
-- (56336) T.N.T. (Rank 2)
DELETE FROM `spell_proc_event` WHERE `entry` IN (56336);
INSERT INTO `spell_proc_event` VALUES (56336, 0x00, 9, 0x00000004, 0x00000000, 0x00000200, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);
-- (56337) T.N.T. (Rank 3)
DELETE FROM `spell_proc_event` WHERE `entry` IN (56337);
INSERT INTO `spell_proc_event` VALUES (56337, 0x00, 9, 0x00000004, 0x00000000, 0x00000200, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

-- 7193
ALTER TABLE db_version CHANGE COLUMN required_7175_01_mangos_spell_proc_event required_7193_01_mangos_mangos_string bit;
UPDATE mangos_string SET content_default = 'Unit Flags: %u.\nDynamic Flags: %u.\nFaction Template: %u.' WHERE entry = 542;

-- 7196
ALTER TABLE db_version CHANGE COLUMN required_7193_01_mangos_mangos_string required_7196_01_mangos_spell_chain bit;
INSERT INTO spell_chain VALUES
(44203,    0,44203,1,0),
(44205,44203,44203,2,0),
(44206,44205,44203,3,0),
(44207,44206,44203,4,0),
(44208,44207,44203,5,0),
(48444,44208,44203,6,0),
(48445,48444,44203,7,0),
(42231,    0,42231,1,0),
(42232,42231,42231,2,0),
(42233,42232,42231,3,0),
(42230,42233,42231,4,0),
(48466,42230,42231,5,0);
ALTER TABLE db_version CHANGE COLUMN required_7196_01_mangos_spell_chain required_7196_02_mangos_spell_bonus_data bit;
DROP TABLE IF EXISTS `spell_bonus_data`;
CREATE TABLE `spell_bonus_data` (
  `entry` smallint(5) unsigned NOT NULL,
  `direct_bonus` float NOT NULL default '0',
  `dot_bonus` float NOT NULL default '0',
  `ap_bonus` float NOT NULL default '0',
  `comments` varchar(255) default NULL,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `spell_bonus_data` VALUES
('5185', '1.6104', '0', '0', 'Druid - Healing Touch'),
('33763', '0', '0.09518', '0', 'Druid - Lifebloom'),
('774', '0', '0.37604', '0', 'Druid - Rejuvenation'),
('8936', '0.539', '0.188', '0', 'Druid - Regrowth'),
('18562', '0', '0', '0', 'Druid - Swiftmend'),
('44203', '0.538', '0', '0', 'Druid - Tranquility Triggered'),
('48438', '0', '0.11505', '0', 'Druid - Wild Growth'),
('50464', '0.6611', '0', '0', 'Druid - Nourish'),
('339', '0', '0.1', '0', 'Druid - Entangling Roots'),
('42231', '0.12898', '0', '0', 'Druid - Hurricane Triggered'),
('5570', '0', '0.127', '0', 'Druid - Insect Swarm'),
('8921', '0.1515', '0.13', '0', 'Druid - Moonfire'),
('2912', '1', '0', '0', 'Druid - Starfire'),
('5176', '0.5714', '0', '0', 'Druid - Wrath'),
('30451', '0.7143', '0', '0', 'Mage - Arcane Blast'),
('1449', '0.2128', '0', '0', 'Mage - Arcane Explosion'),
('7268', '0.2857', '0', '0', 'Mage - Arcane Missiles Triggered Spell Rank 1'),
('7269', '0.2857', '0', '0', 'Mage - Arcane Missiles Triggered Spell Rank 2'),
('7270', '0.2857', '0', '0', 'Mage - Arcane Missiles Triggered Spell Rank 3'),
('8419', '0.2857', '0', '0', 'Mage - Arcane Missiles Triggered Spell Rank 4'),
('8418', '0.2857', '0', '0', 'Mage - Arcane Missiles Triggered Spell Rank 5'),
('10273', '0.2857', '0', '0', 'Mage - Arcane Missiles Triggered Spell Rank 6'),
('10274', '0.2857', '0', '0', 'Mage - Arcane Missiles Triggered Spell Rank 7'),
('25346', '0.2857', '0', '0', 'Mage - Arcane Missiles Triggered Spell Rank 8'),
('27076', '0.2857', '0', '0', 'Mage - Arcane Missiles Triggered Spell Rank 9'),
('38700', '0.2857', '0', '0', 'Mage - Arcane Missiles Triggered Spell Rank 10'),
('38703', '0.2857', '0', '0', 'Mage - Arcane Missiles Triggered Spell Rank 11'),
('42844', '0.2857', '0', '0', 'Mage - Arcane Missiles Triggered Spell Rank 12'),
('42845', '0.2857', '0', '0', 'Mage - Arcane Missiles Triggered Spell Rank 13'),
('1463', '0.8053', '0', '0', 'Mage - Mana Shield'),
('44425', '0.8571', '0', '0', 'Mage - Arcane Barrage'),
('11113', '0.1357', '0', '0', 'Mage - Blast Wave Rank'),
('31661', '0.1357', '0', '0', 'Mage - Dragons Breath'),
('2136', '0.4286', '0', '0', 'Mage - Fire Blast'),
('133', '1', '0', '0', 'Mage - Fire Ball'),
('2120', '0.2357', '0.122', '0', 'Mage - Flamestrike'),
('11366', '1.15', '0.05', '0', 'Mage - Pyroblast'),
('2948', '0.4286', '0', '0', 'Mage - Scorch'),
('44614', '0.8571', '0', '0', 'Frostfire Bolt'),
('44457', '0.4', '0.2', '0', 'Mage - Living Bomb'),
('42208', '0.0952', '0', '0', 'Mage - Blizzard Triggered Spell Rank 1'),
('42209', '0.0952', '0', '0', 'Mage - Blizzard Triggered Spell Rank 2'),
('42210', '0.0952', '0', '0', 'Mage - Blizzard Triggered Spell Rank 3'),
('42211', '0.0952', '0', '0', 'Mage - Blizzard Triggered Spell Rank 4'),
('42212', '0.0952', '0', '0', 'Mage - Blizzard Triggered Spell Rank 5'),
('42213', '0.0952', '0', '0', 'Mage - Blizzard Triggered Spell Rank 6'),
('42198', '0.0952', '0', '0', 'Mage - Blizzard Triggered Spell Rank 7'),
('42937', '0.0952', '0', '0', 'Mage - Blizzard Triggered Spell Rank 8'),
('42938', '0.0952', '0', '0', 'Mage - Blizzard Triggered Spell Rank 9'),
('120', '0.1357', '0', '0', 'Mage - Cone of Cold'),
('122', '0.193', '0', '0', 'Mage - Frost Nova'),
('116', '0.8143', '0', '0', 'Mage - Frost Bolt'),
('11426', '0.8053', '0', '0', 'Mage - Ice Barrier'),
('30455', '0.1429', '0', '0', 'Mage - Ice Lance'),
('19750', '0.4286', '0', '0', 'Paladin - Flash of Light'),
('635', '0.7143', '0', '0', 'Paladin - Holy Light'),
('25912', '0.4286', '0', '0', 'Paladin - Holy Shock Triggered Hurt Rank 1'),
('25911', '0.4286', '0', '0', 'Paladin - Holy Shock Triggered Hurt Rank 2'),
('25902', '0.4286', '0', '0', 'Paladin - Holy Shock Triggered Hurt Rank 3'),
('27176', '0.4286', '0', '0', 'Paladin - Holy Shock Triggered Hurt Rank 4'),
('33073', '0.4286', '0', '0', 'Paladin - Holy Shock Triggered Hurt Rank 5'),
('48822', '0.4286', '0', '0', 'Paladin - Holy Shock Triggered Hurt Rank 6'),
('48823', '0.4286', '0', '0', 'Paladin - Holy Shock Triggered Hurt Rank 7'),
('25914', '0.4286', '0', '0', 'Paladin - Holy Shock Triggered Heal Rank 1'),
('25913', '0.4286', '0', '0', 'Paladin - Holy Shock Triggered Heal Rank 2'),
('25903', '0.4286', '0', '0', 'Paladin - Holy Shock Triggered Heal Rank 3'),
('27175', '0.4286', '0', '0', 'Paladin - Holy Shock Triggered Heal Rank 4'),
('33074', '0.4286', '0', '0', 'Paladin - Holy Shock Triggered Heal Rank 5'),
('48820', '0.4286', '0', '0', 'Paladin - Holy Shock Triggered Heal Rank 6'),
('48821', '0.4286', '0', '0', 'Paladin - Holy Shock Triggered Heal Rank 7'),
('31935', '0.07', '0', '0.07', 'Paladin - Avengers Shiled'),
('26573', '0', '0.04', '0.04', 'Paladin - Consecration'),
('879', '0.15', '0', '0.15', 'Paladin - Exorcism'),
('24275', '0.15', '0', '0.15', 'Paladin - Hammer of Wrath'),
('20925', '0.09', '0', '0.056', 'Paladin - Holy Shield'),
('2812', '0.07', '0', '0.07', 'Paladin - Holy Wrath'),
('31893', '0.25', '0', '0.16', 'Paladin - Seal of Blood Enemy Proc'),
('32221', '0.25', '0', '0.16', 'Paladin - Seal of Blood Self Proc'),
('20424', '0.25', '0', '0.16', 'Paladin - Seal of Command Proc'),
('379', '0', '0', '0', 'Shaman - Earth Shield Triggered'),
('20167', '0.25', '0', '0.16', 'Paladin - Seal of Light Proc'),
('53719', '0.25', '0', '0.16', 'Paladin - Seal of The Martyr Enemy Proc'),
('53718', '0.25', '0', '0.16', 'Paladin - Seal of The Martyr Self Proc'),
('25742', '0.07', '0', '0.039', 'Paladin - Seal of Righteousness Dummy Proc'),
('31803', '0', '0.013', '0.15', 'Paladin - Holy Vengeance'),
('52042', '0.045', '0', '0', 'Shaman - Healing Stream Totem Triggered Heal'),
('32546', '0.8068', '0', '0', 'Priest - Binding Heal'),
('34861', '0.402', '0', '0', 'Priest - Circle of Healing'),
('19236', '0.8068', '0', '0', 'Priest - Desperate Prayer'),
('2061', '0.8068', '0', '0', 'Priest - Flash Heal'),
('2060', '1.6135', '0', '0', 'Priest - Greater Heal'),
('23455', '0.3035', '0', '0', 'Priest - Holy Nova Heal Rank 1'),
('23458', '0.3035', '0', '0', 'Priest - Holy Nova Heal Rank 2'),
('23459', '0.3035', '0', '0', 'Priest - Holy Nova Heal Rank 3'),
('27803', '0.3035', '0', '0', 'Priest - Holy Nova Heal Rank 4'),
('27804', '0.3035', '0', '0', 'Priest - Holy Nova Heal Rank 5'),
('27805', '0.3035', '0', '0', 'Priest - Holy Nova Heal Rank 6'),
('25329', '0.3035', '0', '0', 'Priest - Holy Nova Heal Rank 7'),
('17', '0.8068', '0', '0', 'Priest - Power Word: Shield'),
('596', '0.8086', '0', '0', 'Priest - Prayer of Healing'),
('33110', '0.8068', '0', '0', 'Priest - Prayer of Mending Heal Proc'),
('139', '1.88', '0', '0', 'Priest - Renew'),
('2944', '0.1849', '0', '0', 'Priest - Devouring Plague'),
('14914', '0.5711', '0.024', '0', 'Priest - Holy Fire'),
('15237', '0.1606', '0', '0', 'Priest - Holy Nova Damage'),
('8129', '0', '0', '0', 'Priest - Mana Burn'),
('8092', '0.4296', '0', '0', 'Priest - Mind Blast'),
('15407', '0.257', '0', '0', 'Priest - Mind Flay'),
('49821', '0.7143', '0', '0', 'Priest - Mind Sear Trigger Rank 1'),
('53022', '0.7143', '0', '0', 'Priest - Mind Sear Trigger Rank 2'),
('34433', '0.65', '0', '0', 'Priest - Shadowfiend'),
('32379', '0.4296', '0', '0', 'Priest - Shadow Word: Death'),
('589', '0', '0.1829', '0', 'Priest - Shadow Word: Pain'),
('585', '0.714', '0', '0', 'Priest - Smite'),
('34914', '0', '0.4', '0', 'Priest - Vampiric Touch'),
('974', '0.4762', '0', '0', 'Shaman - Earth Shield'),
('1064', '1.34', '0', '0', 'Shaman - Chain Heal'),
('331', '1.6106', '0', '0', 'Shaman - Healing Wave'),
('8004', '0.8082', '0', '0', 'Shaman - Lesser Healing Wave'),
('61295', '0.4', '0.18', '0', 'Shaman - Riptide'),
('421', '0.57', '0', '0', 'Shaman - Chain Lightning'),
('8042', '0.3858', '0', '0', 'Shaman - Earth Shock'),
('8443', '0.2142', '0', '0', 'Shaman - Fire Nova Totem Casted by Totem Rank 1'),
('8504', '0.2142', '0', '0', 'Shaman - Fire Nova Totem Casted by Totem Rank 2'),
('8505', '0.2142', '0', '0', 'Shaman - Fire Nova Totem Casted by Totem Rank 3'),
('11310', '0.2142', '0', '0', 'Shaman - Fire Nova Totem Casted by Totem Rank 4'),
('11311', '0.2142', '0', '0', 'Shaman - Fire Nova Totem Casted by Totem Rank 5'),
('25538', '0.2142', '0', '0', 'Shaman - Fire Nova Totem Casted by Totem Rank 6'),
('25539', '0.2142', '0', '0', 'Shaman - Fire Nova Totem Casted by Totem Rank 7'),
('61651', '0.2142', '0', '0', 'Shaman - Fire Nova Totem Casted by Totem Rank 8'),
('61660', '0.2142', '0', '0', 'Shaman - Fire Nova Totem Casted by Totem Rank 9'),
('8050', '0.2142', '0.1', '0', 'Shaman - Flame Shock'),
('8026', '0.1', '0', '0', 'Shaman - Flametongue Weapon Proc Rank 1'),
('8028', '0.1', '0', '0', 'Shaman - Flametongue Weapon Proc Rank 2'),
('8029', '0.1', '0', '0', 'Shaman - Flametongue Weapon Proc Rank 3'),
('10445', '0.1', '0', '0', 'Shaman - Flametongue Weapon Proc Rank 4'),
('16343', '0.1', '0', '0', 'Shaman - Flametongue Weapon Proc Rank 5'),
('16344', '0.1', '0', '0', 'Shaman - Flametongue Weapon Proc Rank 6'),
('25488', '0.1', '0', '0', 'Shaman - Flametongue Weapon Proc Rank 7'),
('58786', '0.1', '0', '0', 'Shaman - Flametongue Weapon Proc Rank 8'),
('58787', '0.1', '0', '0', 'Shaman - Flametongue Weapon Proc Rank 9'),
('58788', '0.1', '0', '0', 'Shaman - Flametongue Weapon Proc Rank 10'),
('8056', '0.3858', '0', '0', 'Shaman - Frost Shock'),
('8034', '0.1', '0', '0', 'Shaman - Frostbrand Attack Rank 1'),
('8037', '0.1', '0', '0', 'Shaman - Frostbrand Attack Rank 2'),
('10458', '0.1', '0', '0', 'Shaman - Frostbrand Attack Rank 3'),
('16352', '0.1', '0', '0', 'Shaman - Frostbrand Attack Rank 4'),
('16353', '0.1', '0', '0', 'Shaman - Frostbrand Attack Rank 5'),
('25501', '0.1', '0', '0', 'Shaman - Frostbrand Attack Rank 6'),
('58797', '0.1', '0', '0', 'Shaman - Frostbrand Attack Rank 7'),
('58798', '0.1', '0', '0', 'Shaman - Frostbrand Attack Rank 8'),
('58799', '0.1', '0', '0', 'Shaman - Frostbrand Attack Rank 9'),
('51505', '0.5714', '0', '0', 'Shaman - Lava Burst'),
('403', '0.7143', '0', '0', 'Shaman - Lightning Bolt'),
('26364', '0.33', '0', '0', 'Shaman - Lightning Shield Proc Rank 1'),
('26365', '0.33', '0', '0', 'Shaman - Lightning Shield Proc Rank 2'),
('26366', '0.33', '0', '0', 'Shaman - Lightning Shield Proc Rank 3'),
('26367', '0.33', '0', '0', 'Shaman - Lightning Shield Proc Rank 4'),
('26369', '0.33', '0', '0', 'Shaman - Lightning Shield Proc Rank 5'),
('26370', '0.33', '0', '0', 'Shaman - Lightning Shield Proc Rank 6'),
('26363', '0.33', '0', '0', 'Shaman - Lightning Shield Proc Rank 7'),
('26371', '0.33', '0', '0', 'Shaman - Lightning Shield Proc Rank 8'),
('26372', '0.33', '0', '0', 'Shaman - Lightning Shield Proc Rank 9'),
('49278', '0.33', '0', '0', 'Shaman - Lightning Shield Proc Rank 10'),
('49279', '0.33', '0', '0', 'Shaman - Lightning Shield Proc Rank 11'),
('8188', '0.1', '0', '0', 'Shaman - Magma Totam Passive Rank 1'),
('10582', '0.1', '0', '0', 'Shaman - Magma Totam Passive Rank 2'),
('10583', '0.1', '0', '0', 'Shaman - Magma Totam Passive Rank 3'),
('10584', '0.1', '0', '0', 'Shaman - Magma Totam Passive Rank 4'),
('25551', '0.1', '0', '0', 'Shaman - Magma Totam Passive Rank 5'),
('58733', '0.1', '0', '0', 'Shaman - Magma Totam Passive Rank 6'),
('58736', '0.1', '0', '0', 'Shaman - Magma Totam Passive Rank 7'),
('3606', '0.1667', '0', '0', 'Shaman - Searing Totem Attack Rank 1'),
('6350', '0.1667', '0', '0', 'Shaman - Searing Totem Attack Rank 2'),
('6351', '0.1667', '0', '0', 'Shaman - Searing Totem Attack Rank 3'),
('6352', '0.1667', '0', '0', 'Shaman - Searing Totem Attack Rank 4'),
('10435', '0.1667', '0', '0', 'Shaman - Searing Totem Attack Rank 5'),
('10436', '0.1667', '0', '0', 'Shaman - Searing Totem Attack Rank 6'),
('25530', '0.1667', '0', '0', 'Shaman - Searing Totem Attack Rank 7'),
('58700', '0.1667', '0', '0', 'Shaman - Searing Totem Attack Rank 8'),
('58701', '0.1667', '0', '0', 'Shaman - Searing Totem Attack Rank 9'),
('58702', '0.1667', '0', '0', 'Shaman - Searing Totem Attack Rank 10'),
('980', '0', '0.1', '0', 'Warlock - Curse of Agony'),
('603', '0', '2', '0', 'Warlock - Curse of Doom'),
('172', '0', '0.3', '0', 'Warlock - Corruption'),
('348', '0.2', '0.2', '0', 'Warlock - Immolate'),
('27243', '0.22', '0.25', '0', 'Warlock - Seed of Corruption'),
('18265', '0', '1', '0', 'Warlock - Siphon Life'),
('30108', '0', '0.24', '0', 'Warlock - Unstable Affliction'),
('17962', '0.4286', '0', '0', 'Warlock - Conflagrate'),
('6789', '0.22', '0', '0', 'Warlock - Death Coil'),
('48181', '0.4729', '0', '0', 'Warlock - Haunt'),
('29722', '0.7143', '0', '0', 'Warlock - Incinerate'),
('5676', '0.4286', '0', '0', 'Warlock - Searing Pain'),
('686', '0.8571', '0', '0', 'Warlock - Shadow Bolt'),
('17877', '0.4286', '0', '0', 'Warlock - Shadowburn'),
('30283', '0.195', '0', '0', 'Warlock - Shadowfury'),
('6353', '1.15', '0', '0', 'Warlock - Soul Fire'),
('689', '0', '0.1428', '0', 'Warlock - Drain Life'),
('5138', '0', '0', '0', 'Warlock - Drain Mana'),
('1120', '0', '0.4286', '0', 'Warlock - Drain Soul'),
('755', '0', '0.4485', '0', 'Warlock - Health Funnel'),
('1949', '0', '0.0946', '0', 'Warlock - Hellfire'),
('5857', '0.1428', '0', '0', 'Warlock - Hellfire Effect on Enemy Rank 1'),
('11681', '0.1428', '0', '0', 'Warlock - Hellfire Effect on Enemy Rank 2'),
('11682', '0.1428', '0', '0', 'Warlock - Hellfire Effect on Enemy Rank 3'),
('27214', '0.1428', '0', '0', 'Warlock - Hellfire Effect on Enemy Rank 4'),
('47822', '0.1428', '0', '0', 'Warlock - Hellfire Effect on Enemy Rank 5'),
('42223', '0.952', '0', '0', 'Warlock - Rain of Fire Triggered Rank 1'),
('42224', '0.952', '0', '0', 'Warlock - Rain of Fire Triggered Rank 2'),
('42225', '0.952', '0', '0', 'Warlock - Rain of Fire Triggered Rank 3'),
('42226', '0.952', '0', '0', 'Warlock - Rain of Fire Triggered Rank 4'),
('42218', '0.952', '0', '0', 'Warlock - Rain of Fire Triggered Rank 5'),
('47817', '0.952', '0', '0', 'Warlock - Rain of Fire Triggered Rank 6'),
('47818', '0.952', '0', '0', 'Warlock - Rain of Fire Triggered Rank 7'),
('18220', '0.96', '0', '0', 'Warlock - Dark Pact'),
('6229', '0.3', '0', '0', 'Warlock - Shadow Ward');

-- 7199
ALTER TABLE db_version CHANGE COLUMN required_7196_02_mangos_spell_bonus_data required_7199_01_mangos_spell_bonus_data bit;
DELETE FROM `spell_bonus_data` WHERE `entry` IN (44614, 139, 49821, 53022, 18265, 31117, 28176);
INSERT INTO `spell_bonus_data` VALUES
('44614', '0.8571', '0', '0', 'Mage - Frostfire Bolt'),
('139', '0', '0.376', '0', 'Priest - Renew'),
('49821', '0.14286', '0', '0', 'Priest - Mind Sear Trigger Rank 1'),
('53022', '0.14286', '0', '0', 'Priest - Mind Sear Trigger Rank 2'),
('18265', '0', '0.1', '0', 'Warlock - Siphon Life'),
('31117', '1.8', '0', '0', 'Warlock - Unstable Affliction Dispell'),
('28176', '0', '0', '0', 'Warlock - Fel Armor');

ALTER TABLE db_version CHANGE COLUMN required_7199_01_mangos_spell_bonus_data required_7199_02_mangos_spell_proc_event bit;
-- (51479) Astral Shift (Rank 3)
DELETE FROM `spell_proc_event` WHERE `entry` IN (51479);
INSERT INTO `spell_proc_event` VALUES (51479, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0.000000, 0.000000, 0);
-- (61846) Aspect of the Dragonhawk (Rank 1)
DELETE FROM `spell_proc_event` WHERE `entry` IN (61846);
INSERT INTO `spell_proc_event` VALUES (61846, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000010, 0.000000, 0.000000, 0);
-- (61847) Aspect of the Dragonhawk (Rank 2)
DELETE FROM `spell_proc_event` WHERE `entry` IN (61847);
INSERT INTO `spell_proc_event` VALUES (61847, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000010, 0.000000, 0.000000, 0);
-- (13163) Aspect of the Monkey ()
DELETE FROM `spell_proc_event` WHERE `entry` IN (13163);
INSERT INTO `spell_proc_event` VALUES (13163, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000010, 0.000000, 0.000000, 0);
-- (51940) Earthliving Weapon (Passive) (Rank 1)
DELETE FROM `spell_proc_event` WHERE `entry` IN (51940);
INSERT INTO `spell_proc_event` VALUES (51940, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 20.000000, 0);
-- (51989) Earthliving Weapon (Passive) (Rank 2)
DELETE FROM `spell_proc_event` WHERE `entry` IN (51989);
INSERT INTO `spell_proc_event` VALUES (51989, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 20.000000, 0);
-- (52004) Earthliving Weapon (Passive) (Rank 3)
DELETE FROM `spell_proc_event` WHERE `entry` IN (52004);
INSERT INTO `spell_proc_event` VALUES (52004, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 20.000000, 0);
-- (52005) Earthliving Weapon (Passive) (Rank 4)
DELETE FROM `spell_proc_event` WHERE `entry` IN (52005);
INSERT INTO `spell_proc_event` VALUES (52005, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 20.000000, 0);
-- (52007) Earthliving Weapon (Passive) (Rank 5)
DELETE FROM `spell_proc_event` WHERE `entry` IN (52007);
INSERT INTO `spell_proc_event` VALUES (52007, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 20.000000, 0);
-- (52008) Earthliving Weapon (Passive) (Rank 6)
DELETE FROM `spell_proc_event` WHERE `entry` IN (52008);
INSERT INTO `spell_proc_event` VALUES (52008, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 20.000000, 0);
-- (44442) Firestarter (Rank 1)
DELETE FROM `spell_proc_event` WHERE `entry` IN (44442);
INSERT INTO `spell_proc_event` VALUES (44442, 0x00, 3, 0x00800000, 0x00000040, 0x00000000, 0x00000000, 0x00010000, 0.000000, 0.000000, 1);
-- (44443) Firestarter (Rank 2)
DELETE FROM `spell_proc_event` WHERE `entry` IN (44443);
INSERT INTO `spell_proc_event` VALUES (44443, 0x00, 3, 0x00800000, 0x00000040, 0x00000000, 0x00000000, 0x00010000, 0.000000, 0.000000, 1);

-- 7205
ALTER TABLE db_version CHANGE COLUMN required_7199_02_mangos_spell_proc_event required_7205_01_mangos_spell_chain bit;
DELETE FROM `spell_chain` WHERE `spell_id` IN (
  3034, 14279, 14280, 27018, 49008,
  5138, 6226, 11703, 11704, 27221, 30908, 47858,
  8129, 8131, 10874, 10875, 10876, 25379, 25380, 48128);
  
-- 7207
ALTER TABLE db_version CHANGE COLUMN required_7205_01_mangos_spell_chain required_7207_01_mangos_creature bit;
ALTER TABLE creature
  ADD COLUMN `phaseMask` smallint(5) unsigned NOT NULL default '1' AFTER `spawnMask`;
ALTER TABLE db_version CHANGE COLUMN required_7207_01_mangos_creature required_7207_02_mangos_gameobject bit;
ALTER TABLE gameobject
  ADD COLUMN `phaseMask` smallint(5) unsigned NOT NULL default '1' AFTER `spawnMask`;

-- 7209
ALTER TABLE db_version CHANGE COLUMN required_7207_02_mangos_gameobject required_7209_01_mangos_spell_bonus_data bit;
DELETE FROM `spell_bonus_data` WHERE `entry` IN (53595);
INSERT INTO `spell_bonus_data` VALUES
('53595', '0', '0', '0','Paladin - Hammer of the Righteous');

-- 7214
ALTER TABLE db_version CHANGE COLUMN required_7209_01_mangos_spell_bonus_data required_7214_01_mangos_command bit;
DELETE FROM `command` WHERE `name` IN ('gps','modify phase','npc phase','gobject phase');
INSERT INTO `command` VALUES
('gps',1,'Syntax: .gps [$name|$shift-link]\r\n\r\nDisplay the position information for a selected character or creature (also if player name $name provided then for named player, or if creature/gameobject shift-link provided then pointed creature/gameobject if it loaded). Position information includes X, Y, Z, and orientation, map Id and zone Id'),
('modify phase',3,'Syntax: .modify phase #phasemask\r\n\r\nSelected character phasemask changed to #phasemask with related world vision update. Change active until in game phase changed, or GM-mode enable/disable, or re-login. Character pts pasemask update to same value.'),
('npc phase',3,'Syntax: .npc phase #phasemask\r\n\r\nSelected unit or pet phasemask changed to #phasemask with related world vision update for players. In creature case state saved to DB and persistent. In pet case change active until in game phase changed for owner, owner re-login, or GM-mode enable/disable..'),
('gobject phase',3,'Syntax: .gobject phase #guid #phasemask\r\n\r\nGameobject with DB guid #guid phasemask changed to #phasemask with related world vision update for players. Gameobject state saved to DB and persistent.');
ALTER TABLE db_version CHANGE COLUMN required_7214_01_mangos_command required_7214_02_mangos_mangos_string bit;
DELETE FROM `mangos_string` WHERE entry = 101;
INSERT INTO `mangos_string` VALUES
(101,'Map: %u (%s) Zone: %u (%s) Area: %u (%s) Phase: %u\nX: %f Y: %f Z: %f Orientation: %f\ngrid[%u,%u]cell[%u,%u] InstanceID: %u\n ZoneX: %f ZoneY: %f\nGroundZ: %f FloorZ: %f Have height data (Map: %u VMap: %u)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 7230
ALTER TABLE db_version CHANGE COLUMN required_7214_02_mangos_mangos_string required_7230_01_mangos_spell_chain bit;
DELETE FROM spell_chain WHERE  spell_id in (18220,18937,18938,27265,59092);
INSERT INTO spell_chain VALUES
(18220,0,    18220,1,0),
(18937,18220,18220,2,0),
(18938,18937,18220,3,0),
(27265,18938,18220,4,0),
(59092,27265,18220,5,0);
ALTER TABLE db_version CHANGE COLUMN required_7230_01_mangos_spell_chain required_7230_02_mangos_spell_bonus_data bit;
DELETE FROM `spell_bonus_data` WHERE `entry` IN (18220,18937,18938,27265,59092);
INSERT INTO `spell_bonus_data` VALUES
('18220', '0.96', '0', '0', 'Warlock - Dark Pact Rank 1'),
('18937', '0.96', '0', '0', 'Warlock - Dark Pact Rank 2'),
('18938', '0.96', '0', '0', 'Warlock - Dark Pact Rank 3'),
('27265', '0.96', '0', '0', 'Warlock - Dark Pact Rank 4'),
('59092', '0.96', '0', '0', 'Warlock - Dark Pact Rank 5');

-- 7235
ALTER TABLE db_version CHANGE COLUMN required_7230_02_mangos_spell_bonus_data required_7235_01_mangos_command bit;
DELETE FROM `command` WHERE `name` = 'reset achievements';
INSERT INTO `command` VALUES
('reset achievements',3,'Syntax: .reset achievements [$playername]\r\n\r\nReset achievements data for selected or named (online or offline) character. Achievements for persistance progress data like completed quests/etc re-filled at reset. Achievements for events like kills/casts/etc will lost.');

-- 7242
ALTER TABLE db_version CHANGE COLUMN required_7235_01_mangos_command required_7242_01_mangos_spell_bonus_data bit;
DELETE FROM spell_bonus_data WHERE entry IN (34913, 43043, 43044);
INSERT INTO spell_bonus_data VALUES
(34913, 0, 0, 0, 'Mage - Molten Armor Triggered Rank 1'),
(43043, 0, 0, 0, 'Mage - Molten Armor Triggered Rank 2'),
(43044, 0, 0, 0, 'Mage - Molten Armor Triggered Rank 3');

-- 7249
ALTER TABLE db_version CHANGE COLUMN required_7242_01_mangos_spell_bonus_data required_7249_01_mangos_spell_proc_event bit;
DELETE FROM `spell_proc_event` WHERE `entry`='60200';

-- 7251
ALTER TABLE db_version CHANGE COLUMN required_7249_01_mangos_spell_proc_event required_7251_01_mangos_spell_chain bit;
DELETE FROM spell_chain WHERE  spell_id in (52375,47541,49892,49893,49894,49895);
INSERT INTO spell_chain VALUES
(47541,0,47541,1,0),
(49892,47541,47541,2,0),
(49893,49892,47541,3,0),
(49894,49893,47541,4,0),
(49895,49894,47541,5,0);

-- 7252
ALTER TABLE db_version CHANGE COLUMN required_7251_01_mangos_spell_chain required_7252_01_mangos_command bit;
DELETE FROM `command` WHERE `name` IN ('debug arena','debug bg');
INSERT INTO `command` VALUES
('debug arena',3,'Syntax: .debug arena\r\n\r\nToggle debug mode for arenas. In debug mode GM can start arena with single player.'),
('debug bg',3,'Syntax: .debug bg\r\n\r\nToggle debug mode for battlegrounds. In debug mode GM can start battleground with single player.');
ALTER TABLE db_version CHANGE COLUMN required_7252_01_mangos_command required_7252_02_mangos_mangos_string bit;
DELETE FROM `mangos_string` WHERE entry IN (737,738,739,740,741,742,743,744,745,746);
INSERT INTO `mangos_string` VALUES
(737,'Arenas are set to 1v1 for debugging. So, don\'t join as group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(738,'Arenas are set to normal playercount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(739,'Battlegrounds are set to 1v0 for debugging.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(740,'Battlegrounds are set to normal playercount.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(741,'Flushing Arena points based on team ratings, this may take a few minutes. Please stand by...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(742,'Distributing arena points to players...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(743,'Finished setting arena points for online players.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(744,'Modifying played count, arena points etc. for loaded arena teams, sending updated stats to online players...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(745,'Modification done.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(746,'Done flushing Arena points.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
