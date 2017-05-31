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
(75476,24412,530,1,1,0,0,-1801.66,5145.93,-39.3803,0.0600598,300,300,0,0,6986,0,0,2),
(75477,24412,530,1,1,0,0,-1801.66,5145.93,-39.3803,0.0600598,300,300,0,0,6986,0,0,2);
DELETE FROM creature_movement WHERE id IN (75476,75477);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #75476
(75476,1,-1801.66,5145.93,-39.3803,0,0,0.0600598),
(75476,2,-1800.42,5145.47,-39.3803,0,0,5.47146),
(75476,3,-1800.11,5144.24,-39.3803,0,0,4.80474),
(75476,4,-1800.79,5143.01,-39.3803,0,0,3.8607),
(75476,5,-1802.3,5142.75,-39.3803,0,0,3.09415),
(75476,6,-1803.34,5143.66,-39.3804,0,0,2.19801),
(75476,7,-1803.16,5145.28,-39.3804,0,0,1.18013),
(75476,8,-1802.05,5146.16,-39.4176,0,0,0.188962),
-- #75477
(75477,1,-1788.36,5158.95,-39.3801,0,0,0.906219),
(75477,2,-1787.23,5159.72,-39.3801,0,0,0.194195),
(75477,3,-1785.91,5159.4,-39.3801,0,0,5.72497),
(75477,4,-1785.26,5158.16,-39.3801,0,0,4.74952),
(75477,5,-1785.82,5156.88,-39.3801,0,0,3.82668),
(75477,6,-1787.51,5156.63,-39.3801,0,0,2.96196),
(75477,7,-1788.51,5158.16,-39.3805,0,0,1.70375);
-- Update for existing "Images"
UPDATE creature SET position_z = -38.5 WHERE guid IN (79462);
UPDATE creature SET position_z = -39.2 WHERE guid IN (79464);
UPDATE creature_template SET inhabittype = 4 WHERE entry IN (24410,24854);
