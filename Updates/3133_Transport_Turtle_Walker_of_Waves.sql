-- Transport: Turtle (Walker of Waves)
-- Unu'pe <--> Moa'ki Harbor
-- duplicates
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (31805,31807));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (31805,31807));
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id IN (31805,31807));
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id IN (31805,31807));
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id IN (31805,31807));
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id IN (31805,31807))
 OR master_guid IN (SELECT guid FROM creature WHERE id IN (31805,31807));
DELETE FROM creature WHERE id IN (31805,31807);
SET @CGUID := 6200000;
SET @OGUID := 6200000;
DELETE FROM `creature` WHERE `map` = 620;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
-- Nagojut 31805
(@CGUID+0,31805,620,1,1,0,0,8.109375, -1.962646484375, 15.83483028411865234, 3.224293947219848632,120,120,0,0,0,0,0), -- waypoints
-- Aumanil 31807
(@CGUID+1,31807,620,1,1,0,0,-19.8762664794921875, -0.04972200095653533, 17.6105804443359375, 2.862339973449707031,120,120,0,0,0,0,0);

-- Transport: Turtle (Green Island)
-- Kamagua <--> Moa'ki Harbor 621
-- duplicates
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (31804,31806));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (31804,31806));
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id IN (31804,31806));
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id IN (31804,31806));
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id IN (31804,31806));
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id IN (31804,31806))
 OR master_guid IN (SELECT guid FROM creature WHERE id IN (31804,31806));
DELETE FROM creature WHERE id IN (31804,31806);
SET @CCGUID := 6210000;
SET @OOGUID := 6210000;
DELETE FROM `creature` WHERE `map` = 621;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
-- Qatiichii 31804
(@CCGUID+0,31804,621,1,1,0,0,14.083251953125, 1.959716796875, 18.80970382690429687, 3.735004663467407226,120,120,0,0,0,0,0), -- waypoints
-- Oomailiq 31806
(@COGUID+1,31806,621,1,1,0,0,-19.990936279296875, 0.077455997467041015, 17.6105804443359375, 3.071779489517211914,120,120,0,0,0,0,0);
