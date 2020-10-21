-- q.11959 'Slay Loguhn'
-- after completed - spell 47970 need to be removed from player
DELETE FROM dbscripts_on_quest_end WHERE id = 11959;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11959,0,14,47970,0,0,0,0,6,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 11959 WHERE entry = 11959;
