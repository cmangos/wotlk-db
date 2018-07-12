-- Tormented Drakkari
-- s.31261 should be used instead of DeathState
DELETE FROM creature_addon WHERE guid IN (103482,103483,103485,103488,103527,103528,103531,103532,103533,103543,103563,103564);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
-- death squad
(103482,0,0,1,0,0,0,31261),
(103483,0,0,1,0,0,0,31261),
(103485,0,0,1,0,0,0,31261),
(103488,0,0,1,0,0,0,31261),
(103527,0,0,1,0,0,0,31261),
(103528,0,0,1,0,0,0,31261),
(103531,0,0,1,0,0,0,31261),
(103532,0,0,1,0,0,0,31261),
(103533,0,0,1,0,0,0,31261),
(103543,0,0,1,0,0,0,31261);
-- 103563 - not req
-- 103564 - not req
-- finalize update
UPDATE creature SET DeathState = 0 WHERE id = 26965;
