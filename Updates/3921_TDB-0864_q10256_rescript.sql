UPDATE quest_template SET SpecialFlags = 0, ReqCreatureOrGOId1 = 19938, ReqCreatureOrGOCount1 = 1 WHERE entry =10256;

DELETE FROM dbscripts_on_event WHERE id = 12857;
INSERT INTO dbscripts_on_event (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(12857, 0, 0, 10, 19938, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 2248.43, 2227.97, 138.56, 2.48121, 0, ''),
(12857, 1000, 0, 0, 0, 0, 0, 19938, 10, 0, 17529, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(12857, 5000, 0, 0, 0, 0, 0, 19938, 10, 0, 17530, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(12857, 8000, 0, 8, 19938, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
