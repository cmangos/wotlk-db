-- q.12247 'Children of Ursoc'
-- q.12231 'The Bear God's Offspring'
-- option also available for horde
DELETE FROM conditions WHERE condition_entry IN (20262,20263);
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20262, 9, 12231, 1, 0, 0, 0),
(20263, -2, 20262, 283, 0, 0, 0);
UPDATE gossip_menu_option SET condition_id = 20263 WHERE menu_id = 9500;
UPDATE gossip_menu_option SET condition_id = 20263 WHERE menu_id = 9504;
