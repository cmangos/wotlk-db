-- frozen halls entrance teleport
DELETE FROM game_tele WHERE id = 1426; 
INSERT INTO game_tele (id, position_x, position_y, position_z, orientation, map, name) VALUES
(1426, 5632.477, 2016.71, 798.27, 4.73, 571, 'frozenhalls');

-- fix for few items
-- now they will display correct info (and 100% they're not part of milling)
UPDATE item_template SET Flags = 2048 WHERE entry = 37020;
UPDATE item_template SET Flags = 2048 WHERE entry = 37200;
UPDATE item_template SET Flags = 64 WHERE entry = 40652;
UPDATE item_template SET Flags = 2112 WHERE entry = 40970;
UPDATE item_template SET Flags = 2048 WHERE entry = 41843;
