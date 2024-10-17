-- Instructor Hroegar 29915
UPDATE creature SET position_x = 8449.859, position_y = 3129.6572, position_z = 588.1433, movementtype = 2, spawndist = 0 WHERE id = 29915;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 29915;
DELETE FROM creature_movement_template WHERE Entry = 29915;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(29915,1 ,8449.859,3129.6572,588.1433,100,0,0),
(29915,2 ,8440.275,3141.2808,588.142 ,100,0,0),
(29915,3 ,8426.738,3142.1262,588.142 ,100,0,0),
(29915,4 ,8416.901,3137.2083,588.142 ,100,0,0),
(29915,5 ,8409.582,3124.2368,588.142 ,100,0,0),
(29915,6 ,8403.678,3110.931,588.142  ,100,0,0),
(29915,7 ,8405.229,3097.7627,588.1661,100,0,0),
(29915,8 ,8416.552,3087.6604,588.1415,100,0,0),
(29915,9 ,8428.673,3083.4368,588.14197,100,0,0),
(29915,10,8442.845,3082.9436,588.2177,100,0,0),
(29915,11,8451.078,3088.9233,588.7356,100,0,0),
(29915,12,8458.721,3100.1057,588.141 ,100,0,0),
(29915,13,8456.577,3113.4053,588.1368,100,0,0);
DELETE FROM dbscript_random_templates WHERE id = 20369;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20369,0,30569,0,'Instructor Hroegar 29915 - Random OOC text 1'),
(20369,0,30570,0,'Instructor Hroegar 29915 - Random OOC text 2'),
(20369,0,30571,0,'Instructor Hroegar 29915 - Random OOC text 3'),
(20369,0,30572,0,'Instructor Hroegar 29915 - Random OOC text 4'),
(20369,0,30573,0,'Instructor Hroegar 29915 - Random OOC text 5'),
(20369,0,30574,0,'Instructor Hroegar 29915 - Random OOC text 6'),
(20369,0,30575,0,'Instructor Hroegar 29915 - Random OOC text 7'),
(20369,0,30576,0,'Instructor Hroegar 29915 - Random OOC text 8');
DELETE FROM dbscripts_on_relay WHERE id = 20998;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20998,1,31,30037,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Instructor Hroegar 29915 EAI: search for 30037'),
(20998,100,32,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Instructor Hroegar 29915 EAI: wp pause'),
(20998,200,37,0,0,2,30037,30,1,0,0,0,0,0,0,0,0,'Part of Instructor Hroegar 29915 EAI: move towards target'),
(20998,5000,0,20369,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Instructor Hroegar 29915 EAI: Say'),
(20998,5001,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Instructor Hroegar 29915 EAI: Say'),
(20998,10000,32,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Instructor Hroegar 29915 EAI: wp unpause');
