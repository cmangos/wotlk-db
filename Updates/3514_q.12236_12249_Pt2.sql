-- q.12249 'Ursoc, the Bear God' - Alliance
-- q.12236 'Ursoc, the Bear God' - Horde

-- quest should be available for both
UPDATE gossip_menu_option SET action_menu_id = 9497, condition_id = 20297 WHERE menu_id = 9496;
DELETE FROM conditions WHERE condition_entry IN (20296,20297);
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
-- 282 - Quest ID 12249 Taken
(20296, 9, 12236, 0, 0),
(20297, -2, 20296, 282, 0);
