-- Storm Peaks: Frostfield Lake - Phase 4
-- req. to see Dead Iren Giants
DELETE FROM spell_area WHERE spell = 56780;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(56780,4439,0,0,0,0,0,0,2,1);
-- c.30160 Brittle Revenant
DELETE FROM creature_addon WHERE guid BETWEEN 527238 AND 527243;
DELETE FROM creature_movement WHERE id BETWEEN 527238 AND 527243;
DELETE FROM game_event_creature WHERE guid BETWEEN 527238 AND 527243;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 527238 AND 527243;
DELETE FROM creature_battleground WHERE guid BETWEEN 527238 AND 527243;
DELETE FROM creature_linking WHERE guid BETWEEN 527238 AND 527243;
DELETE FROM creature WHERE guid BETWEEN 527238 AND 527243;
UPDATE creature SET position_x = 7381.967, position_y = -3081.9307, position_z = 837.4519, spawndist = 10, MovementType = 1 WHERE guid = 527218;
UPDATE creature SET position_x = 7303.3916, position_y = -3085.507, position_z = 837.4519, spawndist = 10, MovementType = 1 WHERE guid = 527219;
UPDATE creature SET position_x = 7267.821, position_y = -3084.1655, position_z = 837.4518, spawndist = 10, MovementType = 1 WHERE guid = 527220;
UPDATE creature SET position_x = 7355.1885, position_y = -3108.1255, position_z = 837.4519, spawndist = 10, MovementType = 1 WHERE guid = 527221;
UPDATE creature SET position_x = 7315.2397, position_y = -3131.372, position_z = 837.45184, spawndist = 10, MovementType = 1 WHERE guid = 527222;
UPDATE creature SET position_x = 7370.463, position_y = -3145.1453, position_z = 837.45184, spawndist = 10, MovementType = 1 WHERE guid = 527223;
UPDATE creature SET position_x = 7290.981, position_y = -3164.9172, position_z = 837.45184, spawndist = 10, MovementType = 1 WHERE guid = 527224;
UPDATE creature SET position_x = 7330.4463, position_y = -3181.3345, position_z = 837.45184, spawndist = 10, MovementType = 1 WHERE guid = 527225;
UPDATE creature SET position_x = 7411.7163, position_y = -3194.3499, position_z = 837.45184, spawndist = 10, MovementType = 1 WHERE guid = 527226;
UPDATE creature SET position_x = 7441.874, position_y = -3102.1978, position_z = 837.45184, spawndist = 10, MovementType = 1 WHERE guid = 527227;
UPDATE creature SET position_x = 7439.7935, position_y = -3139.7727, position_z = 837.45184, spawndist = 10, MovementType = 1 WHERE guid = 527228;
UPDATE creature SET position_x = 7500.8164, position_y = -3142.6572, position_z = 837.4635, spawndist = 10, MovementType = 1 WHERE guid = 527229;
UPDATE creature SET position_x = 7459.4946, position_y = -3070.8962, position_z = 837.45306, spawndist = 10, MovementType = 1 WHERE guid = 527230;
UPDATE creature SET position_x = 7466.9136, position_y = -3184.915, position_z = 837.47217, spawndist = 10, MovementType = 1 WHERE guid = 527231;
UPDATE creature SET position_x = 7502.0825, position_y = -3198.7136, position_z = 837.4636, spawndist = 10, MovementType = 1 WHERE guid = 527232;
UPDATE creature SET position_x = 7450.6367, position_y = -3234.9568, position_z = 837.45294, spawndist = 10, MovementType = 1 WHERE guid = 527233;
UPDATE creature SET position_x = 7267.949, position_y = -3210.3906, position_z = 837.4519, spawndist = 10, MovementType = 1 WHERE guid = 527234;
UPDATE creature SET position_x = 7204.0444, position_y = -3267.395, position_z = 837.4604, spawndist = 10, MovementType = 1 WHERE guid = 527235;
UPDATE creature SET position_x = 7233.746, position_y = -3166.8132, position_z = 837.49255, spawndist = 10, MovementType = 1 WHERE guid = 527236;
UPDATE creature SET position_x = 7542.113, position_y = -3235.3596, position_z = 837.37665, spawndist = 10, MovementType = 1 WHERE guid = 527237;
-- c.30163 Dead Iron Giant
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(527238,30163,571,1,4,7421.349,-3151.337,837.53516,0.296705961227416992,180,180,0,0),
(527239,30163,571,1,4,7224.3716,-3266.1653,837.53516,3.333578824996948242,180,180,0,0),
(527240,30163,571,1,4,7501.541,-3201.837,837.5466,1.064650893211364746,180,180,0,0),
(527241,30163,571,1,4,7242.402,-3325.2502,851.1848,6.003932476043701171,180,180,0,0),
(527242,30163,571,1,4,7287.112,-3199.5515,837.53516,0.383972436189651489,180,180,0,0),
(527243,30163,571,1,4,7369.6743,-3183.0137,837.5343,0.628318548202514648,180,180,0,0);
