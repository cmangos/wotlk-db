-- Wyrmrest Temple - Dragonblight
-- Part 2

-- [DND]Wyrmrest Temple Beam Target 30078
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 30078);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (527102,527104,527105);
DELETE FROM creature_movement WHERE id IN (527102,527104,527105);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- 527102
(527102,1,3590.2,366.514,-95.9504,4.39823,100,13),
(527102,2,3590.2,366.514,-95.9504,4.39823,100,3),
-- 527104
(527104,1,3503.11,175.5,-97.716,1.02974,100,11),
(527104,2,3503.11,175.5,-97.716,1.02974,100,3),
-- 527105
(527105,1,3485.56,357.341,-98.2515,5.32325,100,15),
(527105,2,3485.56,357.341,-98.2515,5.32325,100,3);

-- Warden of the Chamber 30058
-- individual addons
DELETE FROM creature_addon WHERE guid IN (527088,527090);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(527088,0,0,1,0,0,0,29266),
(527090,0,0,1,0,0,0,29266);
UPDATE creature SET position_x = 3592.494, position_y = 191.1563, position_z = -113.6729, orientation = 1.22173 WHERE guid = 527090;
UPDATE creature SET position_x = 3611.361, position_y = 204.7483, position_z = -113.6808, orientation = 3.665191 WHERE guid = 527088;

-- Invisible Stalker (Scale x3) 23155
DELETE FROM creature_addon WHERE guid IN (501118,501119,501121,501122);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
-- individual addons
(501118,0,0,1,0,0,0,42051),
(501119,0,0,1,0,0,0,42050),
(501121,0,0,1,0,0,0,42047),
(501122,0,0,1,0,0,0,55810);
