-- Amber Ledge - Borean Tundra 

-- Gorloc Waddler
-- missing added
DELETE FROM creature WHERE guid IN (128967,128968,128969);
DELETE FROM creature_addon WHERE guid IN (128967,128968,128969);
DELETE FROM creature_movement WHERE id IN (128967,128968,128969);
DELETE FROM game_event_creature WHERE guid IN (128967,128968,128969);
DELETE FROM game_event_creature_data WHERE guid IN (128967,128968,128969);
DELETE FROM creature_battleground WHERE guid IN (128967,128968,128969);
DELETE FROM creature_linking WHERE guid IN (128967,128968,128969)
OR master_guid IN (128967,128968,128969);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(128967,25685,571,1,1,0,0,2628.67,4997.54,37.1028,3.28679,300,10,0,9291,0,0,1),
(128968,25685,571,1,1,0,0,2692.1,5009.73,30.6287,3.2004,300,10,0,9291,0,0,1),
(128969,25685,571,1,1,0,0,2713.22,5119.07,30.0494,1.19763,300,10,0,8982,0,0,1);

-- Warmages
-- mounts added
DELETE FROM creature_template_addon WHERE entry IN (25732,25733,27888);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
-- Warmage Preston
(25732, 23524, 0, 1, 0, 0, 0, NULL),
-- Warmage Austin
(25733, 23524, 0, 1, 0, 0, 0, NULL),
-- Warmage Archus 
(27888, 23524, 0, 1, 0, 0, 0, NULL);

