-- q.11298 'What's in That Brew?'
DELETE FROM dbscripts_on_quest_end WHERE id = 11298;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11298,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(11298,0,1,7,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11298,4,0,0,0,0,0,0,0,2000001850,0,0,0,0,0,0,0,''),
(11298,9,0,0,0,0,0,0,0,2000001851,0,0,0,0,0,0,0,''),
(11298,12,0,0,0,0,0,0,0,2000001852,0,0,0,0,0,0,0,''),
(11298,15,0,0,0,0,0,0,0,2000001853,0,0,0,0,0,0,0,''),
(11298,19,0,0,0,0,0,0,0,2000001854,0,0,0,0,0,0,0,''),
(11298,19,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 11298 WHERE entry = 11298;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001850 AND 2000001854;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001850,'Wait a minute...',0,0,0,1,NULL),
(2000001851,'It\'s just...',0,0,0,1,NULL),
(2000001852,'Beer! Mere beer!',0,0,0,1,NULL),
(2000001853,'There\'s absolutely nothing out of the ordinary about it.',0,0,0,1,NULL),
(2000001854,'You! Not a word to Grick about this! Do you hear me?',0,0,0,1,NULL);
