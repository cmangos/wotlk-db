-- Training Dummy - Updates

-- stats
UPDATE creature_template SET MinLevelHealth=1, MaxLevelHealth=1, HealthMultiplier = 0.000186999997822567, Unitflags = 0, DynamicFlags = 4, Detection = 5 WHERE Entry = 31144;
UPDATE creature_template SET MinLevelHealth=24009943, MaxLevelHealth=24009943, HealthMultiplier = 1721.760009765625, Unitflags = 0, DynamicFlags = 4, Detection = 5 WHERE Entry = 31146;
UPDATE creature_template SET MinLevelHealth=1, MaxLevelHealth=1, HealthMultiplier = 0.000186999997822567, Unitflags = 0, DynamicFlags = 4, Detection = 5 WHERE Entry = 32666;
UPDATE creature_template SET MinLevelHealth=1, MaxLevelHealth=1, HealthMultiplier = 0.000186999997822567, Unitflags = 0, DynamicFlags = 4, Detection = 5 WHERE Entry = 32667;
DELETE FROM creature_template_addon WHERE entry IN (31144,31146,32666,32667);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(31144,0,0,1,0,0,0,'7056'),
(31146,0,0,1,0,0,0,'7056'),
(32666,0,0,1,0,0,0,'7056'),
(32667,0,0,1,0,0,0,'7056');