-- Red Guardian Drake
UPDATE creature SET position_x = 3708.01, position_y = 6138.319, position_z = 200.0558, Spawndist = 0, MovementType = 2 WHERE guid = 97982;
UPDATE creature SET position_x = 3604.514893, position_y = 5940.631836, position_z = 208.134399, orientation = 0.407929, Spawndist = 0, MovementType = 2 WHERE guid = 97983;
UPDATE creature SET position_x = 3542.69, position_y = 5879.7, position_z = 187.085, orientation = 0.225038, Spawndist = 0, MovementType = 2 WHERE guid = 97987;
DELETE FROM creature_movement WHERE id IN (97982,97983,97987);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #97982
(97982,1,3708.01,6138.319,200.0558, 0, 2536401,0.407929, 0, 0),
(97982,2,3713.575,6129.774,200.0838, 0, 0,100, 0, 0),
(97982,3,3721.238,6100.621,201.3613, 0, 0,100, 0, 0),
(97982,4,3708.906,6069.942,201.6114, 0, 0,100, 0, 0),
(97982,5,3671.008,6038.181,202.6663, 0, 0,100, 0, 0),
(97982,6,3626.063,6025.169,204.2773, 0, 0,100, 0, 0),
(97982,7,3583.856,6032.064,204.5831, 0, 0,100, 0, 0),
(97982,8,3554.254,6063.04,204.472, 0, 0,100, 0, 0),
(97982,9,3545.471,6102.48,202.5555, 0, 0,100, 0, 0),
(97982,10,3549.7,6132.109,201.3055, 0, 0,100, 0, 0),
(97982,11,3576.113,6164.372,198.6388, 0, 0,100, 0, 0),
(97982,12,3620.306,6180.885,195.4444, 0, 0,100, 0, 0),
(97982,13,3662.013,6177.719,196.1111, 0, 0,100, 0, 0),
(97982,14,3688.44,6162.167,198.1671, 0, 0,100, 0, 0),
-- #97983
(97983,1,3604.514893,5940.631836,208.134399, 0, 2536401,0.407929, 0, 0),
(97983,2,3643.645,5955.79,208.1344, 0, 0,100, 0, 0),
(97983,3,3679.835,5943.594,208.1344, 0, 0,100, 0, 0),
(97983,4,3705.002,5914.175,208.1344, 0, 0,100, 0, 0),
(97983,5,3708.419,5872.134,208.1344, 0, 0,100, 0, 0),
(97983,6,3684.185,5838.031,208.1344, 0, 0,100, 0, 0),
(97983,7,3649.515,5823.988,208.1344, 0, 0,100, 0, 0),
(97983,8,3623.82,5827.718,206.9736, 0, 0,100, 0, 0),
(97983,9,3597.111,5840.631,207.7961, 0, 0,100, 0, 0),
(97983,10,3583.873,5868.429,208.1344, 0, 0,100, 0, 0),
(97983,11,3583.615,5902.954,208.1344, 0, 0,100, 0, 0),
-- #97987
(97987,1,3542.69,5879.7,187.085, 0, 2536401,0.225038, 0, 0),
(97987,2,3540.265,5889.78,187.2777, 0, 0,100, 0, 0),
(97987,3,3530.905,6049.558,182.1391, 0, 0,100, 0, 0),
(97987,4,3540.521,6113.605,171.8058, 0, 0,100, 0, 0),
(97987,5,3571.914,6158.922,166.4167, 0, 0,100, 0, 0),
(97987,6,3621.573,6190.572,159.3614, 0, 0,100, 0, 0),
(97987,7,3664.097,6191.938,159.1392, 0, 0,100, 0, 0),
(97987,8,3700.305,6164.641,155.7792, 0, 0,100, 0, 0),
(97987,9,3720.089,6131.338,154.4734, 0, 0,100, 0, 0),
(97987,10,3722.728,6121.384,154.5564, 0, 0,100, 0, 0),
(97987,11,3720.642,6085.581,155.8616, 0, 0,100, 0, 0),
(97987,12,3699.917,6021.565,152.6674, 0, 0,100, 0, 0),
(97987,13,3697.836,5946.806,157.972, 0, 0,100, 0, 0),
(97987,14,3699.663,5814.059,165.9999, 0, 0,100, 0, 0),
(97987,15,3588.502,5801.21,179.1665, 0, 0,100, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2536401;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2536401,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');

-- Librarian Hamilton
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 97138;
DELETE FROM creature_movement WHERE id = 97138;
UPDATE creature_template SET MovementType = 2 WHERE entry = 27141;
DELETE FROM creature_movement_template WHERE entry = 27141;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(27141,1,3595.1,5959.01,136.328, 180000, 0,0.893476, 0, 0),
(27141,2,3590.255,5953.572,136.2027, 17000, 2714101,100, 0, 0),
(27141,3,3595.1,5959.01,136.328, 180000, 0,0.893476, 0, 0),
(27141,4,3593.014,5963.173,136.3277, 17000, 2714101,3.15815, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2714101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2714101,3,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2714101,14,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');

-- Apprentice Trotter
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 111400;
DELETE FROM creature_movement WHERE id = 111400;
UPDATE creature_template SET MovementType = 2 WHERE entry = 27301;
DELETE FROM creature_movement_template WHERE entry = 27301;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(27301,1,3655.39,5880.89,174.576, 0, 0,3.87468, 0, 0),
(27301,2,3648.21,5875.72,174.554, 0, 0,5.27348, 0, 0),
(27301,3,3649.17,5874.43,174.578, 16000, 2730101,5.20907, 0, 0), 
(27301,4,3656.08,5881.3,174.577, 0, 0,0.147175, 0, 0),
(27301,5,3659.29,5880.93,174.577, 16000, 2730101,6.1162, 0, 0), 
(27301,6,3658.57,5882.95,174.577, 0, 0,1.8672, 0, 0),
(27301,7,3659.6,5887.87,174.577, 0, 0,0.437772, 0, 0),
(27301,8,3661.47,5888.53,174.577, 16000, 2730101,6.10835, 0, 0), 
(27301,9,3659.61,5887.48,174.576, 0, 0,4.07024, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2730101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2730101,2,42,0,0,0,0,0,3699,0,0,0,0,0,0,0,''),
(2730101,3,1,133,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2730101,11,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2730101,13,42,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Initiate Park
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 111475;
DELETE FROM creature_movement WHERE id = 111475;
UPDATE creature_template SET MovementType = 2 WHERE entry = 27302;
DELETE FROM creature_movement_template WHERE entry = 27302;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(27302,1,3621.02,5897.4,174.577, 0, 0,2.35131, 0, 0),
(27302,2,3619.69,5898.14,174.577, 16000, 2730201,2.92465, 0, 0),
(27302,3,3619.09,5890.59,174.577, 0, 0,3.63152, 0, 0),
(27302,4,3618.11,5890.39,174.577, 16000, 2730201,2.89325, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2730201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2730201,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2730201,13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Initiate Knapp
DELETE FROM creature_template_addon WHERE entry = 27271;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27271,0,0,1,0,133,0,NULL);

-- Apprentice Ranch
DELETE FROM creature_template_addon WHERE entry = 27298;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27298,0,0,1,0,133,0,NULL);

-- Initiate Greer & Initiate Vernon
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid IN (111281,111307);
DELETE FROM creature_movement WHERE id IN (111281,111307);
UPDATE creature_template SET MovementType = 2 WHERE entry IN (27299,27300);
DELETE FROM creature_movement_template WHERE entry IN (27299,27300);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- Initiate Greer 
(27299,1,3640.38,5908,174.576, 0, 0,4.81918, 0, 0),
(27299,2,3642.54,5905.63,174.572, 0, 0,5.81113, 0, 0),
(27299,3,3645.93,5904.91,174.571, 0, 0,0.336895, 0, 0),
(27299,4,3647.52,5906.78,174.576, 0, 0,1.97759, 0, 0),
(27299,5,3646.7,5907.29,174.578, 41000, 2729901,2.76692, 0, 0),
(27299,6,3647.49,5906.69,174.578, 0, 0,5.06421, 0, 0),
(27299,7,3646.49,5905.07,174.576, 0, 0,3.42273, 0, 0),
(27299,8,3643.7,5905.04,174.568, 0, 0,2.84939, 0, 0),
(27299,9,3641.21,5906.38,174.577, 0, 0,2.31532, 0, 0),
(27299,10,3640.11,5908.16,174.577, 0, 0,1.34299, 0, 0),
(27299,11,3641.55,5908.3,174.577, 70000, 2729902,5.84897, 0, 0),
-- Initiate Vernon
(27300,1,3647.87,5909.61,174.578, 21000, 2730001,1.26067, 0, 0),
(27300,2,3640.9,5911.28,174.579, 21000, 2730001,1.26067, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2729901,2729902,2730001);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2729901,3,1,133,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2729901,13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2729901,14,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2729901,14,31,27300,40,0,0,0,-26000,0,0,0,0,0,0,0,'search for 27300'),
(2729901,15,21,1,0,27300,111307,7 | 0x10,0,0,0,0,0,0,0,0,'active'),
(2729901,16,0,0,0,0,0,0,2000000994,2000000995,2000000996,0,0,0,0,0,''),
(2729901,21,15,48254,0,27300,111307,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2729901,22,32,1,0,27300,111307,7 | 0x10,0,0,0,0,0,0,0,0,'Initiate Vernon - pause wps'),
(2729901,28,0,0,0,0,0,0,2000000997,2000000998,2000000999,0,0,0,0,0,''),
(2729901,32,36,0,0,27300,111307,3 | 0x10,0,0,0,0,0,0,0,0,'Initiate Vernon - face target'),
(2729901,34,0,0,0,27300,111307,7 | 0x10,2000001000,2000001001,0,0,0,0,0,0,''),
(2729901,36,32,0,0,27300,111307,7 | 0x10,0,0,0,0,0,0,0,0,'Initiate Vernon - unpause wps'),
(2729901,38,0,0,0,0,0,0,2000001002,2000001003,2000001004,0,0,0,0,0,''),
(2729901,40,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2729901,40,21,0,0,27300,111307,7 | 0x10,0,0,0,0,0,0,0,0,'unactive'),
(2729902,3,1,133,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2729902,67,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2730001,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2730001,19,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

DELETE FROM db_script_string WHERE entry BETWEEN 2000000994 AND 2000001004;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000994,'Tell me if this hurts.',0,0,0,0,NULL),
(2000000995,'Let\'s try this one out...',0,0,0,0,NULL),
(2000000996,'I think I\'ve got it this time..',0,0,0,0,NULL),
(2000000997,'How\'d that feel?',0,0,0,0,NULL),
(2000000998,'Was that potent enough?',0,0,0,0,NULL),
(2000000999,'Do you think that will get some answers?',0,0,0,0,NULL),
(2000001000,'You need more bite.  Do not show our enemies any mercy.',0,0,0,0,NULL),
(2000001001,'The more pain we can inflict, the quicker we can get our answers.',0,0,0,0,NULL),
(2000001002,'Hmm...',0,0,0,0,NULL),
(2000001003,'True, our enemies would show us no mercy.',0,0,0,0,NULL),
(2000001004,'True, but how far should we push?  At what point are we no better than our enemies?',0,0,0,0,NULL);
