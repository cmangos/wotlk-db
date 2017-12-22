-- Big Roy
UPDATE creature SET position_x = -69.85601, position_y = -3276.637, position_z = -3.395498, spawndist = 0, MovementType = 2 WHERE guid = 28648;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 24785;
DELETE FROM creature_movement WHERE id = 28648;
DELETE FROM creature_movement_template WHERE entry = 24785;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(24785,1,-69.85601,-3276.637,-3.395498,0,0,0),
(24785,2,-31.81402,-3275.342,-3.3955,0,0,0),
(24785,3,-23.18538,-3287.081,-3.201057,0,0,0),
(24785,4,-27.87609,-3306.276,-3.867722,0,0,0),
(24785,5,-41.36871,-3311.332,-4.006608,0,0,0),
(24785,6,-68.50228,-3304.218,-3.784386,0,0,0),
(24785,7,-75.77333,-3292.346,-3.506611,0,0,0);
