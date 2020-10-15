-- q.12078 'Worm Wrangler'
DELETE FROM dbscripts_on_quest_start WHERE id = 12078;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12078,0,34,20118,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'Player didn\'t take q.12080 yet'),
(12078,10,0,0,0,0,26473,100,0,2000020525,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 12078 WHERE entry = 12078;
DELETE FROM dbscript_string WHERE entry = 2000020525;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020525,'I have another task for you, should you be willing, little one.',0,4,0,0,NULL);
DELETE FROM conditions WHERE condition_entry = 20118;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20118, 19, 12080, 0);
-- target should despawn after hit
DELETE FROM dbscripts_on_spell WHERE id IN (47431);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(47431,500,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
