-- Fixing: db errors

-- DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 1818002, command 29 has buddy 18200 not found in range 15 of searcher Creature (Entry: 18180 Counter: 64963) DBGuid: 64963 (data-flags 0), skipping.
UPDATE dbscripts_on_creature_movement SET search_radius = 50 WHERE id = 1818002 AND buddy_entry = 18200;

-- DB-SCRIPTS: WARNING: Process table `dbscripts_on_creature_movement` id 60401, command 18 has no OTHER buddy 604 found - maybe you need to update the script?
-- DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 60401, command 18 called without buddy 604, but no source for search available, skipping.
DELETE FROM dbscripts_on_creature_movement WHERE id IN (60401);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority,command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- Despawn Plague spreader on last waypoint
-- reconstructed using despawn all
(60401,0,0,53,0,0,0,0,0,0,6506,0,0,0,0,0,0,0,'Patrol Schedules - Plaque Spreader - Change WorldState'),
(60401,0,1,18,0,0,0,604,100,1|0x200,0,0,0,0,0,0,0,0,'Patrol Schedules - Plaque Spreader - Despawn all'); -- script updated (diff to TDB)
UPDATE dbscripts_on_creature_movement SET dataint = 6506 WHERE id = 142101;
DELETE FROM `spawn_group` WHERE `Id` = '19018';
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES 
('19018', 'Duskwood - Plague Spreader (3) (q.330)', '0', '0', '6506', '8');
DELETE FROM `spawn_group_formation` WHERE `Id` = '19018';
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES 
('19018', '1', '5', '0', '19018', '2', 'Duskwood - Plague Spreader (3) (q.330)');
DELETE FROM `spawn_group_spawn` WHERE `Id` = '19018';
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES 
('19018', '5237', '0'),
('19018', '5238', '1'),
('19018', '5239', '2');
DELETE FROM `creature_spawn_data_template` WHERE `Entry` = 60401;
INSERT INTO `creature_spawn_data_template` (`Entry`, `Faction`, Name) VALUES 
(60401,43,'- Faction 43'); -- creature_entry * 100 + 1
DELETE FROM `creature_spawn_data` WHERE `Guid` IN (5237, 5238, 5239);
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES 
(5237,60401),
(5238,60401),
(5239,60401);
DELETE FROM `worldstate_name` WHERE `Id` IN (19018,6506);
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES 
('6506', 'Quest ID 330 - Plague Spreader Spawn');
UPDATE `creature_template` SET `DamageMultiplier` = 1.20 WHERE `entry` = 1421;
DELETE FROM dbscripts_on_quest_end WHERE id = 330;
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, x, y, z, comments) VALUES 
(330, 0, 0, 21, 1, 0, 0, 1421, 1626, 0x10, 0, 0, 0, 0,'Patrol Schedules - Privat Merle - Set ActiveState'),
(330, 0, 1, 25, 1, 0, 0, 1421, 1626, 0x10, 0, 0, 0, 0,'Patrol Schedules - Privat Merle - Set Run'),
(330, 0, 2, 20, 2, 1, 1, 1421, 1626, 0x10, 0, 0, 0, 0,'Patrol Schedules - Privat Merle - Start Waypoint Path 1');
UPDATE quest_template SET CompleteScript = 330 WHERE entry = 330;
DELETE FROM conditions WHERE condition_entry IN (6506,19018);
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES 
(6506, 42, 6506, 1, 1, 0, 0,'Quest ID 330 - Plague Spreader Spawn');
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE guid IN (5237, 5238, 5239);

-- DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 2499801, command 20 has buddy 3681 not found in range 25 of searcher Creature (Entry: 24998 Counter: 9001424) DBGuid: 5820000 (data-flags 7), skipping.
-- DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 2502301, command 20 has buddy 3681 not found in range 25 of searcher Creature (Entry: 25023 Counter: 9001471) DBGuid: 5870006 (data-flags 7), skipping.
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2499801,2499802,2502301,2502302);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2499801,4000,20,2,0,0,3681,5820007,7|0x10,0,0,0,0,0,0,0,0,''),
(2499802,4000,20,2,0,0,3681,5820006,7|0x10,0,0,0,0,0,0,0,0,''),
(2502301,4000,20,2,0,0,3681,5870000,7|0x10,0,0,0,0,0,0,0,0,''),
(2502302,4000,20,2,0,0,3681,5870001,7|0x10,0,0,0,0,0,0,0,0,'');
UPDATE creature_movement_template SET ScriptId = 2502302 WHERE Entry = 25023 AND Point = 31;
UPDATE creature_movement_template SET ScriptId = 2499802 WHERE Entry = 24998 AND Point = 44;
