
-- Wintergrasp updates
-- missing spell targets
DELETE FROM spell_target_position WHERE id IN (59096,60035);
INSERT INTO spell_target_position VALUES
(59096,571,4561.58,2835.33,389.79,0.34), -- sniff confirmed
(60035,571,5325.06,2843.36,409.285,3.20278); -- ytdb

-- Fortress walls for despawn banners
DELETE FROM dbscripts_on_event WHERE id IN (19902,19903);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, comments) VALUES
-- left wall
(19902, 0, 40, 0, 0, 0, 192487, 20, 0, 'despawn alliance banner'),
(19902, 0, 40, 0, 0, 0, 192488, 20, 0, 'despawn horde banner'),
-- right wall
(19903, 0, 40, 0, 0, 0, 192487, 20, 0, 'despawn alliance banner'),
(19903, 0, 40, 0, 0, 0, 192488, 20, 0, 'despawn horde banner');
-- Note: the tower banners are handled by script
