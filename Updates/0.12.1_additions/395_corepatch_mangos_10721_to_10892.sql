-- 10742
ALTER TABLE db_version CHANGE COLUMN required_10704_01_mangos_gossip_menu_option required_10742_01_mangos_spell_bonus_data bit;

ALTER TABLE spell_bonus_data
  ADD COLUMN ap_dot_bonus float NOT NULL default '0' AFTER ap_bonus;

DELETE FROM spell_bonus_data WHERE entry IN (50536, 26573);
INSERT INTO spell_bonus_data VALUES
(50536, 0,      0,       0,   0.013, 'Death Knight - Unholy Blight Triggered'),
(26573, 0,      0.04,    0,   0.04,  'Paladin - Consecration');

-- 10743
ALTER TABLE db_version CHANGE COLUMN required_10742_01_mangos_spell_bonus_data required_10743_01_mangos_spell_chain bit;

DELETE FROM `spell_chain` WHERE `first_spell` IN (2818,13797,13812,42243);
INSERT INTO `spell_chain` VALUES
/* Explosive Trap Effect */
(13812,0,13812,1,0),
(14314,13812,13812,2,0),
(14315,14314,13812,3,0),
(27026,14315,13812,4,0),
(49064,27026,13812,5,0),
(49065,49064,13812,6,0),
/* Immolation Trap Triggered */
(13797,0,13797,1,0),
(14298,13797,13797,2,0),
(14299,14298,13797,3,0),
(14300,14299,13797,4,0),
(14301,14300,13797,5,0),
(27024,14301,13797,6,0),
(49053,27024,13797,7,0),
(49054,49053,13797,8,0),
/* Volley Triggered */
(42243,0,42243,1,0),
(42244,42243,42243,2,0),
(42245,42244,42243,3,0),
(42234,42245,42243,4,0),
(58432,42234,42243,5,0),
(58433,58432,42243,6,0),
/* Deadly Poison Triggered */
(2818,0,2818,1,0),
(2819,2818,2818,2,0),
(11353,2819,2818,3,0),
(11354,11353,2818,4,0),
(25349,11354,2818,5,0),
(26968,25349,2818,6,0),
(27187,26968,2818,7,0),
(57969,27187,2818,8,0),
(57970,57969,2818,9,0);

ALTER TABLE db_version CHANGE COLUMN required_10743_01_mangos_spell_chain required_10743_02_mangos_spell_bonus_data bit;

DELETE FROM `spell_bonus_data` WHERE `entry` IN (2818,42243,13797,13812,1495,19306,3044,42245,3674,9007,1822,33745,48628,703,1978,55095,55078);
INSERT INTO `spell_bonus_data` VALUES
(2818,0,0,0,0.03,'Rogue - Deadly Poison'),
(3674,0,0,0,0.02,'Hunter - Black Arrow'),
(9007,0,0,0,0.03,'Druid - Pounce Bleed'),
(1822,0,0,0,0.06,'Druid - Rake'),
(33745,0,0,0.01,0.01,'Druid - Lacerate'),
(48628,0,0,0,0.15,'Druid - Lock Jaw'),
(703,0,0,0,0.07,'Rogue - Garrote'),
(1495,0,0,0.2,0,'Hunter - Mongoose Bite'),
(42243,0,0,0.0837,0,'Hunter - Volley'),
(1978,0,0,0,0.04,'Hunter - Serpent Sting'),
(3044,0,0,0.15,0,'Hunter - Arcane Shot'),
(13797,0,0,0,0.02,'Hunter - Immolation Trap'),
(13812,0,0,0.1,0.1,'Hunter - Explosive Trap'),
(19306,0,0,0.2,0,'Hunter - Counterattack'),
(55095,0,0,0,0.06325,'Death Knight - Frost Fever'),
(55078,0,0,0,0.06325,'Death Knight - Blood Plague');

-- 10746
ALTER TABLE db_version CHANGE COLUMN required_10743_02_mangos_spell_bonus_data required_10746_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (468);

