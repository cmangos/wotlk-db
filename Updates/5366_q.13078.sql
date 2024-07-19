-- q.13078 'Dahlia's Tears'
DELETE FROM dbscripts_on_quest_end WHERE id IN (13078);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13078,0,15,60958,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast 60958');
UPDATE quest_template SET CompleteScript = 13078 WHERE entry IN (13078);
