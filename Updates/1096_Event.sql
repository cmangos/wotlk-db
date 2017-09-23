-- ------------------------------------------------------
-- HELLFIRE PENINSULA: PATH OF GLORY AND STAIR OF DESTINY
-- ------------------------------------------------------

-- TODO:
-- wave timings and final staging formation of all waves needs work - use "move to" command at the end of the movement path to spread demons out?
-- archers should continue to hold ranged weapons in combat between casts, demons should hold weapon unsheathed out of combat

-- Clean up wrong spawns
DELETE FROM creature WHERE guid IN (67988,67982,67986,67979,67978,67973,67974,67989,67990,67976,67985); -- Fel Soldier
DELETE FROM creature WHERE guid IN (68311,68313); -- Wrath Master
DELETE FROM creature WHERE guid IN (67998,67999,68266,68267,68014,68117); -- Extra spawns on Alliance side
DELETE FROM creature WHERE guid IN (68026); -- Extra Orgrimmar Grunt on Horde side

-- Remove individual addons/linking for fighters
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (18969,18970,18971,18972,18950,18966,18986,18948,18965,18949));
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id IN (18969,18970,18971,18972,18950,18966,18986,18948,18965,18949));

-- Dark Assault - Alliance Portal - Invisible Stalker
-- Dark Assault - Horde Portal - Invisible Stalker
-- these need to be active too or else the Horde/Alliance soldiers won't respawn when no players in grid
UPDATE creature_template SET ExtraFlags = ExtraFlags|4096 WHERE entry IN (18968,18967);

-- -----------------------------
-- LEGION FORCES - PATH OF GLORY
-- -----------------------------

-- Active, No XP
-- Fel Soldier, Pit Commander, Infernal Siegebreaker, Wrath Master
UPDATE creature_template SET ExtraFlags = ExtraFlags|4096|64 WHERE entry IN (18944,18945,18946,19005);

-- Fel Soldier (18944)
UPDATE creature_template_addon SET auras = '32008' WHERE entry = 18944; -- Fel Fire

-- Infernal Siegebreaker (18946)
UPDATE creature_template_addon SET auras = '33650' WHERE entry = 18946; -- Immolation
-- Use Infernal server-side spell 33636 instead of temp summon
-- UPDATE dbscripts_on_creature_death SET command = 15, datalong = 33636 WHERE id = 21075 AND delay = 5; -- spell need to be added first into Core

-- 12353 event occurs when 33393 is cast (handled in dbscripts_on_event)
-- TEMP FIX (should this be handled automatically in core?)
DELETE FROM dbscripts_on_creature_death WHERE id = 18946;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(18946,0,14,33650,0,0,0,0,0,0,0,0,0,0,0,0,'Infernal Siegebreaker - remove Immolation'),
(18946,1,18,5000,0,0,0,0,0x04,0,0,0,0,0,0,0,'Infernal Siegebreaker - despawn self');

-- FEL SOLDIER (Remove all old spawns)
DELETE FROM creature WHERE guid BETWEEN 67973 AND 68000;
DELETE FROM creature_addon WHERE guid BETWEEN 67973 AND 68000;
DELETE FROM creature_movement WHERE id BETWEEN 67973 AND 68000;
DELETE FROM game_event_creature WHERE guid BETWEEN 67973 AND 68000;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 67973 AND 68000;
DELETE FROM creature_battleground WHERE guid BETWEEN 67973 AND 68000;
DELETE FROM creature_linking WHERE guid BETWEEN 67973 AND 68000 
OR master_guid BETWEEN 67973 AND 68000;  
-- WRATH MASTER (Remove all old spawns)
DELETE FROM creature WHERE guid BETWEEN 68311 AND 68314;
DELETE FROM creature_addon WHERE guid BETWEEN 68311 AND 68314;
DELETE FROM creature_movement WHERE id BETWEEN 68311 AND 68314;
DELETE FROM game_event_creature WHERE guid BETWEEN 68311 AND 68314;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 68311 AND 68314;
DELETE FROM creature_battleground WHERE guid BETWEEN 68311 AND 68314;
DELETE FROM creature_linking WHERE guid BETWEEN 68311 AND 68314 
OR master_guid BETWEEN 68311 AND 68314; 

-- WAVE 1: 4 FEL SOLDIER - TELEPORT IN FROM GATEWAY SHAADRAZ
-- 1 min respawn
DELETE FROM creature WHERE guid IN (67975,67973,67974,67976);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecsmin,spawntimesecsmax,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(67973,18944,530,1,0,0,-305.931,1528.39,38.7224,6.24784,60,60,0,0,90818,0,0,0),
(67974,18944,530,1,0,0,-305.905,1523.06,37.8723,0.0431936,60,60,0,0,90818,0,0,2),
(67975,18944,530,1,0,0,-305.971,1534.25,39.6577,0.35166,60,60,0,0,90818,0,0,0),
(67976,18944,530,1,0,0,-305.678,1517.8,37.0061,0.0431936,60,60,0,0,90818,0,0,0);
DELETE FROM creature_linking WHERE master_guid IN (67974);
INSERT INTO creature_linking (guid,master_guid,flag) VALUES
(67975,67974,643+1024+8192),
(67973,67974,643+1024+8192),
(67976,67974,643+1024+8192);
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid = 67974;
DELETE FROM creature_movement WHERE id IN (67974);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(67974,1,-228.314,1515.87,22.3748,0,0,4.46336),
(67974,2,-236.941,1474.61,16.9412,0,0,4.54347),
(67974,3,-243.291,1442.81,14.2741,0,0,4.46571),
(67974,4,-248.829,1420.82,13.1983,0,0,4.46571),
(67974,5,-249.835,1368.32,10.8352,0,0,4.7139),
(67974,6,-247.079,1340.25,13.1269,0,0,4.79401),
(67974,7,-243.481,1307.74,18.3639,0,0,4.83642),
(67974,8,-241.123,1265.74,25.5871,0,0,4.75631),
(67974,9,-241.056,1227.65,32.2817,0,0,4.63615),
(67974,10,-244.709,1195.35,42.7451,0,0,4.61023),
(67974,11,-249.08,1152.07,41.649,45000,5,4.64322),-- run on
(67974,12,-250.127,1131.36,41.6674,0,0,4.6385),
-- continue to run up the stairs and despawn
(67974,16,-248.279,1093.57,41.6667,0,0,4.41342),
(67974,17,-250.127,1071.97,54.3075,0,0,4.7024),
(67974,18,-249.985,1046.8,54.3168,0,0,4.57914),
(67974,19,-248.905,1014.4,54.3266,0,0,4.64917),
(67974,20,-248.336,993.958,68.2144,0,0,4.73163),
(67974,21,-247.975,969.204,84.3296,0,0,4.74341),
(67974,22,-248.319,920.639,84.379,0,0,4.72601),
(67974,23,-248.109,895.636,84.379,1000,1,4.72601); -- despawn self

