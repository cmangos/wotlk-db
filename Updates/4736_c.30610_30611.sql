-- Greela "The Grunt" Crankchain 30611
UPDATE creature SET position_x = 2143.85, position_y = -4747.76, position_z = 50.80807, orientation = 2.426 WHERE id IN (30611);
DELETE FROM gossip_menu WHERE entry IN(8494);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(8494,43664,0,0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(43664);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(43664,1,19850);
UPDATE creature_template SET GossipMenuId = 8494 WHERE entry = 30611;

-- War-Hunter Molog 30610
DELETE FROM gossip_menu WHERE entry IN(8218);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(8218,10214,0,0),
(8218,10215,0,169);
UPDATE gossip_menu_option SET condition_id = 169 WHERE menu_id=8218;
DELETE FROM npc_text_broadcast_text WHERE Id IN(10214,10215);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(10214,1,18596),
(10215,1,18597);
UPDATE creature_template SET NpcFlags = 1048577, UnitFlags = 576, GossipMenuId = 8218 WHERE entry = 30610;
DELETE FROM battlemaster_entry WHERE entry IN(30610);
INSERT INTO battlemaster_entry(entry,bg_template) VALUES
(30610,6);
