-- Scarlet Courier
-- must be mounted on spawn
DELETE FROM creature_template_addon WHERE entry = 29076;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(29076,14583,0,1,0,0,0,NULL);
