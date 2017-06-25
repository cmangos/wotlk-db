-- q.11569 'Keymaster Urmgrgl'
DELETE FROM dbscripts_on_quest_end WHERE id = 11569;
INSERT INTO dbscripts_on_quest_end  (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11569,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(11569,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(11569,0,20,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoints');
UPDATE quest_template SET CompleteScript = 11569 WHERE entry = 11569;
DELETE FROM db_script_string WHERE entry IN (2000001233,2000001234);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001233,'So long, suckers. I\'m out of here!',0,0,0,0,NULL),
(2000001234,'I made it. Freedom at last!',0,0,0,35,NULL);

-- Glrglrglr
UPDATE creature SET spawntimesecsmin = 20, spawntimesecsmax = 20 WHERE guid = 124427; -- q. ReQ
UPDATE creature_template SET MovementType = 0 WHERE Entry = 28375;
DELETE FROM creature_movement WHERE id = 124427;
DELETE FROM creature_movement_template WHERE entry = 28375;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(28375,1,4004.88,6389.42,29.9574,2000,2837501,6.21337),
(28375,2,4011.95,6389.45,29.868,0,0,5.98201),
(28375,3,4016.35,6388.17,30.315,0,0,5.43224),
(28375,4,4022.87,6381.06,29.4787,0,0,5.47543),
(28375,5,4028.11,6374.98,28.9639,0,0,5.89562),
(28375,6,4045,6368.65,27.31,0,0,5.80137),
(28375,7,4056.01,6363.05,27.3761,0,0,5.20055),
(28375,8,4064.31,6344.89,24.3305,0,0,4.62329),
(28375,9,4065.83,6332.06,25.052,0,0,4.69398),
(28375,10,4064.57,6315.19,25.2927,0,0,4.3272),
(28375,11,4059.3,6293.11,24.1329,0,0,4.87304),
(28375,12,4062.93,6286.95,23.1404,0,0,5.71812),
(28375,13,4073.95,6280.8,25.9578,0,0,5.97809),
(28375,14,4080.63,6280.99,26.9663,0,0,0.104071),
(28375,15,4090.51,6281.09,27.4681,0,0,6.17913),
(28375,16,4102.18,6279.84,25.428,0,0,6.10451),
(28375,17,4116.09,6278.41,25.2875,0,0,0.178683),
(28375,18,4123.45,6280.38,26.351,0,0,0.139413),
(28375,19,4129.01,6281.98,28.6333,0,0,0.272931),
(28375,20,4135.21,6283.41,29.0254,0,0,6.03461),
(28375,21,4141.83,6281.26,29.3155,0,0,6.03378),
(28375,22,4145.27,6280.8,28.5351,0,0,6.10446),
(28375,23,4150,6279.94,30.2744,0,0,5.86963),
(28375,24,4155.04,6277.35,31.2311,0,0,5.69999),
(28375,25,4165.14,6270.8,29.6181,5000,2837502,5.73533);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2837501,2837502);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2837501,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2837501,0,13,0,0,0,190567,50,1,0,0,0,0,0,0,0,0,''),
(2837501,1,0,0,0,0,0,0,0,2000001233,0,0,0,0,0,0,0,''),
(2837502,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(2837502,2,0,0,0,0,0,0,0,2000001234,0,0,0,0,0,0,0,''),
(2837502,2,29,3,1,0,0,0,0,0,0,0,0,0,0,0,0,'npc_flag added'),
(2837502,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2837502,3,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2837502,3,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'desp');
