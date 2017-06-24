-- q.11571 'Learning to Communicate'
DELETE FROM dbscripts_on_quest_end WHERE id = 11571;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11571,0,15,45324,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 11571 WHERE entry = 11571;
