-- Emeriss in Duskwood 14889
-- waypoints moved to templates
DELETE FROM creature_movement WHERE id IN (4256);
DELETE FROM creature_movement_template WHERE entry = 14889;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id, comment) VALUES
(14889,1,1,-10432,-397.764,44.0564,3.74772,0,0,'Emeriss in Duskwood'),
(14889,1,2,-10446.3,-408.543,43.0474,3.78699,0,0,'Emeriss in Duskwood'),
(14889,1,3,-10467.4,-402.571,42.3895,3.17831,0,0,'Emeriss in Duskwood'),
(14889,1,4,-10501.2,-405.028,51.5425,4.16398,0,0,'Emeriss in Duskwood'),
(14889,1,5,-10504,-414.706,49.6396,4.56454,0,0,'Emeriss in Duskwood'),
(14889,1,6,-10505.4,-424.041,49.1419,4.53705,0,0,'Emeriss in Duskwood'),
(14889,1,7,-10506.5,-429.939,47.9837,4.95723,0,0,'Emeriss in Duskwood'),
(14889,1,8,-10506.9,-447.296,48.5073,4.59202,0,0,'Emeriss in Duskwood'),
(14889,1,9,-10510,-460.381,47.8511,4.70983,0,0,'Emeriss in Duskwood'),
(14889,1,10,-10507.3,-489.449,53.4729,5.93898,0,0,'Emeriss in Duskwood'),
(14889,1,11,-10495.8,-496.354,52.7622,6.00574,0,0,'Emeriss in Duskwood'),
(14889,1,12,-10474.3,-497.657,51.3791,0.488316,0,0,'Emeriss in Duskwood'),
(14889,1,13,-10458.5,-491.837,52.7595,0.720009,0,0,'Emeriss in Duskwood'),
(14889,1,14,-10444.1,-472.517,50.125,1.2423,0,0,'Emeriss in Duskwood'),
(14889,1,15,-10439,-457.246,47.2037,1.2423,0,0,'Emeriss in Duskwood'),
(14889,1,16,-10435.4,-426.287,43.7389,1.58002,0,0,'Emeriss in Duskwood');
