-- q.11416 and q.11417 'Eyes of the Eagle'

-- Talonshrike 24518
UPDATE creature SET spawntimesecsmin = 180, spawntimesecsmax = 180, MovementType = 2, spawndist = 0 WHERE guid = 114713;
UPDATE creature_template SET MovementType = 2 WHERE entry = 24518;
DELETE FROM creature_movement_template WHERE entry = 24518;
INSERT INTO creature_movement_template (entry,pathId,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
-- path 0
(24518,0,1,1670.28,-3893.96,188.081,0,5,100),
(24518,0,2,1626.546,-3918.438,188.0813,0,0,100),
(24518,0,3,1585.052,-3919.25,188.0813,0,0,100),
(24518,0,4,1556.429,-3898.101,188.0813,0,0,100),
(24518,0,5,1560.99,-3856.686,188.0813,0,0,100),
(24518,0,6,1581.641,-3826.707,188.0813,0,0,100),
(24518,0,7,1611.477,-3808.575,188.0813,0,0,100),
(24518,0,8,1647.585,-3817.988,188.0813,0,0,100),
(24518,0,9,1678.255,-3840.999,188.0813,0,0,100),
(24518,0,10,1676.164,-3882.285,188.0813,0,0,100),
(24518,0,11,1655.634,-3908.883,188.0813,0,0,100),
-- path 1
(24518,1,1,1599.17,-3903.579,79.6616,0,0,100),
(24518,1,2,1599.17,-3903.579,79.6616,30000,2451801,100),
(24518,1,3,1599.17,-3903.579,79.6616,2000,2451802,100);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2451801;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2451801,1,22,14,0x01 | 0x02 | 0x10,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2451802,1,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'set pathID = 0');
-- after object
DELETE FROM dbscripts_on_event WHERE id = 16142;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(16142,0,31,24518,500,0,0,0,0,0,0,0,0,0,0,0,0,'search for 24518'),
(16142,1,20,2,1,0,24518,114713,7 |0x10,0,0,0,0,0,0,0,0,'set pathID = 1');
