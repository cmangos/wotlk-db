UPDATE gameobject SET position_x = 5800.89, position_y = -985.82, position_z = 409.78 WHERE id = 179677;
DELETE FROM spell_script_target WHERE entry IN(8712);
INSERT INTO spell_script_target VALUES
('8712', '0', '92252', '0'),
('8712', '0', '92388', '0');

