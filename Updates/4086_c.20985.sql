-- Correct movementType for c.20985
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (73766);
