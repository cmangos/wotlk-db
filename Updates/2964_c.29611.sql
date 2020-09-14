-- King Varian Wrynn 29611
-- gossip corrected
-- this text shows up only during DK q.13188 'Where Kings Walk'
UPDATE gossip_menu SET condition_id = 20100 WHERE text_id = 13905;
DELETE FROM conditions WHERE condition_entry = 20100;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20100, 9, 13188, 0, 0);
