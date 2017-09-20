-- q.13306 'Raise the Barricades' - Horde
-- q.13332 'Raise the Barricades' - Aliance
-- Quests scripted
DELETE FROM dbscripts_on_spell WHERE id = 59925;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(59925, 0, 15, 59922, 0, 0, 0, 4, 59923, 59924, 0, 0, 0, 0, 0, 0, 'cast random spell - Summon Barricade'),
(59925, 1, 8, 31887, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'killcredit'),
(59925, 1, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'despawn self');
