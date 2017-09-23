-- Fel Soldier
-- not req. anymore
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1894401,1894402);

-- Peon Overseer
UPDATE dbscripts_on_relay SET datalong2 = 10103, dataint = 0, dataint2 = 0 WHERE id = 10100 AND delay = 3;
