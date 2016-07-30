-- Borean Tundra - Warsong Hold

-- Foreman Mortuus
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 125576;
DELETE FROM creature_movement WHERE id = 125576;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(125576,1,2738.88,6136.92,77.5073,120000, 0,4.56794, 0, 0),
(125576,2,2740.6,6148.54,77.5038,120000, 0,1.21036, 0, 0);
