-- q.12652 'Feedin' Da Goolz'
-- source item should be removed after q. finished
DELETE FROM dbscripts_on_quest_end WHERE id IN (12652);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12652,0,17,38701,1,0,0,0,0x08,0,0,0,0,0,0,0,0,'remove item from player');
UPDATE quest_template SET CompleteScript = 12652 WHERE entry = 12652;
