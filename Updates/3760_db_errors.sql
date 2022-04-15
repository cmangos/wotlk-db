-- duplicated equip removed
UPDATE creature SET equipment_id = 0 WHERE id IN (16216,16215,16194);
