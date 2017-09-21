DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1 AND 16;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Despawn Self'),
(2,0,20,1,5,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Change Movement To 1 - Random'),
(5,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Run Mode On'),
(6,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Run Mode Off'),
(7,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Waypoint Pause'),
(9,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Set Active Object On'),
(10,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Set Active Object Off'),
(12,0,35,6,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Send AI Event 6 (B) to Self');
