-- c.5936
-- fix werid swim animation
UPDATE creature SET MovementType = 3 WHERE id = 5936 AND MovementType = 2;
