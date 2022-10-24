-- q.12622 'The Leaders at Jin'Alai' - updates

-- Chulo the Mad 28496
UPDATE creature SET position_x = 5508.03, position_y = -3418.04, position_z = 350.9052, orientation = 5.689773 WHERE id = 28496;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28496);
DELETE FROM creature_template_addon WHERE entry = 28496;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(28496,0,0,1,0,333,0,15088);

-- chat corrections
UPDATE `broadcast_text` SET `ChatTypeID`=1, EmoteID1 = 15 WHERE `Id`IN (28126,28124,28123);
