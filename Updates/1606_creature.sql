-- s.29266 should be used instead of DeathState
-- Broken Sentinel
UPDATE creature_template SET UnitFlags = 32832, ExtraFlags = 0 WHERE entry = 24808;
DELETE FROM creature_addon WHERE guid IN (96948,96949,96950);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
-- death squad
(96948,0,0,0,0,0,0,29266),
(96949,0,0,0,0,0,0,29266),
(96950,0,0,0,0,0,0,29266);
UPDATE creature SET DeathState = 0 WHERE guid IN (96948,96949,96950);
