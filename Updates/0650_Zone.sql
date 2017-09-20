-- Garrosh's Landing - Borean Tundra

-- Warsong Marksman
UPDATE creature SET phaseMask = 2, DeathState = 1 WHERE guid IN (110540,110541,110544,110545,110546,110547,110551,110552,110553,110554);
-- some must have individual addons
DELETE FROM creature_addon WHERE guid IN (110540,110541,110544,110545,110546,110547,110551,110552,110553,110554);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(110540,0,7,0,0,0,0,NULL),
(110541,0,7,0,0,0,0,NULL),
(110544,0,7,0,0,0,0,NULL),
(110545,0,7,0,0,0,0,NULL),
(110546,0,7,0,0,0,0,NULL),
(110547,0,7,0,0,0,0,NULL),
(110551,0,7,0,0,0,0,NULL),
(110552,0,7,0,0,0,0,NULL),
(110553,0,7,0,0,0,0,NULL),
(110554,0,7,0,0,0,0,NULL);

-- Mootoo the Younger
DELETE FROM gossip_menu WHERE entry = 9168;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUE
(9168, 12427,0,0);
UPDATE creature SET phaseMask = 3, spawntimesecs = 5 WHERE id = 25504;
UPDATE creature_template SET GossipMenuId = 9168 WHERE Entry = 25504;
UPDATE creature_template_addon SET bytes1 = 0 WHERE entry = 25504;
