-- DK Zone - Havenshire Stallion 28605
-- waypoints
UPDATE creature SET position_x = 2222.3447, position_y = -5818.2954, position_z = 101.63968, orientation = 1.67, spawndist = 0, MovementType = 2 WHERE guid IN (560377);
DELETE FROM creature_movement WHERE id IN (560377);
INSERT INTO creature_movement (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(560377,1,2222.3447,-5818.2954,101.63968,100,2000,2850503),
(560377,2,2193.6536,-5804.279,101.44456,100,0,0),
(560377,3,2191.5806,-5808.961,101.44456,100,0,0),
(560377,4,2190.4019,-5833.695,101.41478,100,0,0),
(560377,5,2192.386,-5848.4937,101.41478,100,0,0),
(560377,6,2202.781,-5858.187,101.657875,100,0,0),
(560377,7,2217.3516,-5860.6836,101.407875,100,0,0),
(560377,8,2228.4097,-5858.6533,101.282875,100,0,0),
(560377,9,2233.331,-5851.655,101.657875,1.675516128540039062,2000,2850504), -- emote
(560377,10,2233.1401,-5839.78,101.76421,100,1,2850505); -- jump
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2850503,2850504,2850505);
INSERT INTO dbscripts_on_creature_movement (id,delay,priority,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,datafloat,x,y,z,o,speed,condition_id,comments) VALUES
(2850503,0,0,1,377,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'emote'),
(2850503,0,0,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Run OFF'),
(2850504,0,0,1,377,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'emote'),
(2850504,0,0,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Run ON'),
(2850505,0,0,20,15,30600,0,0,0,0x04,0,0,0,0,10,2231.4492,-5828.905,101.37055,1.675516128540039062,17,0,'jump');

-- GENERIC RELAY for jumps added
DELETE FROM dbscripts_on_relay WHERE id = 30600;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(30600,0,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - set Waypoints');
