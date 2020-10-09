-- q.13266 'A Life Without Regret'
DELETE FROM dbscripts_on_quest_start WHERE id = 13266;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13266,10,9,520423,180,0,0,0,0,0,0,0,0,0,0,0,0,''),
(13266,11,9,520424,180,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 13266 WHERE entry = 13266;
