-- BRD - The Lyceum p2
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 9956);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 9956);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 9956);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 9956);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 9956);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 9956)
OR master_guid IN (SELECT guid FROM creature WHERE id = 9956);
DELETE FROM creature WHERE id = 9956;
REPLACE INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(47302, 9956, 230, 0, 0, 1396.891, -343.4526, -91.95705, 0.40704730, 10800, 10800, 15, 0, 760, 0, 0, 1),
(47303, 9956, 230, 0, 0, 1457.020, -417.8852, -91.95474, 0.45342560, 10800, 10800, 15, 0, 760, 0, 0, 1),
(48203, 9956, 230, 0, 0, 1382.046, -396.8674, -94.59128, 6.07443700, 10800, 10800, 15, 0, 760, 0, 0, 1),
(91119, 9956, 230, 0, 0, 1385.198, -439.4368, -94.59129, 1.79247300, 10800, 10800, 15, 0, 760, 0, 0, 1),
(91120, 9956, 230, 0, 0, 1383.411, -491.5028, -91.95210, 1.99997300, 10800, 10800, 15, 0, 760, 0, 0, 1),
(136989, 9956, 230, 0, 0, 1331.276, -462.2303, -91.93541, 0.40068780, 10800, 10800, 15, 0, 760, 0, 0, 1),
(136990, 9956, 230, 0, 0, 1383.776, -324.0556, -91.97105, 2.17327600, 10800, 10800, 15, 0, 760, 0, 0, 1),
(136991, 9956, 230, 0, 0, 1382.621, -397.6801, -94.59127, 1.98526400, 10800, 10800, 15, 0, 760, 0, 0, 1),
(136992, 9956, 230, 0, 0, 1431.643, -378.0382, -91.91800, 1.55805700, 10800, 10800, 15, 0, 760, 0, 0, 1),
(136993, 9956, 230, 0, 0, 1305.000, -426.3872, -91.95335, 1.48810200, 10800, 10800, 15, 0, 760, 0, 0, 1),
(136994, 9956, 230, 0, 0, 1381.997, -528.6877, -91.96191, 2.39044900, 10800, 10800, 15, 0, 760, 0, 0, 1),
(136995, 9956, 230, 0, 0, 1431.377, -462.2412, -91.93483, 3.00687000, 10800, 10800, 15, 0, 760, 0, 0, 1);

REPLACE INTO pool_template (entry, max_limit, description) VALUES
(25880, 4,'BRD - Shadowforge Flame Keeper');

REPLACE INTO pool_creature_template (id, pool_entry, chance, description) VALUES
(9956, 25880, 0,'BRD - Shadowforge Flame Keeper');
