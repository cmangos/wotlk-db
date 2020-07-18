-- q.12017 'Meat on the Hook' -- Redone

-- objects
UPDATE gameobject SET guid = 5710915 WHERE guid = 67986; -- Tua'kea's Fishing Hook
UPDATE gameobject SET guid = 5710916 WHERE guid = 15394; -- Tu'u'gwar's Bait

-- Event
DELETE FROM dbscripts_on_event WHERE id = 17567;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17567,500,31,23837,15,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 23837 - terminate if alive (quest check)'),
(17567,800,10,23837,30000,0,0,0,0x08,0,0,0,0,2650.911,1007.596,-24.70226,2.268928,''),
(17567,1000,9,5710916,33,0,0,0,0,0,0,0,0,0,0,0,0,''),
(17567,2000,10,26510,300000,0,0,0,0x08,1,0,0,0,2619.469,1135.42,-16.42517,1.678008,''),
(17567,3000,15,47172,0,0,23837,50,7,0,0,0,0,0,0,0,0,'');
-- Tu'u'gwar 26510
UPDATE creature_template SET Faction = 14, UnitFlags = 33536, MovementType = 2 WHERE Entry = 26510;
DELETE FROM creature_movement_template WHERE entry = 26510;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26510,1,2619.241,1135.298,-18.06446,100,0,5),
(26510,2,2619.567,1134.352,-18.06446,100,0,0),
(26510,3,2619.522,1134.332,-13.29494,100,0,0),
(26510,4,2621.945,1108.13,-13.29494,100,0,0),
(26510,5,2629.058,1055.418,-20.40605,100,0,0),
(26510,6,2675.385,1014.855,-27.79494,100,0,0),
(26510,7,2641.321,970.041,-24.87832,100,0,0),
(26510,8,2629.308,980.4308,-25.5172,100,0,0),
(26510,9,2646.952,1003.266,-25.5172,100,0,0),
(26510,10,2646.952,1003.266,-25.5172,100,300000,2651001);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2651001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2651001,1000,1,35,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2651001,2000,15,35309,0,0,23837,50,7,0,0,0,0,0,0,0,0,''),
(2651001,4000,20,1,15,300000,0,0,0x04 | 0x08,0,0,0,0,0,0,0,0,''),
(2651001,5000,2,59,32768,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
