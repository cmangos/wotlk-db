-- Advanced Training Dummy 24792 - wotlk stats TDB has lvl 70
UPDATE creature_template SET MinLevel= 80, MaxLevel = 80, Faction = 7, MinLevelHealth=1843000, MaxLevelHealth=1843000, HealthMultiplier = 200, Unitflags = 0 WHERE Entry = 24792;
DELETE FROM creature_template_addon WHERE entry = 24792;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(24792,0,0,1,0,0,0,'7056');
