-- Mistwhisper Refuge - Sholazar Basin

-- Mistcaller Soo-gan 28114
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 28114);
DELETE FROM creature_template_addon WHERE entry IN (28114);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(28114,0,0,1,0,0,0,'51589 52215');

-- Mistcaller Warrior 28109
UPDATE creature SET position_x = 6204.145, position_y = 4967.364, position_z = -98.81438, orientation = 4.555309, spawndist = 0, MovementType = 0 WHERE guid = 520963;
UPDATE creature SET position_x = 6267.7944, position_y = 4932.5034, position_z = -96.01417, spawndist = 0, MovementType = 4 WHERE guid = 520960; -- linear
UPDATE creature SET position_x = 6297.478, position_y = 5062.973, position_z = -85.77764, spawndist = 0, MovementType = 4 WHERE guid = 520972; -- linear
UPDATE creature SET position_x = 6223.1597, position_y = 5068.419, position_z = -98.752716, spawndist = 0, MovementType = 4 WHERE guid = 520966; -- linear
UPDATE creature SET position_x = 6196.053, position_y = 5129.4336, position_z = -97.48145, spawndist = 0, MovementType = 4 WHERE guid = 520965; -- linear
UPDATE creature SET position_x = 6077.789, position_y = 5071.0244, position_z = -110.24905, spawndist = 0, MovementType = 2 WHERE guid = 520957;
UPDATE creature SET position_x = 6152.053, position_y = 5038.848, position_z = -96.99104, spawndist = 0, MovementType = 4 WHERE guid = 520971; -- linear
UPDATE creature SET position_x = 6231.843, position_y = 4945.8306, position_z = -98.74328, orientation = 3.281219, spawndist = 0, MovementType = 2 WHERE guid = 520958;
UPDATE creature SET position_x = 6021.5806, position_y = 5061.728, position_z = -124.00657, spawndist = 0, MovementType = 2 WHERE guid = 520956;
UPDATE creature SET position_x = 6049.848, position_y = 5022.8413, position_z = -97.18933, spawndist = 0, MovementType = 2 WHERE guid = 520967;
UPDATE creature SET position_x = 6000.8794, position_y = 4985.1104, position_z = -106.22953, spawndist = 0, MovementType = 2 WHERE guid = 520970;
UPDATE creature SET spawndist = 0, MovementType = 4 WHERE guid = 520959; -- linear
-- waypoints
DELETE FROM creature_movement WHERE Id IN (520960,520972,520966,520959,520965,520957,520971,520958,520956,520967,520970);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 520960
(520960,1,6267.7944,4932.5034,-96.01417,100,0,0),
(520960,2,6247.8237,4944.715,-98.02263,100,1000,0),
(520960,3,6272.6704,4929.278,-95.32484,100,0,0),
(520960,4,6304.252,4938.8164,-91.93262,100,1000,0),
-- 520972
(520972,1,6297.478,5062.973,-85.77764,100,1000,0),
(520972,2,6310.144,5061.8384,-84.86259,100,0,0),
(520972,3,6321.9746,5051.396,-85.94889,100,0,0),
(520972,4,6334.3945,5029.465,-87.68058,100,1000,0),
-- 520966
(520966,1,6223.1597,5068.419,-98.752716,100,1000,0),
(520966,2,6240.944,5071.436,-98.38563,100,0,0),
(520966,3,6250.3677,5075.908,-94.30518,100,0,0),
(520966,4,6257.2515,5073.167,-92.9286,100,0,0),
(520966,5,6232.186,5114.6655,-88.83631,100,1000,0),
-- 520959
(520959,1,6141.019,5068.5054,-96.987045,1.623156,30000,5),
(520959,2,6109.759,5085.8037,-104.51141,100,0,0),
(520959,3,6103.7944,5115.948,-109.95789,100,0,0),
(520959,4,6080.825,5079.768,-118.67377,100,5000,21),
-- 520965
(520965,1,6196.053,5129.4336,-97.48145,1.3613568,45000,5),
(520965,2,6181.74,5151.77,-103.558,100,0,0),
(520965,3,6174.31,5163.95,-108.467,100,0,0),
(520965,4,6170.16,5174.62,-115.274,100,5000,21),
-- 520957
(520957,1,6077.789,5071.0244,-110.24905,100,1,5),
(520957,2,6056.264,5076.9536,-124.09162,100,0,0),
(520957,3,6058.296,5091.332,-129.64107,100,0,0),
(520957,4,6077.855,5091.8384,-126.112366,100,0,0),
(520957,5,6066.1724,5079.89,-124.77388,100,0,0),
(520957,6,6056.264,5076.9536,-124.09162,100,0,0),
(520957,7,6077.789,5071.0244,-110.24905,100,0,0),
(520957,8,6084.7,5066.16,-103.302,100,0,0),
(520957,9,6113.7407,5045.8975,-96.229355,1.98967,50000,0),
(520957,10,6110.2524,5052.47,-98.667984,100,100,2810901),
-- 520971
(520971,1,6152.053,5038.848,-96.99104,100,1000,0),
(520971,2,6147.3657,5026.8467,-97.20884,100,0,0),
(520971,3,6146.1743,5011.85,-98.414894,100,0,0),
(520971,4,6130.522,4978.6265,-98.998436,100,0,0),
(520971,5,6153.178,4976.869,-96.78233,100,1000,0),
-- 520958
(520958,1,6231.843,4945.8306,-98.74328,3.281219,90000,0),
(520958,2,6211.0376,4952.111,-98.86828,3.60,10000,2810904),
-- 520956
(520956,1,6021.5806,5061.728,-124.00657,100,1,5),
(520956,2,6043.828,5082.3535,-128.8658,100,0,0),
(520956,3,6043.3657,5072.425,-121.77144,100,0,0),
(520956,4,6045.14,5070.02,-105.97,100,0,0),
(520956,5,6059.18,5059.66,-103.049,100,0,0),
(520956,6,6063.08,5039.79,-101.076,100,0,0),
(520956,7,6073.7466,5027.3315,-98.72181,1.972,45000,0),
(520956,8,6067.076,5045.1426,-99.92108,100,100,2810902),
-- 520967
(520967,1,6049.848,5022.8413,-97.18933,1.31,1,5),
(520967,2,6037.048,5046.337,-103.61026,100,0,0),
(520967,3,6029.4907,5058.732,-118.05282,100,0,0),
(520967,4,6016.4937,5046.6196,-113.92172,100,0,0),
(520967,5,6040.962,5060.491,-110.33015,100,0,0),
(520967,6,6037.048,5046.337,-103.61026,100,0,0),
(520967,7,6049.848,5022.8413,-97.18933,1.31,30000,0),
-- 520970
(520970,1,6000.8794,4985.1104,-106.22953,100,1,5),
(520970,2,5999.7817,4998.675,-106.203674,100,0,0),
(520970,3,6006.9146,4976.152,-105.45377,100,0,0),
(520970,4,6010.8896,4997.8286,-104.03263,100,0,0),
(520970,5,6027.6226,5000.621,-100.55403,100,0,0),
(520970,6,6040.3555,5002.9136,-97.07544,3.316,55000,0),
(520970,7,6031.957,5001.217,-99.68266,100,100,2810903);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2810901 AND 2810904;
INSERT INTO dbscripts_on_creature_movement (id,delay,priority,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,datafloat,x,y,z,o,speed,condition_id,comments) VALUES
(2810901,0,0,20,15,30600,0,0,0,0x04,0,0,0,0,7,6102.764,5065.543,-103.10661,100,17,0,'jump'),
(2810902,0,0,20,15,30600,0,0,0,0x04,0,0,0,0,7,6060.4053,5061.953,-105.62035,100,17,0,'jump'),
(2810903,0,0,20,15,30600,0,0,0,0x04,0,0,0,0,5,6013.0586,4998.5195,-103.78989,100,17,0,'jump'),
(2810904,3000,0,15,52880,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'self cast');

