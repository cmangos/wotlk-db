-- q.11916 'Hellscream's Champion' - UPDATE
-- All npc will salute & kneel - fixed
DELETE FROM dbscripts_on_quest_start WHERE id = 11916;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11916,0,31,25243,17,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 25243'),-- only one group should be spawned in same time
(11916,1,10,25243,120000,1,0,0,0x08,0,0,0,0,2829.05,6198.21,85.6946,3.44702,'summon - Warsong Honor Guard'), 
(11916,1,10,25243,120000,2,0,0,0x08,0,0,0,0,2825.76,6204.55,85.7077,3.33313,'summon - Warsong Honor Guard'),
(11916,1,10,25243,120000,3,0,0,0x08,0,0,0,0,2819.8,6194.5,85.6652,0.313256,'summon - Warsong Honor Guard'),
(11916,1,10,25243,120000,4,0,0,0x08,0,0,0,0,2818.68,6218.52,86.0182,3.41927,'summon - Warsong Honor Guard'),
(11916,1,10,25243,120000,5,0,0,0x08,0,0,0,0,2822.21,6211.23,85.7272,3.44026,'summon - Warsong Honor Guard'),
(11916,1,10,25243,120000,6,0,0,0x08,0,0,0,0,2815.65,6224.45,85.782,3.10646,'summon - Warsong Honor Guard'),
(11916,1,10,25243,120000,7,0,0,0x08,0,0,0,0,2811.33,6217,85.9265,0.0844748,'summon - Warsong Honor Guard'),
(11916,1,10,25243,120000,8,0,0,0x08,0,0,0,0,2817.13,6200.88,85.6935,0.239977,'summon - Warsong Honor Guard'),
(11916,1,10,25243,120000,9,0,0,0x08,0,0,0,0,2814.75,6208,86.0197,0.0876989,'summon - Warsong Honor Guard'),
(11916,4,36,0,0,0,25243,100,0,0,0,0,0,0,0,0,0,''),
(11916,6,0,0,0,0,25243,100,0,2000001232,0,0,0,0,0,0,0,''),
(11916,7,3,0,0,0,25243,100,7,0,0,0,0,0,0,0,2.0332,''),
(11916,8,1,25,0,0,25243,100,7,0,0,0,0,0,0,0,0,''),
(11916,12,1,66,0,0,25243,100,7,0,0,0,0,0,0,0,0,''),
(11916,14,28,8,0,0,25243,100,7,0,0,0,0,0,0,0,0,'');

UPDATE creature_template SET MovementType = 2 WHERE Entry = 25243;
DELETE FROM creature_movement_template WHERE entry = 25243;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- pathId = 1
(25243,1,1,2829.05,6198.21,85.6946,125000,1191601,3.44702),
-- pathId = 2 - 9
(25243,2,1,2825.76,6204.55,85.7077,125000,1191602,3.33313),
(25243,3,1,2819.8,6194.5,85.6652,125000,1191602,0.313256),
(25243,4,1,2818.68,6218.52,86.0182,125000,1191602,3.41927),
(25243,5,1,2822.21,6211.23,85.7272,125000,1191602,3.44026),
(25243,6,1,2815.65,6224.45,85.782,125000,1191602,3.10646),
(25243,7,1,2811.33,6217,85.9265,125000,1191602,0.0844748),
(25243,8,1,2817.13,6200.88,85.6935,125000,1191602,0.239977),
(25243,9,1,2814.75,6208,86.0197,125000,1191602,0.0876989);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1191601,1191602);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(1191601,15,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1191602,11,1,66,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1191602,13,28,8,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1191602,15,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');
