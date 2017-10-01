-- add missing menu after giving item
UPDATE gossip_menu_option SET action_menu_id = 7180 WHERE menu_id = 7178 AND id = 0;
DELETE FROM gossip_menu WHERE entry = 7180;
INSERT INTO gossip_menu VALUES(7180,10378,0,0);
