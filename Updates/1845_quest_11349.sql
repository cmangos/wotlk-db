-- q.11349 'Mastering the Runes' 

-- Iron Rune Toolbox - missing object added
DELETE FROM game_event_gameobject WHERE guid = 5710760;
DELETE FROM gameobject_battleground WHERE guid = 5710760;
DELETE FROM gameobject WHERE guid = 5710760;
INSERT INTO gameobject VALUES
(5710760,186712,571,1,1,2420.814,-5162.428,277.4479,2.82743,0,0,0.9876881,0.1564362,300,300,255,1);

-- script
DELETE FROM dbscripts_on_quest_start WHERE id = 11349;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11349,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2.530727,''),
(11349,1,0,0,0,0,0,0,0,2000001833,0,0,0,0,0,0,0,''),
(11349,7,3,0,0,0,0,0,0,0,0,0,0,0,0,0,1.23419,'');
UPDATE quest_template SET StartScript = 11349 WHERE entry = 11349;
DELETE FROM dbscript_string WHERE entry = 2000001833;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001833,'They keep their tools in boxes that look like this. Look for them near the pavilions.',0,0,0,25,NULL);
