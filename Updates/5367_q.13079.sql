-- q.13079 'The Boon of Alexstrasza'
DELETE FROM dbscripts_on_quest_end WHERE id IN (13079);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13079,0,15,57680,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast 57680');
UPDATE quest_template SET CompleteScript = 13079 WHERE entry IN (13079);