-- WAVE 2: 4 FEL SOLDIER - TELEPORT IN FROM GATEWAY MURKETH
-- 1 min respawn
DELETE FROM creature WHERE guid IN (67977,67978,67979,67980);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecsmin,spawntimesecsmax,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(67977,18944,530,1,0,0,-145.517,1518.95,34.4242,3.15987,60,60,0,0,90818,0,0,0),
(67978,18944,530,1,0,0,-145.763,1514.5,33.8965,3.10096,60,60,0,0,90818,0,0,2),
(67979,18944,530,1,0,0,-145.924,1510.49,33.4262,3.09704,60,60,0,0,90818,0,0,0),
(67980,18944,530,1,0,0,-146.759,1505.32,32.7634,3.00436,60,60,0,0,90818,0,0,0);
DELETE FROM creature_linking WHERE master_guid IN (67978);
INSERT INTO creature_linking (guid,master_guid,flag) VALUES
(67977,67978,643+1024+8192),
(67979,67978,643+1024+8192),
(67980,67978,643+1024+8192);
UPDATE creature SET SpawnDist = 0,MovementType = 2 WHERE guid = 67978;
DELETE FROM creature_movement WHERE id IN (67978);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(67978,1,-228.314,1515.87,22.3748,0,0,4.46336),
(67978,2,-236.941,1474.61,16.9412,0,0,4.54347),
(67978,3,-243.291,1442.81,14.2741,0,0,4.46571),
(67978,4,-248.829,1420.82,13.1983,0,0,4.46571),
(67978,5,-249.835,1368.32,10.8352,0,0,4.7139),
(67978,6,-247.079,1340.25,13.1269,0,0,4.79401),
(67978,7,-243.481,1307.74,18.3639,0,0,4.83642),
(67978,8,-241.123,1265.74,25.5871,0,0,4.75631),
(67978,9,-241.056,1227.65,32.2817,0,0,4.63615),
(67978,10,-244.709,1195.35,42.7451,0,0,4.61023),
(67978,11,-249.08,1152.07,41.649,45000,5,4.64322),-- run on
(67978,12,-250.127,1131.36,41.6674,0,0,4.6385),
-- continue to run up the stairs and despawn
(67978,16,-248.279,1093.57,41.6667,0,0,4.41342),
(67978,17,-250.127,1071.97,54.3075,0,0,4.7024),
(67978,18,-249.985,1046.8,54.3168,0,0,4.57914),
(67978,19,-248.905,1014.4,54.3266,0,0,4.64917),
(67978,20,-248.336,993.958,68.2144,0,0,4.73163),
(67978,21,-247.975,969.204,84.3296,0,0,4.74341),
(67978,22,-248.319,920.639,84.379,0,0,4.72601),
(67978,23,-248.109,895.636,84.379,1000,1,4.72601); -- despawn self

-- WAVE 3: 1 WRATH MASTER + 4 FEL SOLDIER - TELEPORT IN BETWEEN LARGE PILLARS
-- 3 min respawn
DELETE FROM creature WHERE guid IN (68311,67981,67982,67983,67984);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecsmin,spawntimesecsmax,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(68311,19005,530,1,0,0,-196.780594,1646.321167,41.276222,4.806116,180,180,0,0,143620,0,0,2),
(67981,18944,530,1,0,0,-203.041,1651.75,42.5189,4.2356,180,180,0,0,90818,0,0,0),
(67982,18944,530,1,0,0,-190.729492,1649.811157,41.688812,4.604268,180,180,0,0,90818,0,0,0),
(67983,18944,530,1,0,0,-205.563,1657.39,43.7415,4.37461,180,180,0,0,90818,0,0,0),
(67984,18944,530,1,0,0,-185.567444,1652.857910,41.881702,4.489600,180,180,0,0,90818,0,0,0);
DELETE FROM creature_linking WHERE master_guid IN (68311);
INSERT INTO creature_linking (guid,master_guid,flag) VALUES
(67981,68311,643+1024+8192),
(67982,68311,643+1024+8192),
(67983,68311,643+1024+8192),
(67984,68311,643+1024+8192);
UPDATE creature SET SpawnDist = 0, MovementType = 2 WHERE guid = 68311;
DELETE FROM creature_movement WHERE id IN (68311);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68311,1,-199.102,1640.41,40.166,8000,0,4.55132),
(68311,2,-202.626,1619.16,36.2617,0,0,4.45865),
(68311,3,-214.569,1569.92,28.2796,0,0,4.46336),
(68311,4,-228.314,1515.87,22.3748,0,0,4.46336),
(68311,5,-236.941,1474.61,16.9412,0,0,4.54347),
(68311,6,-243.291,1442.81,14.2741,0,0,4.46571),
(68311,7,-248.829,1420.82,13.1983,0,0,4.46571),
(68311,8,-249.835,1368.32,10.8352,0,0,4.7139),
(68311,9,-247.079,1340.25,13.1269,0,0,4.79401),
(68311,10,-243.481,1307.74,18.3639,0,0,4.83642),
(68311,11,-241.123,1265.74,25.5871,0,0,4.75631),
(68311,12,-241.056,1227.65,32.2817,0,0,4.63615),
(68311,13,-244.709,1195.35,42.7451,0,0,4.61023),
(68311,14,-249.08,1152.07,41.649,68000,5,4.64322),-- run on
(68311,15,-250.127,1131.36,41.6674,0,0,4.6385),
-- continue to run up the stairs and despawn
(68311,16,-248.279,1093.57,41.6667,0,0,4.41342),
(68311,17,-250.127,1071.97,54.3075,0,0,4.7024),
(68311,18,-249.985,1046.8,54.3168,0,0,4.57914),
(68311,19,-248.905,1014.4,54.3266,0,0,4.64917),
(68311,20,-248.336,993.958,68.2144,0,0,4.73163),
(68311,21,-247.975,969.204,84.3296,0,0,4.74341),
(68311,22,-248.319,920.639,84.379,0,0,4.72601),
(68311,23,-248.109,895.636,84.379,1000,1,4.72601); -- despawn self

-- WAVE 4: 1 WRATH MASTER + 4 FEL SOLDIER - TELEPORT IN BETWEEN LARGE PILLARS
-- 3 min respawn
DELETE FROM creature WHERE guid IN (68312,67985,67986,67987,67988);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecsmin,spawntimesecsmax,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(68312,19005,530,1,0,0,-200.256,1707.1,55.4146,4.691,180,180,0,0,143620,0,0,2),
(67985,18944,530,1,0,0,-205.489,1713.1,57.4736,4.70671,180,180,0,0,90818,0,0,0),
(67986,18944,530,1,0,0,-213.437,1713.97,58.0091,4.70671,180,180,0,0,90818,0,0,0),
(67987,18944,530,1,0,0,-193.945,1710.18,56.0116,4.62425,180,180,0,0,90818,0,0,0),
(67988,18944,530,1,0,0,-188.735,1709.2,55.5771,4.55827,180,180,0,0,90818,0,0,0);
DELETE FROM creature_linking WHERE master_guid IN (68312);
INSERT INTO creature_linking (guid,master_guid,flag) VALUES
(67985,68312,643+1024+8192),
(67986,68312,643+1024+8192),
(67987,68312,643+1024+8192),
(67988,68312,643+1024+8192);
UPDATE creature SET SpawnDist = 0,MovementType = 2 WHERE guid = 68312;
DELETE FROM creature_movement WHERE id IN (68312);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68312,1,-199.553,1678.87,48.2954,8000,0,4.79506),
(68312,2,-199.102,1640.41,40.166,0,0,4.55132),
(68312,3,-202.626,1619.16,36.2617,0,0,4.45865),
(68312,4,-214.569,1569.92,28.2796,0,0,4.46336),
(68312,5,-228.314,1515.87,22.3748,0,0,4.46336),
(68312,6,-236.941,1474.61,16.9412,0,0,4.54347),
(68312,7,-243.291,1442.81,14.2741,0,0,4.46571),
(68312,8,-248.829,1420.82,13.1983,0,0,4.46571),
(68312,9,-249.835,1368.32,10.8352,0,0,4.7139),
(68312,10,-247.079,1340.25,13.1269,0,0,4.79401),
(68312,11,-243.481,1307.74,18.3639,0,0,4.83642),
(68312,12,-241.123,1265.74,25.5871,0,0,4.75631),
(68312,13,-241.056,1227.65,32.2817,0,0,4.63615),
(68312,14,-244.709,1195.35,42.7451,0,0,4.61023),
(68312,15,-249.08,1152.07,41.649,68000,5,4.64322),-- run on
(68312,16,-250.127,1131.36,41.6674,0,0,4.6385),
-- continue to run up the stairs and despawn
(68312,17,-248.279,1093.57,41.6667,0,0,4.41342),
(68312,18,-250.127,1071.97,54.3075,0,0,4.7024),
(68312,19,-249.985,1046.8,54.3168,0,0,4.57914),
(68312,20,-248.905,1014.4,54.3266,0,0,4.64917),
(68312,21,-248.336,993.958,68.2144,0,0,4.73163),
(68312,22,-247.975,969.204,84.3296,0,0,4.74341),
(68312,23,-248.319,920.639,84.379,0,0,4.72601),
(68312,24,-248.109,895.636,84.379,1000,1,4.72601); -- despawn self

