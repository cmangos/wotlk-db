-- Injured Warsong Warrior - 27106
-- Injured Warsong Mage - 27107
-- Injured Warsong Shaman - 27108
-- Injured Warsong Engineer - 27110
DELETE FROM creature_template_addon WHERE entry IN (27106,27107,27108,27110);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27106,0,0,1,1,0,0,NULL),
(27107,0,0,1,1,0,0,NULL),
(27108,0,0,1,1,0,0,NULL),
(27110,0,0,1,1,0,0,NULL);
