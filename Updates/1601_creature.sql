-- Winterskorn Rune-Seer
-- not all should should have visual aura (43085)
DELETE FROM creature_template_addon WHERE entry = 23667;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23667,0,0,1,0,0,0,NULL);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 23667);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
-- death squad
(106611,0,0,1,0,0,0,29266),
(106612,0,0,1,0,0,0,29266),
(106613,0,0,1,0,0,0,29266),
-- casters
(106761,0,0,1,0,0,0,43085),
(106762,0,0,1,0,0,0,43085),
(106763,0,0,1,0,0,0,43085),
(106764,0,0,1,0,0,0,43085),
(106765,0,0,1,0,0,0,43085),
(106766,0,0,1,0,0,0,43085),
(106767,0,0,1,0,0,0,43085),
(106768,0,0,1,0,0,0,43085),
(106770,0,0,1,0,0,0,43085),
(106771,0,0,1,0,0,0,43085),
(106772,0,0,1,0,0,0,43085),
(106773,0,0,1,0,0,0,43085);

-- Winterskorn Berserker
DELETE FROM creature_template_addon WHERE entry = 23666;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23666,0,0,1,0,0,0,NULL);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 23666);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(106509,0,0,1,0,0,0,29266);

-- Winterskorn Elder
UPDATE creature_template SET UnitFlags = 32768, DynamicFlags = 0 WHERE entry = 23670;
DELETE FROM creature_template_addon WHERE entry = 23670;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23670,0,0,1,0,0,0,NULL);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 23670);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(106879,0,0,1,0,0,0,29266);