-- WAVE 5: 1 WRATH MASTER + 4 FEL SOLDIER - TELEPORT IN FROM GATEWAY MURKETH
-- ONLY SPAWNS WHEN THE PIT COMMANDER IS PASSING BY ON HIS WAY TO THE STAIR OF DESTINY
-- 1 hour respawn and triggered respawn by Pit Commander
DELETE FROM creature WHERE guid IN (68313,67989,67990,67991,67992);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecsmin,spawntimesecsmax,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(68313,19005,530,1,0,0,-171.5,1514.31,27.9141,3.09408,3600,3600,0,0,143620,0,0,2),
(67989,18944,530,1,0,0,-166.711,1521.77,29.0745,3.09094,3600,3600,0,0,90818,0,0,0),
(67990,18944,530,1,0,0,-165.972,1530.15,30.1784,3.09408,3600,3600,0,0,90818,0,0,0),
(67991,18944,530,1,0,0,-168.348,1507.44,27.6027,3.00768,3600,3600,0,0,90818,0,0,0),
(67992,18944,530,1,0,0,-169.679,1499.04,26.8811,2.98412,3600,3600,0,0,90818,0,0,0);
DELETE FROM creature_linking WHERE master_guid IN (68313);
INSERT INTO creature_linking (guid,master_guid,flag) VALUES
(67989,68313,643+1024+8192),
(67990,68313,643+1024+8192),
(67991,68313,643+1024+8192),
(67992,68313,643+1024+8192);
UPDATE creature SET SpawnDist = 0,MovementType = 2 WHERE guid = 68313;
DELETE FROM creature_movement WHERE id IN (68313);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68313,1,-228.314,1515.87,22.3748,15000,0,4.46336),
(68313,2,-236.941,1474.61,16.9412,6000,0,4.54347),
(68313,3,-243.291,1442.81,14.2741,0,0,4.46571),
(68313,4,-248.829,1420.82,13.1983,0,0,4.46571),
(68313,5,-249.835,1368.32,10.8352,0,0,4.7139),
(68313,6,-247.079,1340.25,13.1269,0,0,4.79401),
(68313,7,-243.481,1307.74,18.3639,0,0,4.83642),
(68313,8,-241.123,1265.74,25.5871,0,0,4.75631),
(68313,9,-241.056,1227.65,32.2817,0,0,4.63615),
(68313,10,-244.709,1195.35,42.7451,0,0,4.61023),
(68313,11,-249.08,1152.07,41.649,70000,5,4.64322),-- run on
(68313,12,-250.127,1131.36,41.6674,0,0,4.6385),
-- continue to run up the stairs and despawn
(68313,16,-248.279,1093.57,41.6667,0,0,4.41342),
(68313,17,-250.127,1071.97,54.3075,0,0,4.7024),
(68313,18,-249.985,1046.8,54.3168,0,0,4.57914),
(68313,19,-248.905,1014.4,54.3266,0,0,4.64917),
(68313,20,-248.336,993.958,68.2144,0,0,4.73163),
(68313,21,-247.975,969.204,84.3296,0,0,4.74341),
(68313,22,-248.319,920.639,84.379,0,0,4.72601),
(68313,23,-248.109,895.636,84.379,1000,1,4.72601); -- despawn self

-- WAVE 6: 1 WRATH MASTER + 4 FEL SOLDIER - TELEPORT IN FROM GATEWAY SHAADRAZ
-- ONLY SPAWNS WHEN THE PIT COMMANDER IS PASSING BY ON HIS WAY TO THE STAIR OF DESTINY
-- 1 hour respawn and triggered respawn by Pit Commander
DELETE FROM creature WHERE guid IN (68314,67993,67994,67995,67996);
INSERT INTO creature (guid,id,map,spawnMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecsmin,spawntimesecsmax,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(68314,19005,530,1,0,0,-279.407,1529.69,32.1485,0.0522051,3600,3600,0,0,143620,0,0,2),
(67993,18944,530,1,0,0,-279.019,1522.27,31.2487,0.0522051,3600,3600,0,0,90818,0,0,0),
(67994,18944,530,1,0,0,-278.663,1515.46,30.4542,0.0522051,3600,3600,0,0,90818,0,0,0),
(67995,18944,530,1,0,0,-280.093,1537.96,33.2568,0.0634477,3600,3600,0,0,90818,0,0,0),
(67996,18944,530,1,0,0,-280.481,1544.07,34.1603,0.0634477,3600,3600,0,0,90818,0,0,0);
DELETE FROM creature_linking WHERE master_guid IN (68314);
INSERT INTO creature_linking (guid,master_guid,flag) VALUES
(67993,68314,643+1024+8192),
(67994,68314,643+1024+8192),
(67995,68314,643+1024+8192),
(67996,68314,643+1024+8192);
UPDATE creature SET SpawnDist = 0,MovementType = 2 WHERE guid = 68314;
DELETE FROM creature_movement WHERE id IN (68314);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68314,1,-228.314,1515.87,22.3748,15000,0,4.46336),
(68314,2,-236.941,1474.61,16.9412,0,0,4.54347),
(68314,3,-243.291,1442.81,14.2741,0,0,4.46571),
(68314,4,-248.829,1420.82,13.1983,0,0,4.46571),
(68314,5,-249.835,1368.32,10.8352,0,0,4.7139),
(68314,6,-247.079,1340.25,13.1269,0,0,4.79401),
(68314,7,-243.481,1307.74,18.3639,0,0,4.83642),
(68314,8,-241.123,1265.74,25.5871,0,0,4.75631),
(68314,9,-241.056,1227.65,32.2817,0,0,4.63615),
(68314,10,-244.709,1195.35,42.7451,0,0,4.61023),
(68314,11,-249.08,1152.07,41.649,70000,5,4.64322),-- run on
(68314,12,-250.127,1131.36,41.6674,0,0,4.6385),
-- continue to run up the stairs and despawn
(68314,16,-248.279,1093.57,41.6667,0,0,4.41342),
(68314,17,-250.127,1071.97,54.3075,0,0,4.7024),
(68314,18,-249.985,1046.8,54.3168,0,0,4.57914),
(68314,19,-248.905,1014.4,54.3266,0,0,4.64917),
(68314,20,-248.336,993.958,68.2144,0,0,4.73163),
(68314,21,-247.975,969.204,84.3296,0,0,4.74341),
(68314,22,-248.319,920.639,84.379,0,0,4.72601),
(68314,23,-248.109,895.636,84.379,1000,1,4.72601); -- despawn self

-- link these 2 special waves to Pit Commander
DELETE FROM creature_linking WHERE master_guid IN (68001);
INSERT INTO creature_linking (guid,master_guid,flag) VALUES
(68313,68001,1024+128),
(68314,68001,1024+128);

-- Pit Commander
-- 7 min respawn
UPDATE creature SET position_x = -199.940979, position_y = 1665.235352, position_z = 45.259228, orientation = 4.666780,SpawnDist = 0, MovementType = 2, spawntimesecsmin = 420, spawntimesecsmax = 420 WHERE guid = 68001;
DELETE FROM creature_movement_template WHERE entry = 18945;
INSERT INTO creature_movement_template (entry,pathId,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(18945,0,1,-199.941,1665.24,45.2592,10000,0,4.66678),
(18945,0,2,-207.147,1603.48,33.2814,0,0,4.42645),
(18945,0,3,-221.905,1533.7,24.4023,0,0,4.50656),
(18945,0,4,-241.069,1459.17,15.1874,0,0,4.43588),
(18945,0,5,-248.595,1427.75,13.6812,0,0,4.36519),
(18945,0,6,-250.559,1369.9,10.8069,0,0,4.72176),
(18945,0,7,-245.765,1306.02,18.5531,0,0,4.7736),
(18945,0,8,-242.749,1246.21,28.8983,0,0,4.76417),
(18945,0,9,-244.691,1212.71,36.3483,0,0,4.69113),
(18945,0,10,-246.422,1188.35,42.7283,0,0,4.6228),
(18945,0,11,-246.692,1175.22,41.75,5000,1894501,4.71011),
-- once reaching the Dark Portal
-- alternates between point emote and summon infernal anywhere from 17-28 seconds apart?
(18945,1,1,-246.692,1175.22,41.75,30000,1894502,4.71011),
(18945,1,2,-246.692,1175.22,41.75,5000,0,4.71011),
(18945,1,3,-246.692,1175.22,41.75,30000,1894503,4.71011);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1894501,1894502,1894503);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(1894501,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'Pit Commander - Set idle movement'),
(1894501,5,20,2,1,0,0,0,0,0,0,0,0,0,0,0,'Pit Commander - Set waypoint movement (path 1)'),
(1894502,0,15,33393,0,0,0,0,0,0,0,0,0,0,0,0,'Pit Commander - Cast Summon Infernals'),
(1894503,0,1,25,0,0,0,0,0,0,0,0,0,0,0,0,'Pit Commander - Point emote');

