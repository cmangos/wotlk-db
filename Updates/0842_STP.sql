-- Fixed position for spell 20534 (Teleport) used in Majordomo Executus encounter
DELETE FROM spell_target_position WHERE id = 20534;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(20534, 409, 737.16, -1176.70, -118.93, 3.131);
