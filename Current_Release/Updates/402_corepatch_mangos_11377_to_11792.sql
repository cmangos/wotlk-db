-- 11385
ALTER TABLE db_version CHANGE COLUMN required_11348_01_mangos_spell_bonus_data required_11385_01_mangos_creature_template bit;

ALTER TABLE creature_template
  ADD COLUMN `vehicle_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' AFTER `RegenHealth`;

-- 11433
ALTER TABLE db_version CHANGE COLUMN required_11385_01_mangos_creature_template required_11433_01_mangos_item_template bit;

UPDATE item_template
  SET ScriptName = '' WHERE ScriptName = 'internalItemHandler';

-- 11452
ALTER TABLE db_version CHANGE COLUMN required_11433_01_mangos_item_template required_11452_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry IN (15662, 11538, 21179);
INSERT INTO spell_bonus_data VALUES
(15662, 0,  0,       0,     0,     'Item - Six Demon Bag - Fireball'),
(11538, 0,  0,       0,     0,     'Item - Six Demon Bag - Frostbolt'),
(21179, 0,  0,       0,     0,     'Item - Six Demon Bag - Chain Lightning');

ALTER TABLE db_version CHANGE COLUMN required_11452_01_mangos_spell_bonus_data required_11452_02_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 63156;
INSERT INTO spell_proc_event VALUES
(63156, 0x00,  5, 0x00000001, 0x00000001, 0x00000001, 0x000000C0, 0x000000C0, 0x000000C0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

-- 11453
ALTER TABLE db_version CHANGE COLUMN required_11452_02_mangos_spell_proc_event required_11453_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 64860;
INSERT INTO spell_proc_event VALUES
(64860, 0x00,  9, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000001, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- 11489
ALTER TABLE db_version CHANGE COLUMN required_11453_01_mangos_spell_proc_event required_11489_01_mangos_creature_template bit;

UPDATE creature_template SET flags_extra=flags_extra|0x00000400 WHERE npcflag=npcflag|0x10000000;
UPDATE creature_template SET npcflag=npcflag &~ 0x10000000;

-- 11501
ALTER TABLE db_version CHANGE COLUMN required_11489_01_mangos_creature_template required_11501_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 64571;
INSERT INTO spell_proc_event VALUES
(64571, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 10);

ALTER TABLE db_version CHANGE COLUMN required_11501_01_mangos_spell_proc_event required_11501_02_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry IN (64569);
INSERT INTO spell_bonus_data VALUES
(64569, 0,  0,       0,     0,     'Item - Blood Reserve');

-- 11503
ALTER TABLE db_version CHANGE COLUMN required_11501_02_mangos_spell_bonus_data required_11503_01_mangos_spell_proc_event bit;

/*Item - Warrior T10 Melee 2P Bonus*/
DELETE FROM `spell_proc_event` WHERE entry = 70854;
INSERT INTO `spell_proc_event` VALUES
(70854, 0x00,  4, 0x00000000, 0x00000000, 0x00000000, 0x00000010, 0x00000010, 0x00000010, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- 11513
ALTER TABLE db_version CHANGE COLUMN required_11503_01_mangos_spell_proc_event required_11513_09_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (8);
INSERT INTO mangos_string VALUES
(8,'Command %s have subcommands:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 11516
ALTER TABLE db_version CHANGE COLUMN required_11513_09_mangos_mangos_string required_11516_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE entry = 70723;
INSERT INTO `spell_proc_event` VALUES
(70723, 0x00,  7, 0x00000005, 0x00000005, 0x00000005, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0);

-- 11517
ALTER TABLE db_version CHANGE COLUMN required_11516_01_mangos_spell_proc_event required_11517_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE entry = 57870;
INSERT INTO `spell_proc_event` VALUE
(57870, 0x00,  9, 0x00800000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00040000, 0x00040000, 0.000000, 0.000000,  0);

-- 11521
ALTER TABLE db_version CHANGE COLUMN required_11517_01_mangos_spell_proc_event required_11521_01_mangos_command bit;

DELETE FROM command WHERE name = 'debug moditemvalue';

INSERT INTO command (name, security, help) VALUES
('debug moditemvalue',3,'Syntax: .debug moditemvalue #guid #field [int|float| &= | |= | &=~ ] #value\r\n\r\nModify the field #field of the item #itemguid in your inventroy by value #value. \r\n\r\nUse type arg for set mode of modification: int (normal add/subtract #value as decimal number), float (add/subtract #value as float number), &= (bit and, set to 0 all bits in value if it not set to 1 in #value as hex number), |= (bit or, set to 1 all bits in value if it set to 1 in #value as hex number), &=~ (bit and not, set to 0 all bits in value if it set to 1 in #value as hex number). By default expect integer add/subtract.');

-- 11523
ALTER TABLE db_version CHANGE COLUMN required_11521_01_mangos_command required_11523_01_mangos_command bit;

DELETE FROM command WHERE name = 'npc aiinfo';

INSERT INTO command (name, security, help) VALUES
('npc aiinfo',2,'Syntax: .npc npc aiinfo\r\n\r\nShow npc AI and script information.');

ALTER TABLE db_version CHANGE COLUMN required_11523_01_mangos_command required_11523_02_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1504,1505,1506,1507,1508);

INSERT INTO mangos_string VALUES
(1504,'AI-Information for Npc Entry %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1505,'AIName: %s (%s) ScriptName: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1506,'Current phase = %u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1507,'Combat-Movement is %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1508,'Melee attacking is %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 11529
ALTER TABLE db_version CHANGE COLUMN required_11523_02_mangos_mangos_string required_11529_01_mangos_command bit;

DELETE FROM command WHERE name = 'gobject turn';

INSERT INTO command (name, security, help) VALUES
('gobject turn',2,'Syntax: .gobject turn #goguid [#z_angle]\r\n\r\nChanges gameobject #goguid orientation (rotates gameobject around z axis). Optional parameters are (#y_angle,#x_angle) values that represents rotation angles around y and x axes.');

-- 11530
ALTER TABLE db_version CHANGE COLUMN required_11529_01_mangos_command required_11530_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE entry = 47201;
INSERT INTO `spell_proc_event` VALUE
(47201, 0x00,  5, 0x00004009, 0x00004009, 0x00004009, 0x00040000, 0x00040000, 0x00040000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0.000000, 0.000000,  0);

-- 11549
ALTER TABLE db_version CHANGE COLUMN required_11530_01_mangos_spell_proc_event required_11549_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE entry = 58872;
INSERT INTO `spell_proc_event` VALUE
(58872, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0.000000, 0.000000,  0);

-- 11560
ALTER TABLE db_version CHANGE COLUMN required_11549_01_mangos_spell_proc_event required_11560_01_mangos_command bit;

DELETE FROM command WHERE name = 'mailbox';

INSERT INTO command (name, security, help) VALUES
('mailbox',3,'Syntax: .mailbox\r\n\r\nShow your mailbox content.');

-- 11565
ALTER TABLE db_version CHANGE COLUMN required_11560_01_mangos_command required_11565_01_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1170,539);

INSERT INTO mangos_string VALUES
(539,'Player selected: %s.\nFaction: %u.\nnpcFlags: %u.\nEntry: %u.\nDisplayID: %u (Native: %u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1170,'Player selected: %s.\nFaction: %u.\nnpcFlags: %u.\nBase Entry: %u, Spawned Entry %u (Difficulty %u).\nDisplayID: %u (Native: %u).',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 11567
ALTER TABLE db_version CHANGE COLUMN required_11565_01_mangos_mangos_string required_11567_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE entry IN (66808, 68160);
INSERT INTO `spell_proc_event` VALUE
(66808, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x00000000, 0.000000, 0.000000,  0),
(68160, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x00000000, 0.000000, 0.000000,  0);

-- 11595
ALTER TABLE db_version CHANGE COLUMN required_11567_01_mangos_spell_proc_event required_11595_09_mangos_spell_elixir bit;

DELETE FROM spell_elixir WHERE entry='63729';
INSERT INTO spell_elixir VALUES
(63729,0x1);

-- 11597
ALTER TABLE db_version CHANGE COLUMN required_11595_09_mangos_spell_elixir required_11597_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE entry IN (17767);
INSERT INTO `spell_proc_event` VALUE
(17767, 0x00,  5, 0x02000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00080000, 0x00040000, 0.000000, 0.000000,  0);

-- 11598
ALTER TABLE db_version CHANGE COLUMN required_11597_01_mangos_spell_proc_event required_11598_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE entry IN (64914);
INSERT INTO `spell_proc_event` VALUE
(64914, 0x00,  8, 0x00000000, 0x00000000, 0x00000000, 0x00080000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- 11599
ALTER TABLE db_version CHANGE COLUMN required_11598_01_mangos_spell_proc_event required_11599_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (67151);
INSERT INTO `spell_proc_event` VALUES
(67151, 0x7F, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0000000, 0.000000, 0.000000,  0);


-- 11602
ALTER TABLE db_version CHANGE COLUMN required_11599_01_mangos_spell_proc_event required_11602_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (54925);
INSERT INTO `spell_proc_event` VALUES
(54925, 0x00, 10, 0x00000000, 0x00000000, 0x00000000, 0x00000200, 0x00000200, 0x00000200, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0000000, 0.000000, 0.000000,  0);

-- 11606
ALTER TABLE db_version CHANGE COLUMN required_11602_01_mangos_spell_proc_event required_11606_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (28761);
INSERT INTO `spell_proc_event` VALUES
(28761, 0x7F, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

-- 11613
ALTER TABLE db_version CHANGE COLUMN required_11606_01_mangos_spell_proc_event required_11613_01_mangos_spell_bonus_data bit;

DELETE FROM spell_bonus_data WHERE entry IN (50288,50294);
INSERT INTO spell_bonus_data VALUES
(50288, 0.3,    0,       0,     0,     'Druid - Starfall'),
(50294, 0.13,   0,       0,     0,     'Druid - Starfall AOE');

-- 11646
ALTER TABLE db_version CHANGE COLUMN required_11613_01_mangos_spell_bonus_data required_11646_01_mangos_item_expire_convert bit;

DROP TABLE IF EXISTS `item_expire_convert`;
CREATE TABLE `item_expire_convert` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `item` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item Convert System';

INSERT INTO `item_expire_convert` VALUES (44623, 44625), (44625, 44627);

-- 11661
ALTER TABLE db_version CHANGE COLUMN required_11646_01_mangos_item_expire_convert required_11661_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN(75455,75457,75465,75474,75475,75481,71634,71640);
INSERT INTO spell_proc_event VALUES
(75455, 0x7F, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
(75457, 0x7F, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
(75465, 0x7F, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
(75474, 0x7F, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
(75475, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
(75481, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 45),
(71634, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 30),
(71640, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 30);

-- 11664
ALTER TABLE db_version CHANGE COLUMN required_11661_01_mangos_spell_proc_event required_11664_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (12298);
INSERT INTO `spell_proc_event` VALUES
(12298, 0x7F, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000070, 0.000000, 0.000000,  0);

-- 11673
ALTER TABLE db_version CHANGE COLUMN required_11664_01_mangos_spell_proc_event required_11673_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (63086);
INSERT INTO `spell_proc_event` VALUES
(63086, 0x00, 9, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00010000, 0x00010000, 0x00000000, 0x0000000, 0.000000, 0.000000,  0);

-- 11678
ALTER TABLE db_version CHANGE COLUMN required_11673_01_mangos_spell_proc_event required_11678_01_mangos_spell_proc_event bit;

DELETE FROM `spell_proc_event` WHERE `entry` IN (64890);
INSERT INTO `spell_proc_event` VALUES
(64890, 0x00, 10, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00010000, 0x00010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x0000002, 0.000000, 0.000000,  0);

-- 11679
ALTER TABLE db_version CHANGE COLUMN required_11678_01_mangos_spell_proc_event required_11679_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 31785;
INSERT INTO spell_proc_event VALUES (31785, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00088800, 0x00040003, 0.000000, 0.000000,  0);

-- 11680
ALTER TABLE db_version CHANGE COLUMN required_11679_01_mangos_spell_proc_event required_11680_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 64824;
INSERT INTO spell_proc_event VALUES
(64824, 0x00, 7, 0x00200000, 0x00200000, 0x00200000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- 11681
ALTER TABLE db_version CHANGE COLUMN required_11680_01_mangos_spell_proc_event required_11681_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 67209;
INSERT INTO spell_proc_event VALUES
(67209, 0x00, 8, 0x00100000, 0x00100000, 0x00100000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- 11682
ALTER TABLE db_version CHANGE COLUMN required_11681_01_mangos_spell_proc_event required_11682_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 70770;
INSERT INTO spell_proc_event VALUES
(70770, 0x00, 6, 0x00000800, 0x00000800, 0x00000800, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

-- 11685
ALTER TABLE db_version CHANGE COLUMN required_11682_01_mangos_spell_proc_event required_11685_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 67115;
INSERT INTO spell_proc_event VALUES
(67115, 0x00, 15, 0x01400000, 0x01400000, 0x01400000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- 11686
ALTER TABLE db_version CHANGE COLUMN required_11685_01_mangos_spell_proc_event required_11686_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 31785;
INSERT INTO spell_proc_event VALUES
(31785, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00040003, 0.000000, 0.000000,  0);

-- 11687
ALTER TABLE db_version CHANGE COLUMN required_11686_01_mangos_spell_proc_event required_11687_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 64867;
INSERT INTO spell_proc_event VALUES
(64867, 0x00,  3, 0x20000021, 0x20000021, 0x20000021, 0x00001000, 0x00001000, 0x00001000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);

-- 11688
ALTER TABLE db_version CHANGE COLUMN required_11687_01_mangos_spell_proc_event required_11688_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 64908;
INSERT INTO spell_proc_event VALUES
(64908, 0x00,  6, 0x00002000, 0x00002000, 0x00002000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

-- 11689
ALTER TABLE db_version CHANGE COLUMN required_11688_01_mangos_spell_proc_event required_11689_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 64912;
INSERT INTO spell_proc_event VALUES
(64912, 0x00,  6, 0x00000001, 0x00000001, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

-- 11690
ALTER TABLE db_version CHANGE COLUMN required_11689_01_mangos_spell_proc_event required_11690_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (70807, 70808);
INSERT INTO spell_proc_event VALUES
(70807, 0x00, 11, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000010, 0x00000010, 0x00000010, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(70808, 0x00, 11, 0x00000100, 0x00000100, 0x00000100, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000,  0);

-- 11701
ALTER TABLE db_version CHANGE COLUMN required_11690_01_mangos_spell_proc_event required_11701_01_mangos_command bit;

DELETE FROM command WHERE name = 'auction item';

INSERT INTO command (name, security, help) VALUES
('auction item',3,'Syntax: .auction item (alliance|horde|goblin) #itemid[:#itemcount] [[[#minbid] #buyout] [short|long|verylong]\r\n\r\nAdd new item (in many stackes if amount grater stack size) to specific auction house at short|long|verylogn perios similar same settings in auction in game dialog. Created auction not have owner.');

-- 11717
ALTER TABLE db_version CHANGE COLUMN required_11701_01_mangos_command required_11717_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 47245;
INSERT INTO spell_proc_event VALUES (47245, 0x20, 5, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

-- 11731
ALTER TABLE db_version CHANGE COLUMN required_11717_01_mangos_spell_proc_event required_11731_01_mangos_command bit;

DELETE FROM command WHERE name IN ('ahbot items amount','ahbot items amount grey',
  'ahbot items amount white','ahbot items amount green','ahbot items amount blue',
  'ahbot items amount purple','ahbot items amount orange','ahbot items amount yellow',
  'ahbot items ratio','ahbot items ratio alliance','ahbot items ratio horde','ahbot items ratio neutral',
  'ahbot rebuild','ahbot reload','ahbot status'
);

INSERT INTO command (name, security, help) VALUES
('ahbot items amount',3,'Syntax: .ahbot items amount $GreyItems $WhiteItems $GreenItems $BlueItems $PurpleItems $OrangeItems $YellowItems\r\n\r\nSet amount of each items color be selled on auction.'),
('ahbot items amount grey',3,'Syntax: .ahbot items amount grey $GreyItems\r\n\r\nSet amount of Grey color items be selled on auction.'),
('ahbot items amount white',3,'Syntax: .ahbot items amount white $WhiteItems\r\n\r\nSet amount of White color items be selled on auction.'),
('ahbot items amount green',3,'Syntax: .ahbot items amount green $GreenItems\r\n\r\nSet amount of Green color items be selled on auction.'),
('ahbot items amount blue',3,'Syntax: .ahbot items amount blue $BlueItems\r\n\r\nSet amount of Blue color items be selled on auction.'),
('ahbot items amount purple',3,'Syntax: .ahbot items amount purple $PurpleItems\r\n\r\nSet amount of Purple color items be selled on auction.'),
('ahbot items amount orange',3,'Syntax: .ahbot items amount orange $OrangeItems\r\n\r\nSet amount of Orange color items be selled on auction.'),
('ahbot items amount yellow',3,'Syntax: .ahbot items amount yellow $YellowItems\r\n\r\nSet amount of Yellow color items be selled on auction.'),
('ahbot items ratio',3,'Syntax: .ahbot items ratio $allianceratio $horderatio $neutralratio\r\n\r\nSet ratio of items in 3 auctions house.'),
('ahbot items ratio alliance',3,'Syntax: .ahbot items ratio alliance $allianceratio\r\n\r\nSet ratio of items in alliance auction house.'),
('ahbot items ratio horde',3,'Syntax: .ahbot items ratio horde $horderatio\r\n\r\nSet ratio of items in horde auction house.'),
('ahbot items ratio neutral',3,'Syntax: .ahbot items ratio neutral $neutralratio\r\n\r\nSet ratio of items in $neutral auction house.'),
('ahbot rebuild',3,'Syntax: .ahbot rebuild [all]\r\n\r\nExpire all actual auction of ahbot except bided by player. Binded auctions included to expire if "all" option used. Ahbot re-fill auctions base at current settings then.'),
('ahbot reload',3,'Syntax: .ahbot reload\r\n\r\nReload AHBot settings from configuration file.'),
('ahbot status',3,'Syntax: .ahbot status [all]\r\n\r\nShow current ahbot state data in short form, and with "all" with details.');

ALTER TABLE db_version CHANGE COLUMN required_11731_01_mangos_command required_11731_02_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191);

INSERT INTO mangos_string VALUES
(1171,'All config are reloaded from ahbot configuration file.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1172,'Error while trying to reload ahbot config.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1173,'==========================================================',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1174,'|--------------------------------------------------------|',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1175,'|            | Alliance |  Horde   | Neutral  |  Total   |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1176,'          Alliance/Horde/Neutral/Total',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1177,'| %-10s | %8u | %8u | %8u | %8u |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1178,'%-10s = %6u / %6u / %6u / %6u',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1179,'Count',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1180,'Item Ratio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1181,'|            | Alliance |   Horde  | Neutral  |  Amount  |',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1182,'          Alliance/Horde/Neutral/Amount',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1183,'Grey',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1184,'White',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1185,'Green',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1186,'Blue',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1187,'Purple',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1188,'Orange',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1189,'Yellow',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1190,'Amount of %s items is set to %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1191,'Items ratio for %s is set to %u.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 11733
ALTER TABLE db_version CHANGE COLUMN required_11731_02_mangos_mangos_string required_11733_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 53695;
INSERT INTO spell_proc_event VALUES (53695, 0x00, 10, 0x00800000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000, 0);

-- 11754
ALTER TABLE db_version CHANGE COLUMN required_11733_01_mangos_spell_proc_event required_11754_mangos_mangos_string bit;

DELETE FROM mangos_string WHERE entry IN (1192);

INSERT INTO mangos_string VALUES (1192,'Effect movement',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 11755
ALTER TABLE db_version CHANGE COLUMN required_11754_mangos_mangos_string required_11755_01_mangos bit;

-- 11763
ALTER TABLE db_version CHANGE COLUMN required_11755_01_mangos required_11763_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 48108;
INSERT INTO spell_proc_event VALUES
(48108, 0x00,  3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00080000, 0.000000, 0.000000, 0);

-- 11764
ALTER TABLE db_version CHANGE COLUMN required_11763_01_mangos_spell_proc_event required_11764_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (17941, 22008, 31834, 34936, 44401, 51124, 54741, 57761, 64823);
INSERT INTO spell_proc_event VALUES
(17941, 0x00,  5, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00080000, 0.000000, 0.000000, 0),
(22008, 0x00,  3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00080000, 0.000000, 0.000000, 0),
(31834, 0x00, 10, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00080000, 0.000000, 0.000000, 0),
(34754, 0x00,  6, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00080000, 0.000000, 0.000000, 0),
(34936, 0x00,  5, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00080000, 0.000000, 0.000000, 0),
(44401, 0x00,  3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00080000, 0.000000, 0.000000, 0),
(51124, 0x00, 15, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00080000, 0.000000, 0.000000, 0),
(54741, 0x00,  3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00080000, 0.000000, 0.000000, 0),
(57761, 0x00,  3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00080000, 0.000000, 0.000000, 0),
(64823, 0x00,  7, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00080000, 0.000000, 0.000000, 0);

-- 11766
ALTER TABLE db_version CHANGE COLUMN required_11764_01_mangos_spell_proc_event required_11766_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (3411, 8178, 23921, 34784, 38857, 41198, 50253, 53476, 54061, 54062);
INSERT INTO spell_proc_event VALUES (3411, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0.000000, 0.000000, 0),
(8178, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0.000000, 0.000000, 0),
(23921, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0.000000, 0.000000, 0),
(34784, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0.000000, 0.000000, 0),
(38857, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0.000000, 0.000000, 0),
(41198, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0.000000, 0.000000, 0),
(50253, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0.000000, 0.000000, 0),
(53476, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0.000000, 0.000000, 0),
(54061, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0.000000, 0.000000, 0),
(54062, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0.000000, 0.000000, 0);

-- 11768
ALTER TABLE db_version CHANGE COLUMN required_11766_01_mangos_spell_proc_event required_11768_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (23921, 50253);

-- 11773
ALTER TABLE db_version CHANGE COLUMN required_11768_01_mangos_spell_proc_event required_11773_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (11129, 53672, 54149);
INSERT INTO spell_proc_event VALUES
(11129, 0x00,  4, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000003, 0.000000, 0.000000, 0),
(53672, 0x00, 10, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000003, 0.000000, 0.000000, 0);

ALTER TABLE db_version CHANGE COLUMN required_11773_01_mangos_spell_proc_event required_11773_02_mangos_spell_chain bit;

DELETE FROM spell_chain WHERE spell_id IN (53672, 54149);
INSERT INTO spell_chain VALUES
(53672,0,53672,1,0),
(54149,53672,53672,2,0);

-- 11774
ALTER TABLE db_version CHANGE COLUMN required_11773_02_mangos_spell_chain required_11774_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry = 11129;
INSERT INTO spell_proc_event VALUES
(11129, 0x00,  3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000003, 0.000000, 0.000000, 0);

-- 11785
ALTER TABLE db_version CHANGE COLUMN required_11774_01_mangos_spell_proc_event required_11785_01_mangos_instance_encounters bit;

--
-- Table structure for table `instance_encounters`
--

DROP TABLE IF EXISTS `instance_encounters`;
CREATE TABLE `instance_encounters` (
  `entry` int(10) unsigned NOT NULL COMMENT 'Unique entry from DungeonEncounter.dbc',
  `creditType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `creditEntry` int(10) unsigned NOT NULL DEFAULT '0',
  `lastEncounterDungeon` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'If not 0, LfgDungeon.dbc entry for the instance it is last encounter in',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `instance_encounters` WRITE;
