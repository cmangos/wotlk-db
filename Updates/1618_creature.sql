-- Loot Crazed Poacher
-- 2 missing guards for 'Karen "I Don't Caribou" the Culler' added
DELETE FROM creature WHERE guid IN (126595,126596);
DELETE FROM creature_addon WHERE guid IN (126595,126596);
DELETE FROM creature_movement WHERE id IN (126595,126596);
DELETE FROM game_event_creature WHERE guid IN (126595,126596);
DELETE FROM game_event_creature_data WHERE guid IN (126595,126596);
DELETE FROM creature_battleground WHERE guid IN (126595,126596);
DELETE FROM creature_linking WHERE guid IN (126595,126596)
 OR master_guid IN (126595,126596);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(126595,25806,571,1,1,0,0,2745.88,5264.54,69.5674,0.935395,300,300,0,0,8982,0,0,0),
(126596,25806,571,1,1,0,0,2721.22,5284.94,69.6134,0.46337,300,300,0,0,8982,0,0,0);
-- links
DELETE FROM creature_linking WHERE master_guid = 114951;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(126595, 114951, 1),
(126596, 114951, 1);

-- Aura moved to addon
UPDATE creature_template_addon SET auras = 34189 WHERE entry = 25806;
