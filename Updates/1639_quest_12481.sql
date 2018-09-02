-- q.12481 'Adding Injury to Insult'
-- Bjorn Halgurdsson
-- position & addon corrected
UPDATE creature SET position_x = 1512.519, position_y = -5269.728, position_z = 206.0137, orientation = 5.410521, spawndist = 0, MovementType = 0 WHERE id = 24238;
DELETE FROM creature_template_addon WHERE entry = 24238;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(24238,22657,0,1,0,0,0,NULL);

DELETE FROM dbscripts_on_relay WHERE id = 20051;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20051,0,0,0,0,0,0,0,0,2000001706,0,0,0,0,0,0,0,''),
(20051,1,0,0,0,0,0,0,2,2000001707,0,0,0,0,0,0,0,''),
(20051,0,26,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry IN (2000001706,2000001707);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001706,'[Crude Vrykul] Bjorns mottar haelgond sygar!',0,1,0,0,NULL),
(2000001707,'No one speaks of my mother in that manner!',0,1,0,0,NULL);
