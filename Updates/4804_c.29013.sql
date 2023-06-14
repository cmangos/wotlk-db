-- The Maker's Perch - Sholazar Basin

-- Perch Guardian 29013
-- duplicates
DELETE FROM creature_addon WHERE guid IN (523851,523852);
DELETE FROM creature_movement WHERE Id IN (523851,523852);
DELETE FROM game_event_creature WHERE guid IN (523851,523852);
DELETE FROM game_event_creature_data WHERE guid IN (523851,523852);
DELETE FROM creature_battleground WHERE guid IN (523851,523852);
DELETE FROM creature_linking WHERE guid IN (523851,523852)
 OR master_guid IN (523851,523852);
DELETE FROM creature WHERE guid IN (523851,523852);
-- update
UPDATE creature SET position_x = 6143.356, position_y = 5684.2563, position_z = 5.139875, spawndist = 0, MovementType = 4 WHERE guid = 523847; -- linear
DELETE FROM creature_movement WHERE Id IN (523847);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(523847,1,6143.356,5684.2563,5.139875,100,0,0),
(523847,2,6143.356,5684.2563,5.139875,100,0,0),
(523847,3,6173.346,5711.0117,5.1398697,100,0,0),
(523847,4,6194.7397,5730.3696,-0.51648265,100,0,0),
(523847,5,6221.508,5755.33,-6.141373,100,0,0);
