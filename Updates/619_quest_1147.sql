-- q.1147 'The Swarm Grows'
-- Source: Wowhead
-- The Invaders seem to share a spawn with the Hive Drones in the cave here. If you can't find any invaders, wipe out the whole cave and hopefully some should appear on the respawn :-)

-- Silithid Invader & Silithid Hive Drone - missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid IN (129214,129215,129218,129219,129235,129236,129245);
DELETE FROM creature_addon WHERE guid IN (129214,129215,129218,129219,129235,129236,129245);
DELETE FROM creature_movement WHERE id IN (129214,129215,129218,129219,129235,129236,129245);
DELETE FROM game_event_creature WHERE guid IN (129214,129215,129218,129219,129235,129236,129245);
DELETE FROM game_event_creature_data WHERE guid IN (129214,129215,129218,129219,129235,129236,129245);
DELETE FROM creature_battleground WHERE guid IN (129214,129215,129218,129219,129235,129236,129245);
DELETE FROM creature_linking WHERE guid IN (129214,129215,129218,129219,129235,129236,129245)
 OR master_guid IN (129214,129215,129218,129219,129235,129236,129245);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
-- Silithid Invader
(129214,4131,1,1,1,0,0,-6509.99,-3307.85,-94.9981,2.69453,120,2,0,1279,0,0,1),
(129215,4131,1,1,1,0,0,-6489.48,-3323.94,-94.6707,6.08744,120,2,0,1279,0,0,1),
(129218,4131,1,1,1,0,0,-6463.43,-3299.89,-104.906,1.15121,120,2,0,1279,0,0,1),
(129219,4131,1,1,1,0,0,-6484.77,-3254.36,-113.617,2.9647,120,2,0,1279,0,0,1),
(129235,4131,1,1,1,0,0,-6495.73,-3244.02,-113.403,0.167894,120,2,0,1342,0,0,1),
(129236,4131,1,1,1,0,0,-6485.35,-3229.54,-112.43,4.8528,120,2,0,1279,0,0,1),
(129245,4131,1,1,1,0,0,-6473.03,-3243.65,-113.289,2.96785,120,2,0,1342,0,0,1),
(129251,4131,1,1,1,0,0,-6447.72,-3289.73,-105.453,3.86051,120,2,0,1342,0,0,1),
-- Silithid Hive Drone
(129255,4133,1,1,1,0,0,-6447.95,-3290.05,-105.558,0.0576163,120,2,0,1279,0,0,1);
-- Silithid Invader & Silithid Hive Drone
UPDATE creature SET spawntimesecs = 120 WHERE guid IN (21314,21317,21318,21323,21324,21325,21327,21301,21330);

-- pools
-- Pool Templates -- Pool 1
DELETE FROM pool_template WHERE entry = 25565;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25565, 1, 'Thousand Needles - Silithid Invader/Silithid Hive Drone - Pool 1');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25565;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(21301, 25565, 0, 'Thousand Needles - Silithid Invader'),
(21327, 25565, 0, 'Thousand Needles - Silithid Hive Drone');

-- Pool Templates -- Pool 2
DELETE FROM pool_template WHERE entry = 25566;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25566, 1, 'Thousand Needles - Silithid Invader/Silithid Hive Drone - Pool 2');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25566;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(129214, 25566, 0, 'Thousand Needles - Silithid Invader'),
(21330, 25566, 0, 'Thousand Needles - Silithid Hive Drone');

-- Pool Templates -- Pool 3
DELETE FROM pool_template WHERE entry = 25567;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25567, 1, 'Thousand Needles - Silithid Invader/Silithid Hive Drone - Pool 3');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25567;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(129215, 25567, 0, 'Thousand Needles - Silithid Invader'),
(21325, 25567, 0, 'Thousand Needles - Silithid Hive Drone');

-- Pool Templates -- Pool 4
DELETE FROM pool_template WHERE entry = 25568;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25568, 1, 'Thousand Needles - Silithid Invader/Silithid Hive Drone - Pool 4');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25568;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(129218, 25568, 0, 'Thousand Needles - Silithid Invader'),
(21323, 25568, 0, 'Thousand Needles - Silithid Hive Drone');

-- Pool Templates -- Pool 5
DELETE FROM pool_template WHERE entry = 25569;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25569, 1, 'Thousand Needles - Silithid Invader/Silithid Hive Drone - Pool 5');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25569;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(129219, 25569, 0, 'Thousand Needles - Silithid Invader'),
(21324, 25569, 0, 'Thousand Needles - Silithid Hive Drone');

-- Pool Templates -- Pool 6
DELETE FROM pool_template WHERE entry = 25570;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25570, 1, 'Thousand Needles - Silithid Invader/Silithid Hive Drone - Pool 6');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25570;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(129235, 25570, 0, 'Thousand Needles - Silithid Invader'),
(21318, 25570, 0, 'Thousand Needles - Silithid Hive Drone');

-- Pool Templates -- Pool 7
DELETE FROM pool_template WHERE entry = 25571;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25571, 1, 'Thousand Needles - Silithid Invader/Silithid Hive Drone - Pool 7');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25571;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(129236, 25571, 0, 'Thousand Needles - Silithid Invader'),
(21314, 25571, 0, 'Thousand Needles - Silithid Hive Drone');

-- Pool Templates -- Pool 8
DELETE FROM pool_template WHERE entry = 25572;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25572, 1, 'Thousand Needles - Silithid Invader/Silithid Hive Drone - Pool 8');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25572;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(129245, 25572, 0, 'Thousand Needles - Silithid Invader'),
(21317, 25572, 0, 'Thousand Needles - Silithid Hive Drone');

-- Pool Templates -- Pool 9
DELETE FROM pool_template WHERE entry = 25573;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25573, 1, 'Thousand Needles - Silithid Invader/Silithid Hive Drone - Pool 9');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25573;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(129251, 25573, 0, 'Thousand Needles - Silithid Invader'),
(129255, 25573, 0, 'Thousand Needles - Silithid Hive Drone');
