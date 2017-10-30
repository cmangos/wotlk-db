-- Fix wrong Cyrukh data causing script malfunction 
-- remove 256 unitflag from gahzrilla at end of WPs
DELETE FROM dbscripts_on_creature_movement WHERE id = 7273; -- wrong Id for script .. should be id+01
DELETE FROM dbscripts_on_creature_movement WHERE id = 727301;
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('727301', '0', '20', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gahzrilla - movement changed to 1:random'),
('727301', '0', '5', '58', '256', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Gahzrilla - Remove Unit Flag IMMUNE_TO_PLAYER'); -- 58 - Wotlk 46 - TBC

-- Set correct Script
UPDATE creature_movement_template SET script_id = 727301 WHERE entry = 7273;
