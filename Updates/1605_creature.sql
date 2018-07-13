-- s.29266 should be used instead of DeathState

-- Warsong Battleguard
DELETE FROM creature_addon WHERE guid IN (110369,110370,110378,110379,110380,110381,110382,110383,110384,110386,110389,110390);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
-- death squad
(110369,0,0,1,0,0,0,29266),
(110370,0,0,1,0,0,0,29266),
(110378,0,0,1,0,0,0,29266),
(110379,0,0,1,0,0,0,29266),
(110380,0,0,1,0,0,0,29266),
(110381,0,0,1,0,0,0,29266),
(110382,0,0,1,0,0,0,29266),
(110383,0,0,1,0,0,0,29266),
(110384,0,0,1,0,0,0,29266),
(110386,0,0,1,0,0,0,29266),
(110389,0,0,1,0,0,0,29266),
(110390,0,0,1,0,0,0,29266);
UPDATE creature SET DeathState = 0, spawndist = 0, MovementType = 0 WHERE guid IN (110369,110370,110378,110379,110380,110381,110382,110383,110384,110386,110389,110390);

-- Warsong Honor Guard
DELETE FROM creature_addon WHERE guid IN (110502,110514,110515,110516,110520,110527,110528,110529,110530);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
-- death squad
(110502,0,0,1,0,0,0,29266),
(110514,0,0,1,0,0,0,29266),
(110515,0,0,1,0,0,0,29266),
(110516,0,0,1,0,0,0,29266),
(110520,0,0,1,0,0,0,29266),
(110527,0,0,1,0,0,0,29266),
(110528,0,0,1,0,0,0,29266),
(110529,0,0,1,0,0,0,29266),
(110530,0,0,1,0,0,0,29266);
UPDATE creature SET DeathState = 0, spawndist = 0, MovementType = 0 WHERE guid IN (110502,110514,110515,110516,110520,110527,110528,110529,110530);

-- Warsong Marksman
DELETE FROM creature_addon WHERE guid IN (110540,110541,110544,110545,110546,110547,110551,110552,110553,110554);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
-- death squad
(110540,0,0,2,0,0,0,29266),
(110541,0,0,2,0,0,0,29266),
(110544,0,0,2,0,0,0,29266),
(110545,0,0,2,0,0,0,29266),
(110546,0,0,2,0,0,0,29266),
(110547,0,0,2,0,0,0,29266),
(110551,0,0,2,0,0,0,29266),
(110552,0,0,2,0,0,0,29266),
(110553,0,0,2,0,0,0,29266),
(110554,0,0,2,0,0,0,29266);
UPDATE creature SET DeathState = 0 WHERE id = 25244;
