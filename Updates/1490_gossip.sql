-- Removed usage of table npc_gossip for Darkmoon Fair NPCs
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id = 14849);

DELETE FROM conditions WHERE condition_entry IN (1476, 1477, 1478);
INSERT INTO conditions VALUES
(1476, 12, 4, 0, 'Event ID 4 Active'),
(1477, 12, 5, 0, 'Event ID 5 Active'),
(1478, -2, 1477, 1476, '(Event ID 4 Active OR Event ID 5 Active)');

UPDATE gossip_menu SET condition_id = 1478 WHERE entry = 6201;

DELETE FROM gossip_menu WHERE entry = 6201 AND text_id = 7354;
INSERT INTO gossip_menu VALUES
(6201, 7354, 0, 0);
