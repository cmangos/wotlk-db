
-- Quest 12801 reset

-- Add linking to make sure that all npcs spawn together
DELETE FROM creature_linking_template WHERE master_entry=29173;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(29199, 609, 29173, 128, 0),
(29204, 609, 29173, 128, 0),
(29200, 609, 29173, 128, 0),
(29186, 609, 29173, 128, 0),
(29190, 609, 29173, 128, 0);
