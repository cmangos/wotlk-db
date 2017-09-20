-- Greatfather Aldrimus
-- Invisibility aura missing - more research req.
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid = 77859;
DELETE FROM creature_addon WHERE guid = 77859;
DELETE FROM creature_movement WHERE id = 77859;
DELETE FROM game_event_creature WHERE guid = 77859;
DELETE FROM game_event_creature_data WHERE guid = 77859;
DELETE FROM creature_battleground WHERE guid = 77859;
DELETE FROM creature_linking WHERE guid = 77859 OR master_guid = 77859;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(77859,19698,530,1,1,0,0,-3345.28,5189.06,-100.966,5.77704,300,0,0,6986,0,0,0);

-- q.10164 'Everything Will Be Alright'
-- available only after q.10253 completed
UPDATE quest_template SET PrevQuestId = 10253 WHERE entry = 10164;
