-- Crusader Forward Camp - Zul'Drak
-- Engineer Reed 29688
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 29688);
DELETE FROM creature_template_addon WHERE entry = 29688;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(29688,0,0,1,0,233,0,NULL);

-- Reed's Steam Tank 29691
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 29691);
DELETE FROM creature_template_addon WHERE entry = 29691;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(29691,0,7,0,0,0,0,NULL);
