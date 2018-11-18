-- taxi from valgarde redone
-- Valgarde Gryphon
UPDATE creature_template SET SpeedRun = 1.14286, MovementType = 2 WHERE Entry = 27886;
DELETE FROM creature_movement_template WHERE entry = 27886;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(27886,1,604.732,-5035.33,1.134833,3000,2788601,100),
(27886,2,616.1405,-5054.699,19.06547,0,0,100),
(27886,3,669.2218,-5092.259,37.81544,0,0,100),
(27886,4,851.0926,-5059.138,38.20434,0,0,100),
(27886,5,1000.226,-4971.927,38.20434,0,0,100),
(27886,6,1114.783,-4978.058,41.37101,0,0,100),
(27886,7,1173.997,-4953.665,44.14879,0,0,100),
(27886,8,1193.97,-4960.164,45.00991,0,0,100),
(27886,9,1217.514,-5021.411,45.39881,0,0,100),
(27886,10,1241.716,-5040.091,51.84324,0,0,100),
(27886,11,1267.984,-5058.034,59.5172,0,0,100),
(27886,12,1291.355,-5082.262,74.75519,0,0,100),
(27886,13,1295.333,-5121.729,92.31108,0,0,100),
(27886,14,1277.079,-5162.366,109.019,0,0,100),
(27886,15,1251.259,-5183.104,128.6093,0,0,100),
(27886,16,1220.546,-5199.173,149.3693,0,0,100),
(27886,17,1230.095,-5241.645,176.0354,0,0,100),
(27886,18,1287.938,-5294.112,187.5077,0,0,100),
(27886,19,1312.112,-5375.753,214.3132,0,0,100),
(27886,20,1257.37,-5396.207,214.3132,0,0,100),
(27886,21,1250.818,-5315.093,203.2299,7000,2788602,100),
(27886,22,1230.068,-5285.566,221.9712,2000,2788603,100);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2788601 AND 2788603;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2788601,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2788601,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2788601,2,15,49303,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast: Flight + Speed'),
(2788602,0,35,5,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Send AI Event Type 5 (A) to Self'),
(2788603,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2788603,1,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp');

DELETE FROM dbscripts_on_spell WHERE id = 49261;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(49261,0,14,46598,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

DELETE FROM dbscripts_on_gossip WHERE id = 898401;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(898401, 0, 15, 49848, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast - Call Valgarde Gryphon'),
(898401, 60, 15, 50553, 0, 0, 0, 0, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast - Parachute');
