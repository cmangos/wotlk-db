
-- Gameobject updates
UPDATE gameobject SET animprogress=100 WHERE id IN (192685,192687,192689,192690,192691);

-- update respawn delay for WG visual flags
UPDATE gameobject SET spawntimesecsmin=86400, spawntimesecsmax=86400 WHERE id IN (192487,192488,192501,192502);

-- Wintergrasp visual despawn script
DELETE FROM dbscripts_on_event WHERE id IN (19677,19676,19675);
INSERT INTO dbscripts_on_event (id, delay, command, buddy_entry, search_radius, data_flags, comments) VALUES
-- shadowsight tower
(19677, 0, 40, 192501, 511141, 18, 'despawn alliance banner on tower destroyed'),
(19677, 0, 40, 192501, 511142, 18, 'despawn alliance banner on tower destroyed'),
(19677, 0, 40, 192502, 515078, 18, 'despawn horde banner on tower destroyed'),
(19677, 0, 40, 192502, 515079, 18, 'despawn horde banner on tower destroyed'),
-- Winter's edge tower
(19676, 0, 40, 192501, 511139, 18, 'despawn alliance banner on tower destroyed'),
(19676, 0, 40, 192501, 511140, 18, 'despawn alliance banner on tower destroyed'),
(19676, 0, 40, 192502, 515076, 18, 'despawn horde banner on tower destroyed'),
(19676, 0, 40, 192502, 515075, 18, 'despawn horde banner on tower destroyed'),
-- Flamewatch tower
(19675, 0, 40, 192501, 511146, 18, 'despawn alliance banner on tower destroyed'),
(19675, 0, 40, 192501, 511145, 18, 'despawn alliance banner on tower destroyed'),
(19675, 0, 40, 192502, 515085, 18, 'despawn horde banner on tower destroyed'),
(19675, 0, 40, 192502, 515084, 18, 'despawn horde banner on tower destroyed');
DELETE FROM dbscripts_on_event WHERE id IN (19902,19903);
INSERT INTO dbscripts_on_event (id, delay, command, buddy_entry, search_radius, data_flags, comments) VALUES
-- West wall
(19902, 0, 40, 192487, 515074, 18, 'despawn alliance banner on tower destroyed'),
(19902, 0, 40, 192488, 511130, 18, 'despawn horde banner on tower destroyed'),
-- East wall
(19903, 0, 40, 192487, 515068, 18, 'despawn alliance banner on tower destroyed'),
(19903, 0, 40, 192488, 511129, 18, 'despawn horde banner on tower destroyed');
DELETE FROM dbscripts_on_event WHERE id IN (19661,19662,19663);
INSERT INTO dbscripts_on_event (id, delay, command, buddy_entry, search_radius, data_flags, comments) VALUES
-- NW Tower
(19661, 0, 40, 192487, 515069, 18, 'despawn alliance banner on tower destroyed'),
(19661, 0, 40, 192487, 514983, 18, 'despawn alliance banner on tower destroyed'),
(19661, 0, 40, 192488, 511135, 18, 'despawn horde banner on tower destroyed'),
(19661, 0, 40, 192488, 515087, 18, 'despawn horde banner on tower destroyed'),
-- SW Tower
(19662, 0, 40, 192487, 515071, 18, 'despawn alliance banner on tower destroyed'),
(19662, 0, 40, 192487, 515070, 18, 'despawn alliance banner on tower destroyed'),
(19662, 0, 40, 192488, 511134, 18, 'despawn horde banner on tower destroyed'),
(19662, 0, 40, 192488, 511133, 18, 'despawn horde banner on tower destroyed'),
-- NE Tower
(19663, 0, 40, 192487, 515067, 18, 'despawn alliance banner on tower destroyed'),
(19663, 0, 40, 192487, 515066, 18, 'despawn alliance banner on tower destroyed'),
(19663, 0, 40, 192488, 511132, 18, 'despawn horde banner on tower destroyed'),
(19663, 0, 40, 192488, 511131, 18, 'despawn horde banner on tower destroyed'),
-- SE Tower
(19663, 0, 40, 192487, 515072, 18, 'despawn alliance banner on tower destroyed'),
(19663, 0, 40, 192487, 515073, 18, 'despawn alliance banner on tower destroyed'),
(19663, 0, 40, 192488, 511136, 18, 'despawn horde banner on tower destroyed'),
(19663, 0, 40, 192488, 511137, 18, 'despawn horde banner on tower destroyed');