INSERT INTO mangos_string VALUES
(468,'id: %d eff: %d type: %d duration: %d maxduration: %d name: %s%s%s caster: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 10749
ALTER TABLE db_version CHANGE COLUMN required_10746_01_mangos_mangos_string required_10749_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (274);

INSERT INTO mangos_string VALUES
(274,'Game Object (GUID: %u) has references in not found owner %s GO list, can\'t be deleted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 10762
ALTER TABLE db_version CHANGE COLUMN required_10749_01_mangos_mangos_string required_10762_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (52437);
INSERT INTO spell_proc_event VALUES
(52437, 0x00,  4, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000010, 0x00000000, 0.000000, 0.000000,  0);

-- 10764
ALTER TABLE db_version CHANGE COLUMN required_10762_01_mangos_spell_proc_event required_10764_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (74396);
INSERT INTO spell_proc_event VALUES
(74396, 0x00,  3, 0x28E212F7, 0x28E212F7, 0x28E212F7, 0x00119048, 0x00119048, 0x00119048, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00000000, 0.000000, 0.000000,  0);

-- 10786
ALTER TABLE db_version CHANGE COLUMN required_10764_01_mangos_spell_proc_event required_10786_01_mangos_spell_proc_item_enchant bit;

DELETE FROM spell_proc_item_enchant  WHERE entry IN (13897, 20004, 20005, 44525, 44578);
INSERT INTO spell_proc_item_enchant VALUES
(13897, 6.0), -- Enchant Weapon - Fiery Weapon
(20004, 6.0), -- Enchant Weapon - Lifestealing
(20005, 1.6), -- Enchant Weapon - Icy Chill
(44525, 3.4), -- Enchant Weapon - Icebreaker
(44578, 3.4); -- Enchant Weapon - Lifeward

ALTER TABLE db_version CHANGE COLUMN required_10786_01_mangos_spell_proc_item_enchant required_10786_02_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (59630,71404);
INSERT INTO spell_proc_event VALUES
(59630, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 35),
(71404, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 50);

-- 10788
ALTER TABLE db_version CHANGE COLUMN required_10786_02_mangos_spell_proc_event required_10788_01_mangos_creature_addon bit;

ALTER TABLE creature_addon
  ADD COLUMN b2_0_sheath tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER bytes1,
  ADD COLUMN b2_1_pvp_state tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER b2_0_sheath;

UPDATE creature_addon SET b2_0_sheath = bytes2 & 0x000000FF;
UPDATE creature_addon SET b2_1_pvp_state = (bytes2 & 0x0000FF00) >> 8;

ALTER TABLE creature_addon
  DROP COLUMN bytes2;

ALTER TABLE db_version CHANGE COLUMN required_10788_01_mangos_creature_addon required_10788_02_mangos_creature_template_addon bit;

ALTER TABLE creature_template_addon
  ADD COLUMN b2_0_sheath tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER bytes1,
  ADD COLUMN b2_1_pvp_state tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER b2_0_sheath;

UPDATE creature_template_addon SET b2_0_sheath = bytes2 & 0x000000FF;
UPDATE creature_template_addon SET b2_1_pvp_state = (bytes2 & 0x0000FF00) >> 8;

ALTER TABLE creature_template_addon
  DROP COLUMN bytes2;

-- 10835
ALTER TABLE db_version CHANGE COLUMN required_10788_02_mangos_creature_template_addon required_10835_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (63251, 71402, 71519, 71540, 71562, 71585, 71602, 71606, 71611, 71637, 71642, 71645);
INSERT INTO spell_proc_event VALUES
-- Jouster's Fury (45131, 45219)
(63251, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
-- Althor's Abacus (50359, 50366)
(71611, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
(71642, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
-- Phylactery of the Nameless Lich (50360, 50365)
(71606, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 100),
(71637, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 100),
-- Dislodged Foreign Object (50353, 50348)
(71602, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
(71645, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
-- Deathbringer's Will (50362, 50363), need implementation of dummy spell
(71519, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 105),
(71562, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 105),
-- Whispering Fanged Skull (50342, 50343)
(71402, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
(71540, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
-- Purified Lunar Dust (50358)
(71585, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45);

-- 10863
ALTER TABLE db_version CHANGE COLUMN required_10835_01_mangos_spell_proc_event required_10863_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (38332,40971,60517,75490,75495);
INSERT INTO spell_proc_event VALUES
(38332, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0),
(40971, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0),
(60517, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0),
(75490, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0),
(75495, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

-- 10864
ALTER TABLE db_version CHANGE COLUMN required_10863_01_mangos_spell_proc_event required_10864_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (69755,69739);
INSERT INTO spell_proc_event VALUES
(69755, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
(69739, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45);

-- 10867
ALTER TABLE db_version CHANGE COLUMN required_10864_01_mangos_spell_proc_event required_10867_01_mangos_npc_trainer_template bit;

DROP TABLE IF EXISTS `npc_trainer_template`;
CREATE TABLE `npc_trainer_template` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `spell` mediumint(8) unsigned NOT NULL default '0',
  `spellcost` int(10) unsigned NOT NULL default '0',
  `reqskill` smallint(5) unsigned NOT NULL default '0',
  `reqskillvalue` smallint(5) unsigned NOT NULL default '0',
  `reqlevel` tinyint(3) unsigned NOT NULL default '0',
  UNIQUE KEY `entry_spell` (`entry`,`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE db_version CHANGE COLUMN required_10867_01_mangos_npc_trainer_template required_10867_02_mangos_creature_template bit;

ALTER TABLE creature_template
  ADD COLUMN trainer_id mediumint(8) unsigned NOT NULL default '0' AFTER equipment_id;

-- 10883
ALTER TABLE db_version CHANGE COLUMN required_10867_02_mangos_creature_template required_10883_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (71880,71892);
INSERT INTO spell_proc_event VALUES
(71880, 0x00,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1.000000, 0.000000,  0),
(71892, 0x00,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 1.000000, 0.000000,  0);
