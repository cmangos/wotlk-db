-- Coast of Echoes - Borean Tundra

-- Horde Siege Tank
-- missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (62816,63074,63075,63079,63083,63089);
DELETE FROM creature_addon WHERE guid IN (62816,63074,63075,63079,63083,63089);
DELETE FROM creature_movement WHERE id IN (62816,63074,63075,63079,63083,63089);
DELETE FROM game_event_creature WHERE guid IN (62816,63074,63075,63079,63083,63089);
DELETE FROM game_event_creature_data WHERE guid IN (62816,63074,63075,63079,63083,63089);
DELETE FROM creature_battleground WHERE guid IN (62816,63074,63075,63079,63083,63089);
DELETE FROM creature_linking WHERE guid IN (62816,63074,63075,63079,63083,63089)
 OR master_guid IN (62816,63074,63075,63079,63083,63089);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(62816,25334,571,1,1,0,0,2807.21,6730.92,7.75878,4.433136,60,0,0,53892,15775,0,0),
(63074,25334,571,1,1,0,0,2798.96,6735.21,7.58317,4.276057,60,0,0,53892,15775,0,0),
(63075,25334,571,1,1,0,0,2784.33,6742.21,7.82355,4.29351,60,0,0,53892,15775,0,0),
(63079,25334,571,1,1,0,0,2792.04,6738.57,7.70157,4.34587,60,0,0,53892,15775,0,0),
(63083,25334,571,1,1,0,0,2777.03,6745.71,7.81598,4.29351,60,0,0,53892,15775,0,0),
(63089,25334,571,1,1,0,0,2766.58,6751.2,7.20145,4.258604,60,0,0,53892,15775,0,0);
DELETE FROM creature_template_addon WHERE entry = 25334;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(25334, 0, 0, 1, 1, 0, 0, NULL);
-- player must be able to ride veh only during q.
DELETE FROM npc_spellclick_spells WHERE npc_entry = 25334;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(25334, 47917, 11652, 1, 11652, 1, 0);

-- Elder Mootoo
-- gossip 
UPDATE creature_template SET GossipMenuId = 9167 WHERE entry = 25503;
DELETE FROM gossip_menu WHERE entry = 9167;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9167, 12426, 0, 0);

-- Waltor of Pal'ea
-- gossip
UPDATE creature_template SET GossipMenuId = 9166 WHERE entry = 25476;
DELETE FROM gossip_menu WHERE entry = 9166;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9166, 12424, 0, 0);

-- Mobu
-- Gossip + waypoints
UPDATE creature_template SET MovementType = 2, GossipMenuId = 9164 WHERE Entry = 25475;
DELETE FROM gossip_menu WHERE entry = 9164;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9164, 12422, 0, 0);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 107800;
DELETE FROM creature_movement WHERE id = 107800;
DELETE FROM creature_movement_template WHERE entry = 25475;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(25475, 1,2814.19,6720.13,9.6863, 1000, 0,5.52642, 0, 0),
(25475, 2,2810.32,6723.55,9.03617, 1000, 0,2.43195, 0, 0);

-- Landing Crawler - position corrected
UPDATE creature SET position_x = 2792.676025, position_y = 6765.291504, position_z = 5.490448 WHERE guid = 108139;
