-- 9312
ALTER TABLE db_version CHANGE COLUMN required_9310_01_mangos_spell_elixir required_9312_01_mangos_quest_template bit;
ALTER TABLE quest_template ADD COLUMN RewHonorMultiplier float NOT NULL default '0' AFTER RewHonorableKills;
ALTER TABLE quest_template CHANGE COLUMN RewHonorableKills RewHonorAddition int unsigned NOT NULL default '0';

-- 9329
ALTER TABLE db_version CHANGE COLUMN required_9312_01_mangos_quest_template required_9329_01_mangos_spell_chain bit;
/* Pin */
DELETE FROM spell_chain WHERE first_spell = 50519;
INSERT INTO spell_chain VALUES
(50519, 0, 50519, 1, 0),
(53564, 50519, 50519, 2, 0),
(53565, 53564, 50519, 3, 0),
(53566, 53565, 50519, 4, 0),
(53567, 53566, 50519, 5, 0),
(53568, 53567, 50519, 6, 0);
/* Sonic Blast */
DELETE FROM spell_chain WHERE first_spell = 50245;
INSERT INTO spell_chain VALUES
(50245, 0, 50245, 1, 0),
(53544, 50245, 50245, 2, 0),
(53545, 53544, 50245, 3, 0),
(53546, 53545, 50245, 4, 0),
(53547, 53546, 50245, 5, 0),
(53548, 53547, 50245, 6, 0);

-- 9331
ALTER TABLE db_version CHANGE COLUMN required_9329_01_mangos_spell_chain required_9331_01_mangos_quest_template bit;
ALTER TABLE quest_template ADD COLUMN RewRepValueId1 tinyint(3) NOT NULL default '0' AFTER RewRepFaction5;
ALTER TABLE quest_template ADD COLUMN RewRepValueId2 tinyint(3) NOT NULL default '0' AFTER RewRepValueId1;
ALTER TABLE quest_template ADD COLUMN RewRepValueId3 tinyint(3) NOT NULL default '0' AFTER RewRepValueId2;
ALTER TABLE quest_template ADD COLUMN RewRepValueId4 tinyint(3) NOT NULL default '0' AFTER RewRepValueId3;
ALTER TABLE quest_template ADD COLUMN RewRepValueId5 tinyint(3) NOT NULL default '0' AFTER RewRepValueId4;

-- 9366
ALTER TABLE db_version CHANGE COLUMN required_9331_01_mangos_quest_template required_9366_01_mangos_spell_bonus_data bit;
ALTER TABLE spell_bonus_data
  CHANGE COLUMN entry entry mediumint(8) unsigned NOT NULL;
DELETE FROM spell_bonus_data WHERE entry = 71824;
INSERT INTO spell_bonus_data VALUES
(71824,0,0,0,'Item - Shaman T9 Elemental 4P Bonus');
ALTER TABLE db_version CHANGE COLUMN required_9366_01_mangos_spell_bonus_data required_9366_02_mangos_spell_proc_event bit;
DELETE FROM `spell_proc_event` WHERE `entry` = 67228;
INSERT INTO `spell_proc_event` VALUES
(67228, 0x00000004, 11, 0x00000000, 0x00001000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0); 

-- 9379
ALTER TABLE db_version CHANGE COLUMN required_9366_02_mangos_spell_proc_event required_9379_01_mangos_spell_proc_event bit;
DELETE FROM `spell_proc_event` WHERE `entry` = 65661;
INSERT INTO `spell_proc_event` VALUES
(65661, 0x00000000, 15, 0x00400011 ,0x20020004 ,0x00000000, 0x00000010, 0x00000000, 0.000000, 100.000000, 0);

-- 9380
ALTER TABLE db_version CHANGE COLUMN required_9379_01_mangos_spell_proc_event required_9380_01_mangos_command bit;
DELETE FROM command WHERE name IN ('modify fly', 'npc say', 'npc yell');
INSERT INTO command VALUES
('modify fly', 1, 'Syntax: .modify fly #rate\r\n.fly #rate\r\n\r\nModify the flying speed of the selected player to \"normal base fly speed\"*rate. If no player is selected, modify your fly.\r\n\r\n #rate may range from 0.1 to 10.'),
('npc say', 1, 'Syntax: .npc say #text\r\nMake the selected npc says #text.'),
('npc yell', 1, 'Syntax: .npc yell #text\r\nMake the selected npc yells #text.');

-- 9382
ALTER TABLE db_version CHANGE COLUMN required_9380_01_mangos_command required_9382_01_mangos_command bit;

-- 9385
ALTER TABLE db_version CHANGE COLUMN required_9382_01_mangos_command required_9385_01_mangos_command bit;
DELETE FROM command WHERE name IN ('reload all_scripts','reload all_achievement','reload all_item','reload all_eventai','reload all_npc');
INSERT INTO command VALUES
('reload all_achievement',3,'Syntax: .reload all_achievement\r\n\r\nReload all `achievement_*` tables if reload support added for this table and this table can be _safe_ reloaded.'),
('reload all_eventai',3,'Syntax: .reload all_eventai\r\n\r\nReload `creature_ai_*` tables if reload support added for these tables and these tables can be _safe_ reloaded.'),
('reload all_item',3,'Syntax: .reload all_item\r\n\r\nReload `item_required_target`, `page_texts` and `item_enchantment_template` tables.'),
('reload all_npc',3,'Syntax: .reload all_npc\r\n\r\nReload `points_of_interest` and `npc_*` tables if reload support added for these tables and these tables can be _safe_ reloaded.'),
('reload all_scripts',3,'Syntax: .reload all_scripts\r\n\r\nReload `*_scripts` tables.');

