-- Storm Peaks: Thunderfall - Phase 4
-- Phase Shift 2: Frost Giants - Area added
DELETE FROM spell_area WHERE spell = 55858 AND area = 4440;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(55858,4440,12956,0,0,0,0,0,2,1); -- may check exact start and end timer
-- c.30144 Restless Frostborn Ghost
-- summoned
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 30144);
DELETE FROM creature_movement WHERE id IN(SELECT guid FROM creature WHERE id = 30144);
DELETE FROM game_event_creature WHERE guid IN(SELECT guid FROM creature WHERE id = 30144);
DELETE FROM game_event_creature_data WHERE guid IN(SELECT guid FROM creature WHERE id = 30144);
DELETE FROM creature_battleground WHERE guid IN(SELECT guid FROM creature WHERE id = 30144);
DELETE FROM creature_linking WHERE guid IN(SELECT guid FROM creature WHERE id = 30144);
DELETE FROM creature WHERE id = 30144;
-- c.29974 Niffelem Forefather
UPDATE creature_template SET StaticFlags1 = StaticFlags1|2147483648 WHERE entry IN (29974);
UPDATE creature SET position_x = 7939.52, position_y = -3208.63, position_z = 860.42, spawndist = 10, MovementType = 1 WHERE guid = 526748;
UPDATE creature SET position_x = 7908.73, position_y = -3329.92, position_z = 857.331, spawndist = 10, MovementType = 1 WHERE guid = 526749;
UPDATE creature SET position_x = 7947.9336, position_y = -3287.9639, position_z = 857.5389, spawndist = 10, MovementType = 1 WHERE guid = 526750;
UPDATE creature SET position_x = 7960.4326, position_y = -3390.853, position_z = 867.6378, spawndist = 10, MovementType = 1 WHERE guid = 526751;
UPDATE creature SET position_x = 7884.265, position_y = -3416.1062, position_z = 865.0101, spawndist = 10, MovementType = 1 WHERE guid = 526752;
UPDATE creature SET position_x = 7870.4, position_y = -3470.04, position_z = 866.81, spawndist = 10, MovementType = 1 WHERE guid = 526753;
UPDATE creature SET position_x = 7693.262, position_y = -3168.1853, position_z = 868.214, spawndist = 0, MovementType = 4 WHERE guid = 526743;
UPDATE creature SET position_x = 7713.5034, position_y = -3235.0095, position_z = 863.3759, spawndist = 0, MovementType = 4 WHERE guid = 526744;
UPDATE creature SET position_x = 7724.0806, position_y = -3302.3464, position_z = 865.03326, spawndist = 0, MovementType = 4 WHERE guid = 526745;
UPDATE creature SET position_x = 7814.883, position_y = -3180.7834, position_z = 861.1043, spawndist = 0, MovementType = 4 WHERE guid = 526746;
UPDATE creature SET position_x = 7785.011, position_y = -3298.777, position_z = 864.62616, spawndist = 0, MovementType = 4 WHERE guid = 526747;
DELETE FROM creature_movement WHERE id BETWEEN 526743 AND 526747;
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- 526743
(526743,1,7693.262,-3168.1853,868.214,100,500,0),
(526743,2,7709.27,-3164.7004,868.99634,100,0,0),
(526743,3,7727.441,-3152.3494,867.7997,100,0,0),
(526743,4,7757.7993,-3144.5881,867.8803,100,0,0),
(526743,5,7783.903,-3146.2666,868.24316,100,500,0),
-- 526744
(526744,1,7713.5034,-3235.0095,863.3759,100,500,0),
(526744,2,7727.2876,-3235.8997,861.9783,100,0,0),
(526744,3,7742.933,-3233.2856,862.19763,100,0,0),
(526744,4,7752.816,-3221.191,862.93286,100,0,0),
(526744,5,7762.0703,-3204.2578,863.2426,100,0,0),
(526744,6,7764.636,-3193.307,863.46277,100,500,0),
-- 526745
(526745,1,7724.0806,-3302.3464,865.03326,100,500,0),
(526745,2,7733.761,-3302.8547,864.5879,100,0,0),
(526745,3,7749.471,-3308.7795,864.9781,100,0,0),
(526745,4,7753.763,-3301.6614,864.6161,100,0,0),
(526745,5,7753.8926,-3290.9348,865.3211,100,0,0),
(526745,6,7751.154,-3282.7283,864.78644,100,0,0),
(526745,7,7740.7456,-3275.625,862.90393,100,500,0),
-- 526746
(526746,1,7814.883,-3180.7834,861.1043,100,500,0),
(526746,2,7824.135,-3194.195,859.30176,100,0,0),
(526746,3,7831.834,-3203.4062,858.0887,100,0,0),
(526746,4,7824.979,-3215.0464,858.6638,100,0,0),
(526746,5,7812.3784,-3226.6272,858.01013,100,0,0),
(526746,6,7800.658,-3238.9453,859.4133,100,0,0),
(526746,7,7804.482,-3266.5576,859.97675,100,500,0),
-- 526747
(526747,1,7785.011,-3298.777,864.62616,100,500,0),
(526747,2,7802.6206,-3290.984,860.8711,100,0,0),
(526747,3,7823.5923,-3295.1128,860.7611,100,0,0),
(526747,4,7838.511,-3308.602,860.8661,100,0,0),
(526747,5,7850.6406,-3319.9978,859.88947,100,500,0);
-- c.30135 Restless Frostborn Warrior
DELETE FROM creature_addon WHERE guid BETWEEN 527186 AND 527194;
DELETE FROM creature_movement WHERE id BETWEEN 527186 AND 527194;
DELETE FROM game_event_creature WHERE guid BETWEEN 527186 AND 527194;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 527186 AND 527194;
DELETE FROM creature_battleground WHERE guid BETWEEN 527186 AND 527194;
DELETE FROM creature_linking WHERE guid BETWEEN 527186 AND 527194;
DELETE FROM creature WHERE guid BETWEEN 527186 AND 527194;
DELETE FROM creature_addon WHERE guid BETWEEN 527186 AND 527194;
DELETE FROM creature_movement WHERE id BETWEEN 527693 AND 527697;
DELETE FROM game_event_creature WHERE guid BETWEEN 527693 AND 527697;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 527693 AND 527697;
DELETE FROM creature_battleground WHERE guid BETWEEN 527693 AND 527697;
DELETE FROM creature_linking WHERE guid BETWEEN 527693 AND 527697;
DELETE FROM creature WHERE guid BETWEEN 527693 AND 527697;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(527186,30135,571,1,4,7696.204,-3321.1262,874.34424,0,180,180,10,1),
(527187,30135,571,1,4,7716.61,-3174.4785,865.3194,0,180,180,10,1),
(527188,30135,571,1,4,7762.5,-3183.334,862.5365,0,180,180,10,1),
(527189,30135,571,1,4,7891.788,-3176.2705,857.50696,0,180,180,10,1),
(527190,30135,571,1,4,7868.7085,-3328.4905,858.19147,0,180,180,10,1),
(527191,30135,571,1,4,7932.738,-3267.701,858.3682,0,180,180,10,1),
(527192,30135,571,1,4,7932.8916,-3300.2227,856.7985,0,180,180,10,1),
(527193,30135,571,1,4,7948.1074,-3237.5757,858.65436,0,180,180,10,1),
(527194,30135,571,1,4,7965.7695,-3280.3203,858.9891,0,180,180,10,1),
(527693,30135,571,1,4,7939.828,-3181.4727,863.5306,0,180,180,10,1),
(527694,30135,571,1,4,7807.53,-3145.54,866.738,0,180,180,10,1),
(527695,30135,571,1,4,7822.89,-3184.25,860.207,0,180,180,10,1),
(527696,30135,571,1,4,7739.69,-3227.59,861.671,0,180,180,10,1),
(527697,30135,571,1,4,7710.59,-3263.64,864.413,0,180,180,10,1);
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE id = 30135;
