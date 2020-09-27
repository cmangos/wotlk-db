-- q.12500 'Return To Angrathar' - H
-- q.12499 'Return To Angrathar' - A
-- make vid play stright after q. completed
DELETE FROM dbscripts_on_quest_end WHERE id IN (12499,12500);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12499,0,19,14,0,0,0,0,0,0,0,0,0,0,0,0,0,'Play movie'),
(12500,0,19,14,0,0,0,0,0,0,0,0,0,0,0,0,0,'Play movie');
-- spell added to everyone after phase swap
DELETE FROM spell_area WHERE spell = 60778;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(60778,4169,12499,0,0,0,0,1101,2,1),
(60778,4170,12499,0,0,0,0,1101,2,1),
(60778,4171,12499,0,0,0,0,1101,2,1),
(60778,4172,12499,0,0,0,0,1101,2,1),
(60778,4169,12500,0,0,0,0,690,2,1),
(60778,4170,12500,0,0,0,0,690,2,1),
(60778,4171,12500,0,0,0,0,690,2,1),
(60778,4172,12500,0,0,0,0,690,2,1);

-- Alexstrasza the Life-Binder 31333
-- Korialstrasz 31334
UPDATE creature_template SET visibilityDistanceType = 4 WHERE entry IN (31333,31334);
-- Part of Korialstrasz EAI:
DELETE FROM dbscripts_on_relay WHERE id = 20369;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20369,10,34,20124,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Korialstrasz: terminate script if Player not meet condition'),
(20369,100,21,1,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Korialstrasz - active'),
(20369,110,21,1,0,0,31333,530416,7 | 0x10,0,0,0,0,0,0,0,0,'Alexstrasza the Life-Binder - active'),
(20369,1000,0,0,0,0,0,0,0x02,2000020490,0,0,0,0,0,0,0,''),
(20369,6000,0,0,0,0,31333,530416,0x10,2000020491,0,0,0,0,0,0,0,''),
(20369,10000,0,0,0,0,31333,530416,0x10,2000020492,0,0,0,0,0,0,0,''),
(20369,16000,0,0,0,0,0,0,0x02,2000000924,0,0,0,0,0,0,0,''),
(20369,19000,0,0,0,0,0,0,0x02,2000020493,0,0,0,0,0,0,0,''),
(20369,23000,0,0,0,0,31333,530416,3 | 0x10,2000020494,0,0,0,0,0,0,0,''),
(20369,24000,21,0,0,0,31333,530416,7 | 0x10,0,0,0,0,0,0,0,0,'Alexstrasza the Life-Binder - unactive'),
(20369,25000,21,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Korialstrasz - unactive');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020490 AND 2000020494;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020490,'My Queen, do they know?',0,0,0,6,NULL),
(2000020491,'No, my beloved.',0,0,0,1,NULL),
(2000020492,'They must not discover the fate of the young paladin. Not yet.',0,0,11,5,NULL),
(2000020493,'They will not.',0,0,0,1,NULL),
(2000020494,'Come to me, $n.',0,4,0,0,NULL);
DELETE FROM conditions WHERE condition_entry BETWEEN 20120 AND 20124;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
-- (179,8,12499,0,0,0,0), -- already in
(20120,22,13347,0,0,0,0),
(20121,-1,20120,179,0,0,0),
-- (350,8,12500,0,0,0,0), -- already in
(20122,22,13242,0,0,0,0),
(20123,-1,20122,350,0,0,0),
(20124,-2,20123,20121,0,0,0);
