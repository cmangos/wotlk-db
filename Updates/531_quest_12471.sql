-- q.12471 'Cruelty of the Kvaldir'
DELETE FROM dbscripts_on_quest_start WHERE id = 12471;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12471,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(12471,2,0,0,0,0,0,0,2000000991,0,0,0,0,0,0,0,''),
(12471,4,3,0,700,0,0,0,0,0,0,0,1983.45,5977.9,15.4574,5.83528,'move'),
(12471,18,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp');
UPDATE quest_template SET StartScript = 12471 WHERE entry = 12471;
DELETE FROM db_script_string WHERE entry = 2000000991;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000991,'You have saved me from those vicious monsters. Thank you.',0,0,0,0,NULL);
