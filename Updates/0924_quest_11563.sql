-- q.11563 'Grmmurggll Mrllggrl Glrggl!!!'
DELETE FROM dbscripts_on_quest_start WHERE id = 11563;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11563,0,31,25211,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 25211'),
(11563,1,0,0,0,0,25211,50,0,2000001235,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 11563 WHERE entry = 11563;
DELETE FROM db_script_string WHERE entry = 2000001235;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001235,'Psst... $r, over here! Next to the dead whale.',0,4,0,0,NULL);
