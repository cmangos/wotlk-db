-- q.12698 'The Gift That Keeps On Giving'
DELETE FROM dbscripts_on_quest_end WHERE id = 12698;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12698,0,17,39253,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'remove source item');
UPDATE quest_template SET CompleteScript = 12698 WHERE entry = 12698;
