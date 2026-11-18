-- Storm Peaks: Grom'arsh Crash-Site

-- c.29942 Warsong Hold Grunt
DELETE FROM creature_addon WHERE guid IN (527972,527973,527974,527975);
DELETE FROM creature_movement WHERE Id IN (527972,527973,527974,527975);
DELETE FROM game_event_creature WHERE guid IN (527972,527973,527974,527975);
DELETE FROM game_event_creature_data WHERE guid IN (527972,527973,527974,527975);
DELETE FROM creature_battleground WHERE guid IN (527972,527973,527974,527975);
DELETE FROM creature_linking WHERE guid IN (527972,527973,527974,527975)
OR master_guid IN (527972,527973,527974,527975);
DELETE FROM creature WHERE guid IN (527972,527973,527974,527975);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(527972,29942,571,1,1,7834.252,-744.60187,1170.747,1.745329260826110839,300,300,0,0),
(527973,29942,571,1,1,7850.682,-773.9194,1179.5342,1.466076612472534179,300,300,0,0),
(527974,29942,571,1,1,7875.1816,-757.2613,1176.1838,3.124139308929443359,300,300,0,0),
(527975,29942,571,1,1,7877.7944,-731.1402,1175.4918,3.857177734375,300,300,0,0);
DELETE FROM creature_template_addon WHERE entry = 29942;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, auras) VALUES
(29942,0,0,1,1,0,NULL);

-- c.29937 Moteha Windborn
-- missing gossip added
UPDATE creature_template SET GossipMenuId = 9854 WHERE entry = 29937;
DELETE FROM gossip_menu WHERE entry IN(9854);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(9854,13646,0,0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(13646);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(13646,1,30632);
DELETE FROM npc_text WHERE id IN (13646);

-- q.12920 'Catching up with Brann' 
-- available after q.12917 rewarded
UPDATE quest_template SET RequiredCondition = 21100 WHERE entry IN (12920);
DELETE FROM conditions WHERE condition_entry = 21100;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(21100,8,12917,0,0,0,0,'');

-- q.13426 'Xarantaur, the Witness'
-- REQ q.12917 rewarded + q.13034 not taken or rewarded
UPDATE quest_template SET RequiredCondition = 21105 WHERE entry IN (13426);
DELETE FROM conditions WHERE condition_entry BETWEEN 21101 AND 21105;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(21101,8,13034,0,0,0,1,''),
(21102,9,13034,0,0,0,1,''),
(21103,-2,21102,21101,0,0,0,''),
(21104,8,13285,0,0,0,0,''),
(21105,-1,21104,21103,0,0,0,'');

-- c.30472 Olut Alegut
-- missing gossip added
UPDATE creature_template SET GossipMenuId = 10255 WHERE entry = 30472;
DELETE FROM gossip_menu WHERE entry IN(10255);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(10255,13794,0,0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(13794);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(13794,1,31205);
DELETE FROM npc_text WHERE id IN (13794);
