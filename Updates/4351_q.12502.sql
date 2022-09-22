-- q.12502 'Troll Patrol: High Standards'

-- old script removed
DELETE FROM dbscripts_on_spell WHERE `id` = 51247;
-- object removed
-- comes from spell
DELETE FROM `gameobject` WHERE `id` = 190523;
-- Drakkari Pedestal 01 - 28064
UPDATE creature SET spawndist=0, MovementType=0 WHERE guid=520290;
-- Drakkari Pedestal 02 - 28304
UPDATE creature SET spawndist=0, MovementType=0 WHERE guid=522173;
-- Drakkari Pedestal 03 - 28305
UPDATE creature SET spawndist=0, MovementType=0 WHERE guid=522174;
