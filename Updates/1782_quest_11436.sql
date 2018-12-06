-- q.11436 'Let's Go Surfing Now'

-- s.50007 corrected
UPDATE spell_target_position SET target_position_z = 193.3643, target_orientation = 1.98805 WHERE id = 50007;

-- Large Vrykul Harpoon Gun
UPDATE creature SET SpawnDist = 0, MovementType = 0 WHERE guid = 107391;

-- Dragonflayer Harpoon 27924
UPDATE creature_template SET SpeedRun = 5, InhabitType = 4, UnitFlags = 33554434, MovementType = 2 WHERE entry = 27924;
DELETE FROM creature_movement_template WHERE entry = 27924;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(27924,1,803.878,-5338.85,193.3643,3000,2792401,1.98805),
(27924,2,774.2992,-5292.162,184.0559,0,0,100),
(27924,3,695.4783,-5154,89.63921,0,0,100),
(27924,4,618.8479,-5027.323,2.58367,2000,2792402,1.570796),
(27924,5,610.8478,-5027.322,2.81263,2000,1,100);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2792401 AND 2792402;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2792401,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2792401,0,15,50011,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2792402,0,35,5,10,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2792402,1,14,46598,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