/*!40000 ALTER TABLE `instance_encounters` DISABLE KEYS */;
INSERT INTO `instance_encounters` VALUES
(161,0,644,0),
(162,0,643,0),
(163,0,1763,0),
(164,0,646,0),
(165,0,645,0),
(166,0,647,0),
(167,0,639,6),
(201,0,18371,0),
(202,0,18373,149),
(203,0,18341,0),
(204,0,18343,0),
(205,0,18344,148),
(206,0,18472,0),
(207,0,18473,150),
(208,0,18731,0),
(209,0,18667,0),
(210,0,18732,0),
(211,0,18708,151),
(212,0,29309,0),
(213,0,29308,0),
(214,0,29310,0),
(215,0,29311,218),
(216,0,28684,0),
(217,0,28921,0),
(218,0,29120,204),
(219,0,4887,0),
(220,0,4831,0),
(221,0,6243,0),
(222,0,12902,0),
(224,0,4830,0),
(225,0,4832,0),
(226,0,4829,10),
(227,0,9018,30),
(228,0,9025,0),
(229,0,9319,0),
(230,0,10096,0),
(231,0,9024,0),
(232,0,9017,0),
(233,0,9041,0),
(234,0,9056,0),
(235,0,9016,0),
(236,0,9033,0),
(237,0,8983,0),
(238,0,9537,0),
(239,0,9502,0),
(240,0,9543,0),
(241,0,9499,0),
(242,0,9156,0),
(243,0,9035,0),
(244,0,9938,0),
(245,0,9019,276),
(246,0,18371,0),
(247,0,18373,178),
(248,0,18341,0),
(249,0,18343,0),
(250,0,22930,0),
(251,0,18344,179),
(252,0,18472,0),
(253,0,23035,0),
(254,0,18473,180),
(255,0,18731,0),
(256,0,18667,0),
(257,0,18732,0),
(258,0,18708,181),
(259,0,29309,0),
(260,0,29308,0),
(261,0,29310,0),
(262,0,30258,0),
(263,0,29311,219),
(264,0,28684,0),
(265,0,28921,0),
(266,0,29120,241),
(267,0,9196,0),
(268,0,9236,0),
(269,0,9237,0),
(270,0,10596,0),
(271,0,10584,0),
(272,0,9736,0),
(273,0,10268,0),
(274,0,10220,0),
(275,0,9568,32),
(276,0,9816,0),
(277,0,10264,0),
(278,0,10429,0),
(279,0,10430,0),
(280,0,10363,44),
(281,0,18096,170),
(282,0,18096,183),
(283,0,17862,0),
(284,0,17862,0),
(285,0,17848,0),
(286,0,17848,0),
(287,0,17879,0),
(288,0,17879,0),
(289,0,17880,0),
(290,0,17880,0),
(291,0,17881,171),
(292,0,17881,182),
(293,0,26529,0),
(294,0,26530,0),
(295,0,26532,0),
(296,1,58630,209),
(297,0,26529,0),
(298,0,26530,0),
(299,0,26532,0),
(300,1,58630,210),
(301,0,17941,0),
(302,0,17991,0),
(303,0,17942,140),
(304,0,17941,0),
(305,0,17991,0),
(306,0,17942,184),
(314,0,17797,0),
(315,0,17797,0),
(316,0,17796,0),
(317,0,17796,0),
(318,0,17798,147),
(319,0,17798,185),
(320,0,17770,0),
(321,0,17770,0),
(322,0,18105,0),
(323,0,18105,0),
(329,0,17826,0),
(330,0,17826,0),
(331,0,17882,146),
(332,0,17882,186),
(334,1,68572,0),
(336,1,68572,0),
(338,1,68574,0),
(339,1,68574,0),
(340,1,68663,245),
(341,1,68663,249),
(343,0,11490,0),
(344,0,13280,0),
(345,0,14327,0),
(346,0,11492,34),
(347,0,11488,0),
(348,0,11487,0),
(349,0,11496,0),
(350,0,11489,0),
(361,0,11486,36),
(362,0,14326,0),
(363,0,14322,0),
(364,0,14321,0),
(365,0,14323,0),
(366,0,14325,0),
(367,0,14324,0),
(368,0,11501,38),
(369,0,26630,0),
(370,0,26630,0),
(371,0,26631,0),
(372,0,26631,0),
(373,0,27483,0),
(374,0,27483,0),
(375,1,61863,214),
(376,1,61863,215),
(378,0,7079,0),
(379,0,7361,0),
(380,0,6235,0),
(381,0,6229,0),
(382,0,7800,14),
(383,0,29304,0),
(384,0,29304,0),
(385,0,29573,0),
(386,0,29573,0),
(387,0,29305,0),
(388,0,29305,0),
(389,0,29932,0),
(390,0,29306,216),
(391,0,29306,217),
(392,0,17306,0),
(393,0,17306,0),
(394,0,17308,0),
(395,0,17308,0),
(396,0,17537,136),
(397,0,17537,188),
(401,0,17381,0),
(402,0,17381,0),
(403,0,17380,0),
(404,0,17380,0),
(405,0,17377,137),
(406,0,17377,187),
(407,0,16807,0),
(408,0,16807,0),
(409,0,20923,0),
(410,0,16809,0),
(411,0,16809,0),
(412,0,16808,138),
(413,0,16808,189),
(414,0,24723,0),
(415,0,24723,0),
(416,0,24744,0),
(417,0,24744,0),
(418,0,24560,0),
(419,0,24560,0),
(420,0,24664,198),
(421,0,24664,201),
(422,0,13282,0),
(423,0,12258,26),
(424,0,12236,272),
(425,0,12225,0),
(426,0,12203,0),
(427,0,13601,0),
(428,0,13596,0),
(429,0,12201,273),
(430,0,11517,0),
(431,0,11520,4),
(432,0,11518,0),
(433,0,11519,0),
(434,0,7355,0),
(435,0,7357,0),
(436,0,8567,0),
(437,0,7358,20),
(438,0,6168,0),
(439,0,4424,0),
(440,0,4428,0),
(441,0,4420,0),
(443,0,4421,16),
(444,0,3983,0),
(445,0,4543,18),
(446,0,3974,0),
(447,0,6487,165),
(448,0,3975,163),
(449,0,4542,0),
(450,0,3977,164),
(451,0,10506,0),
(452,0,10503,0),
(453,0,11622,0),
(454,0,10433,0),
(455,0,10432,0),
(456,0,10508,0),
(457,0,10505,0),
(458,0,11261,0),
(459,0,10901,0),
(460,0,10507,0),
(461,0,10504,0),
(462,0,10502,0),
(463,0,1853,2),
(464,0,3914,0),
(465,0,3886,0),
(466,0,3887,0),
(467,0,4278,0),
(468,0,4279,0),
(469,0,4274,0),
(470,0,3927,0),
(471,0,4275,8),
(472,0,10516,0),
(473,0,10558,0),
(474,0,10808,0),
(475,0,10997,0),
(476,0,11032,0),
(477,0,10811,0),
(478,0,10813,40),
(479,0,10436,0),
(480,0,10437,0),
(481,0,10438,0),
(482,0,10435,0),
(483,0,10439,0),
(484,0,10440,274),
(485,0,8580,0),
(486,0,5721,0),
(487,0,5720,0),
(488,0,5710,0),
(490,0,5719,0),
(491,0,5722,0),
(492,0,8443,0),
(493,0,5709,28),
(494,0,20870,0),
(495,0,20870,0),
(496,0,20885,0),
(497,0,20885,0),
(498,0,20886,0),
(499,0,20886,0),
(500,0,20912,174),
(501,0,20912,190),
(502,0,17976,0),
(504,0,17976,0),
(505,0,17975,0),
(506,0,17975,0),
(507,0,17978,0),
(508,0,17978,0),
(509,0,17980,0),
(510,0,17980,0),
(511,0,17977,173),
(512,0,17977,191),
(513,0,19219,0),
(514,0,19219,0),
(515,0,19221,0),
(516,0,19221,0),
(517,0,19220,172),
(518,0,19220,192),
(519,0,26796,0),
(520,0,26731,0),
(521,0,26731,0),
(522,0,26763,0),
(523,0,26763,0),
(524,0,26794,0),
(525,0,26794,0),
(526,0,26723,225),
(527,0,26723,226),
(528,0,27654,0),
(529,0,27654,0),
(530,0,27447,0),
(531,0,27447,0),
(532,0,27655,0),
(533,0,27655,0),
(534,0,27656,206),
(535,0,27656,211),
(536,0,1696,0),
(537,0,1666,0),
(538,0,1717,0),
(539,0,1716,0),
(540,0,1663,12),
(541,0,29315,0),
(542,0,29315,0),
(543,0,29316,0),
(544,0,29316,0),
(545,0,31134,220),
(546,0,31134,221),
(547,0,6910,0),
(548,0,6906,0),
(549,0,7228,0),
(551,0,7206,0),
(552,0,7291,0),
(553,0,4854,0),
(554,0,2748,22),
(555,0,28586,0),
(556,0,28586,0),
(557,0,28587,0),
(558,0,28587,0),
(559,0,28546,0),
(560,0,28546,0),
(561,0,28923,207),
(562,0,28923,212),
(563,0,27977,0),
(564,0,27977,0),
(565,0,27975,0),
(566,0,27975,0),
(567,1,59046,0),
(568,1,59046,0),
(569,0,27978,208),
(570,0,27978,213),
(571,0,23953,0),
(572,0,23953,0),
(573,0,24201,0),
(574,0,24201,0),
(575,0,23954,202),
(576,0,23954,242),
(577,0,26668,0),
(578,0,26668,0),
(579,0,26687,0),
(580,0,26687,0),
(581,0,26693,0),
(582,0,26693,0),
(583,0,26861,203),
(584,0,26861,205),
(585,0,3671,0),
(586,0,3669,0),
(587,0,3653,0),
(588,0,3670,0),
(589,0,3674,0),
(590,0,3673,0),
(591,0,5775,0),
(592,0,3654,1),
(593,0,7795,0),
(594,0,7273,0),
(595,0,8127,0),
(596,0,7272,0),
(597,0,7271,0),
(598,0,7796,0),
(599,0,7275,0),
(600,0,7267,24),
(601,0,22887,0),
(602,0,22898,0),
(603,0,22841,0),
(604,0,22871,0),
(605,0,22948,0),
(606,0,23420,0),
(607,0,22947,0),
(608,0,23426,0),
(609,0,22917,196),
(610,0,12435,0),
(611,0,13020,0),
(612,0,12017,0),
(613,0,11983,0),
(614,0,14601,0),
(615,0,11981,0),
(616,0,14020,0),
(617,0,11583,50),
(618,0,17767,0),
(619,0,17808,0),
(620,0,17888,0),
(621,0,17842,0),
(622,0,17968,195),
(623,0,21216,0),
(624,0,21217,0),
(625,0,21215,0),
(626,0,21214,0),
(627,0,21213,0),
(628,0,21212,194),
(629,0,34797,0),
(630,0,34797,0),
(631,0,34797,0),
(632,0,34797,0),
(633,0,34780,0),
(634,0,34780,0),
(635,0,34780,0),
(636,0,34780,0),
(637,1,68184,0),
(638,1,68184,0),
(639,1,68184,0),
(640,1,68184,0),
(641,0,34496,0),
(642,0,34496,0),
(643,0,34496,0),
(644,0,34496,0),
(645,0,34564,246),
(646,0,34564,248),
(647,0,34564,247),
(648,0,34564,250),
(649,0,18831,0),
(650,0,19044,177),
(651,0,17257,176),
(652,0,15550,0),
(653,0,15687,0),
(654,0,16457,0),
(655,0,16812,0),
(656,0,15691,0),
(657,0,15688,0),
(658,0,16524,0),
(659,0,15689,0),
(660,0,22520,0),
(661,0,15690,175),
(662,0,17225,0),
(663,0,12118,0),
(664,0,11982,0),
(665,0,12259,0),
(666,0,12057,0),
(667,0,12264,0),
(668,0,12056,0),
(669,0,12098,0),
(670,0,11988,0),
(671,0,12018,0),
(672,0,11502,48),
(673,0,15956,0),
(674,0,15956,0),
(677,0,15953,0),
(678,0,15953,0),
(679,0,15952,0),
(680,0,15952,0),
(681,0,15954,0),
(682,0,15954,0),
(683,0,15936,0),
(684,0,15936,0),
(685,0,16011,0),
(686,0,16011,0),
(687,0,16061,0),
(689,0,16061,0),
(690,0,16060,0),
(691,0,16060,0),
(692,1,59450,0),
(693,1,59450,0),
(694,0,16028,0),
(695,0,16028,0),
(696,0,15931,0),
(697,0,15931,0),
(698,0,15932,0),
(699,0,15932,0),
(700,0,15928,0),
(701,0,15928,0),
(702,0,15989,0),
(703,0,15989,0),
(704,0,15990,159),
(706,0,15990,227),
(707,0,10184,46),
(708,0,10184,257),
(709,0,15263,0),
(710,0,15544,0),
(711,0,15516,0),
(712,0,15510,0),
(713,0,15299,0),
(714,0,15509,0),
(715,0,15275,0),
(716,0,15517,0),
(717,0,15727,161),
(718,0,15348,0),
(719,0,15341,0),
(720,0,15340,0),
(721,0,15370,0),
(722,0,15369,0),
(723,0,15339,160),
(724,0,24892,0),
(725,0,24882,0),
(726,0,25038,0),
(727,0,25165,0),
(728,0,25840,0),
(729,0,25315,199),
(730,0,19514,0),
(731,0,19516,0),
(732,0,18805,0),
(733,0,19622,193),
(734,0,28859,223),
(735,0,28859,237),
(736,0,30452,0),
(737,0,30452,0),
(738,0,30451,0),
(739,0,30451,0),
(740,0,30449,0),
(741,0,30449,0),
(742,0,28860,224),
(743,0,28860,238),
(744,0,33113,0),
(745,0,33118,0),
(746,0,33186,0),
(747,0,33293,0),
(748,1,65195,0),
(749,0,32930,0),
(750,0,33515,0),
(751,1,64899,0),
(752,1,64985,0),
(753,1,65074,0),
(754,0,33432,0),
(755,0,33271,0),
(756,0,33288,0),
(757,0,32871,243),
(758,0,33113,0),
(759,0,33118,0),
(760,0,33186,0),
(761,0,33293,0),
(762,1,65195,0),
(763,0,32930,0),
(764,0,33515,0),
(765,1,64899,0),
(766,1,64985,0),
(767,1,65074,0),
(768,0,33432,0),
(769,0,33271,0),
(770,0,33288,0),
(771,0,32871,244),
(772,0,31125,0),
(773,0,31125,0),
(774,0,33993,0),
(775,0,33993,0),
(776,0,35013,0),
(777,0,35013,0),
(778,0,23574,0),
(779,0,23576,0),
(780,0,23578,0),
(781,0,23577,0),
(782,0,24239,0),
(783,0,23863,197),
(784,0,14507,0),
(785,0,14517,0),
(786,0,14510,0),
(787,0,11382,0),
(788,0,15083,0),
(789,0,14509,0),
(790,0,15114,0),
(791,0,14515,0),
(792,0,11380,0),
(793,0,14834,42),
(829,0,36497,0),
(830,0,36497,0),
(831,0,36502,251),
(832,0,36502,252),
(833,0,36494,0),
(834,0,36494,0),
(835,0,36476,0),
(836,0,36476,0),
(837,0,36658,253),
(838,0,36658,254),
(839,0,38113,0),
(840,0,38113,0),
(841,0,38112,0),
(842,0,38112,0),
(843,1,72830,255),
(844,1,72830,256),
(845,0,36612,0),
(846,0,36855,0),
(847,1,72959,0),
(848,0,37813,0),
(849,0,36626,0),
(850,0,36627,0),
(851,0,36678,0),
(852,0,37970,0),
(853,0,37955,0),
(854,1,72706,0),
(855,0,36853,0),
(856,0,36597,279),
(857,0,36612,0),
(858,0,36855,0),
(859,1,72959,0),
(860,0,37813,0),
(861,0,36626,0),
(862,0,36627,0),
(863,0,36678,0),
(864,0,37970,0),
(865,0,37955,0),
(866,1,72706,0),
(867,0,36853,0),
(868,0,36597,280),
(883,0,4422,0),
(885,0,38433,239),
(886,0,38433,240),
(887,0,39863,293),
(888,0,39863,294),
(889,0,39751,0),
(890,0,39751,0),
(891,0,39747,0),
(892,0,39747,0),
(893,0,39746,0),
(894,0,39746,0);
/*!40000 ALTER TABLE `instance_encounters` ENABLE KEYS */;
UNLOCK TABLES;
