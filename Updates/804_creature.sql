-- Spirit of Ar'tor
-- position & addon corrected
UPDATE creature SET position_x = -3801.75, position_y = 2600.401, position_z = 90.27156, orientation = 5.759586 WHERE id = 21318;
DELETE FROM creature_template_addon WHERE entry = 21318;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(21318,0,65536,1,0,0,0,NULL);

-- Wrong fix removed
-- We need to find correct method to make Spirit of Ar'tor be visible only between q.10528 - q.10588 
DELETE FROM spell_area WHERE spell = 39841;
