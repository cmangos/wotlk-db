-- q.11471 'The Jig is Up' - Update
-- c.24742 "Mad" Jonah Sterling
DELETE FROM creature_movement_template WHERE Entry = 24742;
INSERT INTO creature_movement_template (`Entry`, `pathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(24742,1,1,-32.7382,-3434.87,6.05618,100,100,2474201),
(24742,1,2,-36.0278,-3425.38,4.89694,1.78459,1000,0),
(24742,1,3,-36.0278,-3425.38,4.89694,1.78459,100,2474202);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2474201,2474202);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2474201,1,20,2,0,0,24547,200,7,0,0,0,0,0,0,0,0,'buddy - movement chenged to 2:waypoints'),
(2474202,0,21,1,0,0,0,0,4,0,0,0,0,0,0,0,0,'active'),
(2474202,1,20,0,0,0,0,0,4,0,0,0,0,0,0,0,0,'idle'),
(2474202,300,0,0,0,0,0,0,0,23851,0,0,0,0,0,0,0,''),
(2474202,1000,0,0,0,0,24547,200,7,23854,0,0,0,0,0,0,0,''),
(2474202,2000,15,7,0,0,0,0,4,0,0,0,0,0,0,0,0,'');
-- jump fix
DELETE FROM dbscripts_on_creature_movement WHERE id = 2474202 AND delay = 100;
INSERT INTO dbscripts_on_creature_movement (id,delay,priority,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,datafloat,x,y,z,o,speed,condition_id,comments) VALUES
(2474202,100,0,20,15,0,0,0,0,0x04,0,0,0,0,5,-39.8345,-3415.08,-15.221,100,24,0,'jump');
-- not req anymore
DELETE FROM dbscripts_on_relay WHERE id = 20013;
