-- White Pine Trading Post - Grizzly Hills

-- Tatjana 
-- part of quest - shouldnt be there
DELETE FROM creature_addon WHERE guid=519279;
DELETE FROM creature_movement WHERE id=519279;
DELETE FROM game_event_creature WHERE guid=519279;
DELETE FROM game_event_creature_data WHERE guid=519279;
DELETE FROM creature_battleground WHERE guid=519279;
DELETE FROM creature_linking WHERE guid=519279
 OR master_guid=519279;
DELETE FROM creature WHERE guid=519279;

-- Anatoly 26971
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26971);
UPDATE creature_template_addon SET bytes1 = 0 WHERE entry = 26971;
DELETE FROM dbscript_random_templates WHERE id = 20028;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20028,1,20557,0,'26971 - Random Script 1'),
(20028,1,20558,0,'26971 - Random Script 2'),
(20028,1,20559,0,'26971 - Random Script 3'),
(20028,1,20560,0,'26971 - Random Script 4');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20557 AND 20560;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 26971 - Random Script 1
(20557,0,31,26935,30,0,0,0,0,0,0,0,0,0,0,0,0,'26971 - Random Script 1: search for 26935'),
(20557,10,0,0,0,0,0,0,0x04,2000020838,0,0,0,0,0,0,0,'26971 - Random Script 1: say'),
(20557,4000,31,26935,30,0,0,0,0,0,0,0,0,0,0,0,0,'26971 - Random Script 1: search for 26935'),
(20557,4010,0,0,0,0,26935,40,7,2000020841,0,0,0,0,0,0,0,'26971 - Random Script 1: say'),
-- 26971 - Random Script 2
(20558,0,31,26935,30,0,0,0,0,0,0,0,0,0,0,0,0,'26971 - Random Script 2: search for 26935'),
(20558,10,0,0,0,0,0,0,0x04,2000020837,0,0,0,0,0,0,0,'26971 - Random Script 2: say'),
(20558,4000,31,26935,30,0,0,0,0,0,0,0,0,0,0,0,0,'26971 - Random Script 2: search for 26935'),
(20558,4010,0,0,0,0,26935,40,7,2000020841,0,0,0,0,0,0,0,'26971 - Random Script 2: say'),
-- 26971 - Random Script 3
(20559,0,31,26935,30,0,0,0,0,0,0,0,0,0,0,0,0,'26971 - Random Script 3: search for 26935'),
(20559,10,0,0,0,0,0,0,0x04,2000020840,0,0,0,0,0,0,0,'26971 - Random Script 3: say'),
(20559,4000,31,26935,30,0,0,0,0,0,0,0,0,0,0,0,0,'26971 - Random Script 3: search for 26935'),
(20559,4010,0,0,0,0,26935,40,7,2000020843,0,0,0,0,0,0,0,'26971 - Random Script 3: say'),
-- 26971 - Random Script 4
(20560,0,31,26935,30,0,0,0,0,0,0,0,0,0,0,0,0,'26971 - Random Script 4: search for 26935'),
(20560,10,0,0,0,0,0,0,0x04,2000020839,0,0,0,0,0,0,0,'26971 - Random Script 4: say'),
(20560,4000,31,26935,30,0,0,0,0,0,0,0,0,0,0,0,0,'26971 - Random Script 4: search for 26935'),
(20560,4010,0,0,0,0,26935,40,7,2000020842,0,0,0,0,0,0,0,'26971 - Random Script 4: say');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020837 AND 2000020843;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020837,'You won\'t get away with this, you know?  You\'re just a kid.',0,0,0,0,NULL),
(2000020838,'How old are you, lass?',0,0,0,0,NULL),
(2000020839,'We\'ll all end up serving the Lich King, kid.  Better this way than becoming a rotten corpse.',0,0,0,0,NULL),
(2000020840,'Your father was weak, Sasha... he didn\'t have the guts to do what had to be done.',0,0,0,0,NULL),
(2000020841,'I\'m old enough to shoot beasts like you right between the eyes... at twice this distance.',0,0,0,0,NULL),
(2000020842,'I\'d rather be dead than be one of you!  You think you\'re still human?  You\'re... animals!',0,0,0,0,NULL),
(2000020843,'Don\'t you dare talk about my father, monster.  He was twice the man you\'ll ever be.',0,0,0,0,NULL);
