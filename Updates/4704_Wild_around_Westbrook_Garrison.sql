-- area around Westbrook Garrison

-- Mangy Wolf 525
UPDATE creature SET position_x = -9674.814, position_y = 767.8613, position_z = 35.020103, spawndist = 0, MovementType = 2 WHERE guid = 80478;
-- waypoints
DELETE FROM creature_movement WHERE id IN (80478);
INSERT INTO creature_movement (Id,Point,PositionX,PositionY,PositionZ,Orientation,Waittime,Scriptid) VALUES
-- 80478
(80478,1,-9674.814,767.8613,35.020103,100,5000,6),
(80478,2,-9670.91,771.658,35.4804,100,1,5),
(80478,3,-9704.672,736.8303,31.030186,100,5000,6),
(80478,4,-9708.1,732.811,30.5219,100,1,5);
-- Young Forest Bear 822
UPDATE creature SET position_x = -9679.942383, position_y = 747.824524, position_z = 32.057579, spawndist = 15, MovementType = 1 WHERE guid = 80480;
