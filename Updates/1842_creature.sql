-- Duplicate removed
-- Gjalerhorn Worker
DELETE FROM creature WHERE guid = 5711139;
DELETE FROM creature_addon WHERE guid = 5711139;
DELETE FROM creature_movement WHERE id = 5711139;
DELETE FROM game_event_creature WHERE guid = 5711139;
DELETE FROM game_event_creature_data WHERE guid = 5711139;
DELETE FROM creature_battleground WHERE guid = 5711139;
DELETE FROM creature_linking WHERE guid = 5711139 OR
 master_guid = 5711139;

-- Part of: Gjalerhorn Scavenger 27699 EAI
DELETE FROM dbscripts_on_relay WHERE id = 20148;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20148,0,31,27701,25,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: Gjalerhorn Scavenger 27699 EAI - search for 27701'),
(20148,1,15,49404,0,0,27701,30,1,0,0,0,0,0,0,0,0,'Part of: Gjalerhorn Scavenger 27699 EAI - cast 49404 on buddy');
