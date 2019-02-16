-- q.11349 'Mastering the Runes' -A
-- q.11351 'Mastering the Runes' -H

-- q.11349 'Mastering the Runes' -A
-- Iron Rune Toolbox - missing object added
DELETE FROM game_event_gameobject WHERE guid = 5710760;
DELETE FROM gameobject_battleground WHERE guid = 5710760;
DELETE FROM gameobject WHERE guid = 5710760;
INSERT INTO gameobject VALUES
(5710760,186712,571,1,1,2420.814,-5162.428,277.4479,2.82743,0,0,0.9876881,0.1564362,300,300,255,1);
-- start script
DELETE FROM dbscripts_on_quest_start WHERE id = 11349;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11349,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2.530727,''),
(11349,1,0,0,0,0,0,0,0,2000001833,0,0,0,0,0,0,0,''),
(11349,7,3,0,0,0,0,0,0,0,0,0,0,0,0,0,1.23419,'');
UPDATE quest_template SET StartScript = 11349 WHERE entry = 11349;
DELETE FROM dbscript_string WHERE entry = 2000001833;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001833,'They keep their tools in boxes that look like this. Look for them near the pavilions.',0,0,0,25,NULL);
-- end script
DELETE FROM dbscripts_on_quest_end WHERE id = 11349;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11349,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(11349,1,0,0,0,0,0,0,0,2000001842,0,0,0,0,0,0,0,''),
(11349,4,1,69,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11349,7,0,0,0,0,0,0,0,2000001843,0,0,0,0,0,0,0,''),
(11349,12,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11349,14,0,0,0,0,0,0,0,2000001844,0,0,0,0,0,0,0,''),
(11349,15,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 11349 WHERE entry = 11349;
DELETE FROM dbscript_string WHERE entry IN (2000000238,2000000239,2000000240,2000000241);
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001842 AND 2000001844;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001842,'I\'m only going to carve the runes I think will give you command over a giant.',0,0,0,1,NULL),
(2000001843,'I\'m omitting the runes for "north" and "west" because I\'m not sure how they impact the giant. I\'m also including a rune to limit how long you can control it.',0,0,0,0,NULL),
(2000001844,'There we go, the Rune of Command... hopefully. Not nearly as vicious as its Iron Dwarf cousin, but functional.',0,0,0,1,NULL);

-- q.11351 'Mastering the Runes' -H
DELETE FROM dbscripts_on_quest_start WHERE id = 11351;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11351,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2.41674,''),
(11351,1,0,0,0,0,0,0,0,2000001833,0,0,0,0,0,0,0,''),
(11351,7,3,0,0,0,0,0,0,0,0,0,0,0,0,0,1.0821,'');
UPDATE quest_template SET StartScript = 11351 WHERE entry = 11351;
DELETE FROM dbscripts_on_quest_end WHERE id = 11351;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11351,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(11351,1,0,0,0,0,0,0,0,2000001842,0,0,0,0,0,0,0,''),
(11351,4,1,69,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11351,7,0,0,0,0,0,0,0,2000001843,0,0,0,0,0,0,0,''),
(11351,12,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11351,14,0,0,0,0,0,0,0,2000001844,0,0,0,0,0,0,0,''),
(11351,15,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
