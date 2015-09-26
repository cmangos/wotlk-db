-- Dark Rider of Acherus
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28768);
DELETE FROM creature_template_addon WHERE entry = 28768;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(28768, 25445, 0, 1, 1, 0, 0, NULL);
DELETE FROM dbscripts_on_creature_death WHERE id = 28768;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(28768,0,24,0,0,0,0,0,0,0,0,0,0,0,0,0,'unmount'),
(28768,0,10,28782,300000,0,0,0,0,0,0,0,0,0,0,0,'summon Acherus Deathcharger'),
(28768,1,22,35,0x01 | 0x80,28782,10,7,0,0,0,0,0,0,0,0,'temp faction');

-- Salanar the Horseman
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55, MinLevelHealth = 26140, MaxLevelHealth = 26140, FactionAlliance = 2084, FactionHorde = 2084, EquipmentTemplateId = 448 WHERE entry = 28788;

-- not req.
DELETE FROM vehicle_accessory WHERE vehicle_entry = 28782 AND seat = 0;

-- swap Acherus Deathcharger with Dark Rider of Acherus
UPDATE creature SET id = 28768, spawntimesecs = 300, curhealth = 13945, curmana = 0 WHERE guid IN (87007,128617,128618,128619,128621,128622,128623,128624,128625,128626,103471,103470,103363,103323,103322,103321,103300,103299,103294,103293,103292,103246,103245,103239,101589);
