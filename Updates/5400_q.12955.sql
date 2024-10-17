-- q.12955 'Eliminate the Competition'

-- Onu'zun 30180
UPDATE gossip_menu_option SET action_menu_id = 0, action_script_id = 987801, condition_id = 20756 WHERE menu_id = 9878;
DELETE FROM dbscripts_on_gossip WHERE id IN (987801);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(987801,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote'),
(987801,2,22,14,0x01|0x02|0x10,0,0,0,0x04,0,0,0,0,0,0,0,0,'temp faction'),
(987801,3,0,0,0,0,0,0,0,30856,0,0,0,0,0,0,0,'say to Player'),
(987801,4,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'attack Player');
DELETE FROM conditions WHERE condition_entry IN (20756);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20756,9,12955,0,0,0,'');
DELETE FROM dbscripts_on_relay WHERE id = 20991;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20991,1,1,20,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Onu\'zun 30180 EAI: emote'),
(20991,2,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Onu\'zun 30180 EAI: remove npcflags'),
(20991,3,0,0,0,0,0,0,0,30852,0,0,0,0,0,0,0,'Part of Onu\'zun 30180 EAI: Say'),
(20991,6000,0,0,0,0,0,0,0,30853,0,0,0,0,0,0,0,'Part of Onu\'zun 30180 EAI: Say'),
(20991,10000,15,22097,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Onu\'zun 30180 EAI: Cast 22097'),
(20991,11000,20,1,10,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Onu\'zun 30180 EAI: randomovement'),
(20991,20000,15,27123,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Onu\'zun 30180 EAI: Cast 27123'),
(20991,21000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Onu\'zun 30180 EAI: despawn');
-- Sigrid Iceborn 30086
UPDATE gossip_menu_option SET action_menu_id = 0, action_script_id = 987001, condition_id = 20756 WHERE menu_id = 9870;
DELETE FROM dbscripts_on_gossip WHERE id IN (987001);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(987001,2,22,14,0x01|0x02|0x10,0,0,0,0x04,0,0,0,0,0,0,0,0,'temp faction'),
(987001,3,0,0,0,0,0,0,0,30750,0,0,0,0,0,0,0,'say to Player'),
(987001,4,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'attack Player');
DELETE FROM dbscripts_on_relay WHERE id = 20992;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20992,1,1,66,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Sigrid Iceborn 30086 EAI: emote'),
(20992,2,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Sigrid Iceborn 30086 EAI: remove npcflags'),
(20992,3,0,0,0,0,0,0,0,30821,0,0,0,0,0,0,0,'Part of Sigrid Iceborn 30086 EAI: Say'),
(20992,6000,10,30159,15000,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Sigrid Iceborn 30086 EAI: summon 30159'),
(20992,6100,15,43671,0,0,30159,10,1,0,0,0,0,0,0,0,0,'Part of Sigrid Iceborn 30086 EAI: cast 43671');
-- Sigrid Iceborn's Proto-Drake 30159
DELETE FROM creature_movement_template WHERE Entry = 30159;
INSERT INTO creature_movement_template (`Entry`,`Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(30159,1,1,8504.044,3127.6338,597.756 ,100,0,0),
(30159,1,2,8533.198,3142.035,605.0059 ,100,0,0),
(30159,1,3,8570.504,3152.3008,614.0056,100,100,1);
-- Tinky Wickwhistle 30162
UPDATE gossip_menu_option SET action_menu_id = 0, action_script_id = 987501, condition_id = 20756 WHERE menu_id = 9875;
DELETE FROM dbscripts_on_gossip WHERE id IN (987501);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(987501,2,22,14,0x01|0x02|0x10,0,0,0,0x04,0,0,0,0,0,0,0,0,'temp faction'),
(987501,3,0,0,0,0,0,0,0,30822,0,0,0,0,0,0,0,'say to Player'),
(987501,4,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'attack Player');
DELETE FROM dbscripts_on_relay WHERE id = 20993;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20993,1,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Tinky Wickwhistle 30162 EAI: emote'),
(20993,2,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Tinky Wickwhistle 30162 EAI: remove npcflags'),
(20993,3,0,0,0,0,0,0,0,30826,0,0,0,0,0,0,0,'Part of Tinky Wickwhistle 30162 EAI: Say'),
(20993,100,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Tinky Wickwhistle 30162 EAI: RUN ON'),
(20993,3000,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Tinky Wickwhistle 30162 EAI: Path 1');
DELETE FROM creature_movement_template WHERE Entry = 30162;
INSERT INTO creature_movement_template (`Entry`,`Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(30162,1,1,8447.698,3192.547,588.8608,100,100,0),
(30162,1,2,8447.698,3192.547,588.8608,100,100,3016201);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3016201;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(3016201,1,0,15,56093,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'cast 56093'),
(3016201,50,0,20,15,0,0,0,0,0x04,0,0,0,0,3,8459.96,3219.69,510.822,100,20,0,'jump'),
(3016201,100,0,0,0,0,0,0,0,0x04,30828,0,0,0,0,0,0,0,0,0,0,'say'),
(3016201,5000,0,18,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'despawn');
-- Efrem the Faithful 30081
UPDATE gossip_menu_option SET action_menu_id = 0, action_script_id = 986901, condition_id = 20756 WHERE menu_id = 9869;
DELETE FROM dbscripts_on_gossip WHERE id IN (986901);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(986901,2,22,14,0x01|0x02|0x10,0,0,0,0x04,0,0,0,0,0,0,0,0,'temp faction'),
(986901,3,0,0,0,0,0,0,0,30746,0,0,0,0,0,0,0,'say to Player'),
(986901,4,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'attack Player');
DELETE FROM dbscripts_on_relay WHERE id = 20994;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20994,1,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Efrem the Faithful 30081 EAI: remove npcflags'),
(20994,3000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Efrem the Faithful 30081 EAI: kneel'),
(20994,3100,0,0,0,0,0,0,0,30743,0,0,0,0,0,0,0,'Part of Tinky Wickwhistle 30162 EAI: Say'),
(20994,11000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Efrem the Faithful 30081 EAI: stand'),
(20994,12000,1,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Efrem the Faithful 30081 EAI: emote'),
(20994,14000,15,52385,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Efrem the Faithful 30081 EAI: cast 52385'),
(20994,14001,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Tinky Wickwhistle 30162 EAI: RUN ON'),
(20994,16000,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Tinky Wickwhistle 30162 EAI: Path 1');
DELETE FROM creature_movement_template WHERE Entry = 30081;
INSERT INTO creature_movement_template (`Entry`,`Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(30081,1,1,8390.416,3104.6294,588.61664,100,0,0),
(30081,1,2,8385.278,3118.6294,589.79443,100,0,0),
(30081,1,3,8370.955,3131.4602,595.4548 ,100,0,0),
(30081,1,4,8352.591,3138.2864,601.6363 ,100,0,0),
(30081,1,5,8333.745,3146.5547,608.12537,100,0,0),
(30081,1,6,8315.127,3157.1125,614.66187,100,0,0),
(30081,1,7,8306.648,3181.219,623.16833 ,100,100,1);
