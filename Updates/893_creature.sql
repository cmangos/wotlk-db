-- Daily Dungeon Image Bunny
-- missing added - Free WoTLKDB guids Reused
DELETE FROM creature_addon WHERE guid IN (75476,75477);
DELETE FROM creature_movement WHERE id IN (75476,75477);
DELETE FROM game_event_creature WHERE guid IN (75476,75477);
DELETE FROM game_event_creature_data WHERE guid IN (75476,75477);
DELETE FROM creature_battleground WHERE guid IN (75476,75477);
DELETE FROM creature_linking WHERE guid IN (75476,75477)
OR master_guid IN (75476,75477);
DELETE FROM creature WHERE guid IN (75476,75477);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(75476,24412,530,1,1,0,0,-1805.979,5145.452,-40.20918,0,300,300,0,0,6986,0,0,2),
(75477,24412,530,1,1,0,0,-1784.099,5158.404,-40.20918,0,300,300,0,0,6986,0,0,2);
DELETE FROM creature_movement WHERE id IN (75476,75477);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #75476
(75477,1,-1785.337,5155.88,-40.20918,0,0,100),
(75477,2,-1787.604,5155.49,-39.95918,0,0,100),
(75477,3,-1790.097,5155.834,-40.20918,0,0,100),
(75477,4,-1790.891,5158.362,-40.20918,0,0,100),
(75477,5,-1790,5160.982,-40.20918,0,0,100),
(75477,6,-1787.425,5161.558,-40.20918,0,0,100),
(75477,7,-1784.979,5160.777,-40.20918,0,0,100),
(75477,8,-1784.099,5158.404,-40.20918,0,0,100),
-- #75477
(75476,1,-1803.15,5145.873,-40.209180,0,0,100),
(75476,2,-1801.932,5144.047,-39.95918,0,0,100),
(75476,3,-1802.998,5141.658,-40.20918,0,0,100),
(75476,4,-1805.441,5141.446,-40.20918,0,0,100),
(75476,5,-1806.957,5143.694,-40.20918,0,0,100),
(75476,6,-1805.81,5145.754,-40.20918,0,0,100);

-- Update for existing "Images"
UPDATE creature_template SET inhabittype = 4 WHERE entry IN (24410,24854);
UPDATE creature SET position_x = -1787.656, position_y = 5158.583, position_z = -39.69, orientation = 3.01942 WHERE guid = 79464; -- Sister of Torment Image
UPDATE creature SET position_x = -1803.635, position_y = 5143.491, position_z = -38.64, orientation = 1.117011 WHERE guid = 79462; -- Vazruden the Herald Image

-- Wind Trader Zhareem 
UPDATE creature SET position_x = -1793.096, position_y = 5153.81, position_z = -40.12583, orientation = 2.879793 WHERE guid = 12270;

-- Nether-Stalker Mah'duun
UPDATE creature SET position_x = -1798.239, position_y = 5149.043, position_z = -40.12583, orientation = 1.745329 WHERE guid = 12271;

-- Consortium Assistant
-- should be only 2 spawns
DELETE FROM creature WHERE guid IN (12268,12159);
DELETE FROM creature_addon WHERE guid IN (12268,12159);
DELETE FROM creature_movement WHERE id IN (12268,12159);
DELETE FROM game_event_creature WHERE guid IN (12268,12159);
DELETE FROM game_event_creature_data WHERE guid IN (12268,12159);
DELETE FROM creature_battleground WHERE guid IN (12268,12159);
DELETE FROM creature_linking WHERE guid IN (12268,12159) OR master_guid IN (12268,12159);
-- Update
UPDATE creature_template_addon SET emote = 0 WHERE entry = 24437;
UPDATE creature SET position_x = -1784.51, position_y = 5143.86, position_z = -40.2092, orientation = 1.500983, spawndist = 0, MovementType = 2 WHERE guid = 17315;
UPDATE creature SET position_x = -1788.74, position_y = 5149.57, position_z = -40.2092, orientation = 2.338741, spawndist = 0, MovementType = 2 WHERE guid = 12269;
DELETE FROM creature_movement WHERE id IN (17315,12269);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #17315
(17315,1,-1784.51,5143.86,-40.2092,85000,2443701,1.500983),
-- #12269
(12269,1,-1788.74,5149.57,-40.2092,0,0,2.338741),
(12269,2,-1788.135,5155.346,-40.20918,45000,2443702,100),
(12269,3,-1792.39,5159.78,-40.2092,0,0,2.03326),
(12269,4,-1792.489,5163.685,-40.20918,87000,2443703,1.838245);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2443701 AND 2443703;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2443701,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,5.811946,''),
(2443701,3,1,233,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2443701,37,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2443701,40,15,34427,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2443701,41,3,0,0,0,0,0,0x08,0,0,0,0,-1803.88,5140.38,-40.2092,5.811946,'teleport'),
(2443701,42,3,0,0,0,0,0,0,0,0,0,0,0,0,0,1.500983,''),
(2443701,45,1,233,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2443701,79,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2443701,83,15,34427,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2443701,84,3,0,0,0,0,0,0x08,0,0,0,0,-1784.51,5143.86,-40.2092,1.500983,'teleport'),
(2443702,3,15,43778,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2443703,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,1.838245,''),
(2443703,3,1,234,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2443703,37,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2443703,40,15,34427,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2443703,41,3,0,0,0,0,0,0x08,0,0,0,0,-1783.81,5142.04,-40.2092,0.471238,'teleport'),
(2443703,44,1,233,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2443703,81,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2443703,84,15,34427,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2443703,85,3,0,0,0,0,0,0x08,0,0,0,0,-1788.74,5149.57,-40.2092,2.338741,'teleport');

-- Objects
-- Doodad_ET_Holographic_Stand01
-- position corrected
UPDATE gameobject SET position_x = -1787.592, position_y = 5158.494, position_z = -40.554, orientation = 2.95833, rotation0 = 0, rotation1 = 0, rotation2 = 0.96632, rotation3 = 0.2573433 WHERE guid = 50360;

-- Doodad_ET_Holographic_Stand02
-- position corrected
UPDATE gameobject SET position_x = -1803.748, position_y = 5143.451, position_z = -40.554, orientation = 2.95833, rotation0 = 0, rotation1 = 0, rotation2 = 0.8361092, rotation3 = 0.5485631 WHERE guid = 50361;
