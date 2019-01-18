-- q.11328 'Mission: Forsaken Intel'

DELETE FROM dbscripts_on_quest_end WHERE id = 11328;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11328,1,42,0,0,0,0,0,0,2200,3698,0,0,0,0,0,0,'equip'),
(11328,2,1,133,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11328,8,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11328,9,42,0,0,0,0,0,0,2705,0,0,0,0,0,0,0,'equip'),
(11328,10,0,0,0,0,0,0,0,2000001804,0,0,0,0,0,0,0,'');
UPDATE quest_template SET  CompleteScript = 11328 WHERE entry = 11328;
DELETE FROM dbscript_string WHERE entry = 2000001804;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001804,'Right, that should do it. I think ...hic.',0,0,0,0,NULL);
