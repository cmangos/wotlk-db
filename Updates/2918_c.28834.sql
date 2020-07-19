-- DK starting zone
-- movement errors fixes
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid IN (6090606,6090610);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (6090605,6090609);
UPDATE creature_movement SET id = 6090605 WHERE id = 6090606;
UPDATE creature_movement SET id = 6090609 WHERE id = 6090610;
