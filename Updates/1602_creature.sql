-- Marsh Caribou
-- s.29266 should be used instead of DeathState
UPDATE creature SET DeathState = 0 WHERE guid IN (103024,103025,103026,103027,103028);
DELETE FROM creature_template_addon WHERE entry = 25680;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25680,0,0,0,0,0,0,NULL);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25680);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
-- death squad
(103024,0,0,0,0,0,0,29266),
(103025,0,0,0,0,0,0,29266),
(103026,0,0,0,0,0,0,29266),
(103027,0,0,0,0,0,0,29266),
(103028,0,0,0,0,0,0,29266);
