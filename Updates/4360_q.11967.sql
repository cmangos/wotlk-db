-- q.11967 'Mustering the Reds'
DELETE FROM dbscripts_on_quest_end WHERE id IN (11967);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11967,1,35,5,30,0,0,0,0,0,0,0,0,0,0,0,0,'send event AI 5'), -- remove all her copies
(11967,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'self active'),
(11967,100,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NpcFlags removed'),
(11967,200,10,26206,70000,0,0,0,0x08,0,0,0,20038,3580.85,6656.071,195.7026,3.735005,'summon 26206');
UPDATE quest_template SET CompleteScript = 11967 WHERE entry = 11967;
DELETE FROM creature_movement_template WHERE entry IN(26206);
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(26206,1,1,3572.799,6651.349,195.2657,100,47000,2620601),
(26206,1,2,3575.846,6649.655,195.2657,100,0,0),
(26206,1,3,3577.156,6642.89,195.2657,100,0,0),
(26206,1,4,3581.84,6636.915,195.2657,100,0,0),
(26206,1,5,3582.418,6629.961,195.1734,100,0,0),
(26206,1,6,3589.973,6625.721,194.1734,100,0,0),
(26206,1,7,3598.081,6623.26,192.4234,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE `id` IN (2620601);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2620601,1,31,26117,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2620601,1000,0,0,0,0,0,0,0x04,25463,0,0,0,0,0,0,0,'say'), -- Raelorasz, it is good to see you again.
(2620601,1001,1,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(2620601,6000,0,0,0,0,26117,30,3,25464,0,0,0,0,0,0,0,'buddy text'), -- Keristrasza! I wish that circumstances allowed for a more fitting welcome. Fate has been kind to return you to us.
(2620601,6001,1,5,0,0,26117,30,3,0,0,0,0,0,0,0,0,'buddy emote'),
(2620601,14000,0,0,0,0,0,0,0x04,25466,0,0,0,0,0,0,0,'say'), -- Fate, it seems, has been more than kind. A .....
(2620601,14001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(2620601,22000,0,0,0,0,26117,30,3,25467,0,0,0,0,0,0,0,'buddy text'), -- Malygos - in the open? I 
(2620601,22001,1,5,0,0,26117,30,3,0,0,0,0,0,0,0,0,'buddy emote'),
(2620601,31000,0,0,0,0,0,0,0x04,25469,0,0,0,0,0,0,0,'say'), -- Prepare them well, Raelorasz. Malygos' po
(2620601,31001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(2620601,38000,0,0,0,0,26117,30,3,25468,0,0,0,0,0,0,0,'buddy text'), -- Of course, my lady. Until we meet again...
(2620601,38001,1,2,0,0,26117,30,3,0,0,0,0,0,0,0,0,'buddy emote'),
(2620601,44000,0,0,0,0,0,0,0x04,25472,0,0,0,0,0,0,0,'say'), -- Farewell, Raelorasz.
(2620601,44001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(2620601,44000,29,3,1,0,26117,30,7,0,0,0,0,0,0,0,0,'buddy NpcFlags added'),
(2620601,44001,21,0,0,0,26117,30,7,0,0,0,0,0,0,0,0,'buddy unactive');
DELETE FROM creature_spawn_data_template WHERE `Entry` IN (20038);
INSERT INTO creature_spawn_data_template (Entry,NpcFlags,RelayId) VALUES
(20038,0,20663);
DELETE FROM dbscripts_on_relay WHERE `id` IN (20663);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20663,1,20,2,1,0,0,0,0,0,0,0,0,0,0,0,0,'SET waypoints - Path 1');
