-- q.12687 'Into the Realm of Shadows'
DELETE FROM dbscripts_on_quest_start WHERE id = 12687;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12687,1,15,52693,0,0,0,6,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 12687 WHERE entry = 12687;
