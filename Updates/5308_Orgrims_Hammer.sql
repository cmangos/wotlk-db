-- Orgrim's Hammer - updates

-- these shouldnt be spawned on 571 map (part of transport maps)
DELETE FROM creature_addon WHERE guid IN (530419,528260,528258,528261,528259,528242,528243,530418,528241,531894,528263,528264,500620,528257,500604,528262);
DELETE FROM creature_movement WHERE id IN (530419,528260,528258,528261,528259,528242,528243,530418,528241,531894,528263,528264,500620,528257,500604,528262);
DELETE FROM game_event_creature WHERE guid IN (530419,528260,528258,528261,528259,528242,528243,530418,528241,531894,528263,528264,500620,528257,500604,528262);
DELETE FROM game_event_creature_data WHERE guid IN (530419,528260,528258,528261,528259,528242,528243,530418,528241,531894,528263,528264,500620,528257,500604,528262);
DELETE FROM creature_battleground WHERE guid IN (530419,528260,528258,528261,528259,528242,528243,530418,528241,531894,528263,528264,500620,528257,500604,528262);
DELETE FROM creature_linking WHERE guid IN (530419,528260,528258,528261,528259,528242,528243,530418,528241,531894,528263,528264,500620,528257,500604,528262);
DELETE FROM creature where guid IN (530419,528260,528258,528261,528259,528242,528243,530418,528241,531894,528263,528264,500620,528257,500604,528262);

-- Koltira Deathweaver 29795
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 29795);
DELETE FROM creature_template_addon WHERE entry IN (29795);
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(29795,0,0,0,0,0,0,NULL);

-- Sky-Reaver Korm Blackscar 30824
DELETE FROM creature_template_addon WHERE entry IN (30824);
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(30824,0,0,1,0,0,0,NULL);
UPDATE creature_template SET GossipMenuId=10217 WHERE entry IN(30824);
DELETE FROM gossip_menu WHERE entry IN(10217);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(10217, 14204, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN (14204);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14204,1,33054);
DELETE FROM npc_text WHERE id=14204;

-- Brother Keltan 31261
UPDATE creature SET position_x = -39.319824, position_y = -16.675415, position_z = 15.749695, movementtype = 2, spawndist = 0 WHERE id = 31261;
UPDATE creature_template SET GossipMenuId=10038, movementtype = 2 WHERE Entry = 31261;
DELETE FROM gossip_menu WHERE entry IN(10038);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(10038, 13932, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN (13932);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(13932,1,31947);
DELETE FROM npc_text WHERE id=13932;
DELETE FROM creature_movement_template WHERE Entry = 31261;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31261,1 ,-39.319824,-16.675415,15.749695,100,0,0),
(31261,2 ,-48.59668,-6.0598145,12.633423 ,100,0,0),
(31261,3 ,-46.16504,12.044434,13.396912  ,100,0,0),
(31261,4 ,-37.288574,17.172668,16.828064 ,100,0,0),
(31261,5 ,-24.927246,21.716614,24.157227 ,100,0,0),
(31261,6 ,-6.9418945,23.564941,34.152283 ,100,0,0),
(31261,7 ,-1.3378906,13.926453,34.35034  ,100,0,0),
(31261,8 ,0.44384766,-5.73468,34.342224  ,100,0,0),
(31261,9 ,-2.3232422,-21.348633,34.511536,100,0,0),
(31261,10,-10.041992,-23.853516,33.11914 ,100,0,0),
(31261,11,-24.08496,-22.21875,24.613403  ,100,0,0);
DELETE FROM dbscript_random_templates WHERE id = 20342;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20342,0,31916,0,'Part of Brother Keltan 31261 EAI - Random Say OOC 1'),
(20342,0,31917,0,'Part of Brother Keltan 31261 EAI - Random Say OOC 2'),
(20342,0,31918,0,'Part of Brother Keltan 31261 EAI - Random Say OOC 3'),
(20342,0,31919,0,'Part of Brother Keltan 31261 EAI - Random Say OOC 4'),
(20342,0,31920,0,'Part of Brother Keltan 31261 EAI - Random Say OOC 5'),
(20342,0,31922,0,'Part of Brother Keltan 31261 EAI - Random Say OOC 6'),
(20342,0,31923,0,'Part of Brother Keltan 31261 EAI - Random Say OOC 7');

