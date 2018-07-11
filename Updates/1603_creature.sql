-- Riplash Sorceress
-- s.29266 should be used instead of DeathState
-- Phasemask - corrected
UPDATE creature SET PhaseMask = 2, DeathState = 0 WHERE guid IN (56818,56819,103592,103593,103609,103611);
DELETE FROM creature_template_addon WHERE entry = 24662;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(24662,0,0,0,0,0,0,NULL);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 24662);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
-- death squad
(56818,0,0,0,0,0,0,29266),
(56819,0,0,0,0,0,0,29266),
(103592,0,0,0,0,0,0,29266),
(103593,0,0,0,0,0,0,29266),
(103609,0,0,0,0,0,0,29266),
(103611,0,0,0,0,0,0,29266);
