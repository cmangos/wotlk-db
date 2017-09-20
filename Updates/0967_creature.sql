-- Stormpike- / Frostwolf Battleguard 
UPDATE creature_template_addon SET auras = 12782 WHERE entry = 14285;
DELETE FROM creature_template_addon WHERE entry = 14284;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(14284,0,0,1,16,0,0,12782);
