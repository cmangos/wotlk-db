-- q.3123 'Testing the Vessel'
-- This quest was changed in 3.2. He no longer asks you to get wildkin muisek. 
-- He now sends you just north of Camp Mojache to get "Beast Muisek" from Ironfur bears and Longtooth runners. 
DELETE FROM item_required_target WHERE entry = 9618;
INSERT INTO item_required_target (entry, type, targetEntry) VALUES
(9618, 2, 5268),
(9618, 2, 5286);
DELETE FROM dbscripts_on_spell WHERE id = 11886;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11886, 1, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'despawn self');
