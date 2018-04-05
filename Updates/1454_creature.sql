-- Old Man Colburn
DELETE FROM creature_addon WHERE guid = 116151;
DELETE FROM creature_template_addon WHERE entry = 25302;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25302,0,5,1,1,0,0,NULL);
