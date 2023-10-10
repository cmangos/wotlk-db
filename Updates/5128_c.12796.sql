-- Raider Bork 12796
-- As of patch 3.2.2, Raider Bork has moved to the outside of the Barracks and is now mounted on a wolf.
DELETE FROM creature_template_addon WHERE entry = 12796;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, auras) VALUES
(12796,14334,0,1,0,0,NULL);
