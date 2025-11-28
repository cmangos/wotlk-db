-- Brunnhildar Riding Bear 29549
-- missing added
DELETE FROM creature_addon WHERE guid IN (524537);
DELETE FROM creature_movement WHERE id IN (524537);
DELETE FROM game_event_creature WHERE guid IN (524537);
DELETE FROM game_event_creature_data WHERE guid IN (524537);
DELETE FROM creature_battleground WHERE guid IN (524537);
DELETE FROM creature_linking WHERE guid IN (524537);
DELETE FROM creature WHERE guid IN (524537);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(524537,29549,571,1,1,6813.686,-1713.6937,822.1584,0.139626339077949523,300,300,0,0);
