-- s.29266 should be used instead of DeathState
-- Warsong Blacksmith
DELETE FROM creature_addon WHERE guid = 113653;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(113653,0,0,0,0,0,0,29266);
UPDATE creature SET DeathState = 0, spawndist = 0, MovementType = 0 WHERE guid = 113653;
