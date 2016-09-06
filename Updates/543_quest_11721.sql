-- quest 11721 'Gammothra the Tormentor'
DELETE FROM dbscripts_on_quest_start WHERE id = 11721;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11721,1,0,0,0,0,0,0,2000000405,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 11721 WHERE entry = 11721;
DELETE FROM db_script_string WHERE entry = 2000000405;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000405,'And remember, $n, the bloodspore powder can be used to weaken all magnataur in Gammoth.',0,4,0,1,NULL);
