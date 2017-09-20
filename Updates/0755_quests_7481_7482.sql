-- q.7481 'Elven Legends' - Horde
-- q.7482 'Elven Legends' - Alliance
-- conditions corrected
UPDATE gossip_menu_option SET condition_id = 453 WHERE menu_id = 5743 AND id = 0;
UPDATE gossip_menu_option SET condition_id = 452 WHERE menu_id = 5743 AND id = 1;
-- radius in script corrected
UPDATE dbscripts_on_gossip SET datalong2 = 10 WHERE id = 5743 AND delay = 0;
UPDATE dbscripts_on_gossip SET datalong2 = 10 WHERE id = 5744 AND delay = 0;

-- Lorekeeper Lydros
-- gossip added
UPDATE creature_template SET GossipMenuId = 5747 WHERE entry = 14368;
DELETE FROM gossip_menu WHERE entry = 5747;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(5747, 6925, 0, 0);
