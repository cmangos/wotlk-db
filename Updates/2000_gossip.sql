-- Sergeant Bly 7604 - Zul'Farrak
-- gossip corrected
DELETE FROM conditions WHERE condition_entry BETWEEN 2000 AND 2003;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(2000,9,2768,0),
(2001,-3,2000,0),
(2002,-1,2000,875),
(2003,-1,2001,875);
-- Both options shoudlnt show up together
-- this option should be available only when q.2768 'Divino-matic Rod' is active
UPDATE gossip_menu_option SET action_script_id = 94101, condition_id = 2002 WHERE menu_id = 941 AND id = 0;
-- this option should be available only when q.2768 'Divino-matic Rod' is not active
UPDATE gossip_menu_option SET condition_id = 2003 WHERE menu_id = 941 AND id = 1;
