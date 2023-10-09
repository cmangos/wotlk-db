-- q.11672 'Enlistment Day'
DELETE FROM dbscripts_on_quest_start WHERE id IN (11672);
INSERT INTO dbscripts_on_quest_start (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11672,1,0,0,0,0,0,0,0,0,24758,0,0,0,0,0,0,0,'SaY');
UPDATE quest_template SET StartScript = 11672 WHERE entry = 11672;
