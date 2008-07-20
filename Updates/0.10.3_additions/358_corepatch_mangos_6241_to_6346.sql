-- 6090
DELETE FROM `command` WHERE `name` IN ('lookup event','event','event activelist','event start','event stop');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('lookup event',2,'Syntax: .lookup event $name\r\nAttempts to find the ID of the event with the provided $name.'),
('event',2,'Syntax: .event #event_id\r\nShow details about event with #event_id.'),
('event activelist',2,'Syntax: .event activelist\r\nShow list of currently active events.'),
('event start',2,'Syntax: .event start #event_id\r\nStart event #event_id. Set start time for event to current moment (change not saved in DB).'),
('event stop',2,'Syntax: .event stop #event_id\r\nStop event #event_id. Set start time for event to time in past that make current moment is event stop time (change not saved in DB).');
DELETE FROM `mangos_string` WHERE `entry` IN (583,584,585,586,587,588);
INSERT INTO `mangos_string` VALUES
(583,'%d - |cffffffff|Hgameevent:%d|h[%s]|h|r%s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(584,'No event found!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(585,'Event not exist!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(586,'Event %u: %s%s\nStart: %s End: %s Occurence: %s Length: %s\nNext state change: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(587,'Event %u already active!',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(588,'Event %u not active!',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- 6246
DELETE FROM `spell_proc_event` WHERE `entry` IN (38290);
INSERT INTO `spell_proc_event` VALUES
(38290,0,0,0,0,0x0000000000000000,0x00080000,3);

-- 6251
DELETE FROM `spell_proc_event` WHERE `entry` = 37336;
INSERT INTO `spell_proc_event` VALUES
(37336,0,0,0,0,0x0000000000000000,0x00084001,0);

-- 6255
DELETE FROM `spell_proc_event` WHERE `entry` = 40442;
INSERT INTO `spell_proc_event` VALUES
(40442,0,0,0,7,0x0000044000000014,0x00004001,0);
DELETE FROM `spell_proc_event` WHERE `entry` = 40470;
INSERT INTO `spell_proc_event` VALUES
(40470,0,0,0,10,0x00000000C0800000,0x00004000,0);
DELETE FROM `spell_proc_event` WHERE `entry` = 40485;
INSERT INTO `spell_proc_event` VALUES 
(40485,0,0,0,9,0x0000000100000000,0x00080000,0);
DELETE FROM `spell_proc_event` WHERE `entry` = 40478;
INSERT INTO `spell_proc_event` VALUES 
(40478,0,0,0,5,0x0000000000000002,0x00020000,0);

-- 6265
DROP TABLE IF EXISTS `pet_name_generation`;
CREATE TABLE `pet_name_generation` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `word` tinytext NOT NULL,
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `half` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `pet_name_generation` (`word`,`entry`,`half`) VALUES 
('Aba',416,0),
('Az',416,0),
('Bel',416,0),
('Biz',416,0),
('Cho',416,0),
('Dag',416,0),
('Gak',416,0),
('Gar',416,0),
('Gel',416,0),
('Gho',416,0),
('Gob',416,0),
('Gra',416,0),
('Jak',416,0),
('Jub',416,0),
('Kar',416,0),
('Kup',416,0),
('Laz',416,0),
('Nal',416,0),
('Nok',416,0),
('Pag',416,0),
('Pig',416,0),
('Pip',416,0),
('Piz',416,0),
('Quz',416,0),
('Rui',416,0),
('Rul',416,0),
('Rup',416,0),
('Tar',416,0),
('Vol',416,0),
('Yaz',416,0),
('Zep',416,0),
('Zig',416,0),
('Zil',416,0),
('Zor',416,0),
('bis',416,1),
('fip',416,1),
('gup',416,1),
('ham',416,1),
('jub',416,1),
('kin',416,1),
('kol',416,1),
('lop',416,1),
('loz',416,1),
('mat',416,1),
('mir',416,1),
('nam',416,1),
('nar',416,1),
('nik',416,1),
('nip',416,1),
('pad',416,1),
('pep',416,1),
('pit',416,1),
('qua',416,1),
('rai',416,1),
('rin',416,1),
('rot',416,1),
('tai',416,1),
('tal',416,1),
('tik',416,1),
('tip',416,1),
('tog',416,1),
('tuk',416,1),
('uri',416,1),
('yal',416,1),
('yap',416,1),
('Bhee',417,0),
('Bruu',417,0),
('Czaa',417,0),
('Droo',417,0),
('Flaa',417,0),
('Fzuu',417,0),
('Ghaa',417,0),
('Gree',417,0),
('Gzaa',417,0),
('Haa',417,0),
('Haad',417,0),
('Haag',417,0),
('Haap',417,0),
('Jhaa',417,0),
('Jhuu',417,0),
('Khaa',417,0),
('Khii',417,0),
('Khuu',417,0),
('Kree',417,0),
('Luu',417,0),
('Maa',417,0),
('Nhee',417,0),
('Phuu',417,0),
('Pryy',417,0),
('Rhuu',417,0),
('Shaa',417,0),
('Sloo',417,0),
('Sruu',417,0),
('Thoo',417,0),
('Traa',417,0),
('Wraa',417,0),
('Zhaa',417,0),
('dhon',417,1),
('dhum',417,1),
('dhun',417,1),
('dom',417,1),
('don',417,1),
('drom',417,1),
('dym',417,1),
('fenn',417,1),
('fum',417,1),
('fun',417,1),
('ghon',417,1),
('ghun',417,1),
('grom',417,1),
('grym',417,1),
('hom',417,1),
('hon',417,1),
('hun',417,1),
('jhom',417,1),
('kun',417,1),
('lum',417,1),
('mmon',417,1),
('mon',417,1),
('myn',417,1),
('nam',417,1),
('nem',417,1),
('nhym',417,1),
('nom',417,1),
('num',417,1),
('phom',417,1),
('roon',417,1),
('rym',417,1),
('shon',417,1),
('thun',417,1),
('tom',417,1),
('zhem',417,1),
('zhum',417,1),
('zun',417,1),
('Bar',1860,0),
('Bel',1860,0),
('Char',1860,0),
('Grak\'',1860,0),
('Graz\'',1860,0),
('Grim',1860,0),
('Hath',1860,0),
('Hel',1860,0),
('Hok',1860,0),
('Huk',1860,0),
('Jhaz',1860,0),
('Jhom',1860,0),
('Juk\'',1860,0),
('Kal\'',1860,0),
('Klath',1860,0),
('Kon',1860,0),
('Krag',1860,0),
('Krak',1860,0),
('Mak',1860,0),
('Mezz',1860,0),
('Orm',1860,0),
('Phan',1860,0),
('Sar',1860,0),
('Tang',1860,0),
('Than',1860,0),
('Thog',1860,0),
('Thok',1860,0),
('Thul',1860,0),
('Zag\'',1860,0),
('Zang',1860,0),
('Zhar\'',1860,0),
('kath',1860,1),
('doc',1860,1),
('dok',1860,1),
('gak',1860,1),
('garth',1860,1),
('gore',1860,1),
('gorg',1860,1),
('grave',1860,1),
('gron',1860,1),
('juk',1860,1),
('krast',1860,1),
('kresh',1860,1),
('krit',1860,1),
('los',1860,1),
('mon',1860,1),
('mos',1860,1),
('moth',1860,1),
('nagma',1860,1),
('nak',1860,1),
('nar',1860,1),
('nos',1860,1),
('nuz',1860,1),
('phog',1860,1),
('rath',1860,1),
('tast',1860,1),
('taz',1860,1),
('thak',1860,1),
('thang',1860,1),
('thyk',1860,1),
('vhug',1860,1),
('zazt',1860,1),
('Ael',1863,0),
('Aez',1863,0),
('Ang',1863,0),
('Ban',1863,0),
('Bet',1863,0),
('Bro',1863,0),
('Bry',1863,0),
('Cat',1863,0),
('Dir',1863,0),
('Dis',1863,0),
('Dom',1863,0),
('Drus',1863,0),
('Fie',1863,0),
('Fier',1863,0),
('Gly',1863,0),
('Hel',1863,0),
('Hes',1863,0),
('Kal',1863,0),
('Lyn',1863,0),
('Mir',1863,0),
('Nim',1863,0),
('Sar',1863,0),
('Sel',1863,0),
('Vil',1863,0),
('Zah',1863,0),
('aith',1863,1),
('anda',1863,1),
('antia',1863,1),
('evere',1863,1),
('lia',1863,1),
('lissa',1863,1),
('neri',1863,1),
('neth',1863,1),
('nia',1863,1),
('nlissa',1863,1),
('nora',1863,1),
('nva',1863,1),
('nys',1863,1),
('ola',1863,1),
('ona',1863,1),
('ora',1863,1),
('rah',1863,1),
('riana',1863,1),
('riel',1863,1),
('rona',1863,1),
('tai',1863,1),
('tevere',1863,1),
('thea',1863,1),
('vina',1863,1),
('wena',1863,1),
('wyn',1863,1),
('xia',1863,1),
('yla',1863,1),
('yssa',1863,1),
('Flaa',17252,0),
('Haa',17252,0),
('Jhuu',17252,0),
('Shaa',17252,0),
('Thoo',17252,0),
('dhun',17252,1),
('ghun',17252,1),
('roon',17252,1),
('thun',17252,1),
('tom',17252,1);

-- 6270
DELETE FROM `spell_proc_event` WHERE `entry` in (31569,31570);
INSERT INTO `spell_proc_event` VALUES
(31569,0,0,0,3,0x0000000000010000,0x00004000,0),
(31570,0,0,0,3,0x0000000000010000,0x00004000,0);

-- 6304
DELETE FROM `spell_proc_event` WHERE `entry` = 45059;
INSERT INTO `spell_proc_event` VALUES
(45059,0,0,0,0,0x0000000000000000,0x08000000,0);

-- 6308
DELETE FROM `command` WHERE `name` IN ('combatstop');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('combatstop',2,'Syntax: .combatstop\r\nStop combat for selected character. If selected non-player then command applied to self.');

-- 6313
DELETE FROM spell_proc_event WHERE entry IN (37982, 37617, 37213, 37237, 37228);
INSERT INTO spell_proc_event VALUES 
-- Earthstun (Brutal Earthstorm-Diamond)
(37982,0,0,0,0,0x0000000000000000,0x00000001,0),
-- Desolation Battlegear 4 pieces
(37617,0,0,0,0,0x0000000000000000,0x00000001,0),
-- Shaman Nuker T4 3 pieces
(37213,0,0,0,11,0x0000000090100007,0x00010000,0),
-- Shaman Nuker T5 4 pieces
(37237,0,0,0,11,0x0000000000000001,0x00010000,0),
-- Shaman Nuker T5 2 pieces
(37228,0,0,0,11,0x0000000090100007,0x00020000,0);

-- 6314
DELETE FROM `command` WHERE `name` IN ('combatstop');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('combatstop',2,'Syntax: .combatstop [$playername]\r\nStop combat for selected character. If selected non-player then command applied to self. If $playername provided then attempt applied to online player $playername.');

-- 6324
ALTER TABLE `creature_template` ADD COLUMN `flags_extra` int(10) unsigned NOT NULL default '0' after `mechanic_immune_mask`;

-- 6325
UPDATE creature_template
  SET flags_extra = flags_extra | 2 WHERE civilian <> 0;
ALTER TABLE `creature_template` 
  DROP civilian;

--  6334
DELETE FROM spell_affect WHERE entry = 34491 AND effectId = 0 LIMIT 1;
DELETE FROM spell_affect WHERE entry = 34492 AND effectId = 0 LIMIT 1;
DELETE FROM spell_affect WHERE entry = 34493 AND effectId = 0 LIMIT 1;
INSERT INTO spell_affect ( entry , effectId , SpellFamilyMask ) VALUES
(34491, 0, 0x4000000000C2),
(34492, 0, 0x4000000000C2),
(34493, 0, 0x4000000000C2);