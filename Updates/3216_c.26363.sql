-- Tallhorn Stag 26363
-- duplicate
DELETE FROM creature WHERE guid IN (513549,513322,513515);
DELETE FROM creature_addon WHERE guid IN (513549,513322,513515);
DELETE FROM creature_movement WHERE id IN (513549,513322,513515);
DELETE FROM game_event_creature WHERE guid IN (513549,513322,513515);
DELETE FROM game_event_creature_data WHERE guid IN (513549,513322,513515);
DELETE FROM creature_battleground WHERE guid IN (513549,513322,513515);
DELETE FROM creature_linking WHERE guid IN (513549,513322,513515)
 OR master_guid IN (513549,513322,513515);
-- missing added
DELETE FROM creature_addon WHERE guid IN (513549,519603,519604,513322,513515);
DELETE FROM creature_movement WHERE id IN (513549,519603,519604,513322,513515);
DELETE FROM game_event_creature WHERE guid IN (513549,519603,519604,513322,513515);
DELETE FROM game_event_creature_data WHERE guid IN (513549,519603,519604,513322,513515);
DELETE FROM creature_battleground WHERE guid IN (513549,519603,519604,513322,513515);
DELETE FROM creature_linking WHERE guid IN (513549,519603,519604,513322,513515)
 OR master_guid IN (513549,519603,519604,513322,513515);
DELETE FROM creature WHERE guid IN (513549,519603,519604,513322,513515);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(513549,26363,571,1,1,0,0,3108.89,-2101.84,91.6827,5.81363,300,300,7,0,0,0,0,1),
(513322,26363,571,1,1,0,0,3212.77,-2018.59,85.5589,5.68446,300,300,7,0,0,0,0,1),
(513515,26363,571,1,1,0,0,3325.66,-2081.51,111.224,1.4433,300,300,7,0,0,0,0,1),
(519603,26363,571,1,1,0,0,3186.58,-2068.7,90.5988,5.20145,300,300,7,0,0,0,0,1),
(519604,26363,571,1,1,0,0,3192.81,-2108.37,104.143,6.10857,300,300,7,0,0,0,0,1);