-- Warbringer Davos Rioht 32301
UPDATE creature SET position_x = 8.038086, position_y = -16.039062, position_z = 34.703186, movementtype = 4, spawndist = 0 WHERE id = 32301;
UPDATE creature_template SET GossipMenuId=10171, movementtype = 4 WHERE Entry = 32301;
DELETE FROM gossip_menu WHERE entry IN(10171);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(10171, 14115, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN (14115);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14115,1,32696);
DELETE FROM npc_text WHERE id=14115;
DELETE FROM creature_movement_template WHERE Entry = 32301;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32301,1 ,8.038086,-16.039062,34.703186,100,1000,0),
(32301,2 ,0.734375,-10.96759,34.37439,100,0,0),
(32301,3 ,-2.4487305,-4.4210815,34.249084,100,0,0),
(32301,4 ,-2.234375,6.069092,34.0719,100,0,0),
(32301,5 ,-2.4208984,14.060059,34.302002,100,0,0),
(32301,6 ,-4.429199,19.902954,34.347595,100,0,0),
(32301,7 ,-11.631836,21.434387,32.089417,100,0,0),
(32301,8 ,-22.350586,20.654968,25.460083,100,0,0),
(32301,9 ,-31.212402,16.750183,20.049194,100,0,0),
(32301,10,-39.909668,13.282959,14.382874,100,0,0),
(32301,11,-44.17285,9.133728,12.579651,100,0,0),
(32301,12,-40.19873,5.48645,11.887268,100,0,0),
(32301,13,-34.18701,2.7388916,10.887329,100,0,0),
(32301,14,-25.498535,2.121521,9.4175415,100,0,0),
(32301,15,-15.814453,2.406372,6.6052246,100,0,0),
(32301,16,-7.3671875,2.5096436,5.970276,100,0,0),
(32301,17,0.7783203,2.5297852,6.06958,100,0,0),
(32301,18,8.352051,2.4815674,6.1415405,100,0,0),
(32301,19,15.612305,2.3753662,6.4656982,100,0,0),
(32301,20,24.280273,2.5947266,9.280945,100,1000,0);

-- Orgrim's Hammer Engineer 30753
DELETE FROM `creature_spawn_data` WHERE guid IN (6220007,7130040,7130041,6220005,6220002,7130045,6220008,7130043);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(6220007,80),(7130040,80),(7130041,80),
(6220005,80),(6220002,80),(7130045,80),
(6220008,80),(7130043,80);
DELETE FROM dbscripts_on_relay WHERE id IN (20851,20852);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20851,1,1,69,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Orgrim\'s Hammer Engineer 30753 EAI: emote'),
(20851,30000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Orgrim\'s Hammer Engineer 30753 EAI: reset emote'),
(20852,1,1,233,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Orgrim\'s Hammer Engineer 30753 EAI: emote'),
(20852,30000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Orgrim\'s Hammer Engineer 30753 EAI: reset emote');

-- missing creatures
DELETE FROM creature_addon WHERE guid BETWEEN 6220059 AND 6220068;
DELETE FROM creature_movement WHERE id BETWEEN 6220059 AND 6220068;
DELETE FROM game_event_creature WHERE guid BETWEEN 6220059 AND 6220068;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 6220059 AND 6220068;
DELETE FROM creature_battleground WHERE guid BETWEEN 6220059 AND 6220068;
DELETE FROM creature_linking WHERE guid BETWEEN 6220059 AND 6220068;
DELETE FROM creature where guid BETWEEN 6220059 AND 6220068;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
-- Warsong Cannon 31243
(6220059,31243,622,1,1,2.005443,-33.142635,10.002775,4.729842,120,120,0,0),
(6220060,31243,622,1,1,15.388104,-33.10001,10.651146,4.7472954,120,120,0,0),
(6220061,31243,622,1,1,-11.188364,-33.236713,10.597284,4.660029,120,120,0,0),
-- [DND] Icecrown Airship (H) - Flak Cannon, Even 30699
(6220062,30699,622,1,1,1.853844,32.888798,10.02361,1.5882494,120,120,0,0),
-- [DND] Icecrown Airship (H) - Flak Cannon, Odd 30690
(6220063,30690,622,1,1,15.24722957611083984, 32.3770904541015625, 10.63187599182128906, 1.553343057632446289,120,120,0,0),
(6220064,30690,622,1,1,-11.2230873107910156, 32.91199111938476562, 10.55865478515625, 1.588249564170837402,120,120,0,0),
-- [DND] Icecrown Airship (H) - Cannon, Neutral 30700
(6220065,30700,622,1,1,38.762554,30.093428,2.3081813,1.1344638,120,120,0,0),
(6220066,30700,622,1,1,7.417077,32.826744,38.35604,1.5533428,120,120,0,0),
(6220067,30700,622,1,1,-55.9708,28.441858,18.025005,2.2689278,120,120,0,0),
(6220068,30700,622,1,1,-35.666275,29.433313,1.8792504,1.7453291,120,120,0,0);
