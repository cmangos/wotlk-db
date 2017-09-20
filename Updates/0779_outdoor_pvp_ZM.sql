
-- Condition support for ZM outdoor pvp npcs
UPDATE gossip_menu_option SET condition_id=1167,action_menu_id=-1 WHERE menu_id = 7722 AND id=0; -- horde
UPDATE gossip_menu_option SET condition_id=1166,action_menu_id=-1 WHERE menu_id = 7724 AND id=0; -- ally

DELETE FROM conditions WHERE condition_entry IN(1166,1167);
INSERT INTO conditions VALUES
(1166,38,3521,0),
(1167,38,3521,1);