-- Infernal Siegebreaker movement
UPDATE creature_template SET MovementType = 2 WHERE entry = 18946;
DELETE FROM creature_movement_template WHERE entry = 18946;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(18946,1,-248.279,1093.57,41.6667,0,0,4.41342),
(18946,2,-250.127,1071.97,54.3075,0,0,4.7024),
(18946,3,-249.985,1046.8,54.3168,0,0,4.57914),
(18946,4,-248.905,1014.4,54.3266,0,0,4.64917),
(18946,5,-248.336,993.958,68.2144,0,0,4.73163),
(18946,6,-247.975,969.204,84.3296,0,0,4.74341),
(18946,7,-248.319,920.639,84.379,0,0,4.72601),
(18946,8,-248.109,895.636,84.379,1000,1,4.72601); -- despawn self

-- Stair of Destiny shared scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1894510,1894511);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(1894510,0,1,66,0,0,0,0,0,0,0,0,0,0,0,0,'Stair of Destiny - salute emote'),
-- (1894510,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stair of Destiny - run off'); -- prevents emote?

-- not sure why this is needed to prevent them from going home to spawn position
(1894511,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stair of Destiny - set movement to idle'),
(1894511,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'Stair of Destiny - pause waypoints');

-- linking from old UDB commit - reduced range
-- 18966 Justinius the Harbinger -> 18986 Ironforge Paladin
DELETE FROM creature_linking_template WHERE entry = 18966;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES (18966,530,18986,1,50);

-- 18969 Melgromm Highmountain -> 18972 Orgrimmar Shaman
DELETE FROM creature_linking_template WHERE entry = 18969;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES (18969,530,18972,1,50);

-- 18971 Undercity Mage -> 18950 Orgrimmar Grunt
DELETE FROM creature_linking_template WHERE entry = 18971;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES (18971,530,18950,1,50);

-- 18948 Stormwind Soldier -> 18949 Stormwind Mage
DELETE FROM creature_linking_template WHERE entry = 18949;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES (18949,530,18948,1,50);

-- ------------------------
-- STAIR OF DESTINY - HORDE
-- ------------------------

-- Orgrimmar Peons
UPDATE creature SET spawndist = 0, orientation = 3.312, MovementType = 2 WHERE guid = 69488;
DELETE FROM creature_movement WHERE id = 69488;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(69488,1,-178.616,964.701,54.2991,100,5000,5),
(69488,2,-145.3307,973.8351,54.27376,100,5000,0);
DELETE FROM creature_addon WHERE guid = 69488;

UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 69485;
DELETE FROM creature_movement WHERE id = 69485;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(69485,1,-178.786,968.86,54.3066,100,5000,5),
(69485,2,-145.9933,977.1439,54.26596,100,5000,0);
DELETE FROM creature_addon WHERE guid = 69485;

UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 69483;
DELETE FROM creature_movement WHERE id = 69483;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(69483,1,-183.5889,986.2253,54.26427,100,5000,5),
(69483,2,-157.7431,1010.596,54.18776,100,0,0),
(69483,3,-133.8203,1015.015,54.14487,100,5000,0),
(69483,4,-157.7431,1010.596,54.18776,100,0,0);
DELETE FROM creature_addon WHERE guid = 69483;

UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 69486;
DELETE FROM creature_movement WHERE id = 69486;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(69486,1,-180.7873,983.1688,54.25605,100,5000,5),
(69486,2,-141.7487,996.6453,54.2,100,0,0),
(69486,3,-131.76,997.98,54.188,100,5000,0);
DELETE FROM creature_addon WHERE guid = 69486;

-- free guid used (from extra deleted spawn)
REPLACE INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(67997, 19425, 530, 1, 0, 0, -157.4467, 1018.909, 54.212, 0.659, 300, 300, 0, 0, 2600, 0, 0, 2);
DELETE FROM creature_movement WHERE id = 67997;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(67997,1,-157.4467,1018.909,54.212,100,5000,5),
(67997,2,-164.71,1000.97,54.21159,100,0,0),
(67997,3,-165.436,987.882,54.24286,100,0,0),
(67997,4,-161.41,979.849,54.26149,100,0,0),
(67997,5,-149.715,968.91,54.28605,100,0,0),
(67997,6,-136.938,970.368,54.19208,100,0,0),
(67997,7,-138.715,973.445,54.2401,100,5000,0),
(67997,8,-136.938,970.368,54.19208,100,0,0),
(67997,9,-149.715,968.91,54.28605,100,0,0),
(67997,10,-161.41,979.849,54.26149,100,0,0),
(67997,11,-165.436,987.882,54.24286,100,0,0),
(67997,12,-164.71,1000.97,54.21159,100,0,0);
DELETE FROM creature_addon WHERE guid = 67997;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(67997,0,0,1,0,69,0,NULL);

-- Peon Overseer
UPDATE creature SET spawndist = 0,MovementType = 2 WHERE guid = 69491;
DELETE FROM creature_movement WHERE id = 69491;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(69491,1,-156.309,993.265,54.3422,100,25000,1942601);

DELETE FROM dbscripts_on_creature_movement WHERE id = 1942601;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(1942601,0,45,0,10100,0,0,0,0,0,0,0,0,0,0,0,0,'Peon Overseer - random action');

DELETE FROM dbscripts_on_relay WHERE id IN (10100,10101,10102,10103);
INSERT INTO dbscripts_on_relay (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(10100,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,1.86,'Peon Overseer - face west catapult'),
(10100,2,0,0,0,0,0,0,0,2000001407,2000001408,2000001409,2000001410,0,0,0,0,'Peon Overseer - random say'),
(10100,3,45,0,10104,0,0,0,0,25,75,0,0,0,0,0,0,'Peon Overseer - 25% chance for peon response'),

(10101,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,4.74,'Peon Overseer - face east catapult'),
(10101,2,0,0,0,0,0,0,0,2000001407,2000001408,2000001409,2000001410,0,0,0,0,'Peon Overseer - random say'),

(10102,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,3,'Peon Overseer - face south'),
(10102,2,0,0,0,0,0,0,0,2000001411,0,0,0,0,0,0,0,'Peon Overseer - say'),

(10103,0,0,0,0,0,19425,69482,23,2000001412,0,0,0,0,0,0,0,'Peon 1 - say'),
(10103,4,0,0,0,0,19425,69484,23,2000001413,0,0,0,0,0,0,0,'Peon 2 - say');

DELETE FROM dbscript_random_templates WHERE id IN (10100,10103);
INSERT INTO dbscript_random_templates (id, type, target_id, chance) VALUES
(10100,1,10100,0),
(10100,1,10101,0),
(10100,1,10102,0),
(10103,1,10103,25),
(10103,1,0,75);

DELETE FROM dbscript_string WHERE entry IN (2000001407,2000001408,2000001409,2000001410,2000001411,2000001412,2000001413);
INSERT INTO dbscript_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001407,'Put your backs into it,you lazy peons!',0,0,0,22,NULL),
(2000001408,'I want those catapults built YESTERDAY!',0,0,0,22,NULL),
(2000001409,'Work,you filthy swine!',0,0,0,22,NULL),
(2000001410,'Hurry it up! Work,WORK!',0,0,0,22,NULL),
(2000001411,'WORK FASTER!',0,0,0,15,NULL),
(2000001412,'What we fire from this thing,anyway?',0,0,0,0,NULL),
(2000001413,'Me not know. The overseer,me hope!',0,0,0,0,NULL);

-- HORDE FIGHTERS

-- Active, No XP
-- Melgromm Highmountain, Darkspear Axe Thrower, Undercity Mage, Orgrimmar Shaman, Orgrimmar Grunt
UPDATE creature_template SET ExtraFlags = ExtraFlags|4096|64 WHERE entry IN (18969,18970,18971,18972,18950);

-- Orgrimmar Shaman - Lightning Shield
DELETE FROM creature_template_addon WHERE entry = 18972;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(18972, 0, 0, 1, 16, 333, 0, 20545);

-- Darkspear Axe Thrower
DELETE FROM creature_template_addon WHERE entry = 18970;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(18970,0,0,2,16,0,0,''); -- 1 in sniff?

-- Magma Flow Totem - Magma Flow Totem Passive
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, MovementType = 0, AIName = 'TotemAI', MinLevelHealth = 4050, MaxLevelHealth = 4050 WHERE entry = 19222;
DELETE FROM creature_template_spells WHERE entry = 19222;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES
(19222,33561,0,0,0);

-- Strength of the Storm Totem - Strength of the Storm
-- Strength of the Storm Totem (Rank 1) 
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, MovementType = 0, AIName = 'TotemAI', MinLevelHealth = 4050, MaxLevelHealth = 4050 WHERE entry = 19225;
DELETE FROM creature_template_spells WHERE entry = 19225;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES
(19225,33571,0,0,0);

-- path from portal to bottom of stairs
UPDATE creature SET MovementType = 2, position_x = -161.2, position_y = 965.671, position_z = 54.288 WHERE id IN (18970,18971,18972,18950,18969);
DELETE FROM creature_movement WHERE id IN (68017,68018,68019,68021,68022,68024,68025,68122,68123,68124,68125,68126,140485,68127,68128,86070,86071,86072,68121);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES 
(68121,1,-161.2,965.671,54.288,1000,5,100),
(68121,2,-178.042,1017.21,54.2803,0,0,100),
(68121,3,-186.551,1025.27,54.2289,0,0,100),
(68121,4,-215.948,1025.96,54.3017,0,0,100),
(68121,5,-233.952,1051.47,54.3161,0,0,100),
(68121,6,-235.056,1071.13,54.308,2000,1894510,100),
(68121,7,-231.06,1071.19,54.3078,30000,1894511,1.815),
(68017,1,-161.2,965.671,54.288,1000,5,100),
(68017,2,-178.042,1017.21,54.2803,0,0,100),
(68017,3,-186.551,1025.27,54.2289,0,0,100),
(68017,4,-215.948,1025.96,54.3017,0,0,100),
(68017,5,-233.952,1051.47,54.3161,0,0,100),
(68017,6,-235.056,1071.13,54.308,2000,1894510,100),
(68017,7,-237.511,1094.27,41.6668,30000,1894511,1.5708),
(68018,1,-161.2,965.671,54.288,1000,5,100),
(68018,2,-178.042,1017.21,54.2803,0,0,100),
(68018,3,-186.551,1025.27,54.2289,0,0,100),
(68018,4,-215.948,1025.96,54.3017,0,0,100),
(68018,5,-233.952,1051.47,54.3161,0,0,100),
(68018,6,-235.056,1071.13,54.308,2000,1894510,100),
(68018,7,-230.824,1097.16,41.6667,30000,1894511,1.5708),
(68019,1,-161.2,965.671,54.288,1000,5,100),
(68019,2,-178.042,1017.21,54.2803,0,0,100),
(68019,3,-186.551,1025.27,54.2289,0,0,100),
(68019,4,-215.948,1025.96,54.3017,0,0,100),
(68019,5,-233.952,1051.47,54.3161,0,0,100),
(68019,6,-235.056,1071.13,54.308,2000,1894510,100),
(68019,7,-249.264,1096.98,41.6667,30000,1894511,1.5708),
(68021,1,-161.2,965.671,54.288,1000,5,100),
(68021,2,-178.042,1017.21,54.2803,0,0,100),
(68021,3,-186.551,1025.27,54.2289,0,0,100),
(68021,4,-215.948,1025.96,54.3017,0,0,100),
(68021,5,-233.952,1051.47,54.3161,0,0,100),
(68021,6,-235.056,1071.13,54.308,2000,1894510,100),
(68021,7,-240.408,1097.11,41.6667,30000,1894511,1.5708),
(68022,1,-161.2,965.671,54.288,1000,5,100),
(68022,2,-178.042,1017.21,54.2803,0,0,100),
(68022,3,-186.551,1025.27,54.2289,0,0,100),
(68022,4,-215.948,1025.96,54.3017,0,0,100),
(68022,5,-233.952,1051.47,54.3161,0,0,100),
(68022,6,-235.056,1071.13,54.308,2000,1894510,100),
(68022,7,-245.204,1096.97,41.6667,30000,1894511,1.5708),
(68024,1,-161.2,965.671,54.288,1000,5,100),
(68024,2,-178.042,1017.21,54.2803,0,0,100),
(68024,3,-186.551,1025.27,54.2289,0,0,100),
(68024,4,-215.948,1025.96,54.3017,0,0,100),
(68024,5,-233.952,1051.47,54.3161,0,0,100),
(68024,6,-235.056,1071.13,54.308,2000,1894510,100),
(68024,7,-250.13,1094.1,41.6667,30000,1894511,1.5708),
(68025,1,-161.2,965.671,54.288,1000,5,100),
(68025,2,-178.042,1017.21,54.2803,0,0,100),
(68025,3,-186.551,1025.27,54.2289,0,0,100),
(68025,4,-215.948,1025.96,54.3017,0,0,100),
(68025,5,-233.952,1051.47,54.3161,0,0,100),
(68025,6,-235.056,1071.13,54.308,2000,1894510,100),
(68025,7,-232.574,1094.35,41.6668,30000,1894511,1.5708),
(68122,1,-161.2,965.671,54.288,1000,5,100),
(68122,2,-178.042,1017.21,54.2803,0,0,100),
(68122,3,-186.551,1025.27,54.2289,0,0,100),
(68122,4,-215.948,1025.96,54.3017,0,0,100),
(68122,5,-233.952,1051.47,54.3161,0,0,100),
(68122,6,-235.056,1071.13,54.308,2000,1894510,100),
(68122,7,-241.921,1083.71,48.2306,30000,1894511,1.5708),
(68123,1,-161.2,965.671,54.288,1000,5,100),
(68123,2,-178.042,1017.21,54.2803,0,0,100),
(68123,3,-186.551,1025.27,54.2289,0,0,100),
(68123,4,-215.948,1025.96,54.3017,0,0,100),
(68123,5,-233.952,1051.47,54.3161,0,0,100),
(68123,6,-235.056,1071.13,54.308,2000,1894510,100),
(68123,7,-237.338,1086.75,46.2598,30000,1894511,1.5708),
(68124,1,-161.2,965.671,54.288,1000,5,100),
(68124,2,-178.042,1017.21,54.2803,0,0,100),
(68124,3,-186.551,1025.27,54.2289,0,0,100),
(68124,4,-215.948,1025.96,54.3017,0,0,100),
(68124,5,-233.952,1051.47,54.3161,0,0,100),
(68124,6,-235.056,1071.13,54.308,2000,1894510,100),
(68124,7,-232.331,1086.96,46.1684,30000,1894511,1.5708),
(68125,1,-161.2,965.671,54.288,1000,5,100),
(68125,2,-178.042,1017.21,54.2803,0,0,100),
(68125,3,-186.551,1025.27,54.2289,0,0,100),
(68125,4,-215.948,1025.96,54.3017,0,0,100),
(68125,5,-233.952,1051.47,54.3161,0,0,100),
(68125,6,-235.056,1071.13,54.308,2000,1894510,100),
(68125,7,-237.257,1083.69,48.2874,30000,1894511,100),
(68126,1,-161.2,965.671,54.288,1000,5,100),
(68126,2,-178.042,1017.21,54.2803,0,0,100),
(68126,3,-186.551,1025.27,54.2289,0,0,100),
(68126,4,-215.948,1025.96,54.3017,0,0,100),
(68126,5,-233.952,1051.47,54.3161,0,0,100),
(68126,6,-235.056,1071.13,54.308,2000,1894510,100),
(68126,7,-241.972,1086.77,46.1973,30000,1894511,1.5708),
(68127,1,-161.2,965.671,54.288,1000,5,100),
(68127,2,-178.042,1017.21,54.2803,0,0,100),
(68127,3,-186.551,1025.27,54.2289,0,0,100),
(68127,4,-215.948,1025.96,54.3017,0,0,100),
(68127,5,-233.952,1051.47,54.3161,0,0,100),
(68127,6,-235.056,1071.13,54.308,2000,1894510,100),
(68127,7,-225.987,1083.23,54.3374,30000,1894511,2.71726),
(68128,1,-161.2,965.671,54.288,1000,5,100),
(68128,2,-178.042,1017.21,54.2803,0,0,100),
(68128,3,-186.551,1025.27,54.2289,0,0,100),
(68128,4,-215.948,1025.96,54.3017,0,0,100),
(68128,5,-233.952,1051.47,54.3161,0,0,100),
(68128,6,-235.056,1071.13,54.308,2000,1894510,100),
(68128,7,-228.478,1074.47,54.3336,30000,1894511,2.51033),
(140485,1,-161.2,965.671,54.288,1000,5,100),
(140485,2,-178.042,1017.21,54.2803,0,0,100),
(140485,3,-186.551,1025.27,54.2289,0,0,100),
(140485,4,-215.948,1025.96,54.3017,0,0,100),
(140485,5,-233.952,1051.47,54.3161,0,0,100),
(140485,6,-235.056,1071.13,54.308,2000,1894510,100),
(140485,7,-232.374,1083.71,48.3245,30000,1894511,1.5708),
(86070,1,-161.2,965.671,54.288,1000,5,100),
(86070,2,-178.042,1017.21,54.2803,0,0,100),
(86070,3,-186.551,1025.27,54.2289,0,0,100),
(86070,4,-215.948,1025.96,54.3017,0,0,100),
(86070,5,-233.952,1051.47,54.3161,0,0,100),
(86070,6,-235.056,1071.13,54.308,2000,1894510,100),
(86070,7,-241.246765,1094.100708,41.666718,30000,1894511,1.5708),
(86071,1,-161.2,965.671,54.288,1000,5,100),
(86071,2,-178.042,1017.21,54.2803,0,0,100),
(86071,3,-186.551,1025.27,54.2289,0,0,100),
(86071,4,-215.948,1025.96,54.3017,0,0,100),
(86071,5,-233.952,1051.47,54.3161,0,0,100),
(86071,6,-235.056,1071.13,54.308,2000,1894510,100),
(86071,7,-235.832855,1096.927490,41.666744,30000,1894511,1.5708),
(86072,1,-161.2,965.671,54.288,1000,5,100),
(86072,2,-178.042,1017.21,54.2803,0,0,100),
(86072,3,-186.551,1025.27,54.2289,0,0,100),
(86072,4,-215.948,1025.96,54.3017,0,0,100),
(86072,5,-233.952,1051.47,54.3161,0,0,100),
(86072,6,-235.056,1071.13,54.308,2000,1894510,100),
(86072,7,-246.153641,1094.066406,41.666718,30000,1894511,1.5708);

-- ---------------------------
-- STAIR OF DESTINY - ALLIANCE
-- ---------------------------

-- Operations Officer (19446)
-- Update script with Wounded Soldier - fix ordering of events and add more text
-- original script from UDB?

-- Decrease frequency by increasing spawn time of Wounded Soldier
UPDATE creature SET spawntimesecsmin = 550, spawntimesecsmax = 650 WHERE id = 19445;

DELETE FROM creature_movement_template WHERE entry = 19445;
INSERT INTO creature_movement_template (entry,pathId,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(19445,0,1,-351.676,1003.09,54.2105,0,1944501,0.346746),
(19445,0,2,-347.655,1004.96,54.2145,16000,1944502,0.924013),
(19445,0,3,-340.337,1012.39,54.2244,20000,1944503,0.565738);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1944501,1944502,1944503);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(1944501,0,0,0,0,0,19446,10,0,2000005412,0,0,0,0,0,0,0,'force 19446 to: say text'),
(1944501,0,1,6,0,0,19446,15,0,0,0,0,0,0,0,0,0,'force 19446 to: emote'),
(1944502,2,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2.42158,''),
(1944502,5,0,0,0,0,0,0,0,2000001417,0,0,0,0,0,0,0,''),
(1944502,9,0,0,0,0,0,0,0,2000005413,0,0,0,0,0,0,0,''),
(1944502,14,0,0,0,0,19446,10,0,2000005414,0,0,0,0,0,0,0,'force 19446 to: say text'),
(1944503,0,1,93,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1944503,5,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1944503,5,15,5,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1944503,6,1,5,0,0,19446,15,0,0,0,0,0,0,0,0,0,'force 19446 to: emote'),
(1944503,7,0,0,0,0,19446,15,0,2000005415,0,0,0,0,0,0,0,'force 19446 to: say text'),
(1944503,10,0,0,0,0,0,0,0,2000005416,0,0,0,0,0,0,0,''),
(1944503,12,1,16,0,0,19446,15,0,0,0,0,0,0,0,0,0,'force 19446 to: emote'),
(1944503,13,0,0,0,0,19446,15,0,2000005417,0,0,0,0,0,0,0,'force 19446 to: say text'),
(1944503,17,0,0,0,0,19446,15,0,2000001414,0,0,0,0,0,0,0,'force 19446 to: say text'),
(1944503,60,0,0,0,0,19446,15,0,2000001415,2000001416,2000001418,0,0,0,0,0,'force 19446 to: say text');

DELETE FROM dbscript_string WHERE entry IN (2000001414,2000001415,2000001416,2000001417,2000001418);
INSERT INTO dbscript_string (entry, content_default, type, emote, comment) VALUES
(2000001414,'NEVER AGAIN!! Next time some wounded soldier wants to return to the front line, I am putting my foot down. I mean it this time.',0,0,NULL),
(2000001415,'Let\'s pick up the pace! These ballistas aren\'t going to fix themselves!',0,0,NULL),
(2000001416,'Keep up the pace boys! We need these supplies moved and weapons fixed!',0,0,NULL),
(2000001417,'Sir! If I don\'t get out there and fight for Azeroth, then why am I in this army? I enlisted to do a job, and I intend to see it through.',0,0,NULL),
(2000001418,'Come on! Our boys are out there and they need these supplies ready!',0,0,NULL);

-- Invisibility and Stealth Detection
UPDATE creature_template_addon SET auras = 18950 WHERE entry = 19446;

-- Peasant Workers (19444)
-- Invisibility and Stealth Detection
UPDATE creature_template_addon SET auras = 18950 WHERE entry = 19444;

UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 69639;
DELETE FROM creature_movement WHERE id = 69639;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(69639,1,-345.4919,1016.086,54.17416,100,30000,5),
(69639,2,-333.7799,1015.306,54.22165,100,0,0),
(69639,3,-294.2,1029.971,54.22788,100,30000,0),
(69639,4,-333.7799,1015.306,54.22165,100,0,0);

UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 69636;
DELETE FROM creature_movement WHERE id = 69636;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(69636,1,-313.9967,1002.099,54.30511,6.18,15000,5),
(69636,2,-349.3952,964.6723,54.28072,4.69,15000,0);
UPDATE creature_addon SET emote = 69 WHERE guid = 69636;

-- free guid used (from extra deleted spawn)
REPLACE INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(67998, 19444, 530, 1, 0, 0, -350.27, 1016.68, 54.189, 1.113, 300, 300, 0, 0, 5228, 0, 0, 2);
DELETE FROM creature_movement WHERE id = 67998;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(67998, 1, -350.398, 1017.32, 54.1875, 100, 5000, 5),
(67998, 2, -351.735, 1004.84, 54.2068, 100, 0, 0),
(67998, 3, -333.917, 991.359, 54.2368, 100, 0, 0),
(67998, 4, -324.189, 982.894, 54.2631, 100, 0, 0),
(67998, 5, -318.207, 979.981, 54.2743, 100, 0, 0),
(67998, 6, -312.885, 979.234, 54.2804, 100, 5000, 0),
(67998, 7, -318.207, 979.981, 54.2743, 100, 0, 0),
(67998, 8, -324.189, 982.894, 54.2631, 100, 0, 0),
(67998, 9, -333.917, 991.359, 54.2368, 100, 0, 0),
(67998, 10, -351.735, 1004.84, 54.2068, 100, 0, 0);
DELETE FROM creature_addon WHERE guid = 67998;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(67998, 0, 0, 1, 16, 69, 0, '');

UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 69640;
DELETE FROM creature_movement WHERE id = 69640;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(69640, 1, -326.81, 964.68, 54.3023, 100, 20000, 5),
(69640, 2, -353.431, 1006.36, 54.2057, 100, 0, 0),
(69640, 3, -371.219, 1006.33, 54.1582, 100, 20000, 0),
(69640, 4, -353.431, 1006.36, 54.2057, 100, 0, 0);

-- free guid used (from extra deleted spawn)
REPLACE INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(67999, 19444, 530, 1, 0, 0, -308.667, 1013.6, 54.3228, 4.7374, 300, 300, 0, 0, 5228, 0, 0, 2);
DELETE FROM creature_movement WHERE id = 67999;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(67999, 1, -308.531, 1013.41, 54.3227, 4.75, 10000, 5),
(67999, 2, -277.895, 1033.26, 54.3286, 100, 0, 0),
(67999, 3, -277.952, 1061.3, 54.318, 100, 10000, 0),
(67999, 4, -277.45, 1033.12, 54.3291, 100, 0, 0);
DELETE FROM creature_addon WHERE guid = 67999;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(67999, 0, 0, 1, 16, 69, 0, '');

-- ALLIANCE FIGHTERS

-- Active, No XP
-- Justinius the Harbinger, Ironforge Paladin, Stormwind Soldier, Darnassian Archer, Stormwind Mage
UPDATE creature_template SET ExtraFlags = ExtraFlags|4096|64 WHERE entry IN (18966,18986,18948,18965,18949);

UPDATE creature_template_addon SET emote = 333 WHERE entry IN (18986,18948);

-- Darnassian Archer
DELETE FROM creature_template_addon WHERE entry = 18965;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(18965,0,0,2,16,0,0,''); -- 1 in sniff?

-- path from portal to bottom of stairs
UPDATE creature SET MovementType = 2, position_x = -338.018, position_y = 962.698, position_z = 54.286, orientation = 1.57 WHERE id IN (18986,18948,18965,18949,18966);
DELETE FROM creature_movement WHERE id IN (68010,68011,68012,68013,140487,140486,68015,68016,68111,68112,68113,68114,68115,68116,68262,68263,68264,68265,68118);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(68118,1,-338.018,962.698,54.286,1000,5,100),
(68118,2,-316.553,1020.14,54.245,0,0,100),
(68118,3,-275.196,1027.19,54.3281,0,0,100),
(68118,4,-262.186,1054.87,54.3139,0,0,100),
(68118,5,-262.778,1071.57,54.3082,2000,1894510,100),
(68118,6,-269.245,1070.41,54.308,30000,1894511,1.28),
(68010,1,-338.018,962.698,54.286,1000,5,100),
(68010,2,-316.553,1020.14,54.245,0,0,100),
(68010,3,-275.196,1027.19,54.3281,0,0,100),
(68010,4,-262.186,1054.87,54.3139,0,0,100),
(68010,5,-262.778,1071.57,54.3082,2000,1894510,100),
(68010,6,-265.283,1094.12,41.676,30000,1894511,1.570),
(68011,1,-338.018,962.698,54.286,1000,5,100),
(68011,2,-316.553,1020.14,54.245,0,0,100),
(68011,3,-275.196,1027.19,54.3281,0,0,100),
(68011,4,-262.186,1054.87,54.3139,0,0,100),
(68011,5,-262.778,1071.57,54.3082,2000,1894510,100),
(68011,6,-268.991,1097.27,41.797,30000,1894511,1.570),
(68012,1,-338.018,962.698,54.286,1000,5,100),
(68012,2,-316.553,1020.14,54.245,0,0,100),
(68012,3,-275.196,1027.19,54.3281,0,0,100),
(68012,4,-262.186,1054.87,54.3139,0,0,100),
(68012,5,-262.778,1071.57,54.3082,2000,1894510,100),
(68012,6,-259.124,1097.5,41.7916,30000,1894511,1.570),
(68013,1,-338.018,962.698,54.286,1000,5,100),
(68013,2,-316.553,1020.14,54.245,0,0,100),
(68013,3,-275.196,1027.19,54.3281,0,0,100),
(68013,4,-262.186,1054.87,54.3139,0,0,100),
(68013,5,-262.778,1071.57,54.3082,2000,1894510,100),
(68013,6,-260.939,1094.27,41.7916,30000,1894511,1.570),
(68015,1,-338.018,962.698,54.286,1000,5,100),
(68015,2,-316.553,1020.14,54.245,0,0,100),
(68015,3,-275.196,1027.19,54.3281,0,0,100),
(68015,4,-262.186,1054.87,54.3139,0,0,100),
(68015,5,-262.778,1071.57,54.3082,2000,1894510,100),
(68015,6,-272.632,1075,54.3557,30000,1894511,1.570),
(68016,1,-338.018,962.698,54.286,1000,5,100),
(68016,2,-316.553,1020.14,54.245,0,0,100),
(68016,3,-275.196,1027.19,54.3281,0,0,100),
(68016,4,-262.186,1054.87,54.3139,0,0,100),
(68016,5,-262.778,1071.57,54.3082,2000,1894510,100),
(68016,6,-275.911,1083.75,54.3343,30000,1894511,1.570),
(68111,1,-338.018,962.698,54.286,1000,5,100),
(68111,2,-316.553,1020.14,54.245,0,0,100),
(68111,3,-275.196,1027.19,54.3281,0,0,100),
(68111,4,-262.186,1054.87,54.3139,0,0,100),
(68111,5,-262.778,1071.57,54.3082,2000,1894510,100),
(68111,6,-269.663,1086.26,46.2537,30000,1894511,1.570),
(68112,1,-338.018,962.698,54.286,1000,5,100),
(68112,2,-316.553,1020.14,54.245,0,0,100),
(68112,3,-275.196,1027.19,54.3281,0,0,100),
(68112,4,-262.186,1054.87,54.3139,0,0,100),
(68112,5,-262.778,1071.57,54.3082,2000,1894510,100),
(68112,6,-269.932,1083.3,48.2155,30000,1894511,1.570),
(68113,1,-338.018,962.698,54.286,1000,5,100),
(68113,2,-316.553,1020.14,54.245,0,0,100),
(68113,3,-275.196,1027.19,54.3281,0,0,100),
(68113,4,-262.186,1054.87,54.3139,0,0,100),
(68113,5,-262.778,1071.57,54.3082,2000,1894510,100),
(68113,6,-260.602,1086.43,46.2295,30000,1894511,1.647),
(68114,1,-338.018,962.698,54.286,1000,5,100),
(68114,2,-316.553,1020.14,54.245,0,0,100),
(68114,3,-275.196,1027.19,54.3281,0,0,100),
(68114,4,-262.186,1054.87,54.3139,0,0,100),
(68114,5,-262.778,1071.57,54.3082,2000,1894510,100),
(68114,6,-260.593,1083.48,48.1924,30000,1894511,1.570),
(68115,1,-338.018,962.698,54.286,1000,5,100),
(68115,2,-316.553,1020.14,54.245,0,0,100),
(68115,3,-275.196,1027.19,54.3281,0,0,100),
(68115,4,-262.186,1054.87,54.3139,0,0,100),
(68115,5,-262.778,1071.57,54.3082,2000,1894510,100),
(68115,6,-265.322,1083.37,48.2152,30000,1894511,1.485),
(68116,1,-338.018,962.698,54.286,1000,5,100),
(68116,2,-316.553,1020.14,54.245,0,0,100),
(68116,3,-275.196,1027.19,54.3281,0,0,100),
(68116,4,-262.186,1054.87,54.3139,0,0,100),
(68116,5,-262.778,1071.57,54.3082,2000,1894510,100),
(68116,6,-265.187,1086.36,46.23,30000,1894511,1.570),
(68262,1,-338.018,962.698,54.286,1000,5,100),
(68262,2,-316.553,1020.14,54.245,0,0,100),
(68262,3,-275.196,1027.19,54.3281,0,0,100),
(68262,4,-262.186,1054.87,54.3139,0,0,100),
(68262,5,-262.778,1071.57,54.3082,2000,1894510,100),
(68262,6,-269.914,1093.96,41.8841,30000,1894511,1.570),
(68263,1,-338.018,962.698,54.286,1000,5,100),
(68263,2,-316.553,1020.14,54.245,0,0,100),
(68263,3,-275.196,1027.19,54.3281,0,0,100),
(68263,4,-262.186,1054.87,54.3139,0,0,100),
(68263,5,-262.778,1071.57,54.3082,2000,1894510,100),
(68263,6,-254.833,1097.45,41.7916,30000,1894511,1.570),
(68264,1,-338.018,962.698,54.286,1000,5,100),
(68264,2,-316.553,1020.14,54.245,0,0,100),
(68264,3,-275.196,1027.19,54.3281,0,0,100),
(68264,4,-262.186,1054.87,54.3139,0,0,100),
(68264,5,-262.778,1071.57,54.3082,2000,1894510,100),
(68264,6,-256.28,1094.16,41.6667,30000,1894511,1.570),
(68265,1,-338.018,962.698,54.286,1000,5,100),
(68265,2,-316.553,1020.14,54.245,0,0,100),
(68265,3,-275.196,1027.19,54.3281,0,0,100),
(68265,4,-262.186,1054.87,54.3139,0,0,100),
(68265,5,-262.778,1071.57,54.3082,2000,1894510,100),
(68265,6,-263.816,1097.49,41.7916,30000,1894511,1.57),
(140486,1,-338.018,962.698,54.286,1000,5,100),
(140486,2,-316.553,1020.14,54.245,0,0,100),
(140486,3,-275.196,1027.19,54.3281,0,0,100),
(140486,4,-262.186,1054.87,54.3139,0,0,100),
(140486,5,-262.778,1071.57,54.3082,2000,1894510,100),
(140486,6,-252.769,1093.94,41.668,30000,1894511,1.570),
(140487,1,-338.018,962.698,54.286,1000,5,100),
(140487,2,-316.553,1020.14,54.245,0,0,100),
(140487,3,-275.196,1027.19,54.3281,0,0,100),
(140487,4,-262.186,1054.87,54.3139,0,0,100),
(140487,5,-262.778,1071.57,54.3082,2000,1894510,100),
(140487,6,-272.204,1097.1,41.9803,30000,1894511,1.570);

/*
These are only during the Dark Portal Opens Event, not in Outland

DELETE FROM creature_text WHERE entry = @MELGROMM_HIGHMOUNTAIN_ENTRY;
INSERT INTO creature_text (entry, groupid, id, text, type, language, probability, emote, duration, sound, BroadcastTextId, TextRange, comment) VALUES
(@MELGROMM_HIGHMOUNTAIN_ENTRY, 0, 0,"Hunters, to me! Let us show these demons what it is to fight and die in Azeroth!" , 14, 0, 100, 0, 0, 0, 16616, 0, MELGROMM_HIGHMOUNTAIN),
(@MELGROMM_HIGHMOUNTAIN_ENTRY, 0, 1,"The spirits sing to us! They sing the song of battle!", 14, 0, 100, 0, 0, 0, 16617, 0, MELGROMM_HIGHMOUNTAIN),
(@MELGROMM_HIGHMOUNTAIN_ENTRY, 0, 2,"Strike true, brothers and sisters! Today our quarry is demons!", 14, 0, 100, 0, 0, 0, 16618, 0, MELGROMM_HIGHMOUNTAIN),
(@MELGROMM_HIGHMOUNTAIN_ENTRY, 0, 3,"Once again, we will show this Burning Legion that our world is not for the taking!", 14, 0, 100, 0, 0, 0, 16620, 0, MELGROMM_HIGHMOUNTAIN),
(@MELGROMM_HIGHMOUNTAIN_ENTRY, 0, 4,"These fiends will fail! For Azeroth!", 14, 0, 100, 0, 0, 0, 16621, 0, MELGROMM_HIGHMOUNTAIN),
(@MELGROMM_HIGHMOUNTAIN_ENTRY, 0, 5,"If it is our fate to die this day, then we will not go easy! Mark me, these demons will fall like wheat!", 14, 0, 100, 0, 0, 0, 16622, 0, MELGROMM_HIGHMOUNTAIN),
(@MELGROMM_HIGHMOUNTAIN_ENTRY, 0, 6,"Though your sinews tire and your blood flows from cuts and wounds to this sodden ground, you fight for the spirits of your world. No evil force can stand against us!", 14, 0, 100, 0, 0, 0, 16624, 0, MELGROMM_HIGHMOUNTAIN),
(@MELGROMM_HIGHMOUNTAIN_ENTRY, 0, 7,"My brethern, my commands-in-arms! I must go to seek the forces of the Horde and direct them here! Keep your spirits strong, brave hunters! Do not fall to the portal-spawned fiends!", 14, 0, 100, 0, 0, 0, 16935, 0, MELGROMM_HIGHMOUNTAIN);

DELETE FROM creature_text WHERE entry = @JUSTINIUS_THE_HARBINGER_ENTRY;
INSERT INTO creature_text (entry, groupid, id, text, type, language, probability, emote, duration, sound, BroadcastTextId, TextRange, comment) VALUES
(@JUSTINIUS_THE_HARBINGER_ENTRY, 0, 0,"Soldiers of Azeroth, you now fight against the vile Burning Crusade. And the hopes and prayers of all Light-loving people march with you. In the company of our brave allies and brothers -in-arms you will hold your ground and break the demonic charge. You will stem the destructive tyranny that rages across so many worlds.", 14, 0, 100, 0, 0, 0, 16625, 0, Justinius the Harbinger Aggro),
(@JUSTINIUS_THE_HARBINGER_ENTRY, 0, 1,"With each passing moment, I see the people of Azeroth prove again the reasons we have come. It is with solemn pride that I fight with you, and if I die this day, then I die among friends.", 14, 0, 100, 0, 0, 0, 16633, 0, Justinius the Harbinger Aggro),
(@JUSTINIUS_THE_HARBINGER_ENTRY, 0, 2,"The demons should be in no doubt that we are their nemesis and, though they wish our destruction, it is we who bring about their ruin. Kazzak and his forces will be diminished and defeated by this coalition. And to do this, we must throw at them our bodies and hearts, for they seek no less than the obliteration of this world.", 14, 0, 100, 0, 0, 0, 16627, 0, Justinius the Harbinger Aggro),
(@JUSTINIUS_THE_HARBINGER_ENTRY, 0, 3,"Fight on, good people of Azeroth. And take heart! Your brethren rush to this hellish portal and will soon throw themselves at these demons as you have so bravely done. May the Light keep you!", 14, 0, 100, 0, 0, 0, 16933, 0, Justinius the Harbinger Aggro),
(@JUSTINIUS_THE_HARBINGER_ENTRY, 0, 4,"Behold the power of the Light! Grace and glory to the Alliance!" , 14, 0, 100, 0, 0, 0, 16286, 0, Justinius the Harbinger Aggro);
*/
