-- Silvermoon City
-- Camberon <Alchemy Trainer>
UPDATE creature SET Spawndist = 0, MovementType = 0 WHERE guid = 57636;
DELETE FROM creature_movement WHERE id = 57636;
UPDATE creature_template SET MovementType = 0 WHERE entry = 16642;
DELETE FROM creature_movement_template WHERE entry = 16642;
UPDATE creature_template SET equipmentTemplateid = 285 WHERE entry = 16642;
DELETE FROM creature_template_addon WHERE entry = 16642;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(16642,0,0,0,16,0,0,NULL);