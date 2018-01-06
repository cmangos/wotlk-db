-- add missing on death script
DELETE FROM `dbscripts_on_creature_death` WHERE `id` = 11489;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11489, 1, 10, 14566, 1200000, 0, 0, 0, 0, 0, 0, 0, 33.76, 491.548, -23.281, 3.16, 'spawns - Ancient Equine Spirit');
