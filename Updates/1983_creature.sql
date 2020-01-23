-- Drakkari Warrior 26425
-- Drakkari Shaman 26447
-- unitflags corrected (0x100 && 0x200 - added only for individual spawns)
UPDATE creature_template SET UnitFlags = 32768 WHERE entry IN (26447,26425);
-- 3 individuals
-- move to Wotlk 571x range
UPDATE creature SET guid = 5712168 WHERE guid = 102839;
UPDATE creature SET guid = 5712169 WHERE guid = 100963;
UPDATE creature SET guid = 5712170 WHERE guid = 100964;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (5712168,5712169,5712170);
DELETE FROM creature_movement WHERE id IN (5712168,5712169,5712170);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #5712168
(5712168,1,3246.88,-2275.95,108.704,1000,11,4.7822),
(5712168,2,3246.88,-2275.95,108.704,2000,3,4.7822),
-- #5712169
(5712169,1,3254.28,-2275.65,108.744,1000,11,4.67748),
(5712169,2,3254.28,-2275.65,108.744,2000,3,4.67748),
-- #5712170
(5712170,1,3258.14,-2275.75,108.703,1000,11,4.76475),
(5712170,2,3258.14,-2275.75,108.703,2000,3,4.76475);
