-- q.12422 'Tactical Clemency'
-- Player should receive mail from Gorgona
DELETE FROM dbscripts_on_quest_end WHERE id = 12422;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12422,0,38,234,27102,0,0,0,0,0,0,0,0,0,0,0,0,'Send Mail');
UPDATE quest_template SET CompleteScript = 12422 WHERE entry = 12422;
