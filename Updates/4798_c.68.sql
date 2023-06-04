-- Stormwind City Guard 68
-- custom made path removed
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid=79666;
DELETE FROM creature_movement WHERE id = 79666;
