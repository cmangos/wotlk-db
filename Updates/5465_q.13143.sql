-- q.13143 'New Recruit'
-- Vereth the Cunning 30944
-- position corrected
UPDATE creature SET position_x = 6450.9946, position_y = 2048.2622, position_z = 568.11487, orientation = 3.63028, spawndist = 0, MovementType = 0 WHERE id = 30944;
UPDATE `broadcast_text` SET `ChatTypeID` = 2 WHERE `Id` IN (31580);
-- Geist Return Bunny 31049
-- missing added
DELETE FROM creature_addon WHERE guid = 536919;
DELETE FROM creature_movement WHERE id = 536919;
DELETE FROM game_event_creature WHERE guid = 536919;
DELETE FROM game_event_creature_data WHERE guid = 536919;
DELETE FROM creature_battleground WHERE guid = 536919;
DELETE FROM creature_linking WHERE guid = 536919;
DELETE FROM creature WHERE guid = 536919;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(536919,31049,571,1,7,6466.8184,1981.4106,633.26373,0.31415,180,180,0,0);
-- Lithe Stalker 30894
DELETE FROM creature_movement_template WHERE Entry = 30894;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(30894,1,1,6491,1978.11,644.09436,100,1000,3089411),
(30894,1,2,6491,1978.11,644.09436,100,100,3089407),
(30894,1,3,6515.05,1994.04,630.5306,100,100,3089408),
(30894,1,4,6530.74,2002.29,619.895,100,100,3089409),
(30894,1,5,6527.49,2015.5,591.799,100,100,3089410),
(30894,1,6,6488.3696,2043.7274,573.76184,100,0,0),
(30894,1,7,6474.111,2045.3837,571.3954,100,0,0),
(30894,1,8,6465.561,2038.8466,570.6898,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3089407 AND 3089411;
INSERT INTO dbscripts_on_creature_movement (id,delay,priority,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,datafloat,x,y,z,o,speed,condition_id,comments) VALUES
(3089407,0,0,20,15,0,0,0,0,0x04,0,0,0,0,5,6507.47,1986.22,639.003,100,19,0,'jump'),
(3089408,0,0,20,15,0,0,0,0,0x04,0,0,0,0,5,6530.74,2002.29,619.895,100,19,0,'jump'),
(3089409,0,0,20,15,0,0,0,0,0x04,0,0,0,0,5,6527.49,2015.5,591.799,100,19,0,'jump'),
(3089410,0,0,20,15,0,0,0,0,0x04,0,0,0,0,5,6511.15,2034.56,575.916,100,19,0,'jump'),
(3089411,0,0,48,768+65536,1,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'unitflags'),
(3089411,0,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'run on');