-- missing spawns added
-- Orgrimmar
DELETE FROM `creature` WHERE guid BETWEEN 550467 AND 550480;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
-- Grandmaster's Training Dummy 31144
(550467,31144,1,1,1,0,0,2025.731,-4845.146,50.458015,1.570796370506286621,180,180,0,0,1,0,0,0),
(550468,31144,1,1,1,0,0,2003.3125,-4839.5415,51.959717,1.518436431884765625,180,180,0,0,1,0,0,0),
(550469,31144,1,1,1,0,0,2153.1423,-4619.2446,53.964058,3.996803998947143554,180,180,0,0,1,0,0,0),
(550470,31144,1,1,1,0,0,2161.9983,-4637.856,52.546944,3.385938644409179687,180,180,0,0,1,0,0,0),
-- Heroic Training Dummy 31146
(550471,31146,1,1,1,0,0,2015.1841,-4842.297,51.73907,1.500983119010925292,180,180,0,0,24009943,0,0,0),
(550472,31146,1,1,1,0,0,2157.7986,-4629.354,53.06234,3.822271108627319335,180,180,0,0,24009943,0,0,0),
-- Expert's Training Dummy 32666
(550473,32666,1,1,1,0,0,2111.0486,-4677.955,44.253693,2.426007747650146484,180,180,0,0,1,0,0,0),
(550474,32666,1,1,1,0,0,2116.6372,-4672.4204,44.32611,2.39110112190246582,180,180,0,0,1,0,0,0),
(550475,32666,1,1,1,0,0,2108.5781,-4671.0537,45.12694,2.286381244659423828,180,180,0,0,1,0,0,0),
(550476,32666,1,1,1,0,0,2114.712,-4665.3906,45.688923,2.39110112190246582,180,180,0,0,1,0,0,0),
-- Master's Training Dummy 32667
(550477,32667,1,1,1,0,0,2128.1892,-4673.3057,44.32314,0.977384388446807861,180,180,0,0,1,0,0,0),
(550478,32667,1,1,1,0,0,2142.059,-4670.241,47.860653,2.513274192810058593,180,180,0,0,1,0,0,0),
(550479,32667,1,1,1,0,0,2136.7415,-4676.599,45.811398,1.762782573699951171,180,180,0,0,1,0,0,0),
(550480,32667,1,1,1,0,0,2127.5173,-4665.387,46.050636,5.619960308074951171,180,180,0,0,1,0,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid BETWEEN 550467 AND 550480;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(550467,0,0,1,0,0,0,'7056 61573'),
(550468,0,0,1,0,0,0,'7056 61573'),
(550469,0,0,1,0,0,0,'7056 61573'),
(550470,0,0,1,0,0,0,'7056 61573'),
(550471,0,0,1,0,0,0,'7056 61573'),
(550472,0,0,1,0,0,0,'7056 61573'),
(550473,0,0,1,0,0,0,'7056 61573'),
(550474,0,0,1,0,0,0,'7056 61573'),
(550475,0,0,1,0,0,0,'7056 61573'),
(550476,0,0,1,0,0,0,'7056 61573'),
(550477,0,0,1,0,0,0,'7056 61573'),
(550478,0,0,1,0,0,0,'7056 61573'),
(550479,0,0,1,0,0,0,'7056 61573'),
(550480,0,0,1,0,0,0,'7056 61573');
-- Stormwind
DELETE FROM `creature` WHERE guid BETWEEN 550508 AND 550517;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
-- Grandmaster's Training Dummy 31144
(550508,31144,0,1,1,0,0,-8705.837,350.53522,101.10248,3.735004663467407226,180,180,0,0,1,0,0,0),
(550509,31144,0,1,1,0,0,-8802.535,354.5471,101.10248,0.05235987901687622,180,180,0,0,1,0,0,0),
(550510,31144,0,1,1,0,0,-8772.868,358.0089,101.10251,3.50811171531677246,180,180,0,0,1,0,0,0),
(550511,31144,0,1,1,0,0,-8795.442,362.23917,101.10248,5.393067359924316406,180,180,0,0,1,0,0,0),
(550512,31144,0,1,1,0,0,-8724.866,333.10748,101.10248,0.78539818525314331,180,180,0,0,1,0,0,0),
-- Heroic Training Dummy 31146
(550513,31146,0,1,1,0,0,-8791.865,340.81683,101.10248,1.326450228691101074,180,180,0,0,24009943,0,0,0),
-- Expert's Training Dummy 32666
(550514,32666,0,1,1,0,0,-8789.592,366.34464,101.10248,5.305800914764404296,180,180,0,0,1,0,0,0),
(550515,32666,0,1,1,0,0,-8780.614,369.0867,101.10251,4.502949237823486328,180,180,0,0,1,0,0,0),
-- Master's Training Dummy 32667
(550516,32667,0,1,1,0,0,-8778.7,348.69086,101.10248,2.268928050994873046,180,180,0,0,1,0,0,0),
(550517,32667,0,1,1,0,0,-8784.552,343.64465,101.10248,2.251474618911743164,180,180,0,0,1,0,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid BETWEEN 550508 AND 550517;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(550508,0,0,1,0,0,0,'7056 61574'),
(550509,0,0,1,0,0,0,'7056 61574'),
(550510,0,0,1,0,0,0,'7056 61574'),
(550511,0,0,1,0,0,0,'7056 61574'),
(550512,0,0,1,0,0,0,'7056 61574'),
(550513,0,0,1,0,0,0,'7056 61574'),
(550514,0,0,1,0,0,0,'7056 61574'),
(550515,0,0,1,0,0,0,'7056 61574'),
(550516,0,0,1,0,0,0,'7056 61574'),
(550517,0,0,1,0,0,0,'7056 61574');
-- move all existing spawns to wotlk guid rang 500k+
-- Grandmaster's Training Dummy 31144
UPDATE creature SET guid = 550481, curhealth = 16908544 WHERE guid = 48316 AND id = 31144;
UPDATE creature SET guid = 550482, curhealth = 16908544 WHERE guid = 48317 AND id = 31144;
UPDATE creature SET guid = 550483, curhealth = 16908544 WHERE guid = 48318 AND id = 31144;
UPDATE creature SET guid = 550484, curhealth = 16908544 WHERE guid = 48319 AND id = 31144;
UPDATE creature SET guid = 550485, curhealth = 16908544 WHERE guid = 48320 AND id = 31144;
UPDATE creature SET guid = 550486, curhealth = 16908544 WHERE guid = 48321 AND id = 31144;
UPDATE creature SET guid = 550487, curhealth = 16908544 WHERE guid = 48322 AND id = 31144;
UPDATE creature SET guid = 550488, curhealth = 16908544 WHERE guid = 88223 AND id = 31144;
UPDATE creature_addon SET guid = 550481 WHERE guid = 48316;
UPDATE creature_addon SET guid = 550482 WHERE guid = 48317;
UPDATE creature_addon SET guid = 550483 WHERE guid = 48318;
UPDATE creature_addon SET guid = 550484 WHERE guid = 48319;
UPDATE creature_addon SET guid = 550485 WHERE guid = 48320;
UPDATE creature_addon SET guid = 550486 WHERE guid = 48321;
UPDATE creature_addon SET guid = 550487 WHERE guid = 48322;
UPDATE creature_addon SET guid = 550488 WHERE guid = 88223;
-- Heroic Training Dummy 31146
UPDATE creature SET guid = 550489, curhealth = 16908544 WHERE guid = 48323 AND id = 31146;
UPDATE creature SET guid = 550490, curhealth = 16908544 WHERE guid = 48324 AND id = 31146;
UPDATE creature SET guid = 550491, curhealth = 16908544 WHERE guid = 48325 AND id = 31146;
UPDATE creature SET guid = 550492, curhealth = 16908544 WHERE guid = 48326 AND id = 31146;
UPDATE creature SET guid = 550493, curhealth = 16908544 WHERE guid = 88224 AND id = 31146;
UPDATE creature_addon SET guid = 550489 WHERE guid = 48323;
UPDATE creature_addon SET guid = 550490 WHERE guid = 48324;
UPDATE creature_addon SET guid = 550491 WHERE guid = 48325;
UPDATE creature_addon SET guid = 550492 WHERE guid = 48326;
UPDATE creature_addon SET guid = 550493 WHERE guid = 88224;
-- Expert's Training Dummy 32666
UPDATE creature SET guid = 550494, curhealth = 16908544 WHERE guid = 48327 AND id = 32666;
UPDATE creature SET guid = 550495, curhealth = 16908544 WHERE guid = 48334 AND id = 32666;
UPDATE creature SET guid = 550496, curhealth = 16908544 WHERE guid = 48335 AND id = 32666;
UPDATE creature SET guid = 550497, curhealth = 16908544 WHERE guid = 48336 AND id = 32666;
UPDATE creature SET guid = 550498, curhealth = 16908544 WHERE guid = 48337 AND id = 32666;
UPDATE creature SET guid = 550499, curhealth = 16908544 WHERE guid = 88213 AND id = 32666;
UPDATE creature SET guid = 550500, curhealth = 16908544 WHERE guid = 88214 AND id = 32666;
UPDATE creature_addon SET guid = 550494 WHERE guid = 48327;
UPDATE creature_addon SET guid = 550495 WHERE guid = 48334;
UPDATE creature_addon SET guid = 550496 WHERE guid = 48335;
UPDATE creature_addon SET guid = 550497 WHERE guid = 48336;
UPDATE creature_addon SET guid = 550498 WHERE guid = 48337;
UPDATE creature_addon SET guid = 550499 WHERE guid = 88213;
UPDATE creature_addon SET guid = 550500 WHERE guid = 88214;
-- Master's Training Dummy 32667
UPDATE creature SET guid = 550501, curhealth = 16908544 WHERE guid = 48338 AND id = 32667;
UPDATE creature SET guid = 550502, curhealth = 16908544 WHERE guid = 48339 AND id = 32667;
UPDATE creature SET guid = 550503, curhealth = 16908544 WHERE guid = 48340 AND id = 32667;
UPDATE creature SET guid = 550504, curhealth = 16908544 WHERE guid = 48341 AND id = 32667;
UPDATE creature SET guid = 550505, curhealth = 16908544 WHERE guid = 48342 AND id = 32667;
UPDATE creature SET guid = 550506, curhealth = 16908544 WHERE guid = 88215 AND id = 32667;
UPDATE creature SET guid = 550507, curhealth = 16908544 WHERE guid = 88216 AND id = 32667;
UPDATE creature_addon SET guid = 550501 WHERE guid = 48338;
UPDATE creature_addon SET guid = 550502 WHERE guid = 48339;
UPDATE creature_addon SET guid = 550503 WHERE guid = 48340;
UPDATE creature_addon SET guid = 550504 WHERE guid = 48341;
UPDATE creature_addon SET guid = 550505 WHERE guid = 48342;
UPDATE creature_addon SET guid = 550506 WHERE guid = 88215;
UPDATE creature_addon SET guid = 550507 WHERE guid = 88216;
