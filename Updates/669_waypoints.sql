-- =========================
-- Somnus Rare NPC Movement 
-- =========================
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid = 72694;
DELETE FROM creature_addon WHERE guid = 72694;
DELETE FROM creature_movement WHERE id = 72694;
DELETE FROM game_event_creature WHERE guid = 72694;
DELETE FROM game_event_creature_data WHERE guid = 72694;
DELETE FROM creature_battleground WHERE guid = 72694;
DELETE FROM creature_linking WHERE guid = 72694
 OR master_guid = 72694;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(72694,12900,1,1,1,0,0,-10666,-3923,18.438,1.223,900,0,0,38844,0,0,2);
UPDATE creature_template SET MovementType = 2 WHERE entry = 12900;
DELETE FROM creature_movement_template WHERE entry = 12900;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(12900,1,-10666,-3923,18.438,5,0,6.20863),
(12900,2,-10674.5,-3909.81,17.3732,0,0,3.3943),
(12900,3,-10703.7,-3916.17,17.3732,0,0,4.08152),
(12900,4,-10770,-4007.98,17.9099,0,0,5.71231),
(12900,5,-10722.1,-4038.75,17.6482,0,0,5.98501),
(12900,6,-10654.9,-4061.03,17.3742,0,0,0.519954),
(12900,7,-10591.6,-4027.09,17.3742,0,0,0.825387),
(12900,8,-10568.6,-4002.12,17.3853,0,0,1.86706),
(12900,9,-10575.8,-3978.89,17.4333,0,0,2.31975),
(12900,10,-10624.2,-3924.85,17.5842,0,0,3.07242);
