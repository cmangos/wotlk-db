-- adds missing text
DELETE FROM dbscript_string WHERE entry = 2000001236;
INSERT INTO dbscript_string(entry,content_default) VALUES
(2000001236,'That is the wrong answer, %n. Be off with you.');
DELETE FROM dbscripts_on_gossip WHERE id = 476301;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('476301', '0', '0', '0', '0', '0', '0', '0', '0', '2000001236', '0', '0', '0', '0', '0', '0', '0', 'Say text'),
('476301', '2000', '15', '6766', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'cast Test of Lore');
