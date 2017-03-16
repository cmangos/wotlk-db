-- q.3124 'Hippogryph Muisek'
-- Prevent Players to get all credits from one death body.  
-- Spell ID - 11887 Capture Hippogryph
DELETE FROM dbscripts_on_spell WHERE id = 11887;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11887, 1, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'despawn self');
