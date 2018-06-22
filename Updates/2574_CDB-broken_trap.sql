-- Improved end script for quest 1193 (Broken Trap) as the broken trap GO is supposed to despawn
DELETE FROM dbscripts_on_quest_end WHERE id=1193 AND delay=1;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1193, 1000, 40, 0, 0, 0, 179485, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Despawn Broken Trap GO');
