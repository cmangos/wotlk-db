-- Dreadtalon 26838 - Dragonblight
UPDATE creature SET guid = 5713709 WHERE guid = 116174;
UPDATE creature_template SET InhabitType = 4, MovementType = 2 WHERE Entry = 26838;
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60, spawndist = 0, MovementType = 2, position_x = 3965.739, position_y = 1030.987, position_z = 153.1218, orientation = 4.368875 WHERE guid = 5713709;
DELETE FROM creature_movement_template WHERE entry = 26838;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26838,1,3912.76,1018.023,156.8647,100,0,0),
(26838,2,3887.621,1044.477,156.8647,100,0,0),
(26838,3,3887.004,1065.333,156.8647,100,0,0),
(26838,4,3902.593,1082.066,154.8092,100,0,0),
(26838,5,3932.907,1094.737,147.087,100,0,0),
(26838,6,3964.968,1072.676,148.198,100,0,0),
(26838,7,3964.994,1029.144,153.3925,100,0,0),
(26838,8,3938.714,1015.406,156.8647,100,0,0);