-- Mistwhisper Oracle 28110
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 28110);
DELETE FROM creature_template_addon WHERE entry IN (28110);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(28110,0,0,1,0,0,0,'50727');
UPDATE creature SET position_x = 6220.104, position_y = 4943.288, position_z = -98.75036, orientation = 3.176499, spawndist = 0, MovementType = 0 WHERE guid = 520991;
UPDATE creature SET position_x = 6213.7173, position_y = 4975.1733, position_z = -98.732925, orientation = 4.276056, spawndist = 0, MovementType = 0 WHERE guid = 520962;
UPDATE creature SET position_x = 6204.704, position_y = 5089.7036, position_z = -98.752716, spawndist = 0, MovementType = 4 WHERE guid = 520977; -- linear
-- waypoints
DELETE FROM creature_movement WHERE Id IN (520977);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 520977
(520977,1,6204.704,5089.7036,-98.752716,100,1000,0),
(520977,2,6219.268,5077.9424,-98.752716,100,0,0),
(520977,3,6227.396,5058.401,-98.752716,100,0,0),
(520977,4,6230.4014,5029.018,-98.9617,100,0,0),
(520977,5,6228.982,5000.233,-98.66226,100,0,0),
(520977,6,6225.245,4981.8325,-98.971306,100,1000,0);
-- 520991
DELETE FROM creature_spawn_data WHERE id IN (520991);
INSERT INTO creature_spawn_data (guid, id) VALUES 
(520991, 80);
