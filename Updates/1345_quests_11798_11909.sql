-- Quest 'The Gearmaster'
-- Horde:    11909
-- Alliance: 11798

-- ELM General Purpose Bunny
-- missing added - WoTLK free guids reused
DELETE FROM creature_addon WHERE guid = 140594;
DELETE FROM creature_movement WHERE id = 140594;
DELETE FROM game_event_creature WHERE guid = 140594;
DELETE FROM game_event_creature_data WHERE guid = 140594;
DELETE FROM creature_battleground WHERE guid = 140594;
DELETE FROM creature_linking WHERE guid = 140594
OR master_guid = 140594;
DELETE FROM creature WHERE guid = 140594;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(140594,23837,571,1,1,0,0,4000.19,4853.58,25.9716,5.585053,300,300,0,0,42,0,0,0);

-- Event
DELETE FROM dbscripts_on_event WHERE id = 17209;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17209,0,31,25834,100,0,0,0,0x08,0,0,0,0,0,0,0,0,''), -- terminate if alive
(17209,1,0,0,0,0,23837,20,3,2000001523,0,0,0,0,0,0,0,''),
(17209,1,8,27995,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(17209,2,10,25834,300000,0,0,0,8,0,0,0,0,4004.175,4850.362,26.05081,2.391101,'summon - Gearmaster Mechazod');
DELETE FROM dbscript_string WHERE entry = 2000001523;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001523,'There is a noise from behind you!',0,3,0,0,NULL);
