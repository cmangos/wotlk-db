-- Medic Hawthorn
DELETE FROM creature_addon WHERE guid = 117434;
DELETE FROM creature_template_addon WHERE entry = 25825;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25825,0,8,1,1,0,0,NULL);

-- Wendy Darren
DELETE FROM creature_addon WHERE guid = 117809;
DELETE FROM creature_template_addon WHERE entry = 26085;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26085,0,0,1,1,375,0,NULL);

-- Gerald Green
DELETE FROM creature_addon WHERE guid = 117688;
DELETE FROM creature_template_addon WHERE entry = 26083;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26083,0,0,1,1,0,0,NULL);

-- Jeremiah Hawning
DELETE FROM creature_addon WHERE guid = 117746;
DELETE FROM creature_template_addon WHERE entry = 26084;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26084,0,0,1,1,0,0,NULL);
