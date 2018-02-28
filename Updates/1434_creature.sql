-- Durgan Thunderbeak - corrected
DELETE FROM creature_template_addon WHERE entry = 35131;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(35131,17759,0,1,1,0,0,NULL);
DELETE FROM creature_movement_template WHERE entry = 35131;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(35131,1,2280.898,5177.209,11.42304,2000,3513101,3.281219);
