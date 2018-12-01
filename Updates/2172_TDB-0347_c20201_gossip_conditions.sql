-- Fix players being able to get more Chrono-beacons from Sa'at while event is running
DELETE FROM `conditions` WHERE condition_entry IN (10084,10085,10086);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`, `comments`) VALUES 
(10084, 18, 20201, 0, 'INSTANCE_CONDITION_ID_SAAT_BEACON - Event not in progress and Medivh is spawned and alive'),
(10085, -1, 518, 10084, NULL),
(10086, -1, 517, 10084, NULL);

-- Update old conditions
UPDATE gossip_menu_option SET condition_id = 10085 WHERE condition_id = 518 AND menu_id = 8088;
UPDATE gossip_menu_option SET condition_id = 10086 WHERE condition_id = 517 AND menu_id = 8088;
