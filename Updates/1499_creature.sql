-- Review and fix Varedis questline
DELETE FROM dbscripts_on_event WHERE id IN (14139);
INSERT INTO dbscripts_on_event(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('14139', '0', '10', '21894', '360000', '0', '0', '0', '0', '0', '0', '0', '0', '568.9283', '8653.24', '19.95006', '3.508112', 'Spawn Xeleth');
UPDATE creature_model_info SET combat_reach=2.2, bounding_radius=3 WHERE modelid = 20217;
