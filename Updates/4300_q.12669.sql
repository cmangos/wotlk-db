-- q.12669 'So Far, So Bad'
-- Blight Cauldron Bunny 00 28739
UPDATE creature SET spawndist = 0, MovementType = 0, spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 28739;
-- Dilute Blight Cauldron 52227
DELETE FROM dbscripts_on_spell WHERE id IN (52227);
-- stuck in object
UPDATE creature SET position_x = 6222.584961, position_y = -2163.866943, position_z = 236.210159 WHERE guid = 523242;
