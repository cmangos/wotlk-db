-- Remove permanent death state and shorten respawn timer for Homing Robots
DELETE FROM creature_template_addon WHERE entry IN (7784,7806,7807);
DELETE FROM creature_addon WHERE guid IN (23229,93301,50381);
UPDATE creature SET spawntimesecsmin=150, spawntimesecsmax=150 WHERE id IN (7784,7806,7807);