-- 9450
ALTER TABLE db_version CHANGE COLUMN required_9385_01_mangos_command required_9450_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` = 70664;
INSERT INTO `spell_proc_event` VALUES
(70664, 0x00000000,  7, 0x00000010, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x000000, 2.000000,  0);

-- 9460
ALTER TABLE db_version CHANGE COLUMN required_9450_01_mangos_spell_proc_event required_9460_01_mangos_spell_bonus_data bit;

-- Penance effects (healing bonus 0.537, dmg bonus 0.229)
DELETE FROM spell_bonus_data WHERE entry IN (47666,47750,52983,52984,52985,52998,52999,53000);
INSERT INTO spell_bonus_data VALUES
(47666, 0.229, 0, 0,'Penance - dmg effect'),
(47750, 0.537, 0, 0,'Penance - heal effect');

ALTER TABLE db_version CHANGE COLUMN required_9460_01_mangos_spell_bonus_data required_9460_02_mangos_spell_chain bit;

-- Penance (damage)
DELETE FROM spell_chain WHERE first_spell = 47666;
INSERT INTO spell_chain VALUES
(47666, 0, 47666, 1, 0),
(52998, 47666, 47666, 2, 0),
(52999, 52998, 47666, 3, 0),
(53000, 52999, 47666, 4, 0);
-- Penance (healing)
DELETE FROM spell_chain WHERE first_spell = 47750;
INSERT INTO spell_chain VALUES
(47750, 0, 47750, 1, 0),
(52983, 47750, 47750, 2, 0),
(52984, 52983, 47750, 3, 0),
(52985, 52984, 47750, 4, 0);

-- 9464
ALTER TABLE db_version CHANGE COLUMN required_9460_02_mangos_spell_chain required_9464_01_mangos_spell_proc_event bit;

/*Item - Mage T10 4P Bonus*/
DELETE FROM `spell_proc_event` WHERE `entry` = 70748;
INSERT INTO `spell_proc_event` VALUES
(70748, 0x00000000,  3, 0x00000000, 0x00200000, 0x00000000, 0x00000000, 0x00000000, 0x000000, 0.000000,  0);

-- 9466
ALTER TABLE db_version CHANGE COLUMN required_9464_01_mangos_spell_proc_event required_9466_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry=60;

-- 9477
ALTER TABLE db_version CHANGE COLUMN required_9466_01_mangos_mangos_string required_9477_01_mangos_spell_proc_event bit;

/*Glyph of Totem of Wrath*/
DELETE FROM `spell_proc_event` WHERE `entry` = 63280;
INSERT INTO `spell_proc_event` VALUES
(63280, 0x00000000, 11, 0x20000000, 0x00000000, 0x00000000, 0x00004000, 0x00000000, 0x000000, 0.000000,  0);

-- 9482
ALTER TABLE db_version CHANGE COLUMN required_9477_01_mangos_spell_proc_event required_9482_01_mangos_spell_proc_event bit;

-- (63611) Improved Blood Presence ()
DELETE FROM `spell_proc_event` WHERE `entry` IN (63611);
INSERT INTO `spell_proc_event` VALUES
(63611, 0x00000000,  0, 0x00000000, 0x00000000, 0x00000000, 0x00050014, 0x00000000, 0.000000, 0.000000,  0);

-- 9509
ALTER TABLE db_version CHANGE COLUMN required_9482_01_mangos_spell_proc_event required_9509_01_mangos_item_template bit;

alter table item_template
  add column NonConsumable tinyint(1) UNSIGNED DEFAULT '0' NOT NULL after maxMoneyLoot;
update item_template
  set NonConsumable = 1 WHERE ItemLimitCategory = 4;

-- 9512
ALTER TABLE db_version CHANGE COLUMN required_9509_01_mangos_item_template required_9512_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (16952, 16954);
INSERT INTO `spell_proc_event` VALUES 
(16952, 0x00000000,  7, 0x00039000, 0x00000400, 0x00000000, 0x00040000, 0x00000002, 0.000000, 0.000000,  0),
(16954, 0x00000000,  7, 0x00039000, 0x00000400, 0x00000000, 0x00040000, 0x00000002, 0.000000, 0.000000,  0);

-- 9526
ALTER TABLE db_version CHANGE COLUMN required_9512_01_mangos_spell_proc_event required_9526_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (16952, 16954);
INSERT INTO `spell_proc_event` VALUES 
(16952, 0x00000000,  7, 0x00039000, 0x00000400, 0x00040000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0),
(16954, 0x00000000,  7, 0x00039000, 0x00000400, 0x00040000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0);

-- 9528
ALTER TABLE db_version CHANGE COLUMN required_9526_01_mangos_spell_proc_event required_9528_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry IN (56131);
INSERT INTO spell_bonus_data VALUES
(56131, 0,      0,       0,     'Item - Glyph of Dispel Magic');

-- 9539
ALTER TABLE db_version CHANGE COLUMN required_9528_01_mangos_spell_bonus_data required_9539_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry IN (46567,54757);
INSERT INTO spell_bonus_data VALUES
(46567, 0,      0,       0,     'Item - Goblin Rocket Launcher'),
(54757, 0,      0,       0,     'Generic - Pyro Rocket');
