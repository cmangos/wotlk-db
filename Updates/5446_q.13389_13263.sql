-- q.13389 'A Short Fuse' - A
-- q.13263 'A Short Fuse' - H
DELETE FROM dbscripts_on_quest_start WHERE id IN (13389);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13389,1,35,5,100,0,31641,100,0,0,0,0,0,0,0,0,0,'buddy send event 5'),
(13389,100,15,59398,0,0,31641,100,0,0,0,0,0,0,0,0,0,'buddy cast on Player');
UPDATE quest_template SET StartScript = 13389 WHERE entry IN (13389);
UPDATE quest_template SET StartScript = 13389 WHERE entry IN (13263);
DELETE FROM spell_script_target WHERE entry = 59396;
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(59396,1,31641,0);
-- Icecrown - Pit Fall 31641
UPDATE creature SET PhaseMask = 1+2+8 WHERE id IN (31641);
-- Cosmetic Trigger - Phase 3 - LAB 31646
UPDATE creature_template SET Faction = 35, UnitFlags = 33554432, MinLevel = 70, MaxLevel = 70, UnitClass = 1, InhabitType = 4 WHERE Entry = 31646;
DELETE FROM creature_addon WHERE guid BETWEEN 536654 AND 536667;
DELETE FROM creature_movement WHERE id BETWEEN 536654 AND 536667;
DELETE FROM game_event_creature WHERE guid BETWEEN 536654 AND 536667;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 536654 AND 536667;
DELETE FROM creature_battleground WHERE guid BETWEEN 536654 AND 536667;
DELETE FROM creature_linking WHERE guid BETWEEN 536654 AND 536667;
DELETE FROM creature WHERE guid BETWEEN 536654 AND 536667;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
-- for phase 2
(536654,31646,571,1,2,5818.8267,2034.4132,503.38718,0.977,180,180,0,0),
(536655,31646,571,1,2,5815.766,2043.7982,503.37622,4.153 ,180,180,0,0),
(536656,31646,571,1,2,5784.868,2020.8412,491.8832,0.436  ,180,180,0,0),
(536657,31646,571,1,2,5763.8813,2043.7131,493.9036,3.1066,180,180,0,0),
(536658,31646,571,1,2,5767.9165,2058.6028,475.93317,4.433,180,180,0,0),
(536659,31646,571,1,2,5788.6094,1993.9548,435.3996,3.6128,180,180,0,0),
(536660,31646,571,1,2,5764.212,2045.8021,501.50967,5.166 ,180,180,0,0),
-- for phase 8
(536661,31646,571,1,8,5818.8267,2034.4132,503.38718,0.977,180,180,0,0),
(536662,31646,571,1,8,5815.766,2043.7982,503.37622,4.153 ,180,180,0,0),
(536663,31646,571,1,8,5784.868,2020.8412,491.8832,0.436  ,180,180,0,0),
(536664,31646,571,1,8,5763.8813,2043.7131,493.9036,3.1066,180,180,0,0),
(536665,31646,571,1,8,5767.9165,2058.6028,475.93317,4.433,180,180,0,0),
(536666,31646,571,1,8,5788.6094,1993.9548,435.3996,3.6128,180,180,0,0),
(536667,31646,571,1,8,5764.212,2045.8021,501.50967,5.166 ,180,180,0,0);
