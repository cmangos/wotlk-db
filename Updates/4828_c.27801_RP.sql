-- Avatar of Freya 27801 - RP
DELETE FROM spell_script_target WHERE entry = 51318;
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(51318,1,28320,0);
DELETE FROM dbscripts_on_relay WHERE id = 20754;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20754,1,10,28108,300000,0,0,0,0x08,0,0,0,88,6073.4414,4076.3833,-48.347416,0,'Part of Avatar of Freya 27801 EAI - Summon 28108'), -- 88 - run & path 1
(20754,2,10,28170,300000,0,0,0,0x08,0,0,0,88,6329.284,3605.1677,437.63007,0,'Part of Avatar of Freya 27801 EAI - Summon 28170'); -- 88 - run & path 1

-- Servant of Freya 28320
UPDATE creature SET spawndist = 0, MovementType = 0, spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE id = 28320;
DELETE FROM `spawn_group` WHERE id = 32511;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32511, 'Sholazar Basin - Servant of Freya 28320 - Freya RP', 0, 25, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 32511;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32511,522181, -1),(32511,522182, -1),(32511,522183, -1),(32511,522184, -1),(32511,522185, -1),
(32511,522186, -1),(32511,522187, -1),(32511,522188, -1),(32511,522189, -1),(32511,522190, -1),
(32511,522191, -1),(32511,522192, -1),(32511,522193, -1),(32511,522194, -1),(32511,522195, -1),
(32511,522196, -1),(32511,522197, -1),(32511,522198, -1),(32511,522199, -1),(32511,522200, -1),
(32511,522201, -1),(32511,522202, -1),(32511,522203, -1),(32511,522204, -1),(32511,522205, -1),
(32511,522206, -1),(32511,522207, -1),(32511,522208, -1),(32511,522209, -1),(32511,522210, -1),
(32511,522211, -1),(32511,522212, -1),(32511,522213, -1),(32511,522214, -1),(32511,522215, -1),
(32511,522216, -1),(32511,522217, -1),(32511,522218, -1),(32511,522219, -1),(32511,522220, -1),
(32511,522221, -1),(32511,522222, -1),(32511,522223, -1),(32511,522224, -1),(32511,522225, -1),
(32511,522226, -1),(32511,522227, -1),(32511,522228, -1);
DELETE FROM dbscripts_on_relay WHERE id = 20753;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20753,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Servant of Freya 28320 EAI - Remove Emote'),
(20753,1000,20,1,7,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Servant of Freya 28320 EAI - set random movement'),
(20753,1001,15,52948,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Servant of Freya 28320 EAI - cast 52948'),
(20753,1002,48,33554944,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Servant of Freya 28320 EAI - Remove UnitFlags');

-- Bonescythe Ravager 28108
-- Duplicates
DELETE FROM creature_addon WHERE guid IN (520917,520890,520892,520911,520910,520923);
DELETE FROM creature_movement WHERE Id IN (520917,520890,520892,520911,520910,520923);
DELETE FROM game_event_creature WHERE guid IN (520917,520890,520892,520911,520910,520923);
DELETE FROM game_event_creature_data WHERE guid IN (520917,520890,520892,520911,520910,520923);
DELETE FROM creature_battleground WHERE guid IN (520917,520890,520892,520911,520910,520923);
DELETE FROM creature_linking WHERE guid IN (520917,520890,520892,520911,520910,520923)
 OR master_guid IN (520917,520890,520892,520911,520910,520923);
DELETE FROM creature WHERE guid IN (520917,520890,520892,520911,520910,520923);
-- updates
UPDATE creature SET position_x = 5842.728516, position_y = 4042.805664, position_z = -87.445747 WHERE guid = 520922;
UPDATE creature SET position_x = 5862.937012, position_y = 4080.612305, position_z = -87.508492 WHERE guid = 520914;
UPDATE creature SET position_x = 5886.829590, position_y = 4059.239014, position_z = -87.481171 WHERE guid = 520898;
UPDATE creature SET position_x = 5938.723145, position_y = 4109.800293, position_z = -87.480988 WHERE guid = 520897;
UPDATE creature SET position_x = 5910.669434, position_y = 4119.154785, position_z = -87.480934 WHERE guid = 520901;
UPDATE creature SET position_x = 5927.899414, position_y = 4087.548828, position_z = -87.481216 WHERE guid = 520902;
UPDATE creature SET position_x = 5909.707520, position_y = 4102.587891, position_z = -87.481239 WHERE guid = 520943;
UPDATE creature SET position_x = 5887.597168, position_y = 4084.956543, position_z = -87.481049 WHERE guid = 520927;
UPDATE creature SET position_x = 5866.539062, position_y = 4055.723389, position_z = -87.480774 WHERE guid = 520926;
UPDATE creature SET spawndist = 7, MovementType = 1, spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE guid IN 
(520922,520914,520898,520897,520901,520902,520943,520927,520926,520924,520925,520893,520920,520919,520918,520907,520888);
DELETE FROM `spawn_group` WHERE id = 32512;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32512, 'Sholazar Basin - Bonescythe Ravager 28108 - Freya RP', 0, 10, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 32512;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32512,520922, -1),(32512,520914, -1),(32512,520898, -1),(32512,520897, -1),
(32512,520901, -1),(32512,520902, -1),(32512,520943, -1),(32512,520927, -1),
(32512,520926, -1),(32512,520924, -1),(32512,520925, -1),(32512,520893, -1),
(32512,520920, -1),(32512,520919, -1),(32512,520918, -1),(32512,520907, -1),
(32512,520888, -1);
-- for summoned
-- path 1
DELETE FROM creature_movement_template WHERE entry IN (28108);
INSERT INTO creature_movement_template (entry, pathId, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(28108,1,1,6073.4414,4076.3833,-48.347416,100,0,0),
(28108,1,2,5983.2764,4077.9714,-65.76325,100,0,0),
(28108,1,3,5955.0254,4087.339,-73.98268,100,0,0),
(28108,1,4,5918.5337,4097.5044,-87.3693,100,0,0),
(28108,1,5,5896.09,4105.799,-87.41906,100,100,20);

-- Frosthowl Screecher 28170
-- for summoned
-- path 1
DELETE FROM creature_movement_template WHERE entry IN (28170);
INSERT INTO creature_movement_template (entry, pathId, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(28170,1,1 ,6329.284,3605.1677,437.63007 ,100,0,0),
(28170,1,2 ,6291.1978,3658.9114,365.99487,100,0,0),
(28170,1,3 ,6253.1113,3712.655,294.35968 ,100,0,0),
(28170,1,4 ,6187.2007,3710.4285,243.27641,100,0,0),
(28170,1,5 ,6072.19,3784.3594,91.4431    ,100,0,0),
(28170,1,6 ,5955.1587,3750.4944,31.359886,100,0,0),
(28170,1,7 ,5947.2305,3832.7668,31.359888,100,0,0),
(28170,1,8 ,5931.104,3906.8582,2.276556  ,100,0,0),
(28170,1,9 ,5926.678,3982.7405,-20.44567 ,100,0,0),
(28170,1,10,5921.7754,4023.1223,-20.44567,100,0,0),
(28170,1,11,5917.8726,4066.8494,-25.72345,100,0,0),
(28170,1,12,5867.9297,4105.661,-71.945724,100,0,0),
(28170,1,13,5845.8457,4082.4348,-71.94572,100,0,0),
(28170,1,14,5859.274,4061.7751,-71.945724,100,0,0),
(28170,1,15,5898.874,4083.1892,-71.945724,100,0,0),
(28170,1,16,5883.6216,4121.293,-71.945724,100,0,0),
(28170,1,17,5837.5874,4135.043,-71.945724,100,0,0),
(28170,1,18,5847.867,4097.4478,-71.945724,100,0,0),
(28170,1,19,5868.9365,4082.5803,-71.94572,100,0,0),
(28170,1,20,5894.971,4082.4268,-71.945724,100,0,0),
(28170,1,21,5909.5127,4090.5344,-71.94572,100,0,0),
(28170,1,22,5911.932,4097.5977,-71.945724,100,0,0),
(28170,1,23,5909.4893,4104.788,-71.945724,100,0,0),
(28170,1,24,5901.2354,4112.5493,-71.94572,100,0,0),
(28170,1,25,5863.374,4102.225,-71.945724 ,100,0,0),
(28170,1,26,5886.8804,4086.7573,-71.94572,100,0,0),
(28170,1,27,5909.6133,4082.5854,-71.94572,100,0,0),
(28170,1,28,5924.5146,4089.9463,-61.72350,100,0,0),
(28170,1,29,5946.9243,4124.2837,-48.27904,100,0,0),
(28170,1,30,5891.096,4105.099,-48.279045 ,100,0,0),
(28170,1,31,5880.5425,4106.7163,-26.89015,100,0,0),
(28170,1,32,5836.7896,4091.5542,26.08208 ,100,0,0),
(28170,1,33,5836.7896,4091.5542,26.08208 ,100,100,1);
