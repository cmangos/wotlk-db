-- q.12182 'To Venomspite!'
DELETE FROM dbscripts_on_quest_start WHERE id = 12182;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12182,0,15,62167,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast on player'),
(12182,0,30,837,0,0,0,0,2,0,0,0,0,0,0,0,0,'taxi - player');
UPDATE quest_template SET StartScript = 12182 WHERE entry = 12182;
