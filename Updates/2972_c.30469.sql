-- Tracker Val'zij 30469
-- missing added
DELETE FROM creature_addon WHERE guid = 518915;
DELETE FROM creature_movement WHERE id = 518915;
DELETE FROM game_event_creature WHERE guid = 518915;
DELETE FROM game_event_creature_data WHERE guid = 518915;
DELETE FROM creature_battleground WHERE guid = 518915;
DELETE FROM creature_linking WHERE guid = 518915
 OR master_guid = 518915;
DELETE FROM creature WHERE guid = 518915;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(518915,30469,571,1,1,0,0,7620.369,-1609.421,969.114,0.7679449,300,300,0,0,12600,0,0,0);
DELETE FROM creature_template_addon WHERE entry = 30469;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(30469,0,8,1,0,0,0,NULL);
